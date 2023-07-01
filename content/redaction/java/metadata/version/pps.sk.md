
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/java/metadata/version/pps"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Redigovať metaúdaje | Java"
ad_description: "Redigovať verziu z PPS Metaúdajov v Java"
############################# Head ############################
head_title: "Redigovať metadáta verzie z dokumentu PPS v Java"
head_description: "GroupDocs.Redaction je výkonné dezinfekčné API, ktoré vám umožňuje odstrániť alebo upraviť dôverné informácie z viac ako 30 typov dokumentov."

############################# Header ############################
title: "Redigovať metadáta verzie z dokumentu PPS v Java"
description: "GroupDocs.Redaction je výkonné dezinfekčné API, ktoré vám umožňuje odstrániť alebo upraviť dôverné informácie z viac ako 30 typov dokumentov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je redigovanie metadát?"
    content: |
        Uloženie dokumentu v pôvodnom formáte vyžaduje vymazanie alebo redigovanie jeho metaúdajov, aby sa odstránili všetky dôverné údaje. Na tieto účely GroupDocs.Redaction poskytuje API pre redakciu metadát. GroupDocs.Redaction API umožňuje buď uložiť redigované dokumenty v PDF, transformovať všetky stránky na rastrové obrázky alebo uložiť redigovaný dokument v pôvodnom formáte pre ďalšie úpravy. Všetky formáty súborov vrátane PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX a ďalších majú niektoré vlastnosti metaúdajov. Tieto vlastnosti zahŕňajú meno autora, kategóriu, názov spoločnosti, komentáre, čas vytvorenia, poslednú aktualizáciu a mnoho ďalších.K súborom sú spojené aj niektoré skryté údaje, ktoré je možné zobraziť pomocou rôznych nástrojov a techník. Pomocou GroupDocs.Redaction API môžete použiť redigovanie metaúdajov na ktorúkoľvek z týchto vlastností metaúdajov. Môžete ich zmeniť alebo odstrániť filtrovaním požadovaných metaúdajov. V tejto príručke vám vysvetlíme, ako môžete redigovať metadáta verzie z dokumentu PPS v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigovať PPS Metaúdaje v Java"
      content_left: |
        Nasledujúci kód umožňuje vyhľadávať a redigovať citlivé údaje z dokumentu PPS. Rozsah redigovania môžete nastaviť nastavením filtra, napr. na MetadataFilter.version. Zhody regulárnych výrazov ponechá nedokončené vo všetkých položkách metaúdajov okrem vlastnosti „Verzia“: 

      title_right: "Ako redigovať PPS metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPS
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na vyhľadanie a nahradenie citlivých údajov z metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Použite MetadataFilters.version v nižšie uvedenom kóde
        * Metóda uloženia hovoru s objektom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "Odstrániť PPS metaúdaje v Java"
      content_left: |
        Všetky alebo konkrétne metaúdaje v dokumente môžete nahradiť prázdnymi (prázdnymi alebo minimálnymi) hodnotami pomocou triedy EraseMetaData Action. Nasledujúci kód ukazuje, ako môžete filtrovať a potom odstrániť vlastnosť metaúdajov z dokumentu PPS. Nižšie uvedený príklad vymaže všetky vlastnosti dokumentu: 
        
      title_right: "Ako vymazať metadáta verzie"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPS
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na odstránenie metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Nahradiť MetadataFilter.all pomocou MetadaTafilter.version v nižšie uvedenom kóde
        * Metóda uloženia hovoru s objektom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Požiadavky na systém"
      content_left: |
        GroupDocs.Redaction for Java API sú podporované na všetkých hlavných platformách a operačných systémoch. Kompletnú príručku systémových požiadaviek nájdete na stránke [systémové požiadavky](https://docs.groupdocs.com/redaction/java/system-requirements) Pred spustením kódu nižšie sa uistite, že máte vo svojom systéme nainštalované nasledujúce predpoklady:
        * Operačné systémy: Microsoft Windows, Linux, Mac OS
        * Vývojové prostredie: NetBeans, Intellij IDEA, Eclipse atď
        * Java Runtime prostredie: J2SE 6.0 a vyššie
        * Získajte najnovšiu verziu GroupDocs.Redaction for Java z [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Prečo používať GroupDocs.Redaction"
      content_right: |
        * Povoliť používateľom pridávať vlastné formáty dokumentov a typy redakcií
        * Na odstránenie citlivých informácií nie je potrebný žiadny ďalší softvér
        * Možnosť nastaviť vykresľujúci dokument rozsahu strán ako PDF
        * Jednoduchý spôsob redigovania rôznych typov metaúdajov: meno autora, verzia, názov, predmet, popis a mnoho ďalších
        * Extrakcia informácií o dokumente - typ súboru, počet strán atď.
        

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