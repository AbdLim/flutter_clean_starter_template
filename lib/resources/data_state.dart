class DataState<T> {
  final T? data;
  final String? errorMsg;

  const DataState({this.data, this.errorMsg});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(String errorMsg) : super(errorMsg: errorMsg);
}
