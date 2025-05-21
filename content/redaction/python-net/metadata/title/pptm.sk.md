
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/net/metadata/title/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redakcie metadát z dokumentov v C#"
head_description: "Redigujte citlivé metadáta v C# použitím filtrov pre dokumenty rôznych formátov"

############################# Header ############################
title: "Redigovať metadáta názvu z dokumentu PPTM v C#"
description: "GroupDocs.Redaction s API umožňuje vyhľadávať a následne aktualizovať alebo odstrániť akékoľvek dôverné údaje z metaúdajov dokumentu."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je redigovanie metadát?"
    content: |
        Väčšinou sa ľudia zaoberajú redakciou textu dokumentu. Rovnako dôležitá je aj redigácia metadát. Metaúdaje sú skryté údaje dokumentu, ktoré môžu obsahovať dôverné informácie, ktoré možno nebudete chcieť zdieľať s ostatnými. Redakcia metaúdajov sa týka odstránenia nechcených alebo dôverných informácií z elektronických dokumentov. Metaúdaje dokumentu zahŕňajú meno autora, kategóriu, názov spoločnosti, komentáre, čas vytvorenia, poslednú aktualizáciu a mnoho ďalších. Niekedy je potrebné úplne odstrániť nežiaduce polia metaúdajov alebo možno budete chcieť aktualizovať ich hodnoty. Pomocou GroupDocs.Redaction API môžete použiť redigovanie metaúdajov na ktorúkoľvek z týchto vlastností metaúdajov. Môžete ich zmeniť alebo odstrániť filtrovaním požadovaných metaúdajov. V tejto príručke vysvetlíme, ako môžete redigovať metadáta názvu z dokumentu PPTM v C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigovať názov z dokumentu PPTM"
      content_left: |
        Nasledujúci kód umožňuje vyhľadávať a redigovať citlivé údaje z dokumentu PPTM. Môžete nastaviť priestor pre redigovanie nastavením filtra, napr. na MetadataFilter.title. Zhody regulárnych výrazov ponechá nedokončené vo všetkých položkách metaúdajov, okrem vlastnosti „Názov“:
        

      title_right: "Ako redigovať PPTM metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload PPTM
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) na vyhľadanie a nahradenie citlivých údajov z metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Použite MetaKatafilter.title v nižšie uvedenom kóde
        * Zavolajte metódu [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) s objektom [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "78fca6b6facd4e3ea79038d7abcb092f"
      gistfile: "RedactTitleMetadata.cs"

    - title_left: "Odstrániť PPTM metaúdaje v C#"
      content_left: |
        Všetky alebo konkrétne metaúdaje v dokumente môžete nahradiť prázdnymi (prázdnymi alebo minimálnymi) hodnotami pomocou triedy EraseMetaData Action. Nasledujúci kód ukazuje, ako môžete filtrovať a potom odstrániť vlastnosť metaúdajov z dokumentu PPTM. Nižšie uvedený príklad vymaže všetky vlastnosti dokumentu:
        
        
      title_right: "Vymazať PPTM Metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload PPTM
        * Vytvorte inštanciu [EraseMetaDataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) na odstránenie metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Nahradiť MetadataFilter.all pomocou MetadataFilter.title v nižšie uvedenom kóde 
        * Zavolajte metódu [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) s objektom [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Požiadavky na systém"
      content_left: |
        GroupDocs.Redaction for .NET podporuje akýkoľvek 32-bitový alebo 64-bitový operačný systém, na ktorom je nainštalovaná platforma .NET. Nevyžaduje inštaláciu externého softvéru alebo nástroja tretích strán. Kompletnú príručku systémovými požiadavkami nájdete na stránke [systémové požiadavky](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Pokyny na inštaláciu"
      content_right: |
        Nainštalujte z príkazového riadku ako ```nuget install GroupDocs.Redaction ```alebo cez konzolu správcu balíkov Visual Studio pomocou ```Install-Package GroupDocs.Redaction```. 
        Prípadne môžete získať offline inštalátor MSI alebo DLL v súbore ZIP z [download](https://downloads.groupdocs.com/redaction/net) a manuálne ho odkazujte vo svojom projekte.

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