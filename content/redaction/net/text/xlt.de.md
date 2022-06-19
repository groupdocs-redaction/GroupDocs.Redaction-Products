---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "de/redaction/net/text/xlt/"
otherformats: PDF DOC DOT DOCX DOCM DOTX DOTM RTF XLSX XLSM XLTX XLTM XLS CSV PPT PPTX  PPS POT PPSX PPTM PPSM POTM 

############################# Head ############################
head_title: "Redact Sensitive Information from Documents via .NET Core"
head_description: "Wenden Sie die Textschwärzung mit exakten Ausdrücken oder regulären Ausdrücken für Dokumente in verschiedenen Formaten an"

############################# Header ############################
title: "Schwärzen Sie XLT-Dateien über C# in .NET Core-Apps"
description: "Suchen und ersetzen Sie Text in Office- und OpenOffice-Dokumenten, -Tabellen und -Präsentationen sowie xlt_ UPPER unter Windows, Linux und macOS"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Dokumentenschwärzung für .NET API"
    content: |
        Eine einzige formatunabhängige Oberfläche zum Schwärzen sensibler und geheimer Informationen aus PDF-, Word-, Excel-, PowerPoint-Dokumenten und Bildern, einschließlich der Möglichkeit, Metadaten zu ändern und Kommentare zu entfernen. Mit dem GroupDocs.Redaction-Tool können Sie Text redigieren und redigierte Dokumente als PDF speichern, alle Seiten in Rasterbilder umwandeln oder das Dokument für die weitere Bearbeitung in seinem Originalformat behalten.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Exakten Text von XLT über C# schwärzen"
      content_left: |
        [GroupDocs.Redaction](/redaction/net/) erleichtert .NET-Entwicklern das Hinzufügen der XLT-Dateischwärzungsfunktion in wenigen einfachen Schritten.

         * Erstellen Sie eine Instanz der Klasse [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) und laden Sie die Datei XLT
         * Erstellen Sie eine Instanz der Klasse [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction), um den Text zu suchen und zu ersetzen
         * Rufen Sie die Methode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) mit dem Objekt ExactPhraseRedaction auf

      title_right: "Get Started with Redaction API"
      content_right: |
        Install from command line as ```nuget install GroupDocs.Redaction``` or via Package Manager Console of Visual Studio with ```Install-Package GroupDocs.Redaction```. 
        Alternatively, get the offline MSI installer or DLLs in a ZIP file from [downloads](https://downloads.groupdocs.com/redaction/net), and reference it in your project manually.  
        
      code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.csv"))
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
         * Holen Sie sich die neueste Version der GroupDocs.Assembly .NET-APIs von [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
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