
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ro/redaction/java/metadata/version/pot"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metadate Redact | Java"
ad_description: "Redactă versiunea din POT metadate în Java"
############################# Head ############################
head_title: "Redactează metadatele versiunii din documentul POT din Java"
head_description: "GroupDocs.Redaction este un API puternic de igienizare care vă permite să eliminați sau să editați informații confidențiale din peste 30 de tipuri de documente."

############################# Header ############################
title: "Redactează metadatele versiunii din documentul POT din Java"
description: "GroupDocs.Redaction este un API puternic de igienizare care vă permite să eliminați sau să editați informații confidențiale din peste 30 de tipuri de documente."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Ce este redactarea metadatelor?"
    content: |
        Salvarea documentului într-un format original necesită ștergerea sau redactarea metadatelor sale pentru a elimina toate datele confidențiale. În aceste scopuri GroupDocs.Redaction oferă API de redactare a metadatelor. GroupDocs.Redaction API permite fie salvarea documentelor redactate în PDF, fie transformarea tuturor paginilor în imagini raster, fie salvarea documentului redactat în formatul său original pentru editare ulterioară. Toate formatele de fișiere, inclusiv PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX și altele au unele proprietăți de metadate. Aceste proprietăți includ numele autorului, categoria, numele companiei, comentariile, timpul de creare, ultima actualizare și multe altele.Există, de asemenea, unele date ascunse asociate fișierelor care pot fi vizualizate folosind diverse instrumente și tehnici. Cu API GroupDocs.Redaction puteți aplica redacții de metadate la oricare dintre aceste proprietăți de metadate. Puteți să le modificați sau să le ștergeți filtrând metadatele dorite. În acest ghid vă vom explica cum puteți redacta metadatele versiunii din documentul POT din Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact POT metadate în Java"
      content_left: |
        Codul următor vă permite să căutați și să redactați date sensibile dintr-un document POT. Puteți seta domeniul de redactare setând filtrul, de exemplu, la MetadataFilter.version. Va lăsa neanulate potrivirile expresiilor regulate în toate elementele de metadate, cu excepția proprietății „Versiune”: 

      title_right: "Cum să redactezi metadatele POT"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul POT
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a găsi și înlocui datele sensibile din metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Utilizați MetadataFilters.version în codul de mai jos
        * Metoda de salvare a apelurilor cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "Eliminați POT metadate în Java"
      content_left: |
        Puteți înlocui toate metadatele sau anumite metadate din document cu valori goale (necompletate sau minime) utilizând clasa EraseMetadataredAction. Următorul cod arată cum puteți filtra și apoi elimina o proprietate de metadate dintr-un document POT. Exemplul de mai jos șterge toate proprietățile documentului: 
        
      title_right: "Cum să ștergeți metadatele versiunii"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul POT
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a elimina metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Înlocuiți MetadataFilter.all cu MetadataFilter.version în codul de mai jos
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