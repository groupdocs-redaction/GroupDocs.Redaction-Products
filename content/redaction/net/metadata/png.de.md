---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/net/metadata /png/"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSX XLSM XLTX XLTM XLS XLT CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM JPEG TIFF BMP GIF 

############################# Head ############################
head_title: "Wenden Sie Metadaten-Schwärzungen auf PDF, DOCX, PPT, PPTX, XLS, XLSX in .NET an"
head_description: "Die .NET-API von GroupDocs.Redactions ermöglicht es Softwareentwicklern, Metadaten-Schwärzungen auf verschiedene Dateiformate wie PDF DOC DOCX RTF XLSX CSV PPT PPTX und Bilder anzuwenden"

############################# Header ############################
title: "Schwärzen und filtern Sie Metadaten aus PDF, DOCX, PPT, PPTX, XLS, XLSX und mehr"
description: "GroupDocs.Redactions .NET API ermöglicht Softwareentwicklern, Metadaten aus verschiedenen Dateiformaten wie PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX und vielen anderen zu redigieren oder zu filtern"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Was ist Metadatenschwärzung?"
    content: |
        Metadaten sind eine Art von Daten, die Informationen über andere Daten liefern. Mit anderen Worten, viele denken bei Metadaten an Verweise auf Daten. Es hilft, grundlegende Informationen über Daten zusammenzufassen, die zum einfachen Nachverfolgen und Verwalten von Daten verwendet werden können. GroupDocs.Redaction für .NET ist eine leistungsstarke native API, die es Softwareentwicklern ermöglicht, vertrauliche und geheime Informationen aus verschiedenen Dokumenttypen zu redigieren, ohne externe Software oder Tools von Drittanbietern zu installieren. Es hat Unterstützung für verschiedene Filter wie Autor, Firma, Kategorie, Größe eines Dokuments, Erstellungsdatum, Titel, Zuletzt gedruckt, Kommentare usw. bereitgestellt. Es hilft Benutzern, Metadatenschwärzungen auf verschiedene gängige Dokumentformate wie Textverarbeitungsdokumente, Excel-Arbeitsblätter, Präsentationen, PDF- und Rasterbilddateien anzuwenden. Entwickler können Metadaten auch aktualisieren, ersetzen oder löschen, indem sie Filter anwenden oder die Suche verwenden. Darüber hinaus können Entwickler problemlos mehrere Schwärzungen in einem einzigen Aufruf anwenden. Probieren Sie es also besser aus, Ihren Dokumenten- und Metadaten-Schwärzungsprozess zu automatisieren, indem Sie die API herunterladen und ihre grundlegenden und erweiterten Funktionen erkunden. 

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "So bereinigen Sie Metadaten aus dem PNG-Dokument in Java"
      content_left: |
        GroupDocs.Redaction for .NET is a powerful API that allows programmers to redact, hide or replace the classified information from numerous popular document types using filters or search by regular expression.

        Das folgende .NET-Codebeispiel zeigt, wie die Schwärzung von Metadaten angewendet wird, um alle oder bestimmte Metadaten im Dokument durch leere oder minimale Werte zu ersetzen.

      title_right: "Metadatenschwärzung auf Datei PNG anwenden"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor).
        * Rufen Sie die redactor.Apply-Methode mit dem EraseMetadataRedaction-Objekt von [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) auf
        * Rufen Sie die Methode redactor.save auf, um das Dokument im Originalformat in der Datei "*_Redacted.*" zu speichern

      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"
      
    - title_left: "Entfernen Sie Metadaten aus der PNG-Datei über .NET"
      content_left: |
        GroupDocs.Redaction .NET API erleichtert Entwicklern das Leben, indem es ihnen hilft, Dokumentenautomatisierung und Reporting-Jobs mit nur wenigen Codezeilen ohne externe Abhängigkeiten einzubetten.
        
        Das folgende C# .NET-Codebeispiel zeigt, wie Softwareentwickler vertrauliche Daten mit nur wenigen Codezeilen aus den Metadaten eines Dokuments entfernen können.
        
      title_right: "Metadatenschwärzung aus PNG-Dateien"
      content_right: |
        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor).
        * Rufen Sie [MetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadataredaction) auf
        * Methode redaction.Filte aufrufen
        * Rufen Sie die Methode redactor.save auf, um das Dokument im Originalformat in der Datei "*_Redacted.*" zu speichern
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "System Anforderungen"
      content_left: |
        GroupDocs.Redaction für .NET-APIs werden auf allen wichtigen Plattformen und Betriebssystemen unterstützt. Den vollständigen Leitfaden zu den Systemanforderungen finden Sie unter [Systemanforderungen](https://docs.groupdocs.com/redaction/net/system-requirements/). Bevor Sie den folgenden Code ausführen, vergewissern Sie sich bitte, dass die folgenden Voraussetzungen auf Ihrem installiert sind System:
        * Betriebssysteme: Microsoft Windows, Linux, MacOS
        * Entwicklungsumgebung: Visual Studio, Xamarin, MonoDevelop usw
        * Frameworks: .NET Framework, .NET Standard, .NET Core, Mono
        * Holen Sie sich die neueste Version der GroupDocs.Redaction .NET-APIs von [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Warum GroupDocs.Redaction verwenden"
      content_right: |
        * Erlauben Sie Benutzern, benutzerdefinierte Dokumentformate und Arten von Schwärzungen hinzuzufügen
        * Es ist keine zusätzliche Software erforderlich, um vertrauliche Informationen zu entfernen
        * Möglichkeit, Seitenbereich-Rendering-Dokument als PDF festzulegen
        * Einfache Möglichkeit, verschiedene Arten von Metadaten zu schwärzen: Autorenname, Version, Titel, Thema, Beschreibung und vieles mehr
        * Extraktion von Dokumentinformationen - Dateityp, Seitenzahl usw.
        * Volle Unterstützung für mehrere Datenformate

demos:
    enable: true
        

more_formats:
    enable: true


back_to_top:
    enable: true
---