---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ro/redaction/net/regex/xltm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTX  

############################# Head ############################
head_title: "Redactați XLTM documente folosind expresii regulate prin .NET Core"
head_description: "Eliminați informațiile sensibile folosind expresii regulate din documente de diferite formate"

############################# Header ############################
title: "Dezinfectați fișierele XLTM prin C# și expresii regulate în aplicațiile de bază .NET"
description: "Găsiți și eliminați informații sensibile din documente Office și OpenOffice, foi de calcul și prezentări, precum și XLTM pe Windows, Linux și macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redactarea textului documentului pentru API-ul .NET"
    content: |
        O interfață unică, independentă de format, pentru igienizarea informațiilor sensibile și clasificate din documentele și imaginile PDF, Word, Excel, PowerPoint, inclusiv capacitatea de a modifica metadatele și de a elimina comentariile. Cu instrumentul GroupDocs.Redaction for .NET, puteți elimina informațiile clasificate și puteți salva documentul redactat în PDF, transformând toate paginile în imagini raster sau păstrați documentul în formatul original pentru editare ulterioară.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redactați textul din XLTM folosind expresii regulate prin C#"
    content_left: |
        [GroupDocs.Redaction](ro//redaction/net/) permite dezvoltatorilor .NET să folosească expresiile obișnuite deplină pentru a redacta fișierul XLTM cu câțiva pași simpli.

        *   Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul XLTM
        *   Creați o instanță a clasei [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) pentru a găsi și înlocui textul
        *   Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul RegexRedaction
        
    title_right: "Începeți cu Redaction API"
    content_right: |
        Instalați din linia de comandă ca ```nuget install GroupDocs.Redaction``` sau prin Consola Manager de pachete din Visual Studio cu ```Install-Package GroupDocs.Redaction```. 
        Ca alternativă, obțineți programul de instalare MSI offline sau DLL-urile într-un fișier ZIP de la [descărcări](https://downloads.groupdocs.com/redaction/net) și faceți referire la el în proiectul dvs. manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltm"))
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