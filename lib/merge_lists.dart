List<int> mergeLists(List<int> l1, List<int> l2) {
  List<int> merged = [];

  var i = 0;
  var j = 0;
  while (l1.isNotEmpty && l2.isNotEmpty) {
    if (l1.first < l2.first) {
      merged.add(l1.removeAt(0));
    } else {
      merged.add(l2.removeAt(0));
    }
  }
  if (l1.isNotEmpty) merged.addAll(l1);
  if (l2.isNotEmpty) merged.addAll(l2);

  return merged;
}
