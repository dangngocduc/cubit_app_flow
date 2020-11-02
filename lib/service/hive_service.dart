import 'package:cubit_app_flow/data/model/index_hive.dart';
import 'package:cubit_app_flow/utils/exception.dart';
import 'package:hive/hive.dart';
import 'package:tuple/tuple.dart';
import 'dart:developer' as developer;

typedef HiveItemTransaction<T> = void Function({
  T item,
  Box<T> box,
  HiveService hiveService,
});

typedef HiveItemsTransaction<T> = void Function({
  List<T> items,
  Box<T> box,
  HiveService hiveService,
});

typedef HiveItemsOnExistsTransaction<T> = void Function(
  List<T> items, {
  HiveService hiveService,
});

typedef HiveItemsOnEmptyTransaction<T> = void Function({
  HiveService hiveService,
});

abstract class HiveService {
  void writeItem<T>(
    T data, {
    String boxName,
    bool updateLastest = true,
    HiveItemTransaction transaction,
  });
  void writeItems<T>(
    List<T> data, {
    String boxName,
    bool updateLastest = true,
    HiveItemsTransaction transaction,
  });

  // void existsItems<T>({
  //   String boxName,
  //   HiveItemsTransaction transaction,
  // });

  void existsItems<T>(
    String boxName, {
    HiveItemsOnExistsTransaction onExists,
    HiveItemsOnEmptyTransaction onEmpty,
  });

  Future<T> getKeyAtIndex<T>(int index, {String boxName});
  Future<T> getItemByKey<T>(int key, {String boxName});
  Future<T> getItemAtIndex<T>(int index, {String boxName});

  Future<List<T>> getItemsFromBox<T>(Box<T> box);

  // void deleteWith({String boxName});
}

class HiveServiceImpl implements HiveService {
  @override
  Future<T> getItemAtIndex<T>(int index, {String boxName}) async {
    final openBox = await Hive.openBox<T>(boxName);
    return openBox.getAt(index);
  }

  @override
  Future<T> getKeyAtIndex<T>(int index, {String boxName}) async {
    final openBox = await Hive.openBox<T>(boxName);
    return openBox.keyAt(index);
  }

  @override
  Future<T> getItemByKey<T>(int index, {String boxName}) async {
    final openBox = await Hive.openBox<T>(boxName);
    return openBox.get(index);
  }

  @override
  Future<List<T>> getItemsFromBox<T>(Box<T> box) async {
    List<T> boxList = List<T>();
    if (box.isOpen) {
      for (var i = 0; i < box.length; i++) {
        final item = box.getAt(i);

        (item as IndexHive).indexHive = box.keyAt(i);
        boxList.add(item);
      }
      return boxList;
    }
    return boxList;
  }

  @override
  void deleteWith<T>({String boxName}) async {
    final openBox = await Hive.openBox<T>(boxName);
    final isExists = await Hive.boxExists(boxName);
    if (isExists) final _ = await Hive.deleteBoxFromDisk(boxName);
  }

  @override
  void writeItem<T>(
    T item, {
    String boxName,
    bool updateLastest = true,
    HiveItemTransaction<T> transaction,
  }) async {
    final openBox = await Hive.openBox<T>(boxName);

    if (updateLastest) _clearBox(openBox);
    if (openBox.isOpen) {
      final _result = await openBox.add(item);

      developer.log('$_result', name: 'HiveServiceImpl');
      transaction(box: openBox, hiveService: this, item: item);
    } else {
      throw BoxNotExistsException("Box $boxName isn't exists.");
    }
  }

  Future<void> _clearBox<T>(Box<T> box) async {
    if (box.isOpen && box.isNotEmpty) {
      return box.deleteAll(box.keys);
    }
  }

  @override
  void writeItems<T>(
    List<T> items, {
    String boxName,
    bool updateLastest = true,
    HiveItemsTransaction<T> transaction,
  }) async {
    final openBox = await Hive.openBox<T>(boxName);

    if (updateLastest) _clearBox(openBox);
    if (openBox.isOpen) {
      final _results = await openBox.addAll(items);
      developer.log('$_results', name: 'HiveServiceImpl');
      transaction(box: openBox, hiveService: this, items: items);
    } else {
      throw BoxNotExistsException("Box $boxName isn't exists.");
    }
  }

  @override
  void existsItems<T>(String boxName,
      {HiveItemsOnExistsTransaction onExists,
      HiveItemsOnEmptyTransaction onEmpty}) async {
    final openBox = await Hive.openBox<T>(boxName);
    if (openBox.isNotEmpty) {
      final results = await getItemsFromBox(openBox);
      onExists(results, hiveService: this);
    } else {
      onEmpty(hiveService: this);
    }
  }
}
