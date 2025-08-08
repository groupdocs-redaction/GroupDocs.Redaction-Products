---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: de
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Redigieren Sie sensible Daten in Ihren Dokumenten mit .NET"
head_description: "Schützen Sie Ihre Geschäftsdokumente mit GroupDocs.Redaction for .NET. Redigieren, verbergen oder löschen Sie vertrauliche Inhalte aus PDFs, Word, Excel, PowerPoint und Bilddateien."

############################# Header ############################
title: "Sichern Sie Ihre Inhalte mit GroupDocs.Redaction"
description: "Redigieren, verbergen oder entfernen Sie langfristig sensible Informationen und Metadaten aus PDFs, Word-Dokumenten, Tabellenkalkulationen, Präsentationen und Bildern mithilfe unserer leistungsstarken .NET-Lösung."
words:
  for: "für"

actions:
  main: "Nuget Download"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Lizenzierung"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Bereit zum Start?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an."

release:
  title: "Version {0} veröffentlicht"
  notes: "Erfahren Sie, was neu ist"
  downloads: "Downloads"

code:
  title: "So redigieren Sie Datei-Inhalte"
  more: "Weitere Beispiele"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Übergeben Sie die Eingabedatei an eine Redactor-Instanz.
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Konfigurieren Sie die Redaktionsoptionen.
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Führen Sie den Redaktionsprozess durch.
        RedactorChangeLog result = redactor.Apply(red);

        // Speichern Sie die redigierte Datei.
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction auf einen Blick"
  description: "Fügen Sie professionelle Redaktionsfunktionen zu Ihren .NET-Anwendungen hinzu."
  features:
    # feature loop
    - title: "Redigieren Sie Textinhalte"
      content: "GroupDocs.Redaction for .NET ermöglicht es Ihnen, sensible Texte zu finden und zu redigieren. Texte können mithilfe farbiger Bildüberlagerungen ersetzt oder verborgen werden, um die Sicherheit zu erhöhen. Unterstützt eine Vielzahl von Formaten, einschließlich PDFs und Office-Dokumenten, hilft dieses Feature den Schutz privater Daten und vereinfacht die Einhaltung von Vorschriften."

    # feature loop
    - title: "Redigieren Sie Bilder"
      content: "Identifizieren und redigieren Sie Bilder—ganz oder teilweise—auf Dokumentseiten. Bestimmen Sie Suchkriterien und gezielte Bereiche, um sensible visuelle Inhalte effizient zu maskieren."

    # feature loop
    - title: "Verwalten Sie Dateimetadaten"
      content: "Viele Dateitypen enthalten verborgene Metadaten, wie Autorenname in Word-Dateien oder EXIF-Daten in Bildern. GroupDocs.Redaction for .NET erleichtert es, diese Informationen zu finden und zu redigieren, um vollständige Datenprivatsphäre zu gewährleisten."

    # feature loop
    - title: "Redigieren Sie Dokumentenobjekte"
      content: "Sichern Sie den vollständigen Inhaltsschutz, indem Sie dokumentenspezifische Elemente wie Anmerkungen, Kommentare und eingebettete Objekte in Formaten wie PDFs redigieren."

############################# Platforms ############################
platforms:
  enable: true
  title: "Plattformunabhängigkeit"
  description: "GroupDocs.Redaction for .NET ist mit einer Vielzahl von Betriebssystemen, Entwicklungsframeworks und Paketmanagern kompatibel."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Unterstützte Dateiformate"
  description: |
    GroupDocs.Redaction for .NET unterstützt das Arbeiten mit den folgenden [Dateiformaten](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office Formate
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Andere Office Formate
        * **Portabel:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Textformate:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Andere Formate
        * **Web:** HTM, HTML, MD
        * **Bilder:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET Eigenschaften"
  description: "Extrahieren und redigieren Sie Daten aus PDFs, Office-Dateien und Bildern mit hoher Geschwindigkeit und Genauigkeit."

  items:
    # feature loop
    - icon: "search"
      title: "Flexibler Suchvorgang"
      content: "Führen Sie groß- oder kleinschreibungssensitive oder -insensitive Suchen durch, um bestimmte Phrasen oder Begriffe zu redigieren."

    # feature loop
    - icon: "text"
      title: "Text ersetzen oder entfernen"
      content: "Finden und ersetzen oder löschen Sie vertrauliche Texte mühelos in Ihren Dokumenten."

    # feature loop
    - icon: "image"
      title: "Verstecken Sie Text mit Bildern"
      content: "Verwenden Sie farbige Bildüberlagerungen, um redigierte Inhalte visuell zu maskieren, anstatt den Text zu ersetzen."

    # feature loop
    - icon: "search"
      title: "Erweiterte Suchfähigkeiten"
      content: "Nutzen Sie reguläre Ausdrücke für präzise und flexible Inhaltsredaktionen über komplexe Datensätze."

    # feature loop
    - icon: "table"
      title: "Scoped Redaktion"
      content: "Zielen Sie auf spezifische Seiten oder definierte Seitenbereiche ab, um die Redaktion nur auf relevante Abschnitte zu beschränken."

    # feature loop
    - icon: "template"
      title: "Metadatenredaktion"
      content: "Finden und redigieren Sie Metadaten-Eigenschaften, um die Dokumentenbesitz- und Erstellungsdetails zu schützen."

    # feature loop
    - icon: "pdf"
      title: "Flexible Ausgabeformate"
      content: "Exportieren Sie redigierte Dateien in PDF oder in jedes unterstützte Format und erhalten Sie die Layout-Integrität."

    # feature loop
    - icon: "template"
      title: "Vollständige Metadatenlöschung"
      content: "Löschen Sie alle Metadaten aus einem Dokument mit einer einzigen Aktion, um absolute Privatsphäre zu gewährleisten."

    # feature loop
    - icon: "hyperlink"
      title: "XML-basierte Redaktionsregeln"
      content: "Definieren Sie Redaktionsrichtlinien im XML-Format für wiederholbare, automatisierte Verarbeitung über mehrere Dateien."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Codebeispiele"
  description: "Typische Anwendungsbeispiele für GroupDocs.Redaction for .NET in der Praxis."
  items:
    # code sample loop
    - title: "Redaktion mit regulären Ausdrücken"
      content: |
        GroupDocs.Redaction for .NET ermöglicht es C#-Entwicklern, Texte mithilfe von [regulären Ausdrücken](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) zu redigieren und mit Bildüberlagerungen zu verbergen:
        {{< landing/code title="Word-Dokumente mit regulären Ausdrücken redigieren">}}
        ```csharp {style=abap}
        // Erstellen Sie eine Instanz der Redactor-Klasse.
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Definieren Sie Redaktionsregeln mit einem regulären Ausdruck.
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Maskieren Sie alle übereinstimmenden Texte mit blauen Quadratüberlagerungen.
            redactor.Apply(redaction);

            // Speichern Sie das redigierte Word-Dokument.
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Metadaten bereinigen"
      content: |
        Verwenden Sie unsere API, um einfach [alle Metadaten](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) aus unterstützten Dateiformaten zu entfernen:
        {{< landing/code title="Entfernen Sie alle Metadaten aus Präsentationen">}}
        ```csharp {style=abap}   
        // Geben Sie den Pfad der Präsentation an Redactor.
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Konfigurieren Sie die Redaktionsoptionen.
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Löschen Sie alle Metadaten aus der Präsentation.
            redactor.Apply(redaction);

            // Speichern Sie die bereinigte Präsentationsdatei.
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
