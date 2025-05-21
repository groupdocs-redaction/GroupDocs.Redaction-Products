
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/net/metadata/author/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redakt sensitīvus metadatus no PPTM dokumentiem C#"
head_description: "Lietot metadatu redakciju, lietojot filtrus dažāda formāta dokumentiem"

############################# Header ############################
title: "Rediģēt autora vārdu no PPTM metadatiem C#"
description: "GroupDocs.Redaction s nodrošina elastīgu API, kas ļauj meklēt un aizvietot/noņemt metadatu rekvizītus, izmantojot filtrus."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kas ir metadatu redakcija?"
    content: |
        Redakcijas attiecas uz nevēlamas vai konfidenciālas informācijas noņemšanu no elektroniskajiem dokumentiem. Visiem failu formātiem, tostarp PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX un citi ir daži metadatu rekvizīti. Šie rekvizīti ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, izveides laiku, pēdējo reizi atjaunināto un daudz ko citu. Dažreiz jums ir pilnībā jāizdzēš nevēlamie metadatu lauki vai arī, iespējams, vēlēsities atjaunināt to vērtības. Ir arī daži slēptās dati, kas saistīti ar failiem, kurus var apskatīt, izmantojot dažādus instrumentus un metodes. Ir daudz gadījumu, kad jūs nevēlaties, lai šie dati varētu piekļūt ikviens. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt autora vārdu no PPTM metadatiem C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Realizēt PPTM Metadatus C#"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no PPTM dokumenta. Redakcijas jomu var iestatīt, iestatot filtru, piemēram, uz MetadataFilter.author. - tas atstās regulāro izteiksmju atbilstības atsauktas visos metadatu vienumos, izņemot rekvizītu “Autors”:
        

      title_right: "Kā rediģēt PPTM metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klases un augšupielādēt PPTM faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatiet redakcijas apjomu, iestatot filtru, piem., Izmantot metadatafilteru.Autors zemāk esošajā kodā
        * Call [Redaktors.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metode ar objektu [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "9718d29035590c729114d50e69aaa49b0"
      gistfile: "RedactAuthorMetadata.cs"

    - title_left: "Noņemt PPTM metadatus C#"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no PPTM dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti:
        
        
      title_right: "Dzēst PPTM Metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klases un augšupielādēt PPTM faila instanci
        * Izveidojiet [EraseMetaDaTaredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) instanci, lai noņemtu dokumenta metadatus
        * Iestatiet redakcijas iespējas, iestatot filtru, piem., Aizstāt metadatafilteru.Viss ar metadatafilteru.Autors zemāk esošajā kodā 
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