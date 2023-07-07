---
############################# Static ############################
layout: "autogen"
draft: false
path: "sk/redaction/net/regex/pptx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Úprava PPTX dokumentov pomocou regulárnych výrazov cez .NET Core"
head_description: "Redukujte citlivé informácie pomocou regulárneho výrazu z dokumentov rôznych formátov"

############################# Header ############################
title: "Dezinfikujte PPTX súbory prostredníctvom C# a regulárnych výrazov v .NET základných aplikáciách"
description: "Nájdite a odstráňte citlivé informácie z dokumentov, tabuliek a prezentácií balíka Office a OpenOffice, ako aj PPTX na Windows, Linux a macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Úprava textu dokumentu pre .NET API"
    content: |
        Jediné formátovo nezávislé rozhranie na dezinfekciu citlivých a utajovaných informácií z dokumentov a obrázkov PDF, Word, Excel, PowerPoint vrátane možnosti meniť metadáta a odstraňovať komentáre. Pomocou nástroja GroupDocs.Redaction for .NET môžete vymazať utajované informácie a uložiť zredigovaný dokument v PDF, čím prevediete všetky strany na rastrové obrázky alebo ponecháte dokument v pôvodnom formáte na ďalšie úpravy.

############################# Steps ############################
steps:
    enable: true
    title_left: "Úprava textu z PPTX pomocou regulárnych výrazov cez C#"
    content_left: |
        [GroupDocs.Redaction](sk//redaction/net/) umožňuje .NET vývojárom využiť plnú silu regulárnych výrazov na redigovanie PPTX súboru pomocou niekoľkých jednoduchých krokov.

        *   Vytvorte inštanciu triedy [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) a načítajte súbor PPTX
        *   Vytvorte inštanciu triedy [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) na vyhľadanie a nahradenie textu
        *   Zavolajte metódu [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) s objektom RegexRedaction
        
    title_right: "Začnite s rozhraním Redaction API"
    content_right: |
        Nainštalujte z príkazového riadka ako ```nuget install GroupDocs.Redaction``` alebo cez konzolu Package Manager Console Visual Studio s ```Install-Package GroupDocs.Redaction```. 
        Prípadne získajte offline inštalačný program MSI alebo knižnice DLL v súbore ZIP zo stránky [stiahnutia] (https://downloads.groupdocs.com/redaction/net) a uveďte ho ručne vo svojom projekte.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pptx"))
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