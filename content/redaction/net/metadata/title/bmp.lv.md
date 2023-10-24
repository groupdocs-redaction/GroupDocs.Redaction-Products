
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "lv/redaction/net/metadata/title/bmp"
otherformats: DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Metadatu redakcijas no dokumentiem C#"
head_description: "Redaktēt sensitīvus metadatus C#, izmantojot filtrus dažāda formāta dokumentiem"

############################# Header ############################
title: "Redakt virsraksta metadatus no BMP dokumenta C#"
description: "GroupDocs.Redaction s API ļauj meklēt un pēc tam atjaunināt vai noņemt visus konfidenciālos datus no dokumenta metadatiem."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kas ir metadatu redakcija?"
    content: |
        Galvenokārt cilvēki ir saistīti ar dokumenta teksta redakciju. Bet metadatu redakcija ir tikpat svarīga. Metadati ir dokumenta slēptie dati, kas var saturēt konfidenciālu informāciju, kuru, iespējams, nevēlaties koplietot ar citiem. Metadatu redakcija attiecas uz nevēlamas vai konfidenciālas informācijas izņemšanu no elektroniskajiem dokumentiem. Dokumenta metadati ietver autora vārdu, kategoriju, uzņēmuma nosaukumu, komentārus, izveides laiku, pēdējo reizi atjaunināto un daudz ko citu. Dažreiz jums ir pilnībā jāizdzēš nevēlamie metadatu lauki vai arī, iespējams, vēlēsities atjaunināt to vērtības. Ar GroupDocs.Redaction API varat lietot metadatu redakcijas jebkuram no šiem metadatu rekvizītiem. Varat tos mainīt vai dzēst, filtrējot vajadzīgos metadatus. Šajā rokasgrāmatā mēs paskaidrosim, kā jūs varat rediģēt titulu metadatus no BMP dokumenta C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redakt virsrakstu no BMP dokumenta"
      content_left: |
        Pēc koda ļauj meklēt un rediģēt sensitīvus datus no BMP dokumenta. Redakcijas tvērumu var iestatīt, iestatot filtru, piemēram, uz MetadaFilter.Title. Tas atstās regulāro izteiksmju atbilstības atsaukt visos metadatu vienumos, izņemot rekvizītu “Nosaukums”:
        

      title_right: "Kā rediģēt BMP metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klases un augšupielādēt BMP faila instanci
        * Izveidojiet [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) klases instanci, lai atrastu un aizstātu sensitīvus datus no dokumenta metadatiem
        * Iestatiet redakcijas apjomu, iestatot filtru, piem., Izmantojiet metadatafilteru.Nosaukums zemāk esošajā kodā
        * Call [Redaktors.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metode ar objektu [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Noņemt BMP metadatus C#"
      content_left: |
        Varat aizstāt visus vai konkrētus metadatus dokumentā ar tukšām (tukšām vai minimālām) vērtībām, izmantojot EraseMetaDataredAction klasi. Šis kods parāda, kā var filtrēt un pēc tam noņemt metadatu rekvizītu no BMP dokumenta.Tālāk sniegtajā piemērā tiek parādīti visi dokumenta rekvizīti:
        
        
      title_right: "Dzēst BMP Metadatus"
      content_right: |
        * Izveidot [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) klases un augšupielādēt BMP faila instanci
        * Izveidojiet [EraseMetaDaTaredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) instanci, lai noņemtu dokumenta metadatus
        * Iestatiet redakcijas iespējas, iestatot filtru, piem., Aizstāt metadatafilter.All ar metadatafilteru.Nosaukums zemāk esošajā kodā 
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