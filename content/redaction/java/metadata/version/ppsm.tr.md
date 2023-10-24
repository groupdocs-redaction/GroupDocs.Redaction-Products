
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "tr/redaction/java/metadata/version/ppsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Meta Verileri Redakt | Java"
ad_description: "Java içindeki PPSM Meta Verilerden Sürümü Redakt"
############################# Head ############################
head_title: "Java içindeki PPSM Belgesinden Sürüm Meta Verilerini Redakt Et"
head_description: "GroupDocs.Redaction 30'dan fazla belge türünden gizli bilgileri kaldırmanıza veya düzenlemenize olanak tanıyan güçlü bir temizlik API'sidir."

############################# Header ############################
title: "Java içindeki PPSM Belgesinden Sürüm Meta Verilerini Redakt Et"
description: "GroupDocs.Redaction 30'dan fazla belge türünden gizli bilgileri kaldırmanıza veya düzenlemenize olanak tanıyan güçlü bir temizlik API'sidir."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Meta Veri Redaksiyonu nedir?"
    content: |
        Belgeyi orijinal bir biçimde kaydetmek, tüm gizli verileri kaldırmak için meta verilerinin silinmesini veya yeniden düzenlenmesini gerektirir. Bu amaçlar için GroupDocs.Redaction meta veri redaksiyon API'si sağlar. GroupDocs.Redaction API, düzenlenmiş belgeleri PDF 'de kaydetmeye, tüm sayfaları raster görüntülere dönüştürmeye veya daha fazla düzenleme için düzeltilmiş belgeyi orijinal biçiminde kaydetmeye izin verir. PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX ve diğerleri dahil olmak üzere tüm dosya biçimleri bazı meta veri özelliklerine sahiptir. Bu özellikler yazar adı, kategori, şirket adı, yorumlar, oluşturma zamanı, son güncelleme ve çok daha fazlasını içerir.Ayrıca çeşitli araçlar ve teknikler kullanılarak görüntülenebilir dosyalar ile ilişkili bazı gizli veriler vardır. GroupDocs.Redaction API ile bu meta veri özelliklerinden herhangi birine meta veri redaksiyonları uygulayabilirsiniz. İstediğiniz meta verileri filtreleyerek bunları değiştirebilir veya silebilirsiniz. Bu kılavuzda Java içindeki PPSM belgesinden Sürüm meta verilerini nasıl yeniden düzenleyebileceğinizi açıklayacağız.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Java içindeki Meta Verileri Redact PPSM"
      content_left: |
        Aşağıdaki kod, PPSM belgedeki hassas verileri aramanıza ve çıkarmanıza olanak tanır. Filtreyi ayarlayarak redaksiyon kapsamını ayarlayabilirsiniz, örn. MetadataFilter.version. “Sürüm” özelliği hariç, tüm meta veri öğelerinde normal ifadelerin eşleşmelerini geri alır: 

      title_right: "PPSM Meta Veriler Nasıl Redakte Edilir"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve PPSM dosyasını yükleyin
        * Belgenin meta verilerinden hassas verileri bulmak ve değiştirmek için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. Aşağıdaki kodda MetadataFilters.version kullanın
        * [MetadatasEarchRedAction] nesnesiyle kaydetme yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java dosyası"
      
    - title_left: "Java içindeki PPSM Meta Verileri Kaldır"
      content_left: |
        EraseMetadatareDaction sınıfını kullanarak belgedeki tüm veya belirli meta verileri boş (boş veya minimal) değerlerle değiştirebilirsiniz. Aşağıdaki kod, bir meta veri özelliğinin bir PPSM belgesinden nasıl filtreleyip kaldırılabileceğini gösterir. Aşağıdaki örnek, belgenin tüm özelliklerini boşa çıkarır: 
        
      title_right: "Sürüm Meta Verileri Nasıl Silinebilir"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve PPSM dosyasını yükleyin
        * Belgenin meta verilerini kaldırmak için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. MetadataFilter.all'i aşağıdaki kodda MetadataFilter.version ile değiştirin
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