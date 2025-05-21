---
############################# Static ############################
layout: "autogen"
draft: false
path: "lv/redaction/net/regex/xltx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Rediģējiet XLTX dokumentus, izmantojot regulārās izteiksmes, izmantojot .NET Core"
head_description: "Izņemiet sensitīvu informāciju no dažādu formātu dokumentiem, izmantojot regulāro izteiksmi"

############################# Header ############################
title: "Attīriet XLTX failus, izmantojot C# un regulārās izteiksmes .NET galvenajās lietotnēs"
description: "Atrodiet un noņemiet sensitīvu informāciju no Office un OpenOffice dokumentiem, izklājlapām un prezentācijām, kā arī XLTX operētājsistēmās Windows, Linux un macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Dokumenta teksta rediģēšana .NET API"
    content: |
        Viens no formāta neatkarīgs interfeiss sensitīvas un klasificētas informācijas dezinficēšanai no PDF, Word, Excel, PowerPoint dokumentiem un attēliem, tostarp iespēja mainīt metadatus un noņemt komentārus. Izmantojot rīku GroupDocs.Redaction for .NET, varat rediģēt klasificēto informāciju un saglabāt rediģēto dokumentu mapē PDF, pārveidojot visas lapas rastra attēlos vai saglabāt dokumentu tā sākotnējā formātā turpmākai rediģēšanai.

############################# Steps ############################
steps:
    enable: true
    title_left: "Rediģēt tekstu no XLTX, izmantojot regulārās izteiksmes, izmantojot C#"
    content_left: |
        [GroupDocs.Redaction](lv//redaction/net/) ļauj .NET izstrādātājiem izmantot pilnu regulāro izteiksmju stiprumu, lai rediģētu XLTX failu, veicot dažas vienkāršas darbības.

        *   Izveidojiet klases [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) gadījumu un ielādējiet XLTX failu
        *   Izveidojiet klases [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) gadījumu, lai atrastu un aizstātu tekstu
        *   Izsauciet [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metodi ar RegexRedaction objektu
        
    title_right: "Sāciet darbu ar Redaction API"
    content_right: |
        Instalējiet no komandrindas kā ```nuget install GroupDocs.Redaction``` vai izmantojot Visual Studio pakotņu pārvaldnieka konsoli ar ```Install-Package GroupDocs.Redaction```. 
        Varat arī iegūt bezsaistes MSI instalēšanas programmu vai DLL failā no [downloads](https://downloads.groupdocs.com/redaction/net) un manuāli atsaukties uz to savā projektā.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltx"))
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