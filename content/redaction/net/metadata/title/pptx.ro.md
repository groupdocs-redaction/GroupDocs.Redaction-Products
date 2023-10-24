
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ro/redaction/net/metadata/title/pptx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redacții de metadate din documente în C#"
head_description: "Redactează metadate sensibile în C# aplicând filtre pentru documente de diferite formate"

############################# Header ############################
title: "Redactează metadatele titlului din documentul PPTX din C#"
description: "GroupDocs.Redaction s API permite căutarea și apoi actualizarea sau eliminarea oricăror date confidențiale din metadatele unui document."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Ce este redactarea metadatelor?"
    content: |
        Majoritatea oamenilor sunt preocupați de redactarea textului unui document. Dar redactarea metadatelor este la fel de importantă. Metadatele sunt datele ascunse ale unui document care pot conține informații confidențiale pe care este posibil să nu doriți să le partajați cu alte persoane. Redactarea metadatelor se referă la eliminarea informațiilor nedorite sau confidențiale din documentele electronice. Metadatele unui document includ numele autorului, categoria, numele companiei, comentariile, timpul de creare, ultima actualizare și multe altele. Uneori trebuie să ștergeți complet câmpurile de metadate nedorite sau poate doriți să le actualizați valorile. Cu API GroupDocs.Redaction puteți aplica redacții de metadate la oricare dintre aceste proprietăți de metadate. Puteți să le modificați sau să le ștergeți filtrând metadatele dorite. În acest ghid vă vom explica cum puteți redacta metadatele titlurilor din documentul PPTX din C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redactează titlul din documentul PPTX"
      content_left: |
        Codul următor vă permite să căutați și să redactați date sensibile dintr-un document PPTX. Puteți seta domeniul de redactare setând filtrul, de exemplu la MetadataFilter.title. Va lăsa neanulate potrivirile expresiilor regulate în toate elementele de metadate, cu excepția proprietății „Titlu”:
        

      title_right: "Cum să redactezi metadatele PPTX"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul PPTX
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) pentru a găsi și înlocui datele sensibile din metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Utilizați MetadataFilter.title în codul de mai jos
        * Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Eliminați PPTX metadate în C#"
      content_left: |
        Puteți înlocui toate metadatele sau anumite metadate din document cu valori goale (necompletate sau minime) utilizând clasa EraseMetadataredAction. Următorul cod arată cum puteți filtra și apoi elimina o proprietate de metadate dintr-un document PPTX. Exemplul de mai jos șterge toate proprietățile documentului:
        
        
      title_right: "Șterge metadatele PPTX"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) și încărcați fișierul PPTX
        * Creați o instanță de [EraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) pentru a elimina metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Înlocuiți MetadataFilter.all cu MetadataFilter.title în codul de mai jos 
        * Apelați metoda [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

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