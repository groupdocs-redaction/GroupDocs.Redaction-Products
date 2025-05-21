---
############################# Static ############################
layout: "autogen"
draft: false
path: "sk/redaction/net/annotation/dotm"
otherformats: CSV DOC DOCM DOCX DOT DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Úprava anotácií v DOTM dokumentoch pomocou regulárnych výrazov prostredníctvom .NET Core"
head_description: "Redukujte citlivé informácie v anotáciách pomocou regulárneho výrazu z dokumentov rôznych formátov"

############################# Header ############################
title: "Úprava anotácií súborov DOTM prostredníctvom C# a regulárnych výrazov v .NET základných aplikáciách"
description: "Nájdite a odstráňte citlivé informácie z dokumentov, tabuliek a prezentácií balíka Office a OpenOffice, ako aj DOTM na Windows, Linux a macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Úprava anotácií dokumentu pre .NET API"
    content: |
        Jediné formátovo nezávislé rozhranie na dezinfekciu citlivých a utajovaných informácií z dokumentov a obrázkov PDF, Word, Excel, PowerPoint vrátane možnosti meniť metadáta a odstraňovať anotácie. Pomocou nástroja GroupDocs.Redaction for .NET môžete vymazať utajované informácie a uložiť zredigovaný dokument v PDF, čím prevediete všetky strany na rastrové obrázky alebo ponecháte dokument v pôvodnom formáte na ďalšie úpravy.

############################# Steps ############################
steps:
    enable: true
    title_left: "Úprava anotácií z DOTM pomocou regulárnych výrazov cez C#"
    content_left: |
        [GroupDocs.Redaction](sk//redaction/net/) umožňuje .NET vývojárom využiť plnú silu regulárnych výrazov na redigovanie DOTM súboru pomocou niekoľkých jednoduchých krokov.

        *   Vytvorte inštanciu triedy [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) a načítajte súbor DOTM
        *   Vytvorte inštanciu triedy [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction), aby ste našli a nahradili komentáre
        *   Zavolajte metódu [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) s objektom AnnotationRedaction
        
    title_right: "Ako používať rozhranie GroupDocs Redaction API"
    content_right: |
        Nainštalujte balík z príkazového riadka ako ```nuget install GroupDocs.Redaction``` alebo cez konzolu Package Manager Console Visual Studio s ```Install-Package GroupDocs.Redaction```. 
        Prípadne získajte offline inštalačný program MSI alebo knižnice DLL v súbore ZIP zo stránky [stiahnutia] (https://downloads.groupdocs.com/redaction/net) a uveďte ho ručne vo svojom projekte.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.dotm"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
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