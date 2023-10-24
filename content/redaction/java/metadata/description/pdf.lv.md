
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/java/metadata/description/pdf"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Realizēt metadatus | Java"
ad_description: "Redakt apraksta metadatus no PDF faila Java"
############################# Head ############################
head_title: "Redakt apraksta metadatus no PDF faila Java"
head_description: "GroupDocs.Redaction s nodrošina elastīgu API, kas ļauj meklēt un aizvietot/noņemt metadatu rekvizītus, izmantojot filtrus."

############################# Header ############################
title: "Redakt apraksta metadatus no PDF faila Java"
description: "GroupDocs.Redaction s nodrošina elastīgu API, kas ļauj meklēt un aizvietot/noņemt metadatu rekvizītus, izmantojot filtrus."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Par GroupDocs.Redaction par Java"
    content: |
        Redakcijas attiecas uz nevēlamas vai konfidenciālas informācijas noņemšanu no elektroniskajiem dokumentiem. Visiem failu formātiem, tostarp PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX un citi ir daži metadatu rekvizīti. Šie rekvizīti ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, izveides laiku, pēdējo reizi atjaunināto un daudz ko citu. Dažreiz jums ir pilnībā jāizdzēš nevēlamie metadatu lauki vai arī, iespējams, vēlēsities atjaunināt to vērtības. Ir arī daži slēptās dati, kas saistīti ar failiem, kurus var apskatīt, izmantojot dažādus instrumentus un metodes. Ir daudz gadījumu, kad jūs nevēlaties, lai šie dati varētu piekļūt ikviens. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt aprakstu no PDF metadatiem Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Apraksta metadatu lauka atjaunināšana"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no PDF dokumenta. Redakcijas tvērumu var iestatīt, iestatot filtru, piemēram, uz MetadaFilter.Description. Tas atstās regulārās izteiksmes atbilstības atsaukt visos metadatu vienumos, izņemot “Apraksts” rekvizītu: 

      title_right: "Kā rediģēt Java"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt PDF faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatiet redakcijas jomu, iestatot filtru, piem., Izmantot metadatafilters.Description zemāk esošajā kodā
        * Zvanu saglabāšanas metode ar objektu [MetadaTaSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "9faf1affc732aa746e8d34ca813621b2"
      gistfile: "RedactDescriptionMetadata.java"
      
    - title_left: "Metadatu lauka dzēšana Java"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no PDF dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti: 
        
      title_right: "Noņemt PDF metadatu lauku"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt PDF faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai noņemtu dokumenta metadatus
        * Iestatiet redakcijas iespējas, iestatot filtru, piem., Aizstāt metadatafilter.All ar metadatafilter.Description zemāk esošajā kodā
        * Zvanu saglabāšanas metode ar objektu [MetadaTaSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804eee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Sistēmas prasības"
      content_left: |
        GroupDocs.Redaction for Java API tiek atbalstīti visās galvenajās platformās un operētājsistēmās. Lai iegūtu pilnīgu sistēmas prasību rokasgrāmatu, lūdzu, apmeklējiet [sistēmas prasības](https://docs.groupdocs.com/redaction/java/system-requirements) Pirms izpildāt zemāk norādīto kodu, lūdzu, pārliecinieties, ka jūsu sistēmā ir uzstādīti šādi priekšnoteikumi:
        * Operētājsistēmas: Microsoft Windows, Linux, Mac OS
        * Attīstības vide: NetBeans, Intellij IDEA, Eclipse utt
        * Java Runtime Environment: J2SE 6.0 un augstāk
        * Iegūstiet jaunāko GroupDocs.Redaction for Java versiju no [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Kāpēc izmantot GroupDocs.Redaction?"
      content_right: |
        * Ļaut lietotājiem pievienot pielāgotus dokumentu formātus un redakcijas tipus
        * Vienkāršs veids, kā rediģēt dažāda veida metadatus: autora vārdu, versiju, nosaukumu, tēmu, aprakstu un daudz ko citu
        * Spēja iestatīt lappušu diapazona renderēšanas dokumentu kā PDF
        * Lai noņemtu sensitīvu informāciju, nav nepieciešama papildu programmatūra
        * Dokumenta informācijas ieguve - faila tips, lappušu skaits u.c.
        

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