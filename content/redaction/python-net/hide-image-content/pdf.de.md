
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sensible Bilder in PDF mit Überlagerungen in Python verbergen"
head_description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sensible Bilder in PDF-Dateien durch das Hinzufügen von Überlagerungen zu verbergen. Schützen Sie private Daten, ohne das Layout des Dokuments zu ändern."

############################# Header ############################
title: "Bilder in PDF-Dateien mit Überlagerungen über Python verbergen" 
description: "Halten Sie persönliche und geschäftliche Bilder in PDF-Dateien mit Python sicher. Unsere Werkzeuge machen den Datenschutz zuverlässig."
subtitle: "GroupDocs.Redaction for Python via .NET-Funktionen" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern die Werkzeuge, um Inhalte in PDF-Dateien zu verbergen oder zu löschen. Verbergen Sie Text, Bilder und Metadaten, um Dokumente in verschiedenen Formaten zu schützen.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Daten in Pdf-Dateien schützen"
    content: |
      GroupDocs.Redaction for Python via .NET gibt Ihren Python via .NET-Apps die Möglichkeit, Dokumente zu schützen. Verbergen Sie private Inhalte mit nur wenigen Klicks.
      
      1. Erstellen Sie ein Redactor-Objekt und verweisen Sie auf die Pdf-Datei.
      2. Passen Sie die Einstellungen an, um Ihre Anforderungen an die Schwärzung zu erfüllen.
      3. Wählen Sie den Bereich des Bildes aus, den Sie abdecken möchten, und wählen Sie eine Überlagerungsfarbe.
      4. Verarbeiten Sie die Datei und speichern Sie die geschwärzte Version.
   
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

        # Verbergen Sie vertrauliche Bildteile in PDF

        # Legen Sie die Überlagerungsfarbe und -größe fest
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie den Bereich aus, den Sie schwärzen möchten
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie das Dokument mit Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Wenden Sie die Überlagerung an und speichern Sie das Dokument
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Inhalte in Dokumenten verbergen"
  description: "Mit GroupDocs.Redaction for Python via .NET können Sie Daten in verschiedenen Dateiformaten verbergen oder löschen. Schützen Sie sensible Informationen und halten Sie Dokumente sauber und teilbar."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Wichtige Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text suchen und bearbeiten"
      content: "Suchen und ändern Sie sensible Texte in Ihrem Dokument, um private Informationen zu schützen."

    # feature loop
    - title: "Bildbereiche abdecken"
      content: "Platzieren Sie Überlagerungen auf Bildern oder ausgewählten Teilen, um vertrauliche visuelle Inhalte zu verbergen."

    # feature loop
    - title: "Metadaten verwalten"
      content: "Entfernen oder bearbeiten Sie versteckte Metadaten, um unerwünschte Datenlecks zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildinformationen mit Überlagerungen verbergen"
      content: |
        Dieses Beispiel zeigt, wie man sensible Bilddaten in Dokumenten mit Überlagerungen abdeckt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Passen Sie die Überlagerungseinstellungen an: Größe, Farbe und Position
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

          # Öffnen Sie die Datei zur Schwärzung
          with gr.Redactor("source.pdf") as redactor:

              # Wenden Sie die Überlagerung an, um das Bild zu verbergen
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
    title: "PDF-Dateien mit Python schützen"
    exclude: "PDF"
    description: "Verwenden Sie Python, um sensible Daten in PDF-Dateien zu verbergen oder zu löschen. Eine praktische Lösung zum Sichern von Geschäfts- und Privatsachen."
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