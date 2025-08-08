
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "In EXCEL Mit Python-Überlagerungen Inhalte Verbergen"
head_description: "Mit GroupDocs.Redaction for Python via .NET können Sie Text in EXCEL-Dateien mithilfe von Farbüberlagerungen abdecken. Eine einfache Möglichkeit, private Inhalte zu schützen."

############################# Header ############################
title: "Textübersetzung Für EXCEL In Python" 
description: "Schreiben Sie Python-Code, um Text zu verbergen und Informationen in Ihren EXCEL-Dateien zu sichern. Halten Sie Ihre Dokumente sicher und sauber."
subtitle: "Was Sie Mit GroupDocs.Redaction for Python via .NET Bekommen" 

############################# About ############################
about:
    enable: true
    title: "Warum GroupDocs.Redaction for Python via .NET Verwenden"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ist für Python-Entwickler konzipiert, die Inhalte in EXCEL-Dateien verbergen oder entfernen müssen. Arbeiten Sie einfach mit Text, Bildern und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Daten In Excel Verbergen"
    content: |
      GroupDocs.Redaction for Python via .NET erleichtert es Python via .NET-Entwicklern, Dokumente vor dem Teilen vorzubereiten.
      
      1. Erstellen Sie einen Redactor und öffnen Sie Ihre Excel-Datei.
      2. Wählen Sie die Schwärzungsoptionen aus, die zu Ihrer Aufgabe passen.
      3. Geben Sie den zu verbergenden Text oder die Phrase ein und wählen Sie eine Farbe aus.
      4. Führen Sie die Schwärzung durch und speichern Sie die Datei.
   
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

        # Verwenden Sie Überlagerungen, um text in EXCEL zu verbergen

        # Wählen Sie Ihre Schwärzungsoptionen
        # Wählen Sie, was verborgen und welche Farbe verwendet werden soll
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Beginnen Sie mit dem Laden Ihrer Datei mit Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Änderungen anwenden und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hilfreiche Werkzeuge Für Die Redigierung Von Daten"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, Daten in Dokumenten zu verbergen oder zu entfernen, während Sie das Layout und den Inhalt deutlich halten."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Entwickelt, um Ihre Dateien zu schützen"
  features:
    # feature loop
    - title: "Verborgenen Text Verbergen Oder Ändern"
      content: "Finden und ersetzen Sie jeden Teil des Textes, der verborgen werden muss."

    # feature loop
    - title: "Bilder Und Grafiken Abdecken"
      content: "Fügen Sie Überlagerungen hinzu, um empfindliche Teile von Bildern oder Diagrammen zu entfernen."

    # feature loop
    - title: "Versteckte Metadaten Löschen"
      content: "Entfernen Sie Hintergrundinformationen wie Autorennamen oder Zeitstempel."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mit Regex Redigieren"
      content: |
        Erfahren Sie, wie man Regex-Muster verwendet, um Inhalte zu finden und zu verbergen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Fügen Sie das Regex-Muster und die Farbeingaben hinzu
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Öffnen Sie die Datei, die Sie bereinigen möchten
          with gr.Redactor("source.xlsx") as redactor:

              # Wenden Sie die Schwärzung an
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
    title: "EXCEL Mit Python-Schwärzungen Schützen"
    exclude: "EXCEL"
    description: "Verbergen Sie Inhalte in EXCEL mit quadratischen Überlagerungen oder entfernen Sie sie vollständig mit Funktionen von Python."
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