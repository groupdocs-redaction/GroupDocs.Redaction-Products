---
############################# Static ############################
layout: "autogen"
draft: false
path: "tr/redaction/net/text/xlsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "XLSM Dokümanlardaki Hassas Bilgileri .NET Core Aracılığıyla Çıkartın"
head_description: "Farklı biçimlerdeki belgeler için tam ifade veya normal ifade kullanarak metin redaksiyonu uygulayın"

############################# Header ############################
title: ".NET Temel Uygulamada C# aracılığıyla XLSM Dosyayı Düzeltin"
description: "Office ve OpenOffice Belgeleri, E-Tablolar ve Sunumların yanı sıra Windows, Linux ve macOS'ta XLSM'te Metin Arayın ve Değiştirin"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API için Belge Redaksiyonu"
    content: |
        PDF, Word, Excel, PowerPoint belgelerinden ve resimlerinden hassas ve sınıflandırılmış bilgileri yeniden düzenlemek için, meta verileri değiştirme ve yorumları kaldırma yeteneği dahil, biçimden bağımsız tek bir arayüz. GroupDocs.Redaction for .NET aracıyla, metni yeniden düzenleyebilir ve düzeltilmiş belgeyi PDF içinde kaydedebilir, tüm sayfaları raster görüntülere dönüştürebilir veya daha fazla düzenleme için belgeyi orijinal biçiminde tutabilirsiniz.

############################# Steps ############################
steps:
    enable: true
    title_left: "C# aracılığıyla XLSM'ten Tam Metni Reddet"
    content_left: |
        [GroupDocs.Redaction](tr//redaction/net/), .NET geliştiricilerinin birkaç kolay adımda XLSM dosya düzenleme özelliği eklemesini kolaylaştırır.

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) sınıfının bir örneğini oluşturun ve XLSM dosyasını yükleyin
        *   Metni bulmak ve değiştirmek için [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) sınıfının bir örneğini oluşturun
        *   ExactPhraseRedaction nesnesiyle [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) yöntemini çağırın
        
    title_right: "Redaksiyon API'sini Kullanmaya Başlayın"
    content_right: |
        Komut satırından "nuget install GroupDocs.Redaction"" olarak veya Visual Studio'nun Paket Yöneticisi Konsolu aracılığıyla "Install-Package GroupDocs.Redaction"" ile yükleyin. 
        Alternatif olarak, [downloads](https://downloads.groupdocs.com/redaction/net) adresinden bir ZIP dosyasındaki çevrimdışı MSI yükleyicisini veya DLL'leri edinin ve projenizde buna manuel olarak başvurun.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xlsm"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---