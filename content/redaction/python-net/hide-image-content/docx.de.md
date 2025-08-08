
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bildinhalte in DOCX mit Überlagerungen in Python verbergen"
head_description: "Schützen Sie sensible Bilder in DOCX-Dateien, indem Sie mit GroupDocs.Redaction for Python via .NET Überlagerungen hinzufügen. Halten Sie das Dokumentenformat intakt, während Sie private visuelle Daten sichern."

############################# Header ############################
title: "Bilder in DOCX-Dokumenten mit Überlagerungen über Python schützen" 
description: "Halten Sie persönliche und geschäftliche visuelle Inhalte sicher in DOCX-Dateien mit Python. Unsere Schwärzungswerkzeuge machen die Dokumentensicherheit zuverlässig."
subtitle: "Highlights von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gibt Python-Entwicklern die Möglichkeit, Inhalte in DOCX-Dateien zu verbergen oder zu löschen. Schützen Sie Text, Bilder und Metadaten in verschiedenen Dokumentformaten.

############################# Steps ############################
steps:
    enable: true
    title: "Daten in Docx-Dateien sicher halten"
    content: |
      GroupDocs.Redaction for Python via .NET ermöglicht es Python via .NET-Anwendungen, Dokumente zu schützen. Schwärzen Sie sensible Daten in nur wenigen Schritten.
      
      1. Erstellen Sie eine Instanz von Redactor und geben Sie den Pfad zur Docx-Datei an.
      2. Stellen Sie die Schwärzungspräferenzen entsprechend Ihrer Aufgabe ein.
      3. Wählen Sie den Bildteil aus, den Sie abdecken möchten, und definieren Sie die Überlagerungsfarbe.
      4. Führen Sie den Prozess aus und speichern Sie die geschwärzte Datei.
   
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

        # Verbergen Sie empfindliche Teile von Bildern in DOCX

        # Definieren Sie Größe und Farbe der Überlagerung
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Geben Sie den Bereich für die Schwärzung an
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie die Datei mit Redactor
        with gr.Redactor("input.docx") as redactor:

            # Überlagerung anwenden und Ihr Dokument speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten verbergen"
  description: "Mit GroupDocs.Redaction for Python via .NET können Sie empfindliche Informationen aus verschiedenen Dokumenttypen verbergen oder entfernen. Halten Sie Dateien sicher und teilbar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Effektive Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text suchen und bearbeiten"
      content: "Sensible Wörter finden und ersetzen, um Ihre Daten zu schützen."

    # feature loop
    - title: "Bilder abdecken"
      content: "Überlagerungen auf vollständige Bilder oder ausgewählte Teile anwenden, um visuelle Daten zu schützen."

    # feature loop
    - title: "Versteckte Metadaten bereinigen"
      content: "Metadaten entfernen oder aktualisieren, um versehentliches Teilen zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bilddaten mit Überlagerungen verbergen"
      content: |
        Dieses Beispiel zeigt, wie man sensible Bildbereiche in Dokumenten mit Überlagerungen schützt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie Überlagerungseinstellungen fest: Farbe, Größe, Position
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Wählen Sie einen Bereich für die Schwärzung auf Seite eins
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Laden Sie die Datei, die Sie schwärzen möchten
          with gr.Redactor("source.docx") as redactor:

              # Überlagerung anwenden, um das Bild abzudecken
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
    title: "Verstecken Sie sensible Daten in DOCX-Dateien mit Python"
    exclude: "DOCX"
    description: "Verwenden Sie Python, um private Daten in DOCX-Dateien zu überdecken oder zu löschen. Das richtige Werkzeug zum Sichern vertraulicher Dokumente."
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