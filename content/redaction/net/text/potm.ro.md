---
############################# Static ############################
layout: "autogen"
draft: false
path: "ro/redaction/net/text/potm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redactați informațiile sensibile din POTM documente prin .NET Core"
head_description: "Aplicați redactarea textului folosind expresia exactă sau expresia regulată pentru documente de diferite formate"

############################# Header ############################
title: "Redactați fișierele POTM prin C# în .NET Core Apps"
description: "Căutați și înlocuiți text în documente Office și OpenOffice, foi de calcul și prezentări, precum și POTM pe Windows, Linux și macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Redactarea documentelor pentru API-ul .NET"
    content: |
        O interfață unică independentă de format pentru redactarea informațiilor sensibile și clasificate din documentele și imaginile PDF, Word, Excel, PowerPoint, inclusiv posibilitatea de a modifica metadatele și de a elimina comentariile. Cu instrumentul GroupDocs.Redaction for .NET puteți redacta text și salva documentul redactat în PDF, transformând toate paginile în imagini raster sau păstrați documentul în formatul original pentru editare ulterioară.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redactați textul exact din POTM prin C#"
    content_left: |
        [GroupDocs.Redaction](ro//redaction/net/) facilitează pentru .NET dezvoltatorii să adauge POTM funcția de redactare a fișierelor cu câțiva pași simpli.

        *   Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul POTM
        *   Creați o instanță a clasei [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) pentru a găsi și înlocui textul
        *   Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul ExactPhraseRedaction
        
    title_right: "Începeți cu Redaction API"
    content_right: |
        Instalați din linia de comandă ca ```nuget install GroupDocs.Redaction``` sau prin Consola Manager de pachete din Visual Studio cu ```Install-Package GroupDocs.Redaction```. 
        Ca alternativă, obțineți programul de instalare MSI offline sau DLL-urile într-un fișier ZIP de la [descărcări](https://downloads.groupdocs.com/redaction/net) și faceți referire la el în proiectul dvs. manual.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.potm"))
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