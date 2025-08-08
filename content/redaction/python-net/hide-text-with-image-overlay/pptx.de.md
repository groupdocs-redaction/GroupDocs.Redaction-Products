
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Text In PPTX Mit Python Und Überlagerungen Verbergen"
head_description: "Decken Sie sensible Inhalte in Ihren PPTX-Dateien mit farbigen Überlagerungen mithilfe von GroupDocs.Redaction for Python via .NET ab. Ihr Layout bleibt gleich."

############################# Header ############################
title: "Schützen Sie Text In PPTX Mit Überlagerungen Und Python" 
description: "Verwenden Sie GroupDocs.Redaction for Python via .NET und Python, um private Informationen in PPTX-Präsentationen durch Abdecken mit Farbbereichen zu verbergen."
subtitle: "Was Sie Mit GroupDocs.Redaction for Python via .NET Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Was GroupDocs.Redaction for Python via .NET Bietet"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Mit GroupDocs.Redaction for Python via .NET können Python-Entwickler Inhalte in PPTX-Dateien abdecken oder löschen - von Text bis zu Bildern und versteckten Daten.

############################# Steps ############################
steps:
    enable: true
    title: "Private Informationen In Pptx Redigieren"
    content: |
      Verwenden Sie GroupDocs.Redaction for Python via .NET, um Ihre Präsentationen in nur wenigen einfachen Schritten zu schützen.
      
      1. Erstellen Sie einen Redactor und laden Sie die Datei, die Sie bearbeiten möchten.
      2. Wählen Sie die für Ihre Anforderungen passenden Schwärzungsoptionen.
      3. Legen Sie das Textmuster fest und wählen Sie eine Farbe für die Überlagerung.
      4. Wenden Sie die Schwärzung an und speichern Sie Ihre Änderungen.
   
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

        # Verwenden Sie Überlagerungen, um Text in PPTX zu verbergen

        # Definieren Sie die Schwärzungsoptionen
        # Wählen Sie den Text und die Farbe aus
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Laden Sie Ihre Datei mit Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Schwärzen und speichern Sie Ihre Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungsoptionen"
  description: "GroupDocs.Redaction for Python via .NET gibt Ihnen Werkzeuge an die Hand, um Daten in verschiedenen Dateiformaten zu verbergen oder zu bereinigen, ohne das Layout zu verändern."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Nützliche Funktionen für den Datenschutz"
  features:
    # feature loop
    - title: "Text Ändern Oder Verstecken"
      content: "Schützen Sie sensible Informationen, indem Sie sie bearbeiten oder ausblenden."

    # feature loop
    - title: "Bilder Oder Teile Abdecken"
      content: "Fügen Sie Überlagerungen hinzu, um vollständige Bilder oder ausgewählte Bereiche zu blockieren."

    # feature loop
    - title: "Versteckte Details Entfernen"
      content: "Löschen Sie Metadaten, die private oder systembezogene Informationen enthalten können."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex Verwenden, Um Text Zu Finden"
      content: |
        Sehen Sie, wie reguläre Ausdrücke Ihnen helfen, sensible Inhalte zu finden und zu verbergen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie das Textmuster und die Überlagerungsfarbe fest
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Öffnen Sie Ihre Datei zur Schwärzung
          with gr.Redactor("source.pptx") as redactor:

              # Führen Sie die Schwärzung durch
              result = redactor.apply(redaction)

              # Speichern Sie die bearbeitete Datei
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
    title: "PPTX-Folien Mit Python Schützen"
    exclude: "PPTX"
    description: "Verwenden Sie Python, um private Inhalte in PPTX-Dateien abzudecken oder zu löschen, während Sie die Folien sauber aussehen lassen."
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