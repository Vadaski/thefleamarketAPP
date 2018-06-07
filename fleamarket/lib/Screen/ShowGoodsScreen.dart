import 'package:flutter/material.dart';
import 'package:fleamarket/Entity/Goods.dart';
import 'package:fleamarket/Screen/ChatScreen.dart';
import 'package:carousel/carousel.dart';

class ShowGoodsScreen extends StatelessWidget {

  ShowGoodsScreen({
    this.title,
    this.goods
});

  String title = 'Title';
  Goods goods;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            new Container(
              child: new SizedBox(
                height: 240.0,
                child: new Carousel(
                  children: [
                    new NetworkImage('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2597006421,1312112386&fm=11&gp=0.jpg'),
                    new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1528320390286&di=82cf2bf074a25f2f319f59c47eab4046&imgtype=0&src=http%3A%2F%2Fp1.kidulty.com%2Fflash_report%2Fs%2F20161118%2F582ecdc57cfb1680_453.jpg'),
                    new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1528320390285&di=92392edc7033e9da0eb51e81a5865443&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160827%2F490d8b042b894e9987daf05e9994fbe4_th.jpeg'),
                    new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1528320764280&di=7a2bab125917e3ce447e322d288f5d27&imgtype=0&src=http%3A%2F%2Fimg.zjolcdn.com%2Fpic%2F0%2F06%2F97%2F94%2F6979440_711594.jpg'),
                    new NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1528320764275&di=1e07ab0b11a9eaaa0e4858d8024d1da2&imgtype=0&src=http%3A%2F%2Fimg14.360buyimg.com%2FpopWaterMark%2Fjfs%2Ft1225%2F355%2F813426051%2F415060%2Fb4d9e530%2F5559bdf5N2af1aa7c.jpg'),
                  ].map((netImage) => new Image(image: netImage)).toList(),
                ),
              ),
            ),
            new Card(
              child: new Row(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      child: new CircleAvatar(
                        backgroundImage:
                        new AssetImage('images/touxiang.gif'),
                        radius: 100.0,
                      ),
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                 new Column(
                   children: <Widget>[
                     new Text('LitaVadaski',
                     style: TextStyle(
                       fontSize: 20.0,
                     ),
                     ),
                     new Text('LitaVadaski',
                       style: TextStyle(
                         fontSize: 10.0,
                       ),
                     ),
                   ],
                 ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
