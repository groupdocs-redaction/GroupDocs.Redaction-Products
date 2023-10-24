
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ro/redaction/java/metadata/title/xls"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metadate Redact | Java"
ad_description: "Redactă titlul din XLS metadate în Java"
############################# Head ############################
head_title: "Redactă titlul din fișierul XLS în Java folosind API GroupDocs.Redaction"
head_description: "GroupDocs.Redaction este un API puternic de igienizare care vă permite să eliminați sau să editați informații confidențiale din peste 30 de tipuri de documente."

############################# Header ############################
title: "Redactă titlul din fișierul XLS în Java folosind API GroupDocs.Redaction"
description: "GroupDocs.Redaction este un API puternic de igienizare care vă permite să eliminați sau să editați informații confidențiale din peste 30 de tipuri de documente."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Ce este redactarea metadatelor?"
    content: |
        Salvarea documentului într-un format original necesită ștergerea sau redactarea metadatelor sale pentru a elimina toate datele confidențiale. În aceste scopuri GroupDocs.Redaction oferă API de redactare a metadatelor. GroupDocs.Redaction API permite fie salvarea documentelor redactate în PDF, fie transformarea tuturor paginilor în imagini raster, fie salvarea documentului redactat în formatul său original pentru editare ulterioară. Toate formatele de fișiere, inclusiv PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX și altele au unele proprietăți de metadate. Aceste proprietăți includ numele autorului, categoria, numele companiei, comentariile, timpul de creare, ultima actualizare și multe altele.Există, de asemenea, unele date ascunse asociate fișierelor care pot fi vizualizate folosind diverse instrumente și tehnici. Cu API GroupDocs.Redaction puteți aplica redacții de metadate la oricare dintre aceste proprietăți de metadate. Puteți să le modificați sau să le ștergeți filtrând metadatele dorite. În acest ghid vă vom explica cum puteți redacta titlul din fișierul XLS în Java folosind API GroupDocs.Redaction.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redactă metadatele titlului în Java"
      content_left: |
        Codul următor vă permite să căutați și să redactați date sensibile dintr-un document XLS. Puteți seta domeniul de redactare setând filtrul, de exemplu la MetadataFilter.title. Va lăsa neanulate potrivirile expresiilor regulate în toate elementele de metadate, cu excepția proprietății „Titlu”: 

      title_right: "Cum să redactezi metadatele XLS"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul XLS
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a găsi și înlocui datele sensibile din metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Utilizați MetadataFilters.title în codul de mai jos
        * Metoda de salvare a apelurilor cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Eliminați XLS metadate în Java"
      content_left: |
        Puteți înlocui toate metadatele sau anumite metadate din document cu valori goale (necompletate sau minime) utilizând clasa EraseMetadataredAction. Următorul cod arată cum puteți filtra și apoi elimina o proprietate de metadate dintr-un document XLS. Exemplul de mai jos șterge toate proprietățile documentului: 
        
      title_right: "Ștergeți metadatele titlului din fișierul XLS"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul XLS
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a elimina metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Înlocuiți MetadataFilter.all cu MetadataFilter.title în codul de mai jos
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
        
      title_right: "De ce să folosiți GroupDocs.Redaction"
      content_right: |
        * Permiteți utilizatorilor să adauge formate de documente personalizate și tipuri de redacții
        * Nu este necesar niciun software suplimentar pentru a elimina informațiile sensibile
        * Posibilitatea de a seta documentul de redare a intervalului de pagini ca PDF
        * Mod simplu de redactare a diferitelor tipuri de metadate: numele autorului, versiunea, titlul, subiectul, descrierea și multe altele
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