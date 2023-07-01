---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/java/text/dotx"
otherformats: CSV DOC DOCM DOCX DOT DOTM PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Schwärzen Sie DOTX Text über exakte Phrase/regulären Ausdruck in Java"
head_description: "GroupDocs.Redactions Java API ermöglicht es Entwicklern, Text aus PDF DOC DOCX RTF XLSX CSV PPT PPTX und Bildern über exakte Phrasen oder reguläre Ausdrücke in Java zu redigieren"

############################# Header ############################
title: "So schwärzen, verbergen oder entfernen Sie Text aus DOTX-Dateien mit Java"
description: "GroupDocs.Redactions Java API ermöglicht es, vertraulichen Text aus Textverarbeitungsdokumenten, Arbeitsblättern, Präsentationen, PDFs und Bildern zu redigieren, auszublenden oder zu entfernen."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Was ist Textredaktion?"
    content: |
        Textschwärzung ist der Prozess des Entfernens vertraulicher oder unerwünschter Texte oder Informationen aus digitalen Dokumenten, während der Rest des Dokuments oder Absatzes, der sie enthält, intakt bleibt. Die Schwärzung hilft Benutzern und Organisationen, ihre vertraulichen Informationen zu schützen, indem sie ausgeblendet oder dauerhaft entfernt werden. Mit der GroupDocs.Redaction Java API können Benutzer jetzt vertraulichen Text aus Textverarbeitungsdokumenten, Arbeitsblättern, Präsentationen, PDF- und Rasterbilddateien redigieren, ausblenden oder entfernen. Die API bietet eine Vielzahl von Optionen und Methoden zum Schwärzen privater Informationen in den Dokumenten. Es unterstützt das Suchen und Schwärzen mit exakten Übereinstimmungen oder regulären Ausdrücken, das Verwenden von textuellen (Ausnahmecodes) oder grafischen (farbige Rechtecke) Schwärzungen und vieles mehr. Probieren Sie es also aus und automatisieren Sie Ihren Dokumentenschwärzungsprozess, indem Sie die API herunterladen und ihre grundlegenden und erweiterten Funktionen erkunden.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Schwärzen Sie DOTX exakte Phrase in Java"
      content_left: |
        GroupDocs.Redaction ermöglicht das einfache Schwärzen von sensiblen oder privaten Daten aus Ihren Dokumenten. Der beliebteste Schwärzungsfall ist das Entfernen eines Textes aus einem Dokument. 

        Der folgende Code kann verwendet werden, um eine Textschwärzung auf einen bestimmten Teil eines Dokuments über eine exakte Phrase anzuwenden. Es ermöglicht Benutzern, den persönlichen genauen Ausdruck "Michal Clark" durch einen persönlichen (oder einen beliebigen Freistellungscode) zu ersetzen.

      title_right: "Sensible Daten aus DOTX entfernen"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei DOTX hoch
        * Rufen Sie die Redactor.apply-Methode mit einer neuen Instanz der ExactPhraseRedaction-Klasse auf
        * Rufen Sie die Methode redactor.save mit dem Objekt auf [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Rufen Sie die Methode redactor.save auf, um die Änderungen zu speichern 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "Groß- und Kleinschreibung von Text in DOTX"
      content_left: |
        Das folgende Beispiel ermöglicht es Benutzern, eine phasengenaue Schwärzung mit Berücksichtigung der Groß-/Kleinschreibung durchzuführen, um einen bestimmten Textblock in einem Dokument zu entfernen oder auszublenden. Standardmäßig wird bei der Suche nach der exakten Phase die Groß-/Kleinschreibung nicht beachtet. 
        
      title_right: "Führen Sie eine Groß-/Kleinschreibung über Java durch"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei DOTX hoch
        * Rufen Sie die Redactor.apply-Methode mit einer neuen Instanz der ExactPhraseRedaction-Klasse auf
        * Rufen Sie die Methode redactor.save mit dem Objekt auf [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Rufen Sie die Methode redactor.save auf, um die Änderungen zu speichern 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "Schwärzen Sie Text in DOTX über das Farbfeld"
      content_left: |
        Anstatt einen geschwärzten Text zu entfernen oder dort eine Zeichenfolge zu platzieren, ist es auch möglich, ein farbiges Kästchen über den geschwärzten Text zu legen. In diesem Fall wird der übereinstimmende Text entfernt und ein farbiges Rechteck wird über dem geschwärzten Text platziert.
        
      title_right: "Verwenden Sie das Farbfeld, um Text in Java zu entfernen"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei DOTX hoch
        * Rufen Sie die Redactor.apply-Methode mit einer neuen Instanz der ExactPhraseRedaction-Klasse auf
        * Rufen Sie die Methode redactor.save mit dem Objekt auf [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Rufen Sie die Methode redactor.save auf, um die Änderungen zu speichern 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

    - title_left: "System Anforderungen"
      content_left: |
        GroupDocs.Redaction für Java-APIs werden auf allen wichtigen Plattformen und Betriebssystemen unterstützt. Den vollständigen Leitfaden zu den Systemanforderungen finden Sie unter [Systemanforderungen](https://docs.groupdocs.com/redaction/java/system-requirements). Bevor Sie den folgenden Code ausführen, vergewissern Sie sich bitte, dass die folgenden Voraussetzungen auf Ihrem System installiert sind:
        * Betriebssysteme: Microsoft Windows, Linux, MacOS
        * Entwicklungsumgebung: NetBeans, Intellij IDEA, Eclipse usw
        * Java-Laufzeitumgebung: J2SE 6.0 und höher
        * Holen Sie sich die neueste Version von GroupDocs.Redaction für Java von [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Warum GroupDocs.Redaction verwenden"
      content_right: |
        * Erlauben Sie Benutzern, benutzerdefinierte Dokumentformate und Arten von Schwärzungen hinzuzufügen
        * Es ist keine zusätzliche Software erforderlich, um vertrauliche Informationen zu entfernen
        * Möglichkeit, Seitenbereich-Rendering-Dokument als PDF festzulegen
        * Einfache Möglichkeit, verschiedene Arten von Metadaten zu schwärzen: Autorenname, Version, Titel, Thema, Beschreibung und vieles mehr
        * Extraktion von Dokumentinformationen - Dateityp, Seitenzahl usw.

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