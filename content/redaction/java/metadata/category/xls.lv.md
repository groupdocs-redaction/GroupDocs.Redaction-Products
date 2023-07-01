
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/java/metadata/category/xls"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLSM XLSX XLT XLTM XLTX  
ad_headline: "Reģēt metadatus | Java"
ad_description: "Readēt kategorijas nosaukumu no XLS metadatiem Java"
############################# Head ############################
head_title: "Readēt kategorijas nosaukumu no XLS metadatiem Java"
head_description: "GroupDocs.Redaction s nodrošina elastīgu API, kas ļauj meklēt un aizvietot/noņemt metadatu rekvizītus, izmantojot filtrus."

############################# Header ############################
title: "Readēt kategorijas nosaukumu no XLS metadatiem Java"
description: "GroupDocs.Redaction s nodrošina elastīgu API, kas ļauj meklēt un aizvietot/noņemt metadatu rekvizītus, izmantojot filtrus."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kas ir metadatu redakcija?"
    content: |
        Redakcijas attiecas uz nevēlamas vai konfidenciālas informācijas noņemšanu no elektroniskajiem dokumentiem. Visiem failu formātiem, tostarp PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX un citi ir daži metadatu rekvizīti. Šie rekvizīti ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, izveides laiku, pēdējo reizi atjaunināto un daudz ko citu. Dažreiz jums ir pilnībā jāizdzēš nevēlamie metadatu lauki vai arī, iespējams, vēlēsities atjaunināt to vērtības. Ir arī daži slēptās dati, kas saistīti ar failiem, kurus var apskatīt, izmantojot dažādus instrumentus un metodes. Ir daudz gadījumu, kad jūs nevēlaties, lai šie dati varētu piekļūt ikviens. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt kategorijas nosaukumu no XLS metadatiem Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Realizēt XLS Metadatus Java"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no XLS dokumenta. Jūs varat iestatīt rediģēšanas jomu, iestatot filtru, piemēram, uz MetadataFilter.category. - tas atstās regulāro izteiksmju atbilstības atsauktas visos metadatu vienumos, izņemot rekvizītu “Kategorija”: 

      title_right: "Kā rediģēt XLS metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt XLS faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatiet redakcijas iespējas, iestatot filtru, piem., Izmantot metadatafilterus.Category zemāk esošajā kodā
        * Zvanu redaktors.saglabāt metodi ar objektu [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7aa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "Noņemt XLS metadatus Java"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no XLS dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti: 
        
      title_right: "Dzēst kategorijas metadatus no XLS faila"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) klases un augšupielādēt XLS faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) klases instanci, lai noņemtu dokumenta metadatus
        * Iestatīt redakcijas iespējas, iestatot filtru, piemēram, Aizstāt metadatafilter.All ar metadatafilter.Category zemāk kodu
        * Zvanu redaktors.saglabāt metodi ar objektu [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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