---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "sk/redaction/java/text/xltx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "Redigovať XLTX Text pomocou presnej frázy/regulárneho výrazu v Java"
head_description: "GroupDocs.Redaction s Java API umožňuje vývojárom redigovať text z PDF DOC DOCX RTF XLSX CSV PPT PPTX & obrázky pomocou presnej frázy alebo regulárneho výrazu v Java"

############################# Header ############################
title: "Ako redigovať, skryť alebo odstrániť text z XLTX súborov pomocou Java"
description: "GroupDocs.Redaction s Java API umožňuje redigovať, skryť alebo odstrániť citlivý text z textových dokumentov, pracovných hárkov, prezentácií, PDF s & obrázkov."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Čo je redigovanie textu?"
    content: |
        Redakcia textu je proces odstránenia dôverného alebo nechceného textu alebo informácií z digitálnych dokumentov, pričom zvyšok dokumentu alebo odseku, ktorý ho obsahuje, ponecháva nedotknutý. Redakcia pomáha používateľom, ako aj organizácii chrániť ich citlivé informácie tým, že ich skryje alebo natrvalo odstráni. Pomocou GroupDocs.Redaction Java API môžu používatelia teraz redigovať, skryť alebo odstrániť citlivý text z textových dokumentov, pracovných hárkov, prezentácií, PDF a súborov rastrových obrázkov. Rozhranie API poskytuje širokú škálu možností a metód na redakciu súkromných informácií v dokumentoch. Podporuje vyhľadávanie a redigovanie pomocou presnej zhody alebo regulárnych výrazov, použite textové (kódy výnimiek) alebo grafické (farebné obdĺžniky) redakcie a mnoho ďalších. Prečo to teda neskúsiť automatizovať proces redakcie dokumentov stiahnutím rozhrania API a preskúmaním jeho základných a pokročilých funkcií. 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redakt XLTX Presná fráza v Java"
      content_left: |
        GroupDocs.Redaction umožňuje jednoducho redigovať údaje citlivej alebo súkromnej povahy z vašich dokumentov. Najobľúbenejším prípadom redigovania je odstránenie textu z dokumentu. 

        Nasledujúci kód je možné použiť na aplikáciu textovej redigácie na konkrétnu časť dokumentu pomocou presnej frázy. Umožňuje používateľom nahradiť osobnú presnú frázu „Michal Clark“ osobným (alebo akýmkoľvek kódom výnimky),

      title_right: "Odstrániť citlivé údaje z XLTX"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLTX
        * Zavolajte Redactor.Apply metódu s novou inštanciou triedy exactPhraseRedAction
        * Zavolajte metódu redactor.save s objektom [exactPhraseRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Zavolajte metódu redactor.save na uloženie zmien 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redactexactphrase.java"
      
    - title_left: "Redakcia textu citlivá na veľké a veľké písmená v XLTX"
      content_left: |
        Nasledujúci príklad umožňuje používateľom vykonať presnú redigáciu s rozlišením písmen, ktoré rozlišujú veľké a veľké písmená, aby odstránili alebo skryli konkrétny skľučovadlo textu v dokumente. V predvolenom nastavení je vyhľadávanie presnej frázy necitlivé na malé a veľké písmená. 
        
      title_right: "Vykonajte redakciu citlivú na veľké a veľké písmená pomocou Java"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLTX
        * Zavolajte Redactor.Apply metódu s novou inštanciou triedy exactPhraseRedAction
        * Zavolajte metódu redactor.save s objektom [exactPhraseRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Zavolajte metódu redactor.save na uloženie zmien 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "casesensitiveredaction.java"

    - title_left: "Redigovanie textu v XLTX pomocou farebného poľa"
      content_left: |
        Namiesto odstránenia redigovaného textu alebo umiestnenia reťazca tam je tiež možné umiestniť farebné pole nad redigovaný text. V tomto prípade bude zodpovedaný text odstránený a farebný obdĺžnik bude umiestnený nad redigovaný text.
        
      title_right: "Použite farebné pole na odstránenie textu v Java"
      content_right: |
        * Vytvorte inštanciu súboru [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLTX
        * Zavolajte Redactor.Apply metódu s novou inštanciou triedy exactPhraseRedAction
        * Zavolajte metódu redactor.save s objektom [exactPhraseRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Zavolajte metódu redactor.save na uloženie zmien 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redacttextusingcolorbox.java"

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