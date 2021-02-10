/* Belirti.dartda oluşturduğum Belirti class'ını kullanmak için import ettim. */
import 'file:///D:/Android/covid19test/lib/Belirti.dart';

/* main.dartda kullanmak amacıyla bir class oluşturdum ve değişken tanımladım */
class Test {
  int _BelirtiNumarasi = 0;
/*  Bir liste oluşturdum ve ilgili verileri bu listede tuttum. */
  List<Belirti> _Belirtiler = [
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nBAŞ AĞRISI ', y: false, t: 'images/basagrisi.jpg' ),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nHIRILTI ', y: false, t: 'images/hirilti.jpg' ),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nHALSİZLİK ', y: true, t: 'images/halsizlik.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nHAPŞIRIK ', y: false, t:'images/hapsirik.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nNEFES DARLIĞI ', y: true, t: 'images/nefesdarligi.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nKAŞINTI ', y: false, t: 'images/kasinti.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nÖKSÜRÜK ', y: true, t: 'images/oksuruk.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nGÖZDE KIZARIKLIK ', y: false, t: 'images/gozlerdekizariklik.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nANİ ATEŞ ', y: true, t: 'images/aniates.jpg'),
    Belirti(x: 'Bu Belirtiye Sahipseniz Evet Değilseniz Hayır Butonuna Tıklayınız  \n\nBURUN AKINTISI ', y: false, t: 'images/burunakintisi.jpg')
  ];
/* Belirtiler bitene kadar belirti numarasını arttıran fonksiyon oluşturdum. */
  void sonrakiBelirti() {
    if (_BelirtiNumarasi < _Belirtiler.length - 1) {
      _BelirtiNumarasi++;
    }
  }
/* Her belirtide Fotoğrafını alıcak fonksiyon oluşturdum. */
  String fotoAl(int sayi) {
    return _Belirtiler[sayi].FotoLink;
  }
/* Her belirtide Metini alıcak fonksiyon oluşturdum.*/
  String soruMetniAl() {
    return _Belirtiler[_BelirtiNumarasi].BelirtiMetni;
  }
/* Her belirtide kullanıcının cevabını alıcak fonksiyon oluşturdum */
  bool CevapAl() {
/* 0,1,3,5,7,9'uncu sıradaki belirtiler koronavirüs belirtisi olmadığı için kullanıcı hangi cevabı verirse versin sonuca etki etmemesi amacıyla null değer döndürdüm. */
    if(_BelirtiNumarasi==0||_BelirtiNumarasi==1||_BelirtiNumarasi==3||_BelirtiNumarasi==5||_BelirtiNumarasi==7||_BelirtiNumarasi==9){
      return null;
    }
    else{
      return _Belirtiler[_BelirtiNumarasi].BelirtiCevap;
    }
  }
/* Belirtiler bittiğinde true, bitmediğinde false döndürücek bir fonksiyon oluşturdum */
  bool belirtilerBittiMi() {
    if (_BelirtiNumarasi >= _Belirtiler.length - 1) {
      return true;
    } else {
      return false;
    }
  }
/* Testi resetliycek fonksiyon oluşturdum */
  void reset() {
    _BelirtiNumarasi = 0;
  }
}
