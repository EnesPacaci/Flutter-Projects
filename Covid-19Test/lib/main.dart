import 'package:flutter/material.dart';
/* Test.dart'da oluşturduğum Test class'ını kullanmak için import ettim. */
import 'file:///D:/Android/covid19test/lib/Test.dart';
/* Alerti kullanmak için import ettim. */
import 'package:rflutter_alert/rflutter_alert.dart';
/* KoronaTestler sınıfını çalıştırdım.Test sınıfından nesne oluşturdum ve değişken tanımladım. */
void main() => runApp(KoronaTestler());
Test KoronaTest = Test();
int fotosayi = 0;

class KoronaTestler extends StatelessWidget {
  @override
/* Arka plan rengini ve sayfanın kenarındaki boşlukları ayarladım. */
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade400,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: KoronaTestPage(),
          ),
        ),
      ),
    );
  }
}

class KoronaTestPage extends StatefulWidget {
  @override
  _Koronavirus createState() => _Koronavirus();
}

class _Koronavirus extends State<KoronaTestPage> {
/* testSonucu'nda kullanmak amacıyla bir değişken oluşturdum. */
  int KoronaBelirtisi=0;
/* Testin sonucuna göre kullanıcının alacağı cevapları bulunduran fonksiyon oluşturdum. */
  void testSonucu() {
    setState(() {
/* Testin bitip bitmediğini kontrol ettim. */
      if (KoronaTest.belirtilerBittiMi() == true) {
/* Eğer kullanıcıda 1 adet koronavirüs belirtisi varsa kullanıcı aşağıdaki alerti ekranında görecek. */
        if(KoronaBelirtisi==1){
/* Alertin başlığını,içeriğini ayarladım.Alertin altındaki butonun rengini,şeklini ayarladım.Butonun üzerindeki yazıyı düzenledim. */
          Alert(
            context: context,
            type: AlertType.info,
            title: 'Koronavirüs Belirti Testiniz Bitti \nSONUÇ:',
            desc: 'Bir Adet Korona Virüs Belirtisine Sahipsiniz,Eğer Belirti Aşırı Derecedeyse Doktorunuza Danışınız.\nSağlıklı Günler',
            buttons: [
              DialogButton(
                child: Text(
                  "BİTİR",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0)
                ]),
              ),
            ],
          ).show();
        }
/* Eğer kullanıcıda 1'den fazla 4'den az koronavirüs belirtisi varsa kullanıcı aşağıdaki alerti ekranında görecek. */
        else if(KoronaBelirtisi>1&&KoronaBelirtisi<4){
/* Alertin başlığını,içeriğini ayarladım.Alertin altındaki butonun rengini,şeklini ayarladım.Butonun üzerindeki yazıyı düzenledim. */
          Alert(
            context: context,
            type: AlertType.info,
            title: 'Koronavirüs Belirti Testiniz Bitti \nSONUÇ:',
            desc: 'Birden Çok Korona Virüs Belirtisine Sahipsiniz,Doktorunuza Danışınız veya En Yakın Sağlık Kuruluşuna Gidip Test Yaptırınız.\nSağlıklı Günler',
            buttons: [
              DialogButton(
                child: Text(
                  "BİTİR",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0)
                ]),
              ),
            ],
          ).show();
        }
/* Eğer kullanıcıda 4 adet koronavirüs belirtisi varsa kullanıcı aşağıdaki alerti ekranında görecek. */
        else if(KoronaBelirtisi==4){
/* Alertin başlığını,içeriğini ayarladım.Alertin altındaki butonun rengini,şeklini ayarladım.Butonun üzerindeki yazıyı düzenledim. */
          Alert(
            context: context,
            type: AlertType.info,
            title: 'Koronavirüs Belirti Testiniz Bitti \nSONUÇ:',
            desc: 'Korona Virüs Belirtilerinin Hepsine Sahipsiniz,En yakın Sağlık Kuruluşuna Gidip Test Yaptırınız.\nSağlıklı Günler',
            buttons: [
              DialogButton(
                child: Text(
                  "BİTİR",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () => Navigator.pop(context),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0)
                ]),
              ),
            ],
          ).show();
        }
/* Eğer kullanıcıda koronavirüs belirtisi yoksa kullanıcı aşağıdaki alerti ekranında görecek. */
        else if(KoronaBelirtisi==0){
/* Alertin başlığını,içeriğini ayarladım.Alertin altındaki butonun rengini,şeklini ayarladım.Butonun üzerindeki yazıyı düzenledim. */
          Alert(
            context: context,
            type: AlertType.info,
            title: 'Koronavirüs Belirti Testiniz Bitti \nSONUÇ:',
            desc: 'Korona Virüs Belirtilerinden Hiçbirine Sahip Değilsiniz.\nSağlıklı Günler',
            buttons: [
              DialogButton(
                child: Text(
                  "BİTİR",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                  onPressed: () => Navigator.pop(context),
                  gradient: LinearGradient(colors: [
                      Color.fromRGBO(116, 116, 191, 1.0),
                  Color.fromRGBO(52, 138, 199, 1.0)
                  ]),
              ),
            ],
          ).show();
        }
/* Testin tekrar başlaması için testi resetledim ve baştan başlaması gereken değerleri 0 yaptım. */
        KoronaBelirtisi=0;
        fotosayi = 0;
        KoronaTest.reset();
      }
/* Test bitmediyse birsonraki belirtiye geçicek. */
      else{
        KoronaTest.sonrakiBelirti();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
/* Mesafeyi ve boşlukları ayarladım.soruMetniAl fonksiyonunu çağırıp yazıyı merkeze yerleştirdim,yazının boyutunu ve rengini ayarladım. */
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                KoronaTest.soruMetniAl(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
/* Fotoğrafları çağırıp bu fotoğrafların boyutunu ayarladım. */
        Container(
          child: Image.asset(
            KoronaTest.fotoAl(fotosayi),
            width: 400.0,
            height: 400.0,
          ),
        ),
        Row(
        children: <Widget>[
/* Soldaki Evet butonunu oluşturdum,boşlukları ayarladım,butonun rengini ve butonun üzerinde bulunan yazının fontunu,rengini belirledim. */
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text(
                    'Evet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
/* Butona tıklandığında eğer kullanıcı doğru cevabı vermişse tiklama fonksiyonu true dönücek , yanlış cevabı vermişse tiklama fonksiyonu false dönücek. */
                  onPressed: () {
                    if(KoronaTest.CevapAl()==true)
                      tiklama(true);
                    else{
                      tiklama(false);
                    }
                  },
                ),
              ),
            ),
/* Sağdaki Hayır butonunu oluşturdum,boşlukları ayarladım,butonun rengini ve butonun üzerinde bulunan yazının fontunu,rengini belirledim. */
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    'Hayır',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
/* Butona tıklandığında eğer kullanıcı yanlış cevabı vermişse tiklama fonksiyonu true dönücek , doğru cevabı vermişse tiklama fonksiyonu false dönücek. */
                  onPressed: () {
                    if(KoronaTest.CevapAl()==false)
                      tiklama(true);
                    else{
                      tiklama(false);
                    }

                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
/* tiklama fonksiyonu oluşturdum.Eğer tiklama fonksiyonunun içerisindeki kontrol doğruysa Koronabelirtisi 1 artacak.Aynı zamanda tiklama fonksiyonu çalıştığında fotosayisinı 1 arttıracak ve testSonucu fonksiyonunu çalıştıracak. */
  void tiklama(bool kontrol){
    if(kontrol == true){
      setState(() {
        KoronaBelirtisi++;
      });
    }
    fotosayi++;
    testSonucu();

  }
}