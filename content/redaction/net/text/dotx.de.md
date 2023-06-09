













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/net/text/dotx"
otherformats: CSV DOC DOCM DOCX DOT DOTM PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Schwärzen Sie sensible Informationen aus Dokumenten über .NET Core"
head_description: "Wenden Sie die Textschwärzung mit exakten Ausdrücken oder regulären Ausdrücken für Dokumente in verschiedenen Formaten an"

############################# Header ############################
title: "Schwärzen Sie DOCX-Dateien über C# in .NET Core-Apps"
description: "Suchen und ersetzen Sie Text in Office- und OpenOffice-Dokumenten, -Tabellen und -Präsentationen sowie DOTX unter Windows, Linux und macOS"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Dokumentenschwärzung für .NET API"
    content: |
        Eine einzige formatunabhängige Oberfläche zum Schwärzen sensibler und geheimer Informationen aus PDF-, Word-, Excel-, PowerPoint-Dokumenten und Bildern, einschließlich der Möglichkeit, Metadaten zu ändern und Kommentare zu entfernen. Mit dem GroupDocs.Redaction-Tool können Sie Text redigieren und redigierte Dokumente als PDF speichern, alle Seiten in Rasterbilder umwandeln oder das Dokument für die weitere Bearbeitung in seinem Originalformat behalten.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Exakten Text von DOTX über C# schwärzen"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) erleichtert .NET-Entwicklern das Hinzufügen der DOTX-Dateischwärzungsfunktion in wenigen einfachen Schritten. 

        * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei DOTX 
        * Erstellen Sie eine Instanz der Klasse [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction), um den Text zu suchen und zu ersetzen
        * Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt ExactPhraseRedaction auf

      title_right: "Beginnen Sie mit der Redaction-API"
      content_right: |
        Installieren Sie über die Befehlszeile als ```nuget install GroupDocs.Redaction``` oder über die Package Manager-Konsole von Visual Studio mit ```Install-Package GroupDocs.Redaction```.
        Alternativ können Sie das Offline-MSI-Installationsprogramm oder die DLLs in einer ZIP-Datei von [downloads](https://downloads.groupdocs.com/redaction/net) herunterladen und in Ihrem Projekt manuell darauf verweisen.

      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.dotx"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```
      
    - title_left: "System Anforderungen"
      content_left: |
        GroupDocs.Redaction für .NET-APIs werden auf allen bedeutenden Plattformen und Betriebssystemen unterstützt. Den vollständigen Leitfaden zu den Systemanforderungen finden Sie unter [Systemanforderungen](https://docs.groupdocs.com/redaction/net/system-requirements/). Bevor Sie following den following Code ausführen, vergewissern Sie sich bitte, dass die Voraussetzungen auf Ihrem installiert sind System:
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