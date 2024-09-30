import 'package:assignments/module5/model/CategoryToDo.dart';
import 'package:assignments/module5/repositories/repostery.dart';

class CategoryService{

  Repository? _repository;
  CategoryService(){
    _repository = Repository();
  }

  saveCategory(CategoryToDo category)async {
    print(category);
    return await _repository?.insertData('CATEGORIES', category.categoryMap());
  }

  // readCategory() async{
  //   _repository?.readData('CATEGORIES');
  // }

  //read data
  readCategories() async{
    return await _repository?.readData('CATEGORIES');
  }

  readCategoryById(categoryId) async {
    return await _repository?.readDataById('CATEGORIES',categoryId);
  }

  updateCategory(CategoryToDo category) async{
    return await _repository?.updateData('CATEGORIES',category.categoryMap());
  }

  deleteCategory(categoryId) async{
    return await _repository?.deleteData('CATEGORIES',categoryId);
  }
}