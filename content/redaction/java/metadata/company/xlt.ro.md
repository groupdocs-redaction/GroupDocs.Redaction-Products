
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ro/redaction/java/metadata/company/xlt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLTM XLTX  
ad_headline: "Metadate Redact | Java"
ad_description: "Redactă numele companiei din XLT Metadate în Java"
############################# Head ############################
head_title: "Redactarea metadatelor din XLT Document în Java"
head_description: "Căutați, înlocuiți, eliminați sau editați cu ușurință metadatele diferitelor tipuri de documente aplicând filtre pentru a alege proprietăți specifice de metadate folosind GroupDocs.Redaction s API pentru Java."

############################# Header ############################
title: "Redactarea metadatelor din XLT Document în Java"
description: "Căutați, înlocuiți, eliminați sau editați cu ușurință metadatele diferitelor tipuri de documente aplicând filtre pentru a alege proprietăți specifice de metadate folosind GroupDocs.Redaction s API pentru Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Noțiuni de bază cu redactarea metadatelor"
    content: |
        Uneori trebuie să ștergeți complet câmpurile de metadate nedorite sau poate doriți să le actualizați valorile. Există, de asemenea, date ascunse asociate fișierelor care pot fi vizualizate folosind diferite instrumente și tehnici. Există multe situații în care nu doriți ca aceste date să fie accesibile nimănui. Redactarea înseamnă eliminarea informațiilor nedorite sau confidențiale din diverse documente. Toate formatele de fișiere, inclusiv PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX și altele au structuri specifice de metadate. Proprietățile metadatelor includ numele autorului, categoria, numele companiei, comentariile, timpul de creare și ultima actualizare etc. Cu API-ul GroupDocs.Redaction puteți aplica redactarea metadatelor la oricare dintre aceste câmpuri de metadate. Puteți să le modificați sau să le ștergeți filtrând metadatele dorite. În acest ghid vă vom explica cum puteți aplica redactarea metadatelor din documentul XLT din Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redacția metadatelor fișierului XLT"
      content_left: |
        Codul următor vă permite să căutați și să redactați date sensibile dintr-un document XLT. Puteți seta domeniul de redactare setând filtrul, de exemplu, la MetadataFilter.Company. Va lăsa neanulate potrivirile expresiilor obișnuite în toate elementele de metadate, cu excepția proprietății „Companie”: 

      title_right: "Pași pentru redacarea metadatelor"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul XLT
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a găsi și înlocui datele sensibile din metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Utilizați MetadataFilters.Company în codul de mai jos
        * Metoda de salvare a apelurilor cu obiectul [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "5b04349a19f1627145ab6a9f8f0f5fc0"
      gistfile: "RedactCompanyMetadata.java"
      
    - title_left: "Eliminați XLT metadate în Java"
      content_left: |
        Puteți înlocui toate metadatele sau anumite metadate din document cu valori goale (necompletate sau minime) utilizând clasa EraseMetadataredAction. Următorul cod arată cum puteți filtra și apoi elimina o proprietate de metadate dintr-un document XLT. Exemplul de mai jos șterge toate proprietățile documentului: 
        
      title_right: "Cum să ștergeți metadatele companiei"
      content_right: |
        * Creați o instanță a clasei [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) și încărcați fișierul XLT
        * Creați o instanță a clasei [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pentru a elimina metadatele documentului
        * Setați domeniul de redactare prin setarea filtrului, de exemplu Înlocuiți MetadataFilter.all cu Metadatafilter.company în codul de mai jos
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