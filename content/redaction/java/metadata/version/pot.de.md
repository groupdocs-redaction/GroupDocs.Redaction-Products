
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "de/redaction/java/metadata/version/pot"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Metadaten redigieren | Java"
ad_description: "Version aus POT Metadaten in Java redigieren"
############################# Head ############################
head_title: "Metadaten der Version aus dem Dokument POT in Java redigieren"
head_description: "GroupDocs.Redaction ist eine leistungsstarke Bereinigungs-API, mit der Sie vertrauliche Informationen aus über 30 Dokumenttypen entfernen oder bearbeiten können."

############################# Header ############################
title: "Metadaten der Version aus dem Dokument POT in Java redigieren"
description: "GroupDocs.Redaction ist eine leistungsstarke Bereinigungs-API, mit der Sie vertrauliche Informationen aus über 30 Dokumenttypen entfernen oder bearbeiten können."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Was ist Metadatenredaktion?"
    content: |
        Um das Dokument in einem Originalformat zu speichern, müssen die Metadaten gelöscht oder geschwärzt werden, um alle vertraulichen Daten zu entfernen. Für diese Zwecke bietet GroupDocs.Redaction eine API zum Schwärzen von Metadaten. Die GroupDocs.Redaction -API ermöglicht es, entweder geschwärzte Dokumente in PDF zu speichern, alle Seiten in Rasterbilder umzuwandeln oder geschwärzte Dokumente zur weiteren Bearbeitung in ihrem Originalformat zu speichern. Alle Dateiformate, einschließlich PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX und andere, haben einige Metadateneigenschaften. Zu diesen Eigenschaften gehören Autorenname, Kategorie, Firmenname, Kommentare, Erstellungszeit, letzte Aktualisierung und vieles mehr. Den Dateien sind auch einige versteckte Daten zugeordnet, die mit verschiedenen Tools und Techniken angezeigt werden können. Mit der GroupDocs.Redaction -API können Sie Metadatenschwärzungen auf jede dieser Metadateneigenschaften anwenden. Sie können sie ändern oder löschen, indem Sie die gewünschten Metadaten filtern. In diesem Handbuch erklären wir, wie Sie Versionsmetadaten aus dem Dokument POT in Java redigieren können.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "POT Metadaten in Java redigieren"
      content_left: |
        Mit dem folgenden Code können Sie vertrauliche Daten in einem POT -Dokument suchen und redigieren. Sie können den Umfang der Schwärzung festlegen, indem Sie den Filter setzen, z. B. auf MetadataFilter.Version. Dadurch werden die Übereinstimmungen mit regulären Ausdrücken in allen Metadatenelementen außer der Eigenschaft „Version“ rückgängig gemacht: 

      title_right: "So redigieren Sie POT Metadaten"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei POT hoch
        * Erstellen Sie eine Instanz der Klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), um vertrauliche Daten aus den Metadaten des Dokuments zu finden und zu ersetzen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. Verwenden Sie MetadataFilters.Version im folgenden Code
        * Rufen Sie die Speichermethode mit dem Objekt von [MetadataSearchRedAction] auf (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "POT Metadaten in Java entfernen"
      content_left: |
        Mithilfe der EraseMetaDataRedAction-Klasse können Sie alle oder bestimmte Metadaten im Dokument durch leere (leere oder minimale) Werte ersetzen. Der folgende Code zeigt, wie Sie eine Metadateneigenschaft aus einem POT -Dokument filtern und anschließend entfernen können. Im folgenden Beispiel werden alle Eigenschaften des Dokuments ausgeblendet: 
        
      title_right: "So löschen Sie Versionsmetadaten"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) und laden Sie die Datei POT hoch
        * Erstellen Sie eine Instanz der Klasse [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction), um Metadaten des Dokuments zu entfernen
        * Legen Sie den Umfang für die Schwärzung fest, indem Sie den Filter festlegen, z. B. ersetzen Sie MetadataFilter.all durch MetadataFilter.version im folgenden Code
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