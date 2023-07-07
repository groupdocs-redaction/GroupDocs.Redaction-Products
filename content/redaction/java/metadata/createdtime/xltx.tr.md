
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "tr/redaction/java/metadata/createdtime/xltx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM  
ad_headline: "Meta Verileri Redact | Java"
ad_description: "Java içindeki XLTX Belgeden Meta Veri Redaksiyonu"
############################# Head ############################
head_title: "Java içindeki XLTX Belgeden Meta Veri Redaksiyonu"
head_description: "Java için GroupDocs.Redaction s API'sini kullanarak belirli meta veri özelliklerini seçmek için filtreler uygulayarak çeşitli belge türlerinin meta verilerini kolayca arayın, değiştirin, kaldırın veya düzenleyin."

############################# Header ############################
title: "Java içindeki XLTX Belgeden Meta Veri Redaksiyonu"
description: "Java için GroupDocs.Redaction s API'sini kullanarak belirli meta veri özelliklerini seçmek için filtreler uygulayarak çeşitli belge türlerinin meta verilerini kolayca arayın, değiştirin, kaldırın veya düzenleyin."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Meta Veri Redaksiyonu'nu Kullanmaya Başlarken"
    content: |
        Bazen istenmeyen meta veri alanlarını tamamen silmeniz gerekir veya değerlerini güncellemek isteyebilirsiniz. Çeşitli araçlar ve teknikler kullanılarak görüntülenebilen dosyalarla ilişkili gizli veriler de vardır. Bu verilerin kimsenin erişebilmesini istemediğiniz birçok durum vardır. Redaksiyon, istenmeyen veya gizli bilgilerin çeşitli belgelerden kaldırılması anlamına gelir. PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX ve diğerleri dahil olmak üzere tüm dosya biçimleri belirli meta veri yapılarına sahiptir. Meta veri özellikleri arasında yazar adı, kategori, şirket adı, yorumlar, oluşturma zamanı ve son güncelleme vb. GroupDocs.Redaction API ile bu meta veri alanlarından herhangi birine meta veri redaksiyonu uygulayabilirsiniz. İstediğiniz meta verileri filtreleyerek bunları değiştirebilir veya silebilirsiniz. Bu kılavuzda Java içindeki XLTX belgesinden meta veri redaksiyonunu nasıl uygulayabileceğinizi açıklayacağız.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "XLTX Dosyasının Meta Verilerini Redakt Et"
      content_left: |
        Aşağıdaki kod, XLTX belgedeki hassas verileri aramanıza ve çıkarmanıza olanak tanır. Filtreyi ayarlayarak redaksiyon kapsamını ayarlayabilirsiniz, örn. Metadatafilter.createdTime. “Createdtime” özelliği hariç, tüm meta veri öğelerinde normal ifadelerin eşleşmelerini geri alır: 

      title_right: "Oluşturma Zamanı Meta Verilerini Redakt Etme Adımları"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve XLTX dosyasını yükleyin
        * Belgenin meta verilerinden hassas verileri bulmak ve değiştirmek için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. Aşağıdaki kodda Metadatafilters.createdTime kullanın
        * [MetadatasEarchRedAction] nesnesiyle kaydetme yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java dosyası"
      
    - title_left: "Java içindeki Createdtime Meta Verilerini Kaldır"
      content_left: |
        EraseMetadatareDaction sınıfını kullanarak belgedeki tüm veya belirli meta verileri boş (boş veya minimal) değerlerle değiştirebilirsiniz. Aşağıdaki kod, bir meta veri özelliğinin bir XLTX belgesinden nasıl filtreleyip kaldırılabileceğini gösterir. Aşağıdaki örnek, belgenin tüm özelliklerini boşa çıkarır: 
        
      title_right: "XLTX Meta Veriler Nasıl Silinebilir"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve XLTX dosyasını yükleyin
        * Belgenin meta verilerini kaldırmak için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. MetadataFilter.all'ı aşağıdaki kodda MetadataFilter.createdTime ile değiştirin
        * [MetadatasEarchRedAction] nesnesiyle kaydetme yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java dosyası"

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