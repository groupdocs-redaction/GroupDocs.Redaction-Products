---
############################# Static ############################
layout: "autogen"
draft: false
path: "tr/redaction/net/regex/rtf"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: ".NET Core aracılığıyla Normal İfadeler Kullanarak RTF Belgeyi Düzeltin"
head_description: "Farklı biçimlerdeki belgelerden düzenli ifade kullanarak hassas bilgileri çıkarın"

############################# Header ############################
title: ".NET Temel Uygulamalarda C# ve Normal İfadeler aracılığıyla RTF Dosyayı Temizleyin"
description: "Windows, Linux ve macOS'ta Office ve OpenOffice Belgeleri, E-Tablolar ve Sunumlar ile RTF'teki hassas bilgileri bulun ve kaldırın"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API için Belge Metni Redaksiyonu"
    content: |
        PDF, Word, Excel, PowerPoint belgelerindeki ve resimlerdeki hassas ve sınıflandırılmış bilgilerin temizlenmesi için, biçimden bağımsız tek bir arayüz, meta verileri değiştirme ve yorumları kaldırma yeteneği dahil. GroupDocs.Redaction for .NET aracıyla, sınıflandırılmış bilgileri yeniden düzenleyebilir ve düzeltilmiş belgeyi PDF'de kaydedebilir, tüm sayfaları raster görüntülere dönüştürebilir veya daha fazla düzenleme için belgeyi orijinal biçiminde tutabilirsiniz.

############################# Steps ############################
steps:
    enable: true
    title_left: "C# aracılığıyla Normal İfadeler kullanarak RTF'teki Metni Düzeltin"
    content_left: |
        [GroupDocs.Redaction](tr//redaction/net/), .NET geliştiricilerinin, RTF dosyasını birkaç kolay adımda yeniden düzenlemek için normal ifadelerin tam gücünü kullanmasına olanak tanır.

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) sınıfının bir örneğini oluşturun ve RTF dosyasını yükleyin
        *   Metni bulmak ve değiştirmek için bir [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redaction.redactions/regexredaction) sınıfı örneği oluşturun
        *   RegexRedaction nesnesiyle [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) yöntemini çağırın
        
    title_right: "Redaksiyon API'sini Kullanmaya Başlayın"
    content_right: |
        Komut satırından "nuget install GroupDocs.Redaction"" olarak veya Visual Studio'nun Paket Yöneticisi Konsolu aracılığıyla "Install-Package GroupDocs.Redaction"" ile yükleyin. 
        Alternatif olarak, [downloads](https://downloads.groupdocs.com/redaction/net) adresinden bir ZIP dosyasındaki çevrimdışı MSI yükleyicisini veya DLL'leri edinin ve projenizde buna manuel olarak başvurun.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.rtf"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
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