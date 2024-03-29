---
############################# Static ############################
layout: "autogen"
draft: false
path: "sl/redaction/net/regex/ppsx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Uredite PPSX dokumente z uporabo regularnih izrazov prek .NET jedra"
head_description: "Z uporabo regularnih izrazov odstranite občutljive informacije iz dokumentov različnih formatov"

############################# Header ############################
title: "Prečisti PPSX datoteke prek C# in regularnih izrazov v .NET osnovnih aplikacijah"
description: "Poiščite in odstranite občutljive podatke iz dokumentov Office in OpenOffice, preglednic in predstavitev ter PPSX v Windows, Linux in macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redakcija besedila dokumenta za API .NET"
    content: |
        Enotni vmesnik, neodvisen od oblike, za čiščenje občutljivih in tajnih podatkov iz dokumentov in slik PDF, Word, Excel, PowerPoint, vključno z možnostjo spreminjanja metapodatkov in odstranjevanja komentarjev. Z orodjem GroupDocs.Redaction for .NET lahko popravite zaupne podatke in shranite popravljen dokument v PDF, tako da vse strani pretvorite v rastrske slike ali obdržite dokument v izvirni obliki za nadaljnje urejanje.

############################# Steps ############################
steps:
    enable: true
    title_left: "Uredi besedilo iz PPSX z uporabo regularnih izrazov prek C#"
    content_left: |
        [GroupDocs.Redaction](sl//redaction/net/) razvijalcem .NET omogoča uporabo polne moči regularnih izrazov za urejanje datoteke PPSX z nekaj preprostimi koraki.

        *   Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) in naložite datoteko PPSX
        *   Ustvarite primerek razreda [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction), da poiščete in zamenjate besedilo
        *   Pokličite metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) z objektom RegexRedaction
        
    title_right: "Začnite uporabljati Redaction API"
    content_right: |
        Namestite iz ukazne vrstice kot ```nuget install GroupDocs.Redaction``` ali prek konzole upravitelja paketov Visual Studio z ```Install-Package GroupDocs.Redaction```. 
        Druga možnost je, da dobite namestitveni program MSI brez povezave ali DLL-je v datoteki ZIP iz [prenosov](https://downloads.groupdocs.com/redaction/net) in jih ročno navedete v svojem projektu.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsx"))
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