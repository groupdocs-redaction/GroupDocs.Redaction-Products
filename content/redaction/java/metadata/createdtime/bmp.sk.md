
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "sk/redaction/java/metadata/createdtime/bmp"
otherformats: DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Redigovať metaúdaje | Java"
ad_description: "Redakcia metadát z dokumentu BMP v Java"
############################# Head ############################
head_title: "Redakcia metadát z dokumentu BMP v Java"
head_description: "Jednoducho vyhľadávajte, nahrádzajte, odstraňujte alebo upravujte metadáta rôznych typov dokumentov pomocou filtrov na výber konkrétnych vlastností metaúdajov pomocou GroupDocs.Redaction s API pre Java."

############################# Header ############################
title: "Redakcia metadát z dokumentu BMP v Java"
description: "Jednoducho vyhľadávajte, nahrádzajte, odstraňujte alebo upravujte metadáta rôznych typov dokumentov pomocou filtrov na výber konkrétnych vlastností metaúdajov pomocou GroupDocs.Redaction s API pre Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Začíname s redakciou metadát"
    content: |
        Niekedy je potrebné úplne odstrániť nežiaduce polia metaúdajov alebo možno budete chcieť aktualizovať ich hodnoty. K dispozícii sú tiež skryté údaje spojené so súbormi, ktoré je možné zobraziť pomocou rôznych nástrojov a techník. Existuje veľa situácií, keď nechcete, aby tieto údaje boli prístupné nikomu. Redakcia znamená odstránenie nežiaducich alebo dôverných informácií z rôznych dokumentov. Všetky formáty súborov vrátane PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX a ďalších majú špecifické štruktúry metaúdajov. Vlastnosti metaúdajov zahŕňajú meno autora, kategóriu, názov spoločnosti, komentáre, čas vytvorenia a poslednú aktualizáciu atď. Pomocou rozhrania GroupDocs.Redaction API môžete použiť redigovanie metaúdajov na ktorékoľvek z týchto polí metaúdajov. Môžete ich zmeniť alebo odstrániť filtrovaním požadovaných metaúdajov. V tejto príručke vysvetlíme, ako môžete použiť redigáciu metadát z dokumentu BMP v Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redigovať metaúdaje súboru BMP"
      content_left: |
        Nasledujúci kód umožňuje vyhľadávať a redigovať citlivé údaje z dokumentu BMP. Rozsah redigovania môžete nastaviť nastavením filtra, napr. na Metadatafilter.CreatedTime. Zhody regulárnych výrazov ponechá späť vo všetkých položkách metaúdajov okrem vlastnosti „Createdtime“: 

      title_right: "Kroky na redigovanie vytvorenýchmetadát"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload BMP
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na vyhľadanie a nahradenie citlivých údajov z metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Použite Metadatafilters.createdTime v nižšie uvedenom kóde
        * Metóda uloženia hovoru s objektom [MetaDataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"
      
    - title_left: "Odstrániť metadáta Createdtime v Java"
      content_left: |
        Všetky alebo konkrétne metaúdaje v dokumente môžete nahradiť prázdnymi (prázdnymi alebo minimálnymi) hodnotami pomocou triedy EraseMetaData Action. Nasledujúci kód ukazuje, ako môžete filtrovať a potom odstrániť vlastnosť metaúdajov z dokumentu BMP. Nižšie uvedený príklad vymaže všetky vlastnosti dokumentu: 
        
      title_right: "Ako vymazať BMP metaúdaje"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload BMP
        * Vytvorte inštanciu triedy [MetaData SearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) na odstránenie metaúdajov dokumentu
        * Nastavte priestor pre redigovanie nastavením filtra, napr. Nahradiť MetadataFilter.all pomocou MetadaTafilter.CreatedTime v nižšie uvedenom kóde
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