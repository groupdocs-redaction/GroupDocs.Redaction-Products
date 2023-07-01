
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "tr/redaction/net/metadata/createdtime/pps"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "C# içindeki Belgelerden Hassas Meta Verileri Redakte Etme"
head_description: "Farklı biçimlerdeki belgeler için filtreler uygulayarak meta veri redaksiyonu uygulayın"

############################# Header ############################
title: "C# içindeki PPS belgeden oluşturulan zaman Meta Verilerini yeniden düzenleyin"
description: "GroupDocs.Redaction s, filtreleri kullanarak herhangi bir meta veri özelliğini aramanıza ve değiştirmeye/kaldırmanıza olanak tanıyan esnek bir API sağlar."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Meta Veri Redaksiyonu nedir?"
    content: |
        PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX ve diğerleri dahil olmak üzere tüm dosya biçimleri bazı meta veri özelliklerine sahiptir. Bu özellikler yazar adı, kategori, şirket adı, yorumlar, oluşturma zamanı, son güncelleme ve çok daha fazlasını içerir. Redaksiyon, istenmeyen veya gizli bilgilerin elektronik belgelerden kaldırılmasını ifade eder. Bazen istenmeyen meta veri alanlarını tamamen silmeniz gerekir veya değerlerini güncellemek isteyebilirsiniz. Çeşitli araçlar ve teknikler kullanılarak görüntülenebilir dosyalar ile ilişkili bazı gizli veriler de vardır. Bu verilere hiç kimse tarafından erişilmesini istemediğiniz birçok durum vardır. GroupDocs.Redaction API ile bu meta veri özelliklerinden herhangi birine meta veri redaksiyonları uygulayabilirsiniz. İstediğiniz meta verileri filtreleyerek bunları değiştirebilir veya silebilirsiniz. Bu kılavuzda C# içindeki PPS belgesinden oluşturuldu zaman meta verilerini nasıl redakte edebileceğinizi açıklayacağız.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "C# içindeki PPS öğesinden Meta Verileri Kaldır"
      content_left: |
        EraseMetadatareDaction sınıfını kullanarak PPS belgedeki tüm veya belirli meta verileri boş değerlerle değiştirebilirsiniz. Aşağıdaki kod, bir meta veri özelliğinin bir PPS belgesinden nasıl filtreleyip kaldırılabileceğini gösterir. Aşağıdaki örnek, belgenin tüm özelliklerini boşa çıkarır:
        

      title_right: "PPS belgesinin meta verilerini sil"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) sınıfının bir örneğini oluşturun ve PPS dosyasını yükleyin
        * Belgenin meta verilerini kaldırmak için [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. MetadataFilter.all'ı aşağıdaki kodda MetadataFilter.createdTime ile değiştirin
        * [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) nesnesiyle [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) yöntemini çağırın        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs dosyası"

    - title_left: "C# içindeki Meta Verileri Redact PPS"
      content_left: |
        Aşağıdaki kod, PPS belgedeki hassas verileri aramanıza ve çıkarmanıza olanak tanır. Filtreyi ayarlayarak redaksiyon kapsamını ayarlayabilirsiniz, örn. Metadatafilter.createdTime. - “Createdtime” özelliği hariç tüm meta veri öğelerinde normal ifadeler eşleşmelerini geri alır:
        
        
      title_right: "PPS Meta Veriler Nasıl Redakte Edilir"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) sınıfının bir örneğini oluşturun ve PPS dosyasını yükleyin
        * Belgenin meta verilerinden hassas verileri bulmak ve değiştirmek için [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) sınıfının bir örneğini oluşturun
        * Filtreyi ayarlayarak redaksiyon kapsamını ayarlayın, örn. Aşağıdaki kodda MetadataFilter.createdTime kullanın 
        * [MetadatasEarchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) nesnesiyle [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) yöntemini çağırın
        
      gisthash: "4bc023c912c5eb34b1490c159a35a6ea"
      gistfile: "RedactCreatedTimeMetadata.cs dosyası"

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