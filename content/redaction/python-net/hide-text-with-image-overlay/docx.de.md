
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Verbergen Sie Text in DOCX Mit Überlagerungen Mit Python"
head_description: "Schützen Sie sensiblen Text in DOCX-Dateien mit GroupDocs.Redaction for Python via .NET. Fügen Sie einfache quadratische Überlagerungen hinzu, ohne Ihr Layout zu ändern."

############################# Header ############################
title: "Inhalten In DOCX Mit Python Verbergen" 
description: "Verwenden Sie Python, um private Inhalte in DOCX-Dateien abzudecken. Ideal für rechtliche, persönliche oder geschäftliche Dokumente."
subtitle: "Hauptmerkmale Von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET hilft Python-Entwicklern, private Inhalte in DOCX-Dateien zu verbergen oder zu entfernen. Sie können Text, Bilder und sogar versteckte Metadaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Halten Sie Private Informationen In Docx Versteckt"
    content: |
      Mit GroupDocs.Redaction for Python via .NET können Python via .NET-Entwickler Inhalte in nur wenigen Zeilen verbergen.
      
      1. Erstellen Sie einen Redactor und öffnen Sie Ihre Datei.
      2. Wählen Sie Ihre Schwärzungsoptionen.
      3. Geben Sie den Text ein, den Sie verbergen möchten, und wählen Sie eine Farbe aus.
      4. Anwenden und die gesperrte Version speichern.
   
    code:
      platform: "python-net"
      copy_title: "Kopieren"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Beispielredaktionen"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "Klicken zum Kopieren"
        copy_done: "kopiert"
      links:
        #  loop
        - title: "Weitere Beispiele"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Dokumentation"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # Verbergen Sie Inhalte in DOCX durch Überlagerungen

        # Konfigurieren Sie Ihre Schwärzungsoptionen
        # Definieren Sie Text und Überlagerungsfarbe
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Richten Sie den Redactor ein und laden Sie Ihre Datei
        with gr.Redactor("input.docx") as redactor:

            # Schwärzen und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Zusätzliche Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Python via .NET unterstützt verschiedene Dateitypen, sodass Sie jeden Inhalt mühelos schützen können."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Integrierte Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text Finden Und Bearbeiten"
      content: "Suchen Sie nach Schlüsselwörtern und verbergen oder ersetzen Sie diese schnell."

    # feature loop
    - title: "Bildeinstellungen Abdecken"
      content: "Verbergen Sie sensible Bereiche in gescannten Seiten oder Fotos."

    # feature loop
    - title: "Metadaten Bereinigen"
      content: "Entfernen Sie versteckte Informationen, die Details enthüllen könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text Mit Regex Finden Und Schwärzen"
      content: |
        Erfahren Sie, wie Sie reguläre Ausdrücke verwenden, um Text zu finden und zu verbergen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie Muster und Farben fest
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Öffnen Sie die zu schwärzende Datei
          with gr.Redactor("source.docx") as redactor:

              # Führen Sie den Schwärzungsprozess aus
              result = redactor.apply(redaction)

              # Speichern Sie Ihr bereinigtes Dokument
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Kopieren"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "Klicken zum Kopieren"
          copy_done: "kopiert"
        top_links:
          #  loop
          - title: "Ergebnis herunterladen"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "Weitere Beispiele"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Dokumentation"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Bereit loszulegen?"
  description: "Testen Sie die Funktionen von GroupDocs.Redaction kostenlos oder fordern Sie eine Lizenz an"
  items:
    #  loop
    - title: "PyPi Download"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Lizenzierung"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "DOCX-Dateien Mit Python Sichern"
    exclude: "DOCX"
    description: "Verbergen oder löschen Sie sensible Inhalte in DOCX-Dokumenten mithilfe einfacher Tools von Python."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Präsentation"


---