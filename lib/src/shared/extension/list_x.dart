extension ListC<T> on List<T> {
  List<List<T>> chunk(int chunkSize) {
    List<List<T>> chunkedList = [];
    final int length = this.length;

    for (int i = 0; i < length; i += chunkSize) {
      int end = i + chunkSize > length ? length : i + chunkSize;
      chunkedList.add(sublist(i, end));
    }
    return chunkedList;
  }
}
