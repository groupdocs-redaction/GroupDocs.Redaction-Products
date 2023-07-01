---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "tr/redaction/java/text/pdf"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "PDF 'de Tam Deyim/Düzenli İfade yoluyla PDF Metni Redakt"
head_description: "GroupDocs.Redaction s Java API, geliştiricilerin PDF DOC DOCX RTF XLSX CSV PPT PPTX ve görüntülerden Java içindeki tam ifade veya düzenli ifade yoluyla metni yeniden düzenlemesine olanak tanır"

############################# Header ############################
title: "Java kullanarak PDF Dosyalarından Metin Nasıl Redakte Edact Edilir, Gizlenir veya Kaldırılır"
description: "GroupDocs.Redaction s Java API, kelime işlem belgelerinden, çalışma sayfalarından, sunumlardan, PDF s ve resimlerden hassas metni redakte etmeye, gizlemeye veya kaldırmaya izin verir."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Metin Redaksiyonu nedir?"
    content: |
        Metin Redaksiyonu, gizli veya istenmeyen metin veya bilgilerin dijital belgelerden kaldırılması ve onu içeren belgenin veya paragrafın geri kalanını bozulmadan bırakma işlemidir. Redaksiyon, kullanıcıların yanı sıra kuruluşun da hassas bilgilerini gizleyerek veya kalıcı olarak kaldırarak korumalarına yardımcı olur. GroupDocs.Redaction Java API kullanıcıları artık kelime işlem belgelerinden, çalışma sayfalarından, sunulardan, PDF ve raster görüntü dosyalarından hassas metinleri redakte edebilir, gizleyebilir veya kaldırabilir. API, belgelerdeki özel bilgilerin yeniden düzenlenmesi için çok çeşitli seçenekler ve yöntemler sunar. Tam eşleme veya normal ifadeler kullanarak arama ve redaksiyonu destekler, Metinsel (muafiyet kodları) veya grafiksel (renkli dikdörtgenler) redaksiyonları ve daha fazlasını kullanın. Öyleyse neden API'yi indirerek ve temel ve gelişmiş özelliklerini keşfederek belge redaksiyon sürecinizi otomatikleştirmeyi denemiyorsunuz? 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redact PDF Java içindeki Tam İfade"
      content_left: |
        GroupDocs.Redaction Belgelerinizden hassas veya özel nitelikteki verileri kolayca redakte etmenizi sağlar. En popüler redaksiyon durumu, bir belgeden bir metni kaldırmaktır. 

        Aşağıdaki kod, tam ifade yoluyla bir belgenin belirli bir bölümüne metin redaksiyonu uygulamak için kullanılabilir. Kullanıcıların kişisel “Michal Clark” ifadesini kişisel (veya herhangi bir muafiyet kodu) ile değiştirmelerine olanak tanır,

      title_right: "PDF 'den Hassas Verileri Kaldır"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve PDF dosyasını yükleyin
        * ExactPhraseredAction sınıfının yeni örneğiyle Redactor.apply yöntemini çağırın
        * [ExactPhraseredAction] nesnesi ile redactor.save yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Değişiklikleri kaydetmek için redactor.save yöntemini çağırın 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redactexactphrase.java dosyası"
      
    - title_left: "PDF 'de Büyük/Büyük/Büyük/küçük harf Duyarlı Metin Redaksiyonu"
      content_left: |
        Aşağıdaki örnek, kullanıcıların bir belge içindeki belirli bir metin parçasını kaldırmak veya gizlemek için tam kelime öbeği büyük/küçük harfe duyarlı redaksiyon gerçekleştirmesine olanak tanır. Varsayılan olarak, tam kelime öbeği araması büyük/küçük harfe duyarsızdır. 
        
      title_right: "Java üzerinden Büyük/Büyük/küçük harfe duyarlı Redaksiyon gerçekleştirin"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve PDF dosyasını yükleyin
        * ExactPhraseredAction sınıfının yeni örneğiyle Redactor.apply yöntemini çağırın
        * [ExactPhraseredAction] nesnesi ile redactor.save yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Değişiklikleri kaydetmek için redactor.save yöntemini çağırın 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "casesensitiveredaction.java dosyası"

    - title_left: "Renk Kutusu aracılığıyla PDF içindeki Metni Redakt"
      content_left: |
        Redakte bir metni kaldırmak veya oraya bir dize yerleştirmek yerine, düzeltilmiş metnin üzerine renk kutusu koymak da mümkündür. Bu durumda eşleşen metin kaldırılacak ve düzeltilmiş metnin üzerine renkli bir dikdörtgen yerleştirilecektir.
        
      title_right: "Java içindeki Metni Kaldırmak için Renk Kutusunu Kullanın"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve PDF dosyasını yükleyin
        * ExactPhraseredAction sınıfının yeni örneğiyle Redactor.apply yöntemini çağırın
        * [ExactPhraseredAction] nesnesi ile redactor.save yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Değişiklikleri kaydetmek için redactor.save yöntemini çağırın 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redacttextusingcolorbox.java dosyası"

    - title_left: "Sistem Gereksinimleri"
      content_left: |
        GroupDocs.Redaction for Java API'ler tüm büyük platformlarda ve işletim sistemlerinde desteklenir. Sistem gereksinimleri kılavuzunun tamamı için lütfen [sistem gereksinimleri] sayfasını ziyaret edin (https://docs.groupdocs.com/redaction/java/system-requirements) Aşağıdaki kodu çalıştırmadan önce, sisteminizde aşağıdaki ön koşulların yüklü olduğundan emin olun:
        * İşletim Sistemleri: Microsoft Windows, Linux, Mac OS
        * Geliştirme Ortamı: NetBeans, Intellij IDEA, Eclipse vb
        * Java Çalışma Zamanı Ortamı: J2SE 6.0 ve üzeri
        * [Maven] 'den GroupDocs.Redaction for Java 'in en son sürümünü edinin (https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Neden GroupDocs.Redaction Kullanmalısınız"
      content_right: |
        * Kullanıcıların özel belge biçimleri ve redaksiyon türleri eklemelerine izin ver
        * Hassas bilgileri kaldırmak için ek bir yazılıma gerek yoktur
        * Sayfa aralığı oluşturma belgesini PDF olarak ayarlayabilme
        * Farklı meta veri türlerini yeniden düzenlemenin kolay yolu: yazar adı, sürümü, başlığı, konusu, açıklaması ve daha fazlası
        * Belge bilgisi çıkarma - dosya türü, sayfa sayısı vb.

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---