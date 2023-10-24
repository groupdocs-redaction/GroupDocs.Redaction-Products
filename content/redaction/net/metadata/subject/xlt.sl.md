
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sl/redaction/net/metadata/subject/xlt"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLTM XLTX  

############################# Head ############################
head_title: "Poredakcije metapodatkov iz dokumentov v C#"
head_description: "Spremenite občutljive metapodatke v C# z uporabo filtrov za dokumente različnih formatov"

############################# Header ############################
title: "Reakcija metapodatkov iz dokumenta XLT v C#"
description: "GroupDocs.Redaction s API omogoča iskanje in nato posodabljanje ali odstranjevanje zaupnih podatkov iz metapodatkov dokumenta."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Kaj je redigirana metapodatkov?"
    content: |
        Večinoma se ljudje ukvarjajo z redigiranjem besedila dokumenta. Toda redigiranost metapodatkov je enako pomembna. Metapodatki so skriti podatki dokumenta, ki lahko vsebujejo zaupne informacije, ki jih morda ne želite deliti z drugimi. Reakcija metapodatkov se nanaša na odstranitev nezaželenih ali zaupnih informacij iz elektronskih dokumentov. Metapodatki dokumenta vključujejo ime avtorja, kategorijo, ime podjetja, komentarje, čas ustvarjanja, zadnjo posodobitev in še veliko več. Včasih morate popolnoma izbrisati nezaželena polja metapodatkov ali pa boste morda želeli posodobiti njihove vrednosti. Z API-jem GroupDocs.Redaction lahko uporabite predelave metapodatkov za katero koli od teh lastnosti metapodatkov. Lahko jih spremenite ali izbrišete tako, da filtrirate želene metapodatke. V tem priročniku bomo razložili, kako lahko redigirate metapodatke predmeta iz dokumenta XLT v C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Reaktirajte predmet iz dokumenta XLT"
      content_left: |
        Naslednja koda omogoča iskanje in redigiranje občutljivih podatkov iz dokumenta XLT. Obseg za redigiranje lahko nastavite tako, da nastavite filter, npr. na Metadatafilter.subject. To bo pustil regularnih izrazov ujemanja razveljavljena v vseh metapodatkovnih elementih, razen »Zadeva« lastnost:
        

      title_right: "Kako urediti metapodatke XLT"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) in naložite datoteko XLT
        * Ustvarite primerek razreda [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction), da poiščete in zamenjate občutljive podatke iz metapodatkov dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Uporaba metaFilter.Zadeva v spodnji kodi
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) metoda s predmetom [MetadaSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "fe7bf28f64f61d748d50026fbc1350fe"
      gistfile: "RedactSubjectMetadata.cs"

    - title_left: "Odstrani XLT metapodatke v C#"
      content_left: |
        Vse ali določene metapodatke v dokumentu lahko zamenjate s praznimi (praznimi ali minimalnimi) vrednostmi z razredom EraseMetaDataRedAction. Naslednja koda prikazuje, kako lahko filtrirate in nato odstranite lastnost metapodatkov iz dokumenta XLT. Spodnji primer izprazni vse lastnosti dokumenta:
        
        
      title_right: "Izbriši metapodatke XLT"
      content_right: |
        * Ustvarite primerek razreda [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) in naložite datoteko XLT
        * Ustvarite primerek [EraseMetaDataRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction), da odstranite metapodatke dokumenta
        * Nastavite obseg za redakcijo z nastavitvijo filtra, npr. Zamenjaj metaTAfilter.Vse z metaTAfilterjem.Zadeva v spodnji kodi 
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