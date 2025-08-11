---
############################# Static ############################
layout: "landing"
date: 2025-08-11T19:33:04
draft: false

lang: de
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "Löschen Sie vertrauliche Informationen aus Dokumenten mit Python"
head_description: "Halten Sie Ihre Dateien sicher mit GroupDocs.Redaction for Python via .NET. Redigieren, verbergen oder löschen Sie schnell sensible Inhalte in PDFs, Word, Excel, PowerPoint und Bilddateien."

############################# Header ############################
title: "Halten Sie Ihre Dokumente sicher mit GroupDocs.Redaction"
description: "Entfernen Sie problemlos private Daten, redigieren Sie Texte und bereinigen Sie verborgene Metadaten aus PDFs, Office-Dateien und Bildern mithilfe des fortschrittlichen Python-Toolkits."
words:
  for: "für"

actions:
  main: "PyPi Download"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Lizenzierung"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Bereit zum Start?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an."

release:
  title: "Version {0} veröffentlicht"
  notes: "Erfahren Sie, was neu ist"
  downloads: "Downloads"

code:
  title: "Redigieren von Dokumenteninhalten"
  more: "Weitere Beispiele"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Passen Sie die Redaktionsparameter an.
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Laden Sie Ihre Datei in die Redactor-Instanz.
        with gr.Redactor("sample.pdf") as redactor:

            # Starten Sie den Redaktionsprozess.
            result = redactor.apply(red)
        
            # Exportieren Sie die bereinigte Datei.
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction auf einen Blick"
  description: "Integrieren Sie leistungsstarke Redaktionsfunktionen in Ihre Python-Projekte."
  features:
    # feature loop
    - title: "Redigieren Sie sensible Texte"
      content: "Mit GroupDocs.Redaction for Python via .NET können Sie automatisch sensible Wörter oder Phrasen finden und abdecken. Ersetzen oder maskieren Sie Texte mit bunten Boxen für verbesserte Sicherheit in PDFs, Word-Dokumenten und anderen Formaten."

    # feature loop
    - title: "Bilder maskieren"
      content: "Unsere Technologie kann Bilder erkennen und basierend auf Ihren Kriterien verwischen, verbergen oder blockieren. Definieren Sie spezifische Bereiche oder ermöglichen Sie eine automatisierte Erkennung für vollständige Kontrolle."

    # feature loop
    - title: "Entfernen Sie verborgene Metadaten"
      content: "Beseitigen Sie persönliche oder Tracking-Details, die in Metadaten verborgen sind, wie Autorschaft oder Geräteinformationen. GroupDocs.Redaction for Python via .NET sorgt dafür, dass Ihre Dokumente vollständig gereinigt und sicher zum Teilen sind."

    # feature loop
    - title: "Redigieren Sie spezielle Elemente"
      content: "Gehen Sie über den Text hinaus, indem Sie eingebettete Elemente wie Kommentare, Anmerkungen und andere dateispezifische Elemente redigieren, um absolute Vertraulichkeit zu erreichen."

############################# Platforms ############################
platforms:
  enable: true
  title: "Plattformunabhängigkeit"
  description: "GroupDocs.Redaction for Python via .NET funktioniert auf allen großen Betriebssystemen, unterstützt beliebte Frameworks und integriert sich in gängige Paketmanager."
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
    GroupDocs.Redaction for Python via .NET unterstützt die folgenden [Dateiformate](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
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
  title: "Hauptmerkmale von GroupDocs.Redaction for Python via .NET"
  description: "Durchsuchen, lokalisieren und redigieren Sie mühelos sensible Inhalte in PDFs, Bildern und Office-Dateien."

  items:
    # feature loop
    - icon: "search"
      title: "Anpassbare Suche"
      content: "Verwenden Sie flexible Suchmodi, um präzise Übereinstimmungen oder Schlüsselwörter für die Entfernung zu finden."

    # feature loop
    - icon: "text"
      title: "Finden, Ersetzen oder Löschen von Text"
      content: "Lokalisieren Sie vertrauliche Daten und ersetzen Sie sie entweder durch sicheren Text oder löschen Sie sie vollständig."

    # feature loop
    - icon: "image"
      title: "Visuelle Maskierung"
      content: "Überlagern Sie gefärbte Formen oder Muster, um redigierte Abschnitte visuell abzudecken."

    # feature loop
    - icon: "search"
      title: "Regex-gestützte Erkennung"
      content: "Nutzen Sie reguläre Ausdrücke für präzise Genauigkeit bei fortgeschrittenen Textsuchen."

    # feature loop
    - icon: "table"
      title: "Gezielte Redaktion"
      content: "Wenden Sie Redaktionen nur auf bestimmte Seiten oder definierte Regionen an, um Zeit zu sparen und sich auf wichtige Bereiche zu konzentrieren."

    # feature loop
    - icon: "template"
      title: "Metadatenbereinigung"
      content: "Löschen Sie ganz einfach Metadatenfelder wie Ersteller, Unternehmen oder Zeitstempel aus Ihren Dateien."

    # feature loop
    - icon: "pdf"
      title: "Exportoptionen"
      content: "Speichern Sie verarbeitete Dokumente im PDF oder in anderen kompatiblen Formaten, ohne die Layoutgenauigkeit zu verlieren."

    # feature loop
    - icon: "template"
      title: "Vollständiges Löschen von Metadaten"
      content: "Löschen Sie alle eingebetteten Metadaten mit einem einzigen Klick für maximalen Datenschutz."

    # feature loop
    - icon: "hyperlink"
      title: "Wiederverwendbare XML-Richtlinien"
      content: "Speichern Sie Ihre benutzerdefinierten Redaktionskonfigurationen als XML-Vorlagen, um zukünftige Aufgaben zu automatisieren."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Codebeispiele"
  description: "Erforschen Sie, wie GroupDocs.Redaction for Python via .NET Redaktionsaufgaben vereinfacht."
  items:
    # code sample loop
    - title: "Regex-basierte Textredaktion"
      content: |
        Entwickler, die Python verwenden, können [regex-basierte Regeln](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) anwenden, um vertrauliche Texte zu finden und mit Bildmasken zu verdecken:
        {{< landing/code title="Word-Dokumente mit regulären Ausdrücken redigieren">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Definieren Sie Redaktionsregeln mit einem regulären Ausdruck.
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Erstellen Sie eine Instanz der Redactor-Klasse.
            with gr.Redactor("source.docx") as redactor:

                # Maskieren Sie alle übereinstimmenden Texte mit blauen Quadratüberlagerungen.
                result = redactor.apply(reg_red)
        
                # Speichern Sie das redigierte Word-Dokument.
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Entfernen Sie Metadaten"
      content: |
        Verwenden Sie die API, um [Metadaten zu löschen](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) über mehrere Dateitypen in nur wenigen Schritten:
        {{< landing/code title="Entfernen Sie alle Metadaten aus Präsentationen">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Konfigurieren Sie die Redaktionsoptionen.
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Geben Sie den Pfad der Präsentation an Redactor.
        with gr.Redactor("source.pptx") as redactor:

            # Löschen Sie alle Metadaten aus der Präsentation.
            result = redactor.apply(red)
        
            # Speichern Sie die bereinigte Präsentationsdatei.
            redactor.save()
        ```
        {{< /landing/code >}}

---
