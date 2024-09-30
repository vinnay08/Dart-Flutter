import 'package:assignments/module5/model/ToDo.dart';
import 'package:assignments/module5/repositories/repostery.dart';

class TodoService{
  Repository? _repository;

  TodoService(){
    _repository = Repository();
  }

  saveTodo(ToDo todo) async{
    return await _repository?.insertData('TODO', todo.todoMap());
  }

}