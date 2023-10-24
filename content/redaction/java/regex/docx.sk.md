---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "sk/redaction/java/regex/docx"
otherformats: CSV DOC DOCM DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Úprava DOCX textu prostredníctvom regulárneho výrazu v Java"
head_description: "GroupDocs.Redactions Java API umožňuje vývojárom upravovať text z PDF DOC DOCX RTF XLSX CSV PPT PPTX a obrázkov pomocou regulárnych výrazov v Java"

############################# Header ############################
title: "Ako odstrániť text zo súborov DOCX pomocou regulárnych výrazov a Java"
description: "GroupDocs.Redactions Java API umožňuje redigovať, skrývať alebo odstraňovať citlivý text z dokumentov na spracovanie textu, pracovných hárkov, prezentácií, PDFs a obrázkov pomocou regulárnych výrazov."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je dezinfekcia textu?"
    content: |
        Úprava textu alebo dezinfekcia je proces odstránenia dôverného alebo nechceného textu alebo informácií z digitálnych dokumentov, pričom zvyšok dokumentu alebo odseku, ktorý ho obsahuje, sa ponechá nedotknutý. Redakcia pomáha používateľom, ako aj organizácii chrániť ich citlivé informácie ich skrytím alebo trvalým odstránením. Používatelia rozhrania API GroupDocs.Redaction Java teraz môžu upravovať, skrývať alebo odstraňovať citlivý text z dokumentov na spracovanie textu, pracovných hárkov, prezentácií, PDF a súborov rastrových obrázkov. Rozhranie API poskytuje širokú škálu možností a metód na úpravu súkromných informácií v dokumentoch. Podporuje vyhľadávanie a redigovanie pomocou regulárnych výrazov, používanie textových (kódy výnimiek) alebo grafických (farebné obdĺžniky) redigovania a mnohé ďalšie. Prečo to teda neskúsiť a nezautomatizovať proces úpravy dokumentov stiahnutím rozhrania API a preskúmaním jeho základných a pokročilých funkcií.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Upravte DOCX pomocou regulárnych výrazov v Java"
      content_left: |
        GroupDocs.Redaction umožňuje jednoducho odstrániť údaje citlivého alebo súkromného charakteru z vašich dokumentov. Najpopulárnejším prípadom redigovania je odstránenie textu z dokumentu. 

        Nasledujúci kód možno použiť na aplikáciu textovej úpravy na konkrétnu časť dokumentu pomocou regulárneho výrazu. Umožňuje používateľom nahradiť všetky čísla zodpovedajúce vzoru „AA BB CCCCCC“ modrým obdĺžnikom,

      title_right: "Odstrániť citlivé údaje z DOCX"
      content_right: |
        * Vytvorte inštanciu triedy [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) a nahrajte súbor DOCX
        * Vytvorte inštanciu triedy [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction)
        * Zavolajte metódu redactor.apply s objektom triedy RegexRedaction
        * Na uloženie zmien zavolajte metódu redactor.save 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "Požiadavky na systém"
      content_left: |
        GroupDocs.Redaction for Java Rozhrania API sú podporované na všetkých hlavných platformách a operačných systémoch. Kompletnú príručku systémových požiadaviek nájdete na stránke [systémové požiadavky](https://docs.groupdocs.com/redaction/java/system-requirements) Pred spustením nižšie uvedeného kódu sa uistite, že máte vo svojom systéme nainštalované nasledujúce predpoklady :
        * Operačné systémy: Microsoft Windows, Linux, MacOS
        * Vývojové prostredie: NetBeans, Intellij IDEA, Eclipse atď
        * Java Runtime prostredie: J2SE 6.0 a vyššie
        * Získajte najnovšiu verziu aplikácie GroupDocs.Redaction for Java od [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Prečo používať GroupDocs.Redaction"
      content_right: |
        * Umožnite používateľom pridávať vlastné formáty dokumentov a typy úprav
        * Na odstránenie citlivých informácií nie je potrebný žiadny ďalší softvér
        * Možnosť nastaviť vykresľovací dokument rozsahu strán ako PDF
        * Jednoduchý spôsob úpravy rôznych typov metadát: meno autora, verzia, názov, predmet, popis a mnoho ďalších
        * Extrakcia informácií o dokumente – typ súboru, počet strán atď.

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---