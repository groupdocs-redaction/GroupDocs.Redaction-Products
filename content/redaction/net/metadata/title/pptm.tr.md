
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "tr/redaction/net/metadata/title/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "C# içindeki Belgelerden Meta Veri Redaksiyonları"
head_description: "Farklı biçimlerdeki belgeler için filtreler uygulayarak C# içindeki hassas meta verileri yeniden düzenleyin"

############################# Header ############################
title: "C# içindeki PPTM Belgeden Başlık Meta Verilerini Redakt Etme"
description: "GroupDocs.Redaction s API, bir belgenin meta verilerinden herhangi bir gizli veriyi aramaya ve güncellemeye veya kaldırmaya izin verir."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Meta Veri Redaksiyonu nedir?"
    content: |
        Çoğunlukla insanlar bir belgenin metin redaksiyonu ile ilgilenir. Ancak meta veri redaksiyonu da aynı derecede önemlidir. Meta veriler, başkalarıyla paylaşmak istemeyebileceğiniz gizli bilgi içerebilen bir belgenin gizli verileridir.. Meta veri redaksiyonu, istenmeyen veya gizli bilgilerin elektronik belgelerden kaldırılmasını ifade eder. Bir belgenin meta verileri yazar adını içerir, kategori, şirket adı, yorumlar, oluşturma zamanı, son güncelleme ve daha fazlası. Bazen istenmeyen meta veri alanlarını tamamen silmeniz gerekir veya değerlerini güncellemek isteyebilirsiniz. GroupDocs.Redaction API ile bu meta veri özelliklerinden herhangi birine meta veri redaksiyonları uygulayabilirsiniz. İstediğiniz meta verileri filtreleyerek bunları değiştirebilir veya silebilirsiniz. Bu kılavuzda C# içindeki PPTM belgesindeki başlık meta verilerini nasıl düzenleyebileceğinizi açıklayacağız.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "PPTM Belgeden Başlığı Redact"
      content_left: |
        Aşağıdaki kod, PPTM belgedeki hassas verileri aramanıza ve çıkarmanıza olanak tanır. Filtreyi ayarlayarak, örneğin MetadataFilter.title öğesi olarak redaksiyon kapsamını ayarlayabilirsiniz. “Title” özelliği hariç, tüm meta veri öğelerinde normal ifadelerin eşleşmelerini geri alır:
        

      title_right: "PPTM Meta Veriler Nasıl Redakte Edilir"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) sınıfının bir örneğini oluşturun ve PPTM dosyasını yükleyin
        * Belgenin meta verilerinden hassas verileri bulmak ve değiştirmek için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. Aşağıdaki kodda MetadataFilter.title kullanın
        * [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) nesnesiyle [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) yöntemini çağırın        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs dosyası"

    - title_left: "C# içindeki PPTM Meta Verileri Kaldır"
      content_left: |
        EraseMetadatareDaction sınıfını kullanarak belgedeki tüm veya belirli meta verileri boş (boş veya minimal) değerlerle değiştirebilirsiniz. Aşağıdaki kod, bir meta veri özelliğinin bir PPTM belgesinden nasıl filtreleyip kaldırılabileceğini gösterir. Aşağıdaki örnek, belgenin tüm özelliklerini boşa çıkarır:
        
        
      title_right: "PPTM Meta Verileri Sil"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) sınıfının bir örneğini oluşturun ve PPTM dosyasını yükleyin
        * Belgenin meta verilerini kaldırmak için [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. MetadataFilter.all'i aşağıdaki kodda MetadataFilter.title ile değiştirin 
        * [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) nesnesiyle [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) yöntemini çağırın
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs dosyası"

    - title_left: "Sistem Gereksinimleri"
      content_left: |
        GroupDocs.Redaction for .NET .NET platformunun kurulu olduğu 32 bit veya 64 bit işletim sistemlerini destekler. Yüklenecek herhangi bir harici yazılım veya üçüncü taraf aracı gerektirmez. Sistem gereksinimleri kılavuzunun tamamı için lütfen [sistem gereksinimleri] sayfasını ziyaret edin (https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Kurulum Talimatları"
      content_right: |
        Komut satırından ````nuget install GroupDocs.Redaction ````` veya ```Install-Package GroupDocs.Redaction``` ``ile Visual Studio'nun Paket Yöneticisi Konsolu aracılığıyla yükleyin. 
        Alternatif olarak, çevrimdışı MSI yükleyicisini veya DLL'leri [downloads](https://downloads.groupdocs.com/redaction/net) adresinden ZIP dosyasına alın ve projenizde manuel olarak referans alın.

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