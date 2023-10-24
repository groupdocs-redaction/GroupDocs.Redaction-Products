
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sl/redaction/net/metadata/author/xlsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Spremenite občutljive metapodatke iz dokumentov XLSM v C#"
head_description: "Uporabite redigiranje metapodatkov z uporabo filtrov za dokumente različnih formatov"

############################# Header ############################
title: "Spremenite ime avtorja iz XLSM metapodatkov v C#"
description: "GroupDocs.Redaction s ponuja prilagodljiv API, ki omogoča iskanje in zamenjavo/odstranjevanje vseh lastnosti metapodatkov s pomočjo filtrov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kaj je redigirana metapodatkov?"
    content: |
        Redakcija se nanaša na odstranitev neželenih ali zaupnih informacij iz elektronskih dokumentov. Vse oblike datotek, vključno z PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX in drugimi, imajo nekatere lastnosti metapodatkov. Te lastnosti vključujejo ime avtorja, kategorijo, ime podjetja, komentarje, čas ustvarjanja, zadnjo posodobitev in še veliko več. Včasih morate popolnoma izbrisati nezaželena polja metapodatkov ali pa boste morda želeli posodobiti njihove vrednosti. Obstaja tudi nekaj skritih podatkov, povezanih z datotekami, ki si jih je mogoče ogledati z različnimi orodji in tehnikami. Obstaja veliko primerov, ko ne želite, da do teh podatkov dostopa nihče. Z API-jem GroupDocs.Redaction lahko uporabite predelave metapodatkov za katero koli od teh lastnosti metapodatkov. Lahko jih spremenite ali izbrišete tako, da filtrirate želene metapodatke. V tem priročniku bomo razložili, kako lahko uredite ime avtorja iz metapodatkov XLSM v C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Uredij XLSM Metapodatke v C#"
      content_left: |
        Naslednja koda omogoča iskanje in redigiranje občutljivih podatkov iz dokumenta XLSM. Obseg za redigiranje lahko nastavite tako, da nastavite filter, npr. na Metadatafilter.Author. - v vseh metapodatkovnih elementih bo pustil razveljavljena ujemanja regularnih izrazov, razen lastnosti« Avtor »:
        

      title_right: "Kako urediti metapodatke XLSM"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) in naložite datoteko XLSM
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), da poiščete in zamenjate občutljive podatke iz metapodatkov dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Uporabi metaFilter.Author v spodnji kodi
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metoda s predmetom [MetadaSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "9718d29035590c729114d50e69aa49b0"
      gistfile: "RedactAuthorMetadata.cs"

    - title_left: "Odstrani XLSM metapodatke v C#"
      content_left: |
        Vse ali določene metapodatke v dokumentu lahko zamenjate s praznimi (praznimi ali minimalnimi) vrednostmi z razredom EraseMetaDataRedAction. Naslednja koda prikazuje, kako lahko filtrirate in nato odstranite lastnost metapodatkov iz dokumenta XLSM. Spodnji primer izprazni vse lastnosti dokumenta:
        
        
      title_right: "Izbriši metapodatke XLSM"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) in naložite datoteko XLSM
        * Ustvarite primerek [EraseMetaDataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), da odstranite metapodatke dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Zamenjaj metaTAfilter.Vse z metaTAfilter.Author v spodnji kodi 
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metoda s predmetom [MetadaSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Sistemske zahteve"
      content_left: |
        GroupDocs.Redaction for .NET podpira kateri koli 32-bitni ali 64-bitni operacijski sistem, kjer je nameščena .NET platforma. Ne zahteva namestitve zunanje programske opreme ali orodja tretje osebe. Za celoten vodnik sistemskih zahtev obiščite [sistemske zahteve](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Navodila za namestitev"
      content_right: |
        Namestite iz ukazne vrstice kot ``nuget install GroupDocs.Redaction ````ali prek konzole upravitelja paketov Visual Studio z ``Install-Package GroupDocs.Redaction````. 
        Lahko pa dobite namestitveni program MSI brez povezave ali DLL-je v datoteki ZIP iz [prenosov](https://downloads.groupdocs.com/redaction/net) in ga ročno navedite v svojem projektu.

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