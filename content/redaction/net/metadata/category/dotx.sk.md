
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/net/metadata/category/dotx"
otherformats: BMP DOC DOCM DOCX DOT DOTM GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redigovanie citlivých metaúdajov z DOTX dokumentov v C#"
head_description: "Použite redigovanie metadát použitím filtrov pre dokumenty rôznych formátov"

############################# Header ############################
title: "Zredigovať kategóriu Názov z DOTX Metaúdajov v C#"
description: "GroupDocs.Redaction s poskytuje flexibilné API, ktoré umožňuje vyhľadávať a nahrádzať/odstraňovať akúkoľvek vlastnosť metaúdajov pomocou filtrov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je redigovanie metadát?"
    content: |
        Redakcia sa týka odstránenia nechcených alebo dôverných informácií z elektronických dokumentov. Všetky formáty súborov vrátane PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX a ďalších majú niektoré vlastnosti metaúdajov. Tieto vlastnosti zahŕňajú meno autora, kategóriu, názov spoločnosti, komentáre, čas vytvorenia, poslednú aktualizáciu a mnoho ďalších. Niekedy je potrebné úplne odstrániť nežiaduce polia metaúdajov alebo možno budete chcieť aktualizovať ich hodnoty. K súborom sú tiež spojené niektoré skryté údaje, ktoré je možné zobraziť pomocou rôznych nástrojov a techník. Existuje veľa prípadov, keď nechcete, aby k týmto údajom mal prístup ktokoľvek. Pomocou GroupDocs.Redaction API môžete použiť redigovanie metaúdajov na ktorúkoľvek z týchto vlastností metaúdajov. Môžete ich zmeniť alebo odstrániť filtrovaním požadovaných metaúdajov. V tejto príručke vysvetlíme, ako môžete redigovať názov kategórie z metadát DOTX v C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigovať DOTX Metaúdaje v C#"
      content_left: |
        Nasledujúci kód umožňuje vyhľadávať a redigovať citlivé údaje z dokumentu DOTX. Môžete nastaviť priestor pre redigovanie nastavením filtra, napr. na MetadataFilter.category. - ponechá nezhody regulárnych výrazov nedokončené vo všetkých položkách metaúdajov okrem vlastnosti „Kategória“:
        

      title_right: "Ako redigovať DOTX metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload DOTX
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) na vyhľadanie a nahradenie citlivých údajov z metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Použite Metadatafilter.Category v nižšie uvedenom kóde
        * Zavolajte metódu [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) s objektom [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "852b461c316559151cb6075b4ecde2ce"
      gistfile: "RedactCategoryMetadata.cs"

    - title_left: "Odstrániť DOTX metaúdaje v C#"
      content_left: |
        Všetky alebo konkrétne metaúdaje v dokumente môžete nahradiť prázdnymi (prázdnymi alebo minimálnymi) hodnotami pomocou triedy EraseMetaData Action. Nasledujúci kód ukazuje, ako môžete filtrovať a potom odstrániť vlastnosť metaúdajov z dokumentu DOTX. Nižšie uvedený príklad vymaže všetky vlastnosti dokumentu:
        
        
      title_right: "Vymazať DOTX Metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload DOTX
        * Vytvorte inštanciu [EraseMetaDataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) na odstránenie metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Nahradiť Metadatafilter.all s MetadataFilter.Category v nižšie uvedenom kóde 
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