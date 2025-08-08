
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bilder in PPTX-Dateien mit Überlagerungen in Python maskieren"
head_description: "Verwenden Sie GroupDocs.Redaction for Python via .NET, um sensible Bilder in PPTX-Dateien mit farblichen Überlagerungen zu maskieren. Schützen Sie wichtige Daten, während das Format des Dokuments intakt bleibt."

############################# Header ############################
title: "Private Bilder in PPTX-Dokumenten mit Python maskieren" 
description: "Schützen Sie sensible visuelle Inhalte in PPTX-Dateien mit Python. Unsere Werkzeuge machen das Schwärzen von Bildern einfach und schnell."
subtitle: "Funktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern einfache Werkzeuge, um Inhalte in PPTX-Dateien zu verbergen oder zu löschen. Schwärzen Sie Texte, Bilder und Metadaten in verschiedenen Formaten.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Daten in Pptx-Dateien schützen"
    content: |
      GroupDocs.Redaction for Python via .NET hilft Python via .NET-Apps, Dokumente zu schützen, indem private Inhalte abgedeckt werden.
      
      1. Erstellen Sie eine Redactor-Instanz und laden Sie die Pptx-Datei.
      2. Stellen Sie die Schwärzungsoptionen nach Ihren Anforderungen ein.
      3. Wählen Sie den Bildbereich aus und weisen Sie eine Überlagerungsfarbe zu.
      4. Wenden Sie die Überlagerung an und speichern Sie die Datei.
   
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

        # Maskieren Sie private Bildbereiche in PPTX

        # Legen Sie die Überlagerungsfarbe und -größe fest
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Markieren Sie den Bereich für die Schwärzung
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Öffnen Sie das Dokument mit Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Überlagerung anwenden und Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funktionen für die Schwärzung von Dokumenten"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, vertrauliche Daten in vielen Dokumenttypen zu verbergen oder zu löschen. Halten Sie Ihre Dateien sauber und geschützt."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Vollständige Palette von Schwärzungswerkzeugen"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Sensible Texte finden und schwärzen, um Ihre Informationen zu schützen."

    # feature loop
    - title: "Bildbereiche maskieren"
      content: "Bedecken Sie Bilder oder spezifische Abschnitte mit Überlagerungen, um private Informationen zu verbergen."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen oder ändern Sie versteckte Metadaten, um private Daten nicht zu gefährden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildinhalte mit farbigen Überlagerungen abdecken"
      content: |
        Sehen Sie, wie man sensible Bildteile in Dokumenten mit Überlagerungen maskiert.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definieren Sie die Überlagerungseigenschaften: Größe, Position, Farbe
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Wählen Sie den Bildbereich auf der ersten Seite aus
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Laden Sie das Dokument
          with gr.Redactor("source.pptx") as redactor:

              # Überlagern Sie den ausgewählten Bereich
              result = redactor.apply(redaction)

              # Speichern Sie das geschützte Dokument
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Inhalte in PPTX-Dateien mit Python maskieren"
    exclude: "PPTX"
    description: "Verwenden Sie Python, um private Inhalte in PPTX-Dateien zu verbergen oder zu löschen. Ein zuverlässiges Werkzeug für die Dokumentensicherheit."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "JPEG Bild"


---