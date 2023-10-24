
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/java/metadata/author/pdf"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Redigovať metaúdaje | Java"
ad_description: "Redigovať Author Name z PDF Metaúdajov v Java"
############################# Head ############################
head_title: "Odstrániť alebo aktualizovať meno autora z PDF metaúdajov v Java"
head_description: "GroupDocs.Redaction s poskytuje flexibilné API, ktoré umožňuje vyhľadávať a nahrádzať/odstraňovať akúkoľvek vlastnosť metaúdajov pomocou filtrov."

############################# Header ############################
title: "Odstrániť alebo aktualizovať meno autora z PDF metaúdajov v Java"
description: "GroupDocs.Redaction s poskytuje flexibilné API, ktoré umožňuje vyhľadávať a nahrádzať/odstraňovať akúkoľvek vlastnosť metaúdajov pomocou filtrov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je redigovanie metadát?"
    content: |
        Redakcia sa týka odstránenia nechcených alebo dôverných informácií z elektronických dokumentov. Všetky formáty súborov vrátane PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX a ďalších majú niektoré vlastnosti metaúdajov. Tieto vlastnosti zahŕňajú meno autora, kategóriu, názov spoločnosti, komentáre, čas vytvorenia, poslednú aktualizáciu a mnoho ďalších. Niekedy je potrebné úplne odstrániť nežiaduce polia metaúdajov alebo možno budete chcieť aktualizovať ich hodnoty. K súborom sú tiež spojené niektoré skryté údaje, ktoré je možné zobraziť pomocou rôznych nástrojov a techník. Existuje veľa prípadov, keď nechcete, aby k týmto údajom mal prístup ktokoľvek. Pomocou GroupDocs.Redaction API môžete použiť redigovanie metaúdajov na ktorúkoľvek z týchto vlastností metaúdajov. Môžete ich zmeniť alebo odstrániť filtrovaním požadovaných metaúdajov. V tejto príručke vysvetlíme, ako môžete redigovať meno autora z metaúdajov PDF v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigovať PDF Metaúdaje v Java"
      content_left: |
        Nasledujúci kód umožňuje vyhľadávať a redigovať citlivé údaje z dokumentu PDF. Môžete nastaviť priestor pre redigovanie nastavením filtra, napr. na MetadaTafilter.author. Zhody regulárnych výrazov ponechá späť vo všetkých položkách metaúdajov okrem vlastnosti „Autor“: 

      title_right: "Ako redigovať PDF metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PDF
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na vyhľadanie a nahradenie citlivých údajov z metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Použite metadatafilters.Author v nižšie uvedenom kóde
        * Zavolajte metódu redactor.save s objektom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e3926608f913f15d261b194084c179dd"
      gistfile: "RedactAuthorMetadata.java"
      
    - title_left: "Odstrániť metaúdaje autora v Java"
      content_left: |
        Všetky alebo konkrétne metaúdaje v dokumente môžete nahradiť prázdnymi (prázdnymi alebo minimálnymi) hodnotami pomocou triedy EraseMetaData Action. Nasledujúci kód ukazuje, ako môžete filtrovať a potom odstrániť vlastnosť metaúdajov z dokumentu PDF. Nižšie uvedený príklad vymaže všetky vlastnosti dokumentu: 
        
      title_right: "Vymazať PDF Metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PDF
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na odstránenie metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Nahradiť MetadaTafilter.all pomocou MetadaTafilter.Author v nižšie uvedenom kóde
        * Zavolajte metódu redactor.save s objektom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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