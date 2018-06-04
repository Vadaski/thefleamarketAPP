class Goods {
  final int id;
  final int sellerid;
  final String name;
  final String info;
  final int price;
  final String type;
  final int cCount;


  Goods({this.id = 0, this.sellerid = 0, this.name = 'Goods', this.info='describe Goods', this.price = 0, this.type = '未分类',
    this.cCount = 0});

  factory Goods.fromJson(Map<String,dynamic> json){
    return new Goods(
      id: json['id'] as int,
      sellerid: json['sellerId'] as int,
      name: json['name'] as String,
      info: json['info'] as String,
      price: json['price'] as int,
      type: json['type'] as String,
      cCount: json['cCount'] as int,
    );
  }
}