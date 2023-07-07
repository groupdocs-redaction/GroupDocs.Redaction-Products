---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ro/redaction/net/annotation/pot"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redactați adnotările în POT documente folosind expresii regulate prin .NET Core"
head_description: "Redactați informațiile sensibile în adnotări folosind expresii regulate din documente de diferite formate"

############################# Header ############################
title: "Redactați POT Fișiere Adnotări prin C# și expresii regulate în .NET Aplicațiile de bază"
description: "Găsiți și eliminați informații sensibile din documente Office și OpenOffice, foi de calcul și prezentări, precum și POT pe Windows, Linux și macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redactarea adnotărilor documentului pentru API-ul .NET"
    content: |
        O interfață unică, independentă de format, pentru igienizarea informațiilor sensibile și clasificate din documentele și imaginile PDF, Word, Excel, PowerPoint, inclusiv capacitatea de a modifica metadatele și de a elimina adnotările. Cu instrumentul GroupDocs.Redaction for .NET, puteți elimina informațiile clasificate și puteți salva documentul redactat în PDF, transformând toate paginile în imagini raster sau păstrați documentul în formatul original pentru editare ulterioară.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redactați adnotările din POT folosind expresii regulate prin C#"
    content_left: |
        [GroupDocs.Redaction](ro//redaction/net/) permite dezvoltatorilor .NET să folosească expresiile obișnuite deplină pentru a redacta fișierul POT cu câțiva pași simpli.

        *   Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul POT
        *   Creați o instanță a clasei [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) pentru a găsi și înlocui comentariile
        *   Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul AnnotationRedaction
        
    title_right: "Cum se utilizează GroupDocs Redaction API"
    content_right: |
        Instalați pachetul din linia de comandă ca ```nuget install GroupDocs.Redaction``` sau prin Consola Manager de pachete din Visual Studio cu ```Install-Package GroupDocs.Redaction```. 
        Ca alternativă, obțineți programul de instalare MSI offline sau DLL-urile într-un fișier ZIP de la [descărcări](https://downloads.groupdocs.com/redaction/net) și faceți referire la el în proiectul dvs. manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pot"))
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