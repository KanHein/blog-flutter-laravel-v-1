class Model{
  int id;
  String title,body,created_at;
  Model(this.id, this.title, this.body, this.created_at);
  Model.fromJson(Map<String,dynamic> jsonData){
    this.id = jsonData['id'];
    this.title = jsonData['title'];
    this.body = jsonData['body'];
    this.created_at = jsonData['created_at'];
  }
}