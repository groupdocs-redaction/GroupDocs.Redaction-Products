
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "de/redaction/java/metadata/createdtime/ppsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metadaten redigieren | Java"
ad_description: "Bearbeitung von Metadaten aus PPSM -Dokument in Java"
############################# Head ############################
head_title: "Bearbeitung von Metadaten aus PPSM -Dokument in Java"
head_description: "Suchen, ersetzen, entfernen oder bearbeiten Sie mühelos Metadaten verschiedener Dokumenttypen, indem Sie mithilfe der GroupDocs.Redaction -API für Java Filter anwenden, um bestimmte Metadateneigenschaften auszuwählen."

############################# Header ############################
title: "Bearbeitung von Metadaten aus PPSM -Dokument in Java"
description: "Suchen, ersetzen, entfernen oder bearbeiten Sie mühelos Metadaten verschiedener Dokumenttypen, indem Sie mithilfe der GroupDocs.Redaction -API für Java Filter anwenden, um bestimmte Metadateneigenschaften auszuwählen."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Erste Schritte mit der Bearbeitung von Metadaten"
    content: |
        Manchmal müssen Sie unerwünschte Metadatenfelder vollständig löschen oder ihre Werte aktualisieren. Es gibt auch versteckte Daten, die mit Dateien verknüpft sind und mit verschiedenen Tools und Techniken angezeigt werden können. Es gibt viele Situationen, in denen Sie nicht möchten, dass diese Daten für irgendjemanden zugänglich sind. Schwärzung bedeutet das Entfernen unerwünschter oder vertraulicher Informationen aus verschiedenen Dokumenten. Alle Dateiformate, einschließlich PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX und andere, haben spezifische Metadatenstrukturen. Zu den Metadateneigenschaften gehören Autorenname, Kategorie, Firmenname, Kommentare, Erstellungszeit und letzte Aktualisierung usw. Mit der GroupDocs.Redaction -API können Sie die Metadatenschwärzung auf jedes dieser Metadatenfelder anwenden. Sie können sie ändern oder löschen, indem Sie die gewünschten Metadaten filtern. In diesem Handbuch erklären wir, wie Sie die Metadatenschwärzung aus dem Dokument PPSM in Java anwenden können.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Metadaten der Datei PPSM redigieren"
      content_left: |
        Mit dem folgenden Code können Sie vertrauliche Daten in einem PPSM -Dokument suchen und redigieren. Sie können den Umfang der Schwärzung festlegen, indem Sie den Filter setzen, z. B. auf MetadataFilter.createdTime. Die Treffer mit regulären Ausdrücken werden in allen Metadatenelementen außer der Eigenschaft „Createdtime“ rückgängig gemacht: 

      title_right: "Schritte zum Redigieren von Createdtime-Metadaten"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei PPSM hoch
        * Erstellen Sie eine Instanz der Klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), um vertrauliche Daten aus den Metadaten des Dokuments zu finden und zu ersetzen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. Verwenden Sie MetadataFilters.createdTime im folgenden Code
        * Rufen Sie die Speichermethode mit dem Objekt von [MetadataSearchRedAction] auf (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e773562949d4e6c0db09be86f79e4ced"
      gistfile: "RedactCreatedtimeMetadata.java"
      
    - title_left: "Createdtime-Metadaten in Java entfernen"
      content_left: |
        Mithilfe der EraseMetaDataRedAction-Klasse können Sie alle oder bestimmte Metadaten im Dokument durch leere (leere oder minimale) Werte ersetzen. Der folgende Code zeigt, wie Sie eine Metadateneigenschaft aus einem PPSM -Dokument filtern und anschließend entfernen können. Im folgenden Beispiel werden alle Eigenschaften des Dokuments ausgeblendet: 
        
      title_right: "So löschen Sie PPSM Metadaten"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei PPSM hoch
        * Erstellen Sie eine Instanz der Klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), um Metadaten des Dokuments zu entfernen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. ersetzen Sie MetadataFilter.all durch MetadataFilter.createdTime im folgenden Code
        * Rufen Sie die Speichermethode mit dem Objekt von [MetadataSearchRedAction] auf (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Systemanforderungen"
      content_left: |
        GroupDocs.Redaction for Java APIs werden auf allen wichtigen Plattformen und Betriebssystemen unterstützt. Den vollständigen Leitfaden zu den Systemanforderungen finden Sie unter [Systemanforderungen](https://docs.groupdocs.com/redaction/java/system-requirements) Bevor Sie den folgenden Code ausführen, stellen Sie sicher, dass die folgenden Voraussetzungen auf Ihrem System installiert sind:
        * Betriebssysteme: Microsoft Windows, Linux, Mac OS
        * Entwicklungsumgebung: NetBeans, Intellij IDEA, Eclipse usw.
        * Java Laufzeitumgebung: J2SE 6.0 und höher
        * Hol dir die neueste Version von GroupDocs.Redaction for Java von [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Warum GroupDocs.Redaction verwenden"
      content_right: |
        * Erlauben Sie Benutzern, benutzerdefinierte Dokumentformate und Arten von Schwärzungen hinzuzufügen
        * Es ist keine zusätzliche Software erforderlich, um vertrauliche Informationen zu entfernen
        * Möglichkeit, das Dokument zum Rendern des Seitenbereichs als PDF festzulegen
        * Einfache Möglichkeit, verschiedene Arten von Metadaten zu redigieren: Autorenname, Version, Titel, Betreff, Beschreibung und vieles mehr
        * Extraktion von Dokumentinformationen — Dateityp, Seitenanzahl usw.
        

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