
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/java/metadata/category/xlsx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLT XLTM XLTX  
ad_headline: "Redigovať metaúdaje | Java"
ad_description: "Redigovať názov kategórie z XLSX Metaúdajov v Java"
############################# Head ############################
head_title: "Redigovať názov kategórie z XLSX Metaúdajov v Java"
head_description: "GroupDocs.Redaction s poskytuje flexibilné API, ktoré umožňuje vyhľadávať a nahrádzať/odstraňovať akúkoľvek vlastnosť metaúdajov pomocou filtrov."

############################# Header ############################
title: "Redigovať názov kategórie z XLSX Metaúdajov v Java"
description: "GroupDocs.Redaction s poskytuje flexibilné API, ktoré umožňuje vyhľadávať a nahrádzať/odstraňovať akúkoľvek vlastnosť metaúdajov pomocou filtrov."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je redigovanie metadát?"
    content: |
        Redakcia sa týka odstránenia nechcených alebo dôverných informácií z elektronických dokumentov. Všetky formáty súborov vrátane PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX a ďalších majú niektoré vlastnosti metaúdajov. Tieto vlastnosti zahŕňajú meno autora, kategóriu, názov spoločnosti, komentáre, čas vytvorenia, poslednú aktualizáciu a mnoho ďalších. Niekedy je potrebné úplne odstrániť nežiaduce polia metaúdajov alebo možno budete chcieť aktualizovať ich hodnoty. K súborom sú tiež spojené niektoré skryté údaje, ktoré je možné zobraziť pomocou rôznych nástrojov a techník. Existuje veľa prípadov, keď nechcete, aby k týmto údajom mal prístup ktokoľvek. Pomocou GroupDocs.Redaction API môžete použiť redigovanie metaúdajov na ktorúkoľvek z týchto vlastností metaúdajov. Môžete ich zmeniť alebo odstrániť filtrovaním požadovaných metaúdajov. V tejto príručke vysvetlíme, ako môžete redigovať názov kategórie z metadát XLSX v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigovať XLSX Metaúdaje v Java"
      content_left: |
        Nasledujúci kód umožňuje vyhľadávať a redigovať citlivé údaje z dokumentu XLSX. Môžete nastaviť priestor pre redigovanie nastavením filtra, napr. na MetadataFilter.category. - ponechá nezhody regulárnych výrazov nedokončené vo všetkých položkách metaúdajov okrem vlastnosti „Kategória“: 

      title_right: "Ako redigovať XLSX metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLSX
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na vyhľadanie a nahradenie citlivých údajov z metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Použite Metadatafilters.Category v nižšie uvedenom kóde
        * Zavolajte metódu redactor.save s objektom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7aaa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "Odstrániť XLSX metaúdaje v Java"
      content_left: |
        Všetky alebo konkrétne metaúdaje v dokumente môžete nahradiť prázdnymi (prázdnymi alebo minimálnymi) hodnotami pomocou triedy EraseMetaData Action. Nasledujúci kód ukazuje, ako môžete filtrovať a potom odstrániť vlastnosť metaúdajov z dokumentu XLSX. Nižšie uvedený príklad vymaže všetky vlastnosti dokumentu: 
        
      title_right: "Vymazať metadáta kategórie zo súboru XLSX"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLSX
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na odstránenie metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Nahradiť Metadatafilter.all s MetadataFilter.Category v nižšie uvedenom kóde
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