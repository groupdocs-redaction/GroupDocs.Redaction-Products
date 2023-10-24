
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/java/metadata/version/xls"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLSM XLSX XLT XLTM XLTX  
ad_headline: "Realizēt metadatus | Java"
ad_description: "Realizēt versiju no XLS metadatiem Java"
############################# Head ############################
head_title: "Realizēt versijas metadatus no XLS dokumenta Java"
head_description: "GroupDocs.Redaction ir spēcīgs sanitization API, kas ļauj noņemt vai rediģēt konfidenciālu informāciju no vairāk nekā 30 dokumentu veidiem."

############################# Header ############################
title: "Realizēt versijas metadatus no XLS dokumenta Java"
description: "GroupDocs.Redaction ir spēcīgs sanitization API, kas ļauj noņemt vai rediģēt konfidenciālu informāciju no vairāk nekā 30 dokumentu veidiem."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kas ir metadatu redakcija?"
    content: |
        Lai saglabātu dokumentu oriģinālajā formātā, ir jāizdzēš vai jārediģē tā metadati, lai noņemtu visus konfidenciālos datus. Šim nolūkam GroupDocs.Redaction nodrošina metadatu redakcijas API. GroupDocs.Redaction API ļauj saglabāt rediģētos dokumentus PDF, pārveidot visas lapas rastra attēlos vai saglabāt rediģēto dokumentu tā sākotnējā formātā tālākai rediģēšanai. Visiem failu formātiem, tostarp PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX un citi ir daži metadatu rekvizīti. Šīs īpašības ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, radīšanas laiku, pēdējo reizi atjaunināts un daudz ko citu.Ir arī daži slēptās dati, kas saistīti ar failiem, kurus var apskatīt, izmantojot dažādus rīkus un metodes. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt versijas metadatus no XLS dokumenta Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Realizēt XLS Metadatus Java"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no XLS dokumenta. Redakcijas tvērumu var iestatīt, iestatot filtru, piemēram, uz MetadaFilter.version. Tas atstās regulārās izteiksmes atbilstības atsaukt visos metadatu vienumos, izņemot “Versija” rekvizītu: 

      title_right: "Kā rediģēt XLS metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt XLS faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatiet redakcijas apjomu, iestatot filtru, piem., Izmantojiet metadaFilters.Version zemāk esošajā kodā
        * Zvanu saglabāšanas metode ar objektu [MetadaTaSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "Noņemt XLS metadatus Java"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no XLS dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti: 
        
      title_right: "Kā izdzēst versijas metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt XLS faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai noņemtu dokumenta metadatus
        * Iestatiet redakcijas iespējas, iestatot filtru, piem., Aizstāt metadatafilter.All ar metadatafilter.Version zemāk esošajā kodā
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
        
      title_right: "Kāpēc izmantot GroupDocs.Redaction"
      content_right: |
        * Ļaut lietotājiem pievienot pielāgotus dokumentu formātus un redakcijas tipus
        * Lai noņemtu sensitīvu informāciju, nav nepieciešama papildu programmatūra
        * Spēja iestatīt lappušu diapazona renderēšanas dokumentu kā PDF
        * Vienkāršs veids, kā rediģēt dažāda veida metadatus: autora vārdu, versiju, nosaukumu, tēmu, aprakstu un daudz ko citu
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