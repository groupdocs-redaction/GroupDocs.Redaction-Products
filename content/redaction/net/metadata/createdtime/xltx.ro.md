
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ro/redaction/net/metadata/createdtime/xltx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Redactează metadate sensibile din documente în C#"
head_description: "Aplicați redactarea metadatelor aplicând filtre pentru documente de diferite formate"

############################# Header ############################
title: "Redact metadate în timp creat din XLTX Document în C#"
description: "GroupDocs.Redaction s oferă un API flexibil care permite căutarea și înlocuirea/eliminarea oricărei proprietăți de metadate folosind filtre."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Ce este redactarea metadatelor?"
    content: |
        Toate formatele de fișiere, inclusiv PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX și altele au unele proprietăți de metadate. Aceste proprietăți includ numele autorului, categoria, numele companiei, comentariile, timpul de creare, ultima actualizare și multe altele. Redactarea se referă la eliminarea informațiilor nedorite sau confidențiale din documentele electronice. Uneori trebuie să ștergeți complet câmpurile de metadate nedorite sau poate doriți să le actualizați valorile. Există, de asemenea, unele date ascunse asociate fișierelor care pot fi vizualizate folosind diferite instrumente și tehnici. Există multe cazuri în care nu doriți ca aceste date să fie accesate de nimeni. Cu API GroupDocs.Redaction puteți aplica redacții de metadate la oricare dintre aceste proprietăți de metadate. Puteți să le modificați sau să le ștergeți filtrând metadatele dorite. În acest ghid vă vom explica cum puteți redacta metadatele timpului creat din documentul XLTX din C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Eliminați metadatele din XLTX în C#"
      content_left: |
        Puteți înlocui toate metadatele sau anumite metadate dintr-un document XLTX cu valori goale utilizând clasa EraseMetadataredAction. Următorul cod arată cum puteți filtra și apoi elimina o proprietate de metadate dintr-un document XLTX. Exemplul de mai jos șterge toate proprietățile documentului:
        

      title_right: "Ștergeți metadatele documentului XLTX"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul XLTX
        * Creați o instanță de [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) pentru a elimina metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Înlocuiți MetadataFilter.all cu MetadataFilter.createdTime în codul de mai jos
        * Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Redact XLTX metadate în C#"
      content_left: |
        Codul următor vă permite să căutați și să redactați date sensibile dintr-un document XLTX. Puteți seta domeniul de redactare setând filtrul, de exemplu la MetadataFilter.createdTime. - va lăsa nefăcute potrivirile expresiilor regulate în toate elementele de metadate, cu excepția proprietății „Createdtime”:
        
        
      title_right: "Cum să redactezi metadatele XLTX"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul XLTX
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) pentru a găsi și înlocui datele sensibile din metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Utilizați MetadataFilter.createdTime în codul de mai jos 
        * Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "4bc023c912c5eb34b1490c159a35a6ea"
      gistfile: "RedactCreatedTimeMetadata.cs"

    - title_left: "Cerințe de sistem"
      content_left: |
        GroupDocs.Redaction for .NET suportă orice sistem de operare pe 32 de biți sau pe 64 de biți unde este instalată platforma .NET. Nu necesită instalarea niciunui software extern sau a unui instrument terț. Pentru ghidul complet al cerințelor de sistem, vă rugăm să vizitați [cerințe de sistem](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Instrucțiuni de instalare"
      content_right: |
        Instalați din linia de comandă ca ```nuget install GroupDocs.Redaction ```sau prin Package Manager Console din Visual Studio cu ```Install-Package GroupDocs.Redaction```. 
        Alternativ, obțineți programul de instalare MSI offline sau DLL-urile într-un fișier ZIP din [descărcări](https://downloads.groupdocs.com/redaction/net) și trimiteți-l manual în proiectul dvs.

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---