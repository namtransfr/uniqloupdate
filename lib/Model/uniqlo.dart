import 'package:uniqlo/Model/productdetail.dart';

class Uniqlo {
  String imgUrl;
  String imgTitle;
  String detail;
  List<Productdetail> productdetail;

  Uniqlo(this.imgUrl, this.imgTitle, this.detail, this.productdetail);

  static List<Uniqlo> samples =
  [
    Uniqlo('assets/images/1.jpg',
            'PUFFTECH Jacket | Pocketable',
            'Sleek design with the slide fastener in front.',[
              Productdetail(quantity: 1, category: 'Jacket', currency: 'THB', price: 1790.00),
            ]),
    Uniqlo('assets/images/2.jpg',
            'Cotton Relaxed Ankle Pants | 2026 Model',
            'Soft and comfortable 100% cotton.',[
              Productdetail(quantity: 1, category: 'Pants', currency: 'THB', price: 590.00),
            ]),
    Uniqlo('assets/images/3.jpg',
            'Cotton Relaxed Ankle Pants | 2026 Model',
            'Soft and comfortable 100% cotton.',[
            Productdetail(quantity: 1, category: 'Pants', currency: 'THB', price: 590.00),  
          ]),
    Uniqlo('assets/images/4.jpg',
            'U Crew Neck T-Shirt',
            'A heavyweight cotton jersey fabric with a smooth feel and rugged look. A durable and long-lasting fabric made of thick yarn.',[
            Productdetail(quantity: 1, category: 'T-Shirt', currency: 'THB', price: 290.00),  
          ]),
    Uniqlo('assets/images/5.jpg',
            'AIRism Cotton Pique Polo Shirt',
            'Body: 57% Cotton, 43% Nylon/ Rib: 73% Polyester, 27% Rayon',[
            Productdetail(quantity: 1, category: 'T-Shirt', currency: 'THB', price: 590.00),  
          ]),
    Uniqlo('assets/images/6.jpg',
            'Round Mini Shoulder Bag | 2026 Model',
            'Shoulder strap with buckle makes it easy to wear over winter layers.',[
            Productdetail(quantity: 1, category: 'Bag', currency: 'THB', price: 490.00),  
          ]),
    Uniqlo('assets/images/7.jpg',
            'Seamless Down Short Jacket',
            '',[
            Productdetail(quantity: 1, category: 'Short Jacket', currency: 'THB', price: 2490.00),  
          ]),
    Uniqlo('assets/images/8.jpg',
            'Smooth Cotton Polo Sweater | Striped',
            'Made with Ultra Stretch ribbed fabric.',[
              Productdetail(quantity: 1, category: 'Sweater', currency: 'THB', price: 990.00),
            ]),
    Uniqlo('assets/images/9.jpg',
            'AIRism Cotton T-Shirt',
            'Machine wash cold, Dry Clean, Do not tumble dry.',[
              Productdetail(quantity: 1, category: 'T-Shirt', currency: 'THB', price: 490.00),
            ]),
    Uniqlo('assets/images/10.jpg',
            'Pile Lined Fleece Cardigan | Relaxed',
            'Collarless design can be worn as a middle or outer layer.',[
            Productdetail(quantity: 1, category: 'Cardigan', currency: 'THB', price: 1290.00),  
          ]),
    Uniqlo('assets/images/11.jpg',
            'AIRism Cotton Pique Polo Shirt',
            '"AIRism" fabric with the look of cotton. Stay-fresh comfort."AIRism" fabric with the look of cotton. Stay-fresh comfort.',[
            Productdetail(quantity: 1, category: 'T-Shirt', currency: 'THB', price: 790.00),  
          ]),
    Uniqlo('assets/images/12.jpg',
            'Ultra Stretch Active Jackets',
            'Crisp jersey material made from nylon tricot. Ultra Stretch fabric. With DRY technology.',[
            Productdetail(quantity: 1, category: 'Jackets', currency: 'THB', price: 990.00),  
          ]),
    Uniqlo('assets/images/13.jpg',
            'Smart Ankle Pants (Regular Length 64.5 - 70.5 cm)*',
            'Comfortable elastic waistband looks great with a top tucked in.',[
            Productdetail(quantity: 1, category: 'Pants', currency: 'THB', price: 990.00),  
          ]),
    Uniqlo('assets/images/14.jpg',
            'AIRism Cotton T-Shirt',
            'Machine wash cold, Dry Clean, Do not tumble dry.',[
              Productdetail(quantity: 1, category: 'T-Shirt', currency: 'THB', price: 390.00),
            ]),
    Uniqlo('assets/images/15.jpg','Geared Shorts',
          'Nylon ripstop material with a water-repellent finish. *The finish is not permanent. *The fabric is coated with a water-repellent agent so the effect lasts.',[
            Productdetail(quantity: 1, category: 'Shorts', currency: 'THB', price: 590.00),  
          ]),
  ];
}