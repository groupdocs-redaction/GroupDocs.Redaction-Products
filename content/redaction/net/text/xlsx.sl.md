---
############################# Static ############################
layout: "autogen"
draft: false
path: "sl/redaction/net/text/xlsx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLT XLTM XLTX  

############################# Head ############################
head_title: "Uredite občutljive podatke iz XLSX dokumentov prek .NET Core"
head_description: "Uporabite redigiranje besedila z uporabo natančne fraze ali regularnega izraza za dokumente različnih formatov"

############################# Header ############################
title: "Uredite XLSX datoteke prek C# v .NET osnovnih aplikacijah"
description: "Iskanje in zamenjava besedila v dokumentih Office in OpenOffice, preglednicah in predstavitvah ter XLSX v Windows, Linux in macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redakcija dokumenta za API .NET"
    content: |
        Enotni vmesnik, neodvisen od oblike, za urejanje občutljivih in zaupnih podatkov iz dokumentov in slik PDF, Word, Excel, PowerPoint, vključno z možnostjo spreminjanja metapodatkov in odstranjevanja komentarjev. Z orodjem GroupDocs.Redaction for .NET lahko redigirate besedilo in shranite redigiran dokument v PDF, tako da vse strani pretvorite v rastrske slike ali pa dokument obdržite v izvirni obliki za nadaljnje urejanje.

############################# Steps ############################
steps:
    enable: true
    title_left: "Uredi natančno besedilo iz XLSX prek C#"
    content_left: |
        [GroupDocs.Redaction](sl//redaction/net/) razvijalcem .NET olajša dodajanje funkcije za urejanje datotek XLSX z nekaj preprostimi koraki.

        *   Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) in naložite datoteko XLSX
        *   Ustvarite primerek razreda [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction), da poiščete in zamenjate besedilo
        *   Pokličite metodo [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) z objektom ExactPhraseRedaction
        
    title_right: "Začnite uporabljati Redaction API"
    content_right: |
        Namestite iz ukazne vrstice kot ```nuget install GroupDocs.Redaction``` ali prek konzole upravitelja paketov Visual Studio z ```Install-Package GroupDocs.Redaction```. 
        Druga možnost je, da dobite namestitveni program MSI brez povezave ali DLL-je v datoteki ZIP iz [prenosov](https://downloads.groupdocs.com/redaction/net) in jih ročno navedete v svojem projektu.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xlsx"))
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