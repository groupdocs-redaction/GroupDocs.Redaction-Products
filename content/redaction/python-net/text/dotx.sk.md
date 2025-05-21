---
############################# Static ############################
layout: "autogen"
draft: false
path: "sk/redaction/net/text/dotx"
otherformats: CSV DOC DOCM DOCX DOT DOTM PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redukujte citlivé informácie z DOTX dokumentov prostredníctvom .NET Core"
head_description: "Použite textovú úpravu pomocou presnej frázy alebo regulárneho výrazu pre dokumenty rôznych formátov"

############################# Header ############################
title: "Úprava DOTX súborov cez C# v .NET Core Apps"
description: "Hľadať a nahradiť text v dokumentoch, tabuľkách a prezentáciách balíka Office a OpenOffice, ako aj DOTX na Windows, Linux a macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Úprava dokumentu pre .NET API"
    content: |
        Jedno formátovo nezávislé rozhranie na redigovanie citlivých a utajovaných informácií z dokumentov a obrázkov PDF, Word, Excel, PowerPoint vrátane možnosti meniť metadáta a odstraňovať komentáre. Pomocou nástroja GroupDocs.Redaction for .NET môžete redigovať text a uložiť redigovaný dokument v PDF, transformovať všetky strany na rastrové obrázky alebo ponechať dokument v pôvodnom formáte na ďalšie úpravy.

############################# Steps ############################
steps:
    enable: true
    title_left: "Upraviť presný text z DOTX cez C#"
    content_left: |
        [GroupDocs.Redaction](sk//redaction/net/) uľahčuje vývojárom .NET pridanie funkcie DOTX úpravy súborov pomocou niekoľkých jednoduchých krokov.

        *   Vytvorte inštanciu triedy [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) a načítajte súbor DOTX
        *   Ak chcete nájsť a nahradiť text, vytvorte inštanciu triedy [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction)
        *   Zavolajte metódu [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) s objektom ExactPhraseRedaction
        
    title_right: "Začnite s rozhraním Redaction API"
    content_right: |
        Nainštalujte z príkazového riadka ako ```nuget install GroupDocs.Redaction``` alebo cez konzolu Package Manager Console Visual Studio s ```Install-Package GroupDocs.Redaction```. 
        Prípadne získajte offline inštalačný program MSI alebo knižnice DLL v súbore ZIP zo stránky [stiahnutia] (https://downloads.groupdocs.com/redaction/net) a uveďte ho ručne vo svojom projekte.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.dotx"))
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