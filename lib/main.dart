import 'package:flutter/material.dart';
import 'travelling.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Travelling> list_travel = [
    Travelling(id: 1, tour_name: "Orchid Forest", image_url: "https://media.travelingyuk.com/wp-content/uploads/2017/10/page-69.jpg", description: "Travel Blog Reservasi – Bukan Bandung namanya kalau nggak memberikan kejutan seru untuk para traveler. Setelah The Lodge Maribaya, Farm House, dan De’Ranch, kini hadir tempat wisata baru yang nggak kalah keren bernama Orchid Forest Lembang. Destinasi satu ini lagi ngehits banget lho di kalangan anak muda Kota Kembang. Kalau kamu adalah tipe traveler yang nggak mau ketinggalan tren tentu tak boleh melewatkan tempat wisata alam ini begitu saja. Sebelum mengemas ransel dan liburan ke sana, simak yuk ulasan tentang Orchid Forest di sini!", location: "Bandung", published_date: "10 Juni 2019"),
    Travelling(id: 2, tour_name: "Gunung Everest", image_url: "https://static01.nyt.com/images/2018/06/20/world/00everest-10/merlin_139940415_e5de3372-6e7c-4a0a-bd90-ff77528ba1f0-articleLarge.jpg?quality=75&auto=webp&disable=upscale", description: "Gunung Everest (bahasa Inggris: Mount Everest) adalah gunung tertinggi di dunia (jika diukur dari permukaan laut). Rabung puncaknya menandakan perbatasan antara Nepal dan Tibet; puncaknya berada di Tibet. Di Nepal, gunung ini disebut Sagarmatha (सगरमाथा, bahasa Sanskerta untuk 'Kepala Langit') dan dalam bahasa Tibet Chomolangma atau Qomolangma ('Bunda Semesta'), dilafalkan dalam bahasa Tionghoa 珠穆朗瑪峰 (pinyin: Zhūmùlǎngmǎ Fēng). ", location: "Tibet", published_date: "07 Maret 2019"),
    Travelling(id: 3, tour_name: "Tangkuban Perahu", image_url: "http://pesonawisataindonesia.com/wp-content/uploads/2015/09/Pesona-Wisata-Pesona-Tangkuban-Perahu.jpg", description: "Tangkubanperahu Bandung merupakan segelintir dari banyak tujuan wisata favorit di Lembang yang dimiliki oleh Kabupaten Bandung. Dimana wisata gunung Bandung ini berada di propinsi Jawa Barat, berjarak 20 KM menuju ke arah utara kota Bandung. Ketika menuju lokasi wisata, pengunjung akan disuguhkan rimbun pohon pinus dan hamparan perkebunan kebun teh yang berada di sekitar-nya. Menurut administratif, gunung aktif Lembang Bandung memiliki ketinggian sekitar 2.084 meter.", location: "Bandung", published_date: "09 Juli 2019"),
    Travelling(id: 4, tour_name: "D'Peak", image_url: "http://www.satulensa.com/wp-content/uploads/2017/07/The-Peak-Lembang-Restoran-Indah-Nan-Romantis-Di-Kota-Bandung.jpg", description: "Sahabat traveler’s, anda sedang mencari Restaurant di Bandung tempat menikmati lezatnya menu kuliner sambil bisa merasakan nuansa eksotis dan romantisnya Bandung ?. Jika iya, maka The Peak Bandung adalah salah satu jawaban sekaligus solusi bagi anda yang ingin merasakan sensasi Kuliner khas Paris Van Java. Sahabat traveler’s, The Peak Bandung adalah sebuah cafe & Resto di Bandung yang lokasinya tidak jauh dari kawasan Tempat Wisata Di Lembang terkenal dan Maribaya,", location: "Bandung", published_date: "02 Februari 2019"),
    Travelling(id: 5, tour_name: "Dusun Bambu", image_url: "https://www.nativeindonesia.com/wp-content/uploads/2017/08/Dusun-bambu-lembang-bandung.jpg", description: "Sebuah taman rekreasi untuk keluarga berbasis ecotourism di Jawa Barat. Kombinasi antara keindahan alam dan budaya tradisional sunda, Dusun Bambu menyediakan berbagai macam fasilitas untuk setiap pengunjungnya. Kampung Layung Cottage dan Sayang Heulang Camp sebagai penginapan thematic yang sangat cocok untuk menghilangkan penat dari rutinitas pekerjaan anda, 4 buah restaurant dengan masing masing keunikan dan kelezatan kulinernya yang mampu memanjakan perut, juga berbagai macam wahana bermain baik untuk dewasa maupun anak akan membuat liburan anda semakin menyenangkan.", location: "Bandung", published_date: "05 Agustus 2019")
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Travel Article",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Travel Article"),
          centerTitle: true
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: list_travel.length,
              itemBuilder: (context, index){
                return Card(
                  elevation: 4,
                  child: Column(
                    children: <Widget>[
                      Image.network(list_travel[index].image_url),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        list_travel[index].tour_name,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        list_travel[index].published_date,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    list_travel[index].location,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              list_travel[index].description,
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
          ),
        ),
      ),
    );
  }

}