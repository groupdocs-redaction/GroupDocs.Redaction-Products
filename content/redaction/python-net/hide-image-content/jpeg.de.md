
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Private Bilder in JPEG mit Überlagerungen in Python verbergen"
head_description: "Sichern Sie Ihre JPEG-Dateien, indem Sie mit GroupDocs.Redaction for Python via .NET Überlagerungen auf Bilder anwenden. Schützen Sie sensible visuelle Daten, während das Layout des Dokuments unverändert bleibt."

############################# Header ############################
title: "Sensible Bilder in JPEG-Dateien mit Überlagerungen in Python schützen" 
description: "Halten Sie Ihre Bilder in JPEG-Dateien mithilfe von Python sicher. Einfache Werkzeuge, die Ihnen helfen, private Inhalte in nur wenigen Schritten zu schützen."
subtitle: "Top-Funktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET stattet Python-Entwickler mit einfachen Werkzeugen aus, um Inhalte in JPEG-Dateien zu verbergen oder zu löschen. Schützen Sie sensible Texte, Bilder und Metadaten mit geringem Aufwand.

############################# Steps ############################
steps:
    enable: true
    title: "Jpeg-Dateien sicher halten"
    content: |
      GroupDocs.Redaction for Python via .NET ermöglicht es Ihren Python via .NET-Anwendungen, sensible Daten schnell und effektiv zu verbergen.
      
      1. Erstellen Sie ein Redactor-Objekt und geben Sie den Pfad zur Jpeg-Datei an.
      2. Definieren Sie die Schwärzungseinstellungen nach Bedarf.
      3. Markieren Sie den Bildbereich und wählen Sie die Überlagerungsfarbe aus.
      4. Führen Sie die Schwärzung aus und speichern Sie die geschützte Datei.
   
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

        # Verbergen Sie Bildbereiche in JPEG-Dateien

        # Definieren Sie die Größe und Farbe der Überlagerung
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie den Bereich, den Sie maskieren möchten
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie die Datei mit Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Überlagerung anwenden und das Dokument speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "In Dokumenten Inhalte schwärzen"
  description: "GroupDocs.Redaction for Python via .NET hilft Ihnen, sensible Inhalte in mehreren Dateiformaten zu verbergen oder zu löschen. Halten Sie Ihre Dateien sicher und bereit zum Teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funktionsreiche Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Suchen Sie aus privatem Text in Dokumenten und ersetzen Sie ihn, um Ihre Daten zu sichern."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Wenden Sie Überlagerungen an, um Bilder oder ausgewählte Abschnitte zu verbergen, um sensible visuelle Inhalte zu schützen."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen Sie versteckte Metadaten, um unbeabsichtigte Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Schützen Sie Bildbereiche mit Überlagerungen"
      content: |
        Dieses Beispiel zeigt Ihnen, wie Sie sensible Bildteile in einem Dokument abdecken.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie die Überlagerungsgröße, -farbe und -position fest
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Wählen Sie einen Bildbereich auf Seite eins aus
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Laden Sie die Datei zur Schwärzung
          with gr.Redactor("source.jpg") as redactor:

              # Wenden Sie die Überlagerung an, um den Bereich zu verbergen
              result = redactor.apply(redaction)

              # Speichern Sie die geschwärzte Datei
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
    title: "JPEG-Dateien mit Python-Schwärzungswerkzeugen sichern"
    exclude: "JPEG"
    description: "Mit Python können Sie private Daten in JPEG-Dateien verbergen oder löschen. Eine zuverlässige Lösung, um Dokumente professionell und sicher zu halten."
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