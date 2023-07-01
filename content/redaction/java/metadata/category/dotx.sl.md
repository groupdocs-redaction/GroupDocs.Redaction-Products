
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sl/redaction/java/metadata/category/dotx"
otherformats: BMP DOC DOCM DOCX DOT DOTM GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Preureditev metapodatkov | Java"
ad_description: "Ime kategorije uredi iz DOTX metapodatkov v Java"
############################# Head ############################
head_title: "Ime kategorije uredi iz DOTX metapodatkov v Java"
head_description: "GroupDocs.Redaction s ponuja prilagodljiv API, ki omogoča iskanje in zamenjavo/odstranjevanje vseh lastnosti metapodatkov s pomočjo filtrov."

############################# Header ############################
title: "Ime kategorije uredi iz DOTX metapodatkov v Java"
description: "GroupDocs.Redaction s ponuja prilagodljiv API, ki omogoča iskanje in zamenjavo/odstranjevanje vseh lastnosti metapodatkov s pomočjo filtrov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kaj je redigirana metapodatkov?"
    content: |
        Redakcija se nanaša na odstranitev neželenih ali zaupnih informacij iz elektronskih dokumentov. Vse oblike datotek, vključno z PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX in drugimi, imajo nekatere lastnosti metapodatkov. Te lastnosti vključujejo ime avtorja, kategorijo, ime podjetja, komentarje, čas ustvarjanja, zadnjo posodobitev in še veliko več. Včasih morate popolnoma izbrisati nezaželena polja metapodatkov ali pa boste morda želeli posodobiti njihove vrednosti. Obstaja tudi nekaj skritih podatkov, povezanih z datotekami, ki si jih je mogoče ogledati z različnimi orodji in tehnikami. Obstaja veliko primerov, ko ne želite, da do teh podatkov dostopa nihče. Z API-jem GroupDocs.Redaction lahko uporabite predelave metapodatkov za katero koli od teh lastnosti metapodatkov. Lahko jih spremenite ali izbrišete tako, da filtrirate želene metapodatke. V tem priročniku bomo razložili, kako lahko ime kategorije uredite iz metapodatkov DOTX v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Uredij DOTX Metapodatke v Java"
      content_left: |
        Naslednja koda omogoča iskanje in redigiranje občutljivih podatkov iz dokumenta DOTX. Obseg za redigiranje lahko nastavite tako, da nastavite filter, npr. na metafilter.Category. - ujemanja regularnih izrazov bodo razveljavljena v vseh metapodatkovnih elementih, razen lastnosti« Kategorija »: 

      title_right: "Kako urediti metapodatke DOTX"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko DOTX
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da poiščete in zamenjate občutljive podatke iz metapodatkov dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Uporaba metafilterjev.Kategorija v spodnji kodi
        * Pokličite metodo redactor.save s predmetom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7aa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "Odstrani DOTX metapodatke v Java"
      content_left: |
        Vse ali določene metapodatke v dokumentu lahko zamenjate s praznimi (praznimi ali minimalnimi) vrednostmi z razredom EraseMetaDataRedAction. Naslednja koda prikazuje, kako lahko filtrirate in nato odstranite lastnost metapodatkov iz dokumenta DOTX. Spodnji primer izprazni vse lastnosti dokumenta: 
        
      title_right: "Izbriši metapodatke kategorije iz datoteke DOTX"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) in naložite datoteko DOTX
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), da odstranite metapodatke dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Zamenjaj metaTAfilter.Vse z metaTAfilterjem.Kategorija v spodnji kodi
        * Pokličite metodo redactor.save s predmetom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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