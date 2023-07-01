
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ro/redaction/java/metadata/subject/pdf"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metadate Redact | Java"
ad_description: "Redacta metadatele subiectului dintr-un fişier PDF în Java"
############################# Head ############################
head_title: "Redacta metadatele subiectului dintr-un fişier PDF în Java"
head_description: "GroupDocs.Redaction s oferă un API flexibil care permite căutarea și înlocuirea/eliminarea oricărei proprietăți de metadate folosind filtre."

############################# Header ############################
title: "Redacta metadatele subiectului dintr-un fişier PDF în Java"
description: "GroupDocs.Redaction s oferă un API flexibil care permite căutarea și înlocuirea/eliminarea oricărei proprietăți de metadate folosind filtre."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Aproximativ GroupDocs.Redaction pentru Java"
    content: |
        Redactarea se referă la eliminarea informațiilor nedorite sau confidențiale din documentele electronice. Toate formatele de fișiere, inclusiv PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX și altele au unele proprietăți de metadate. Aceste proprietăți includ numele autorului, categoria, numele companiei, comentariile, timpul de creare, ultima actualizare și multe altele. Uneori trebuie să ștergeți complet câmpurile de metadate nedorite sau poate doriți să le actualizați valorile. Există, de asemenea, unele date ascunse asociate fișierelor care pot fi vizualizate folosind diferite instrumente și tehnici. Există multe cazuri în care nu doriți ca aceste date să fie accesate de nimeni. Cu API GroupDocs.Redaction puteți aplica redacții de metadate la oricare dintre aceste proprietăți de metadate. Puteți să le modificați sau să le ștergeți filtrând metadatele dorite. În acest ghid vă vom explica cum puteți redacta subiectul din PDF metadate în Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Actualizarea metadatelor subiectului în Java"
      content_left: |
        Codul următor vă permite să căutați și să redactați date sensibile dintr-un document PDF. Puteți seta domeniul de redactare prin setarea filtrului, de exemplu la MetadataFilter.Subject. Va lăsa neanulate potrivirile expresiilor regulate în toate elementele de metadate, cu excepția proprietății „Subiect”: 

      title_right: "Cum să redactezi metadatele PDF"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul PDF
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a găsi și înlocui datele sensibile din metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Utilizați MetadataFilters.Subject în codul de mai jos
        * Metoda de salvare a apelurilor cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "f38d8b4c0acad38e154dc7f64018e51e"
      gistfile: "RedactSubjectMetadata.java"
      
    - title_left: "Ștergeți un câmp de metadate în Java"
      content_left: |
        Puteți înlocui toate metadatele sau anumite metadate din document cu valori goale (necompletate sau minime) utilizând clasa EraseMetadataredAction. Următorul cod arată cum puteți filtra și apoi elimina o proprietate de metadate dintr-un document PDF. Exemplul de mai jos șterge toate proprietățile documentului: 
        
      title_right: "Eliminați PDF metadate prin GroupDocs.Redaction"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul PDF
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a elimina metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Înlocuiți metadataFilter.Toate cu metadatafilter.Subject în codul de mai jos
        * Metoda de salvare a apelurilor cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Cerințe de sistem"
      content_left: |
        GroupDocs.Redaction for Java API-urile sunt acceptate pe toate platformele majore și sistemele de operare. Pentru ghidul complet de cerințe de sistem, vă rugăm să vizitați [cerințe de sistem](https://docs.groupdocs.com/redaction/java/system-requirements) Înainte de a executa codul de mai jos, vă rugăm să vă asigurați că aveți următoarele condiții prealabile instalate pe sistemul dvs.:
        * Sisteme de operare: Microsoft Windows, Linux, Mac OS
        * Mediu de dezvoltare: NetBeans, Intellij IDEA, Eclipse etc
        * Java Mediu de rulare: J2SE 6.0 și versiuni ulterioare
        * Obțineți cea mai recentă versiune a GroupDocs.Redaction for Java de la [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "De ce să folosiți GroupDocs.Redaction?"
      content_right: |
        * Permiteți utilizatorilor să adauge formate de documente personalizate și tipuri de redacții
        * Mod simplu de redactare a diferitelor tipuri de metadate: numele autorului, versiunea, titlul, subiectul, descrierea și multe altele
        * Posibilitatea de a seta documentul de redare a intervalului de pagini ca PDF
        * Nu este necesar niciun software suplimentar pentru a elimina informațiile sensibile
        * Extragerea informațiilor despre documente - tipul fișierului, numărul de pagini etc.
        

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