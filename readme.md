# Redmine 3 Timer Plugin

## Nedir?
Redmine iş yönetim sisteminde, kimin hangi işte ne kadar çalıştığını göstermeye yarayan bir eklentidir. 

Eklentinin anasayfasında o projede çalışan tüm kullanıcılar ve projede harcadıkları toplam zaman listelenir. Kullanıcılardan birine tıklandığında ise yan tarafta o kullanıcının zaman harcadığı işler renklendirilerek yuvarlak diyagram şeklinde gösterilir.

## Gereksinimler

Bu eklentinin ek herhangi bir gereksinimi yoktur. Eklenti ile birlikte kullanılan DataTables ve Chart.js kütüphaneleri eklentinin içinde mevcuttur.

## Kurulum

 - Eklentinin github sayfası üzerinden repoyu redmine klasörü altındakği plugins dizinine açın. (redmine/plugins/timer şeklinde olmalı) 
 - Daha sonra ise eklentiyi aktifleştirmek için projenizin ayarlar menüsünden modüllere gelerek Timer modülünü aktif etmeniz gerekmeketedir.
 
## Ekran Görüntüleri
![Screenshot](http://s32.postimg.org/7yc4xyp2t/cccccc.png)


## Proje Hakkında
 - Projedeki çalışanların tüm zaman kayıtlarını çekmek için TimeEntry tablosunu çalışanlara göre gruplayıp, saatleri ise SUM fonksiyonunu kullandım.

 - Projede çalışanlar listelenirken çok fazla girdinin olduğu durumları göz önüne almak gerektiğinde, sayfalandırmak ya da uzunca bir sayfada çalıştırmak yerine; hem daha güzel görünen hem de arama, sıralama gibi işlemleri yapmaya olanak veren DataTables Jquery pluginini kullandım.

 - Bu tablodaki herhangi bir kullanıcının adına tıklandığında ise o kullanıcının hangi işte ne kadar zaman harcadığını tıklandığında yüklenecek şekilde JavaScript kullanarak gerçekledim.

 - Seçilen kullanıcının işlerini gösterirken ise hangi işte ne kadar vakit harcadığını grafiksel olarak göstermek için, Chart.JS kütüphanesine verileri geçirdim.

