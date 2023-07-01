
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/java/metadata/title/xltm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTX  
ad_headline: "Realizēt metadatus | Java"
ad_description: "Redakts virsraksts no XLTM metadatiem Java"
############################# Head ############################
head_title: "Redakts nosaukums no XLTM Fails Java Izmantojot GroupDocs.Redaction API"
head_description: "GroupDocs.Redaction ir spēcīgs sanitization API, kas ļauj noņemt vai rediģēt konfidenciālu informāciju no vairāk nekā 30 dokumentu veidiem."

############################# Header ############################
title: "Redakts nosaukums no XLTM Fails Java Izmantojot GroupDocs.Redaction API"
description: "GroupDocs.Redaction ir spēcīgs sanitization API, kas ļauj noņemt vai rediģēt konfidenciālu informāciju no vairāk nekā 30 dokumentu veidiem."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kas ir metadatu redakcija?"
    content: |
        Lai saglabātu dokumentu oriģinālajā formātā, ir jāizdzēš vai jārediģē tā metadati, lai noņemtu visus konfidenciālos datus. Šim nolūkam GroupDocs.Redaction nodrošina metadatu redakcijas API. GroupDocs.Redaction API ļauj saglabāt rediģētos dokumentus PDF, pārveidot visas lapas rastra attēlos vai saglabāt rediģēto dokumentu tā sākotnējā formātā tālākai rediģēšanai. Visiem failu formātiem, tostarp PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX un citi ir daži metadatu rekvizīti. Šīs īpašības ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, radīšanas laiku, pēdējo reizi atjaunināts un daudz ko citu.Ir arī daži slēptās dati, kas saistīti ar failiem, kurus var apskatīt, izmantojot dažādus rīkus un metodes. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt Nosaukums no XLTM failu Java, izmantojot GroupDocs.Redaction API.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Realizēt virsraksta metadatus Java"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no XLTM dokumenta. Redakcijas tvērumu var iestatīt, iestatot filtru, piemēram, uz MetadaFilter.Title. Tas atstās regulāro izteiksmju atbilstības atsaukt visos metadatu vienumos, izņemot rekvizītu “Nosaukums”: 

      title_right: "Kā rediģēt XLTM metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt XLTM faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatiet redakcijas jomu, iestatot filtru, piem., Izmantojiet metadatafilterus.Nosaukums zemāk esošajā kodā
        * Zvanu saglabāšanas metode ar objektu [MetadaTaSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Noņemt XLTM metadatus Java"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no XLTM dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti: 
        
      title_right: "Dzēst virsraksta metadatus no XLTM faila"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt XLTM faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai noņemtu dokumenta metadatus
        * Iestatiet redakcijas iespējas, iestatot filtru, piem., Aizstāt metadatafilter.All ar metadatafilteru.Nosaukums zemāk esošajā kodā
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