import 'dart:async';

class SchemaEventBus {

  static final _streamController=StreamController.broadcast(sync: false);

  static Stream<T> on<T>() {
    if (T == dynamic) {
      return _streamController.stream as Stream<T>;
    } else {
      return _streamController.stream.where((event) => event is T).cast<T>();
    }
  }

  static void fire(event) {
    _streamController.add(event);
  }

  void destroy() {
    _streamController.close();
  }

}
void main(){
  SchemaEventBus.on<Event>().listen((event) {
    print(event.id);
  },);
  SchemaEventBus.fire(Event());
}


class Event{
  int id=5;
}
