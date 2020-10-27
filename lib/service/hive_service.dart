abstract class IHiverService<T> {
  bool isExists({String boxname});
  void addBoxes({List<T> items, String boxName});
  Future<T> getBoxes(dynamic id);
}
