package Entity;
import android.media.Image;


public class Goods {
     int id;
     int sellerid;
     String name;
     String info;
     int price;
     String type;
     Image image;
     int cCount;

//    public Goods(int id, int sellerid, String name, String info, int price, String type, Image image) {
//        this.id = id;
//        this.sellerid = sellerid;
//        this.name = name;
//        this.info = info;
//        this.price = price;
//        this.type = type;
//        this.image = image;
//    }

    public Goods(String name){
        this.name = name;
    }
}
