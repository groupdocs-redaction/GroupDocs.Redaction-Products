
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Text In XLSX Mit Python Und Überlagerungen Verbergen"
head_description: "GroupDocs.Redaction for Python via .NET hilft Ihnen, Text in XLSX-Dateien durch das Hinzufügen von Farbüberlagerungen zu verbergen. Halten Sie Ihre Daten privat, ohne das Dateilayout zu ändern."

############################# Header ############################
title: "Textverdeckung Für XLSX In Python" 
description: "Schreiben Sie Python-Code, um Text zu verstecken und Informationen in Ihren XLSX-Dateien zu sichern. Halten Sie Ihre Dokumente sicher und sauber."
subtitle: "Was Sie Mit GroupDocs.Redaction for Python via .NET Bekommen" 

############################# About ############################
about:
    enable: true
    title: "Was GroupDocs.Redaction for Python via .NET Tun Kann"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gibt Python-Entwicklern die Werkzeuge, um Text, Bilder und mehr in XLSX-Dateien zu verbergen oder zu löschen.

############################# Steps ############################
steps:
    enable: true
    title: "Daten In Xlsx-Dateien Schützen"
    content: |
      GroupDocs.Redaction for Python via .NET ermöglicht es Python via .NET-Entwicklern, private Informationen mit nur wenigen Zeilen Code zu verbergen.
      
      1. Beginnen Sie mit der Erstellung eines Redactor und laden Sie Ihre Xlsx-Datei.
      2. Legen Sie die Schwärzungsoptionen fest, die für Ihren Fall funktionieren.
      3. Fügen Sie das Textmuster hinzu, das Sie verstecken möchten, und wählen Sie eine Farbe aus.
      4. Führen Sie die Schwärzung durch und speichern Sie Ihre Datei.
   
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

        # Verbergen Sie private Inhalte in XLSX mit Überlagerungen

        # Legen Sie Schwärzungspräferenzen fest
        # Wählen Sie den zu verbergenden Text und die Überlagerungsfarbe aus
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Verwenden Sie Redactor, um Ihre Datei zu laden
        with gr.Redactor("input.xlsx") as redactor:

            # Führen Sie die Schwärzung durch und speichern Sie die Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hilfreiche Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, Inhalte aus vielen Dateitypen zu verbergen oder zu entfernen. Halten Sie persönliche oder geschäftliche Informationen geschützt."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Benutzerfreundliche Schwärzungsoptionen"
  features:
    # feature loop
    - title: "Text Finden Und Bearbeiten"
      content: "Suchen Sie nach spezifischem Text und ersetzen oder verborgen Sie ihn."

    # feature loop
    - title: "Bildinhalte Abdecken"
      content: "Fügen Sie Überlagerungen hinzu, um private Bereiche von Bildern zu blockieren."

    # feature loop
    - title: "Metadaten Entfernen"
      content: "Bereinigen Sie Hintergrundinformationen, bevor Sie Ihre Dateien teilen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text Mit Regex-Mustern Verbergen"
      content: |
        Dieses Beispiel zeigt, wie man Inhalte mit regulären Ausdrücken findet und verbirgt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie Ihr Textmuster und die Überlagerungsfarbe fest
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Öffnen Sie die Datei, die Sie bearbeiten möchten
          with gr.Redactor("source.xlsx") as redactor:

              # Wenden Sie die Schwärzungsregeln an
              result = redactor.apply(redaction)

              # Speichern Sie die geschwärzte Version
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
    title: "XLSX Mit Python Schützen"
    exclude: "XLSX"
    description: "Verwenden Sie Python-Tools, um sensible Teile Ihrer XLSX-Dateien schnell und problemlos zu verbergen oder zu entfernen."
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