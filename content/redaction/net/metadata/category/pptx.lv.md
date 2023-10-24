
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/net/metadata/category/pptx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redakt sensitīvus metadatus no PPTX dokumentiem C#"
head_description: "Lietot metadatu redakciju, lietojot filtrus dažāda formāta dokumentiem"

############################# Header ############################
title: "Realizēt kategorijas nosaukumu no PPTX metadatiem C#"
description: "GroupDocs.Redaction s nodrošina elastīgu API, kas ļauj meklēt un aizvietot/noņemt metadatu rekvizītus, izmantojot filtrus."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kas ir metadatu redakcija?"
    content: |
        Redakcijas attiecas uz nevēlamas vai konfidenciālas informācijas noņemšanu no elektroniskajiem dokumentiem. Visiem failu formātiem, tostarp PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX un citi ir daži metadatu rekvizīti. Šie rekvizīti ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, izveides laiku, pēdējo reizi atjaunināto un daudz ko citu. Dažreiz jums ir pilnībā jāizdzēš nevēlamie metadatu lauki vai arī, iespējams, vēlēsities atjaunināt to vērtības. Ir arī daži slēptās dati, kas saistīti ar failiem, kurus var apskatīt, izmantojot dažādus instrumentus un metodes. Ir daudz gadījumu, kad jūs nevēlaties, lai šie dati varētu piekļūt ikviens. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt kategorijas nosaukumu no PPTX metadatiem C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Realizēt PPTX Metadatus C#"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no PPTX dokumenta. Jūs varat iestatīt rediģēšanas jomu, iestatot filtru, piemēram, uz MetadataFilter.category. - tas atstās regulāro izteiksmju atbilstības atsauktas visos metadatu vienumos, izņemot rekvizītu “Kategorija”:
        

      title_right: "Kā rediģēt PPTX metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klases un augšupielādēt PPTX faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatīt redakcijas apjomu, iestatot filtru, piem., Izmantot metadatafilter.Category zemāk esošajā kodā
        * Call [Redaktors.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metode ar objektu [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "852b461c316559151cb6075b4ecde2ce"
      gistfile: "RedactCategoryMetadata.cs"

    - title_left: "Noņemt PPTX metadatus C#"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no PPTX dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti:
        
        
      title_right: "Dzēst PPTX Metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klases un augšupielādēt PPTX faila instanci
        * Izveidojiet [EraseMetaDaTaredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) instanci, lai noņemtu dokumenta metadatus
        * Iestatīt redakcijas iespējas, iestatot filtru, piemēram, Aizstāt metadatafilter.All ar metadatafilter.Category zemāk kodu 
        * Call [Redaktors.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metode ar objektu [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Sistēmas prasības"
      content_left: |
        GroupDocs.Redaction for .NET atbalsta jebkuru 32 bitu vai 64 bitu operētājsistēmu, kurā ir instalēta platforma .NET. Tam nav nepieciešama ārēja programmatūra vai trešās puses rīks, kas jāinstalē. Lai iegūtu pilnīgu sistēmas prasību rokasgrāmatu, lūdzu, apmeklējiet [sistēmas prasības](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Uzstādīšanas instrukcijas"
      content_right: |
        Instalējiet no komandrindas kā ```nuget instalēt GroupDocs.Redaction ```vai izmantojot Package Manager Console Visual Studio ar ```Install-Package GroupDocs.Redaction```. 
        Varat arī iegūt bezsaistes MSI instalēšanas programmu vai DLL ZIP failā no [lejupielādes](https://downloads.groupdocs.com/redaction/net) un atsauci uz to savā projektā manuāli.

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