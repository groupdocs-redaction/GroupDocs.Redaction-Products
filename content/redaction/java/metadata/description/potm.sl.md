
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sl/redaction/java/metadata/description/potm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Preurejanje metapodatkov | Java"
ad_description: "Uredij metapodatke opisa iz datoteke POTM v Java"
############################# Head ############################
head_title: "Uredij metapodatke opisa iz datoteke POTM v Java"
head_description: "GroupDocs.Redaction s ponuja prilagodljiv API, ki omogoča iskanje in zamenjavo/odstranjevanje vseh lastnosti metapodatkov s pomočjo filtrov."

############################# Header ############################
title: "Uredij metapodatke opisa iz datoteke POTM v Java"
description: "GroupDocs.Redaction s ponuja prilagodljiv API, ki omogoča iskanje in zamenjavo/odstranjevanje vseh lastnosti metapodatkov s pomočjo filtrov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Približno GroupDocs.Redaction za Java"
    content: |
        Redakcija se nanaša na odstranitev neželenih ali zaupnih informacij iz elektronskih dokumentov. Vse oblike datotek, vključno z PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX in drugimi, imajo nekatere lastnosti metapodatkov. Te lastnosti vključujejo ime avtorja, kategorijo, ime podjetja, komentarje, čas ustvarjanja, zadnjo posodobitev in še veliko več. Včasih morate popolnoma izbrisati nezaželena polja metapodatkov ali pa boste morda želeli posodobiti njihove vrednosti. Obstaja tudi nekaj skritih podatkov, povezanih z datotekami, ki si jih je mogoče ogledati z različnimi orodji in tehnikami. Obstaja veliko primerov, ko ne želite, da do teh podatkov dostopa nihče. Z API-jem GroupDocs.Redaction lahko uporabite predelave metapodatkov za katero koli od teh lastnosti metapodatkov. Lahko jih spremenite ali izbrišete tako, da filtrirate želene metapodatke. V tem priročniku bomo razložili, kako lahko uredite opis iz metapodatkov POTM v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Posodabljanje polja metapodatkov opisa"
      content_left: |
        Naslednja koda omogoča iskanje in redigiranje občutljivih podatkov iz dokumenta POTM. Obseg za redakcijo lahko nastavite tako, da nastavite filter, npr. na metafilter.Description. V vseh metapodatkovnih elementih bo ostala razveljavljena ujemanja regularnih izrazov, razen lastnosti« Opis »: 

      title_right: "Kako redigirati v Java"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko POTM
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da poiščete in zamenjate občutljive podatke iz metapodatkov dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Uporabi metafilterje.Opis v spodnji kodi
        * Način shranjevanja klicev s predmetom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "9faf1affc732aa746e8d34ca813621b2"
      gistfile: "RedactDescriptionMetadata.java"
      
    - title_left: "Izbrišite polje metapodatkov v Java"
      content_left: |
        Vse ali določene metapodatke v dokumentu lahko zamenjate s praznimi (praznimi ali minimalnimi) vrednostmi z razredom EraseMetaDataRedAction. Naslednja koda prikazuje, kako lahko filtrirate in nato odstranite lastnost metapodatkov iz dokumenta POTM. Spodnji primer izprazni vse lastnosti dokumenta: 
        
      title_right: "Odstrani POTM metapodatkovno polje"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko POTM
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da odstranite metapodatke dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Zamenjaj metaTAfilter.Vse z metaTAfilterjem.Opis v spodnji kodi
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
        
      title_right: "Zakaj uporabljati GroupDocs.Redaction?"
      content_right: |
        * Dovoli uporabnikom, da dodajo oblike dokumentov po meri in vrste redigiranja
        * Enostaven način za urejanje različnih vrst metapodatkov: ime avtorja, različica, naslov, predmet, opis in še veliko več
        * Sposobnost nastavitve dokumenta za upodabljanje obsega strani kot PDF
        * Za odstranjevanje občutljivih informacij ni potrebna dodatna programska oprema
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