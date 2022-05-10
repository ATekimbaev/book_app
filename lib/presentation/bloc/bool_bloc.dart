import 'package:bloc/bloc.dart';


class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(BookInitialState()) {
    on<BookEvent>((event, emit) {

    });
  }
}

abstract class BookEvent {}

class BookLoadingEvent extends BookEvent{} 

class BookSendTimeEvent extends BookEvent{} 

class BookFilterEvent extends BookEvent{} 


abstract class BookState {}

class BookInitialState extends BookState {}
class BookLoadingState extends BookState {}
class BookSuccesState extends BookState {}
class BookErrorState extends BookState {}


