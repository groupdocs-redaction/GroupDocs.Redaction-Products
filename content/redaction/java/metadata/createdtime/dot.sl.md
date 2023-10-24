
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sl/redaction/java/metadata/createdtime/dot"
otherformats: BMP DOC DOCM DOCX DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Preureditev metapodatkov | Java"
ad_description: "Reakcija metapodatkov iz dokumenta DOT v Java"
############################# Head ############################
head_title: "Reakcija metapodatkov iz dokumenta DOT v Java"
head_description: "Preprosto poiščite, zamenjajte, odstranite ali uredite metapodatke različnih vrst dokumentov z uporabo filtrov, da izberete določene lastnosti metapodatkov z uporabo API-ja GroupDocs.Redaction s za Java."

############################# Header ############################
title: "Reakcija metapodatkov iz dokumenta DOT v Java"
description: "Preprosto poiščite, zamenjajte, odstranite ali uredite metapodatke različnih vrst dokumentov z uporabo filtrov, da izberete določene lastnosti metapodatkov z uporabo API-ja GroupDocs.Redaction s za Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Začetek z redigiranjem metapodatkov"
    content: |
        Včasih morate popolnoma izbrisati nezaželena polja metapodatkov ali pa boste morda želeli posodobiti njihove vrednosti. Obstajajo tudi skriti podatki, povezani z datotekami, ki si jih je mogoče ogledati z različnimi orodji in tehnikami. Obstaja veliko situacij, ko ne želite, da so ti podatki dostopni nikomur. Redakcija pomeni odstranitev neželenih ali zaupnih informacij iz različnih dokumentov. Vsi formati datotek, vključno z PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX in drugimi imajo specifične metapodatkovne strukture. Lastnosti metapodatkov vključujejo ime avtorja, kategorijo, ime podjetja, komentarje, čas ustvarjanja in zadnje posodobljene itd. Z API-jem GroupDocs.Redaction lahko uporabite redigiranje metapodatkov za katero koli od teh polj metapodatkov. Lahko jih spremenite ali izbrišete tako, da filtrirate želene metapodatke. V tem priročniku bomo razložili, kako lahko uporabite redakcijo metapodatkov iz dokumenta DOT v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Uredišaj metapodatke datoteke DOT"
      content_left: |
        Naslednja koda omogoča iskanje in redigiranje občutljivih podatkov iz dokumenta DOT. Obseg za redigiranje lahko nastavite tako, da nastavite filter, npr. na Metadatafilter.CreatedTime. To bo pustil regularnih izrazov ujemanja razveljavljena v vseh metapodatkovnih elementih, razen »Createdtime« lastnosti: 

      title_right: "Koraki za urejanje metapodatkov v ustvarjenem času"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko DOT
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da poiščete in zamenjate občutljive podatke iz metapodatkov dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Uporabite metaDATAfilters.CreatedTime v spodnji kodi
        * Način shranjevanja klicev s predmetom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"
      
    - title_left: "Odstranite metapodatke Createdtime v Java"
      content_left: |
        Vse ali določene metapodatke v dokumentu lahko zamenjate s praznimi (praznimi ali minimalnimi) vrednostmi z razredom EraseMetaDataRedAction. Naslednja koda prikazuje, kako lahko filtrirate in nato odstranite lastnost metapodatkov iz dokumenta DOT. Spodnji primer izprazni vse lastnosti dokumenta: 
        
      title_right: "Kako izbrisati metapodatke DOT"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko DOT
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da odstranite metapodatke dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Zamenjaj metaDATAfilter.All z metaDATAfilter.CreatedTime v spodnji kodi
        * Način shranjevanja klicev s predmetom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Sistemske zahteve"
      content_left: |
        GroupDocs.Redaction for Java API-ji so podprti na vseh večjih platformah in operacijskih sistemih. Za celoten vodnik po sistemskih zahtevah obiščite [sistemske zahteve](https://docs.groupdocs.com/redaction/java/system-requirements) Preden izvedete spodnjo kodo, se prepričajte, da imate v vašem sistemu nameščene naslednje predpogoje:
        * Operacijski sistemi: Microsoft Windows, Linux, Mac OS
        * Razvojno okolje: NetBeans, Intellij IDEA, Eclipse itd
        * Java Runtime Okolje: J2SE 6.0 in več
        * Pridobite najnovejšo različico GroupDocs.Redaction for Java od [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Zakaj uporabljati GroupDocs.Redaction"
      content_right: |
        * Dovoli uporabnikom, da dodajo oblike dokumentov po meri in vrste redigiranja
        * Za odstranjevanje občutljivih informacij ni potrebna dodatna programska oprema
        * Sposobnost nastavitve dokumenta za upodabljanje obsega strani kot PDF
        * Enostaven način za urejanje različnih vrst metapodatkov: ime avtorja, različica, naslov, predmet, opis in še veliko več
        * Pridobivanje informacij o dokumentu - vrsta datoteke, število strani itd.
        

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