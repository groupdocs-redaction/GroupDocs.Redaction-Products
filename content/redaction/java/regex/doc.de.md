---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/java/regex/doc"
otherformats: CSV DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "DOC-Text über regulären Ausdruck in Java schwärzen"
head_description: "Mit der API Java von GroupDocs.Redaction können Entwickler Text aus PDF DOC DOCX RTF XLSX CSV PPT PPTX und Bildern mithilfe regulärer Ausdrücke in Java redigieren."

############################# Header ############################
title: "So entfernen Sie Text aus DOC-Dateien mit regulären Ausdrücken und Java"
description: "Mit der Java-API von GroupDocs.Redaction können Sie sensiblen Text aus Textverarbeitungsdokumenten, Arbeitsblättern, Präsentationen, PDFs und Bildern mithilfe regulärer Ausdrücke schwärzen, ausblenden oder entfernen."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Was ist Textbereinigung?"
    content: |
        Textschwärzung oder -bereinigung ist der Prozess, bei dem vertrauliche oder unerwünschte Texte oder Informationen aus digitalen Dokumenten entfernt werden, während der Rest des Dokuments oder Absatzes, der sie enthält, intakt bleibt. Redaction hilft Benutzern und Organisationen, ihre sensiblen Informationen zu schützen, indem sie diese verbergen oder dauerhaft entfernen. Mithilfe der GroupDocs.Redaction Java API können Benutzer jetzt vertraulichen Text aus Textverarbeitungsdokumenten, Arbeitsblättern, Präsentationen, PDF und Rasterbilddateien schwärzen, ausblenden oder entfernen. Die API bietet eine Vielzahl von Optionen und Methoden zur Schwärzung privater Informationen in den Dokumenten. Es unterstützt die Suche und Schwärzung mithilfe regulärer Ausdrücke, die Verwendung textueller (Ausnahmecodes) oder grafischer Schwärzungen (farbige Rechtecke) und vieles mehr. Probieren Sie es also einfach aus und automatisieren Sie Ihren Dokument-Schwärzungsprozess, indem Sie die API herunterladen und ihre grundlegenden und erweiterten Funktionen erkunden.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Schwärzen Sie DOC mithilfe regulärer Ausdrücke in Java"
      content_left: |
        GroupDocs.Redaction ermöglicht das einfache Entfernen vertraulicher oder privater Daten aus Ihren Dokumenten. Der häufigste Schwärzungsfall ist das Entfernen eines Textes aus einem Dokument. 

        Der folgende Code kann verwendet werden, um mithilfe eines regulären Ausdrucks eine Textredaktion auf einen bestimmten Teil eines Dokuments anzuwenden. Es ermöglicht Benutzern, alle Zahlen zu ersetzen und dabei das Muster „AA BB CCCCCC“ durch ein blaues Farbrechteck abzugleichen.

      title_right: "Sensible Daten aus DOC entfernen"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei DOC hoch
        * Erstellen Sie eine Instanz der Klasse [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction).
        * Rufen Sie die Methode redactor.apply mit dem Objekt der Klasse RegexRedaction auf
        * Rufen Sie die Methode redactor.save auf, um die Änderungen zu speichern 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "System Anforderungen"
      content_left: |
        GroupDocs.Redaction for Java APIs werden auf allen wichtigen Plattformen und Betriebssystemen unterstützt. Den vollständigen Leitfaden zu den Systemanforderungen finden Sie unter [Systemanforderungen](https://docs.groupdocs.com/redaction/java/system-requirements). Bevor Sie den folgenden Code ausführen, stellen Sie bitte sicher, dass die folgenden Voraussetzungen auf Ihrem System installiert sind :
        * Betriebssysteme: Microsoft Windows, Linux, MacOS
        * Entwicklungsumgebung: NetBeans, Intellij IDEA, Eclipse usw
        * Java Laufzeitumgebung: J2SE 6.0 und höher
        * Holen Sie sich die neueste Version von GroupDocs.Redaction for Java von [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Warum GroupDocs.Redaction verwenden?"
      content_right: |
        * Ermöglichen Sie Benutzern das Hinzufügen benutzerdefinierter Dokumentformate und Schwärzungsarten
        * Zum Entfernen sensibler Informationen ist keine zusätzliche Software erforderlich
        * Möglichkeit, das Seitenbereich-Rendering-Dokument als PDF festzulegen
        * Einfache Möglichkeit, verschiedene Arten von Metadaten zu redigieren: Autorenname, Version, Titel, Betreff, Beschreibung und vieles mehr
        * Extraktion von Dokumentinformationen – Dateityp, Seitenanzahl usw.

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