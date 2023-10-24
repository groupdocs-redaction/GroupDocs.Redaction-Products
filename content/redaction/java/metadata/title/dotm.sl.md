
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sl/redaction/java/metadata/title/dotm"
otherformats: BMP DOC DOCM DOCX DOT DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Preurejanje metapodatkov | Java"
ad_description: "Uredij naslov iz metapodatkov DOTM v Java"
############################# Head ############################
head_title: "Preuredite naslov iz datoteke DOTM v Java Uporaba API-ja GroupDocs.Redaction"
head_description: "GroupDocs.Redaction je močan API za saniranje, ki omogoča odstranjevanje ali urejanje zaupnih informacij iz več kot 30 vrst dokumentov."

############################# Header ############################
title: "Preuredite naslov iz datoteke DOTM v Java Uporaba API-ja GroupDocs.Redaction"
description: "GroupDocs.Redaction je močan API za saniranje, ki omogoča odstranjevanje ali urejanje zaupnih informacij iz več kot 30 vrst dokumentov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kaj je redigirana metapodatkov?"
    content: |
        Shranjevanje dokumenta v izvirni obliki zahteva brisanje ali redigiranje njegovih metapodatkov, da se odstranijo vsi zaupni podatki. Za te namene GroupDocs.Redaction zagotavlja API za redakcijo metapodatkov. GroupDocs.Redaction API omogoča shranjevanje redigiranih dokumentov v PDF, pretvorbo vseh strani v rastrske slike ali shranjevanje redigiranih dokumentov v izvirni obliki za nadaljnje urejanje. Vse oblike datotek, vključno z PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX in drugimi, imajo nekatere lastnosti metapodatkov. Te lastnosti vključujejo ime avtorja, kategorijo, ime podjetja, komentarje, čas ustvarjanja, zadnje posodobljene in še veliko več.Obstaja tudi nekaj skritih podatkov, povezanih z datotekami, ki si jih lahko ogledate z različnimi orodji in tehnikami. Z API-jem GroupDocs.Redaction lahko uporabite predelave metapodatkov za katero koli od teh lastnosti metapodatkov. Lahko jih spremenite ali izbrišete tako, da filtrirate želene metapodatke. V tem priročniku bomo razložili, kako lahko uredite naslov iz datoteke DOTM v Java z uporabo API-ja GroupDocs.Redaction.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Uredij metapodatke naslova v Java"
      content_left: |
        Naslednja koda omogoča iskanje in redigiranje občutljivih podatkov iz dokumenta DOTM. Obseg za redigiranje lahko nastavite tako, da nastavite filter, npr. na metaFilter.title. V vseh metapodatkovnih elementih, razen lastnosti« Naslov », bo pustil ujemanja regularnih izrazov razveljavljena v vseh metapodatkovnih elementih: 

      title_right: "Kako urediti metapodatke DOTM"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko DOTM
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da poiščete in zamenjate občutljive podatke iz metapodatkov dokumenta
        * Nastavite obseg za redigiranje z nastavitvijo filtra, npr. Uporaba metaFilters.title v spodnji kodi
        * Način shranjevanja klicev s predmetom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Odstrani DOTM metapodatke v Java"
      content_left: |
        Vse ali določene metapodatke v dokumentu lahko zamenjate s praznimi (praznimi ali minimalnimi) vrednostmi z razredom EraseMetaDataRedAction. Naslednja koda prikazuje, kako lahko filtrirate in nato odstranite lastnost metapodatkov iz dokumenta DOTM. Spodnji primer izprazni vse lastnosti dokumenta: 
        
      title_right: "Izbrišite metapodatke naslova iz datoteke DOTM"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko DOTM
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da odstranite metapodatke dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Zamenjaj metaTAfilter.All z metaTAfilter.title v spodnji kodi
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