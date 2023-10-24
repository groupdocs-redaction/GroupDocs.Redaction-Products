
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "tr/redaction/java/metadata/author/xls"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLSM XLSX XLT XLTM XLTX  
ad_headline: "Meta Verileri Redakt | Java"
ad_description: "Java içindeki XLS Meta Verilerden Author Name düzenleyin"
############################# Head ############################
head_title: "Java içindeki XLS Meta Verilerden Yazar Adını Kaldır VEYA Güncelle"
head_description: "GroupDocs.Redaction s, filtreleri kullanarak herhangi bir meta veri özelliğini aramanıza ve değiştirmeye/kaldırmanıza olanak tanıyan esnek bir API sağlar."

############################# Header ############################
title: "Java içindeki XLS Meta Verilerinden Yazar Adını Kaldır VEYA Güncelle"
description: "GroupDocs.Redaction s, filtreleri kullanarak herhangi bir meta veri özelliğini aramanıza ve değiştirmeye/kaldırmanıza olanak tanıyan esnek bir API sağlar."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Meta Veri Redaksiyonu nedir?"
    content: |
        Redaksiyon, istenmeyen veya gizli bilgilerin elektronik belgelerden kaldırılmasını ifade eder. PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX ve diğerleri dahil olmak üzere tüm dosya biçimleri bazı meta veri özelliklerine sahiptir. Bu özellikler yazar adı, kategori, şirket adı, yorumlar, oluşturma zamanı, son güncelleme ve çok daha fazlasını içerir. Bazen istenmeyen meta veri alanlarını tamamen silmeniz gerekir veya değerlerini güncellemek isteyebilirsiniz. Çeşitli araçlar ve teknikler kullanılarak görüntülenebilir dosyalar ile ilişkili bazı gizli veriler de vardır. Bu verilere hiç kimse tarafından erişilmesini istemediğiniz birçok durum vardır. GroupDocs.Redaction API ile bu meta veri özelliklerinden herhangi birine meta veri redaksiyonları uygulayabilirsiniz. İstediğiniz meta verileri filtreleyerek bunları değiştirebilir veya silebilirsiniz. Bu kılavuzda, Java içindeki XLS meta verilerinden yazar adını nasıl çıkarabileceğinizi açıklayacağız.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Java içindeki Meta Verileri Redact XLS"
      content_left: |
        Aşağıdaki kod, XLS belgedeki hassas verileri aramanıza ve çıkarmanıza olanak tanır. Filtreyi ayarlayarak, örneğin MetadataFilter.Author öğesi olarak redaksiyon kapsamını ayarlayabilirsiniz. “Yazar” özelliği hariç, tüm meta veri öğelerinde normal ifadeler eşleşmelerini geri alır: 

      title_right: "XLS Meta Veriler Nasıl Redakte Edilir"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve XLS dosyasını yükleyin
        * Belgenin meta verilerinden hassas verileri bulmak ve değiştirmek için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. Aşağıdaki kodda MetadataFilters.AUTHOR kullanın
        * [MetadatasEarchRedAction] nesnesiyle redactor.save yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e3926608f913f15d261b194084c179dd"
      gistfile: "RedactAuthorMetadata.java dosyası"
      
    - title_left: "Java içindeki Yazar Meta Verilerini Kaldır"
      content_left: |
        EraseMetadatareDaction sınıfını kullanarak belgedeki tüm veya belirli meta verileri boş (boş veya minimal) değerlerle değiştirebilirsiniz. Aşağıdaki kod, bir meta veri özelliğinin bir XLS belgesinden nasıl filtreleyip kaldırılabileceğini gösterir. Aşağıdaki örnek, belgenin tüm özelliklerini boşa çıkarır: 
        
      title_right: "XLS Meta Verileri Sil"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) sınıfının bir örneğini oluşturun ve XLS dosyasını yükleyin
        * Belgenin meta verilerini kaldırmak için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. MetadataFilter.all'i aşağıdaki kodda MetadataFilter.AUTHOR ile değiştirin
        * [MetadatasEarchRedAction] nesnesiyle redactor.save yöntemini çağırın (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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