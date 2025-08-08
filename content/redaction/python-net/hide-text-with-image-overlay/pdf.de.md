
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sensiblen Text in PDF-Dateien Mit Python Überlagerungen Abdecken"
head_description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sensiblen Text in PDF-Dateien durch das Hinzufügen von farbigen Überlagerungen zu verbergen. Schützen Sie private Daten, ohne das Erscheinungsbild Ihrer Datei zu ändern."

############################# Header ############################
title: "Sensiblen Text in PDF Mit Python Abdecken" 
description: "Sichern Sie Ihre PDF-Dateien mit Python. Verwenden Sie Überlagerungen, um rechtliche, persönliche oder vertrauliche Informationen zu blockieren."
subtitle: "GroupDocs.Redaction for Python via .NET Höhepunkte" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern eine einfache Möglichkeit, Inhalte in PDF-Dateien zu verbergen oder zu löschen. Decken Sie sensiblen Text, Bilder oder Metadaten in vielen Formaten ab.

############################# Steps ############################
steps:
    enable: true
    title: "Sensiblen Informationen in Pdf-Dateien Sicher Halten"
    content: |
      GroupDocs.Redaction for Python via .NET erlaubt es Python via .NET-Entwicklern, private Inhalte schnell zu verbergen.
      
      1. Richten Sie einen Redactor ein und laden Sie Ihre Pdf-Datei.
      2. Wählen Sie, wie die Schwärzung funktionieren soll.
      3. Wählen Sie den Text aus, den Sie verbergen möchten, und wählen Sie eine Farbe für die Überlagerung.
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

        # Verbergen Sie sensiblen Text in PDF durch farbige Überlagerungen

        # Legen Sie die Schwärzungsoptionen fest
        # Definieren Sie, was zu verbergen ist, und wählen Sie eine Farbe
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Laden Sie die Datei, indem Sie ihren Pfad an Redactor übergeben
        with gr.Redactor("input.pdf") as redactor:

            # Schwärzen und speichern Sie Ihre PDF-Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Informationen Aus Dokumenten Verbergen Oder Entfernen"
  description: "Mit GroupDocs.Redaction for Python via .NET können Sie Text, Bilder und andere Daten in vielen Formaten verbergen. Schützen Sie, was wichtig ist, und halten Sie Ihre Dokumente gleichzeitig leicht lesbar und teilbar."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Flexible Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Jeden Text Bearbeiten"
      content: "Finden Sie sensiblen Text und ersetzen Sie ihn, um Ihre Dokumente sicher zu halten."

    # feature loop
    - title: "Bilder Abdecken"
      content: "Verwenden Sie Überlagerungen, um komplette Bilder oder bestimmte Bereiche zu blockieren."

    # feature loop
    - title: "Metadaten Bereinigen"
      content: "Entfernen Sie versteckte Daten, um unbeabsichtigte Informationslecks zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex Verwenden, Um Text Zu Finden Und Zu Verbergen"
      content: |
        Dieses Beispiel zeigt, wie man Text mit Regex-Mustern sucht und verbirgt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie das Texmuster und die Überlagerungsfarbe fest
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Laden Sie Ihr Dokument
          with gr.Redactor("source.pdf") as redactor:

              # Schwärzen Sie den ausgewählten Inhalt
              result = redactor.apply(redaction)

              # Speichern Sie die aktualisierte Datei
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
    title: "PDF-Dateien Mit Python-Tools Schützen"
    exclude: "PDF"
    description: "Verwenden Sie Python, um Inhalte in PDF-Dateien zu verbergen oder zu entfernen. Ein zuverlässiger Weg, um private Informationen sicher zu halten."
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