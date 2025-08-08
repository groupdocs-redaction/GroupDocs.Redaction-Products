
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bilder in IMAGE mit Überlagerungen in Python maskieren"
head_description: "Verbergen Sie sensible Bildinhalte in IMAGE-Dateien mit farbigen Überlagerungen von GroupDocs.Redaction for Python via .NET. Halten Sie das ursprüngliche Layout Ihrer Datei intakt, während Sie wichtige visuelle Daten sichern."

############################# Header ############################
title: "Sensible Bilder in IMAGE-Dateien mit Python-Überlagerungen abdecken" 
description: "Schützen Sie persönliche und geschäftliche Bilddaten in IMAGE-Dateien mit Python. Einfache Werkzeuge für einen schnellen und effektiven Schutz."
subtitle: "Funktionen von GroupDocs.Redaction for Python via .NET, die Sie benötigen" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern Werkzeuge, um Inhalte in IMAGE-Dateien zu verbergen oder zu entfernen. Sichern Sie Ihre Dokumente, indem Sie Texte, Bilder und Metadaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Private Inhalte in Image-Dateien abdecken"
    content: |
      GroupDocs.Redaction for Python via .NET erleichtert es, sensible Daten in Ihren Python via .NET-Anwendungen zu verbergen.
      
      1. Initialisieren Sie einen Redactor und verweisen Sie auf Ihre Image-Datei.
      2. Konfigurieren Sie die Schwärzungseinstellungen nach Bedarf.
      3. Wählen Sie die Bildabschnitte aus und definieren Sie die Überlagerungsfarben.
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

        # Bildinhalte in IMAGE abdecken

        # Legen Sie die Überlagerungsgröße und -farben fest
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie den Bereich zum Verbergen aus
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie die Datei mit Redactor
        with gr.Redactor("input.png") as redactor:

            # Überlagerung anwenden und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Daten in verschiedenen Dokumenttypen schützen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sensible Inhalte in unterschiedlichen Dateiformaten zu verbergen oder zu löschen. Halten Sie Ihre Dokumente sauber, sicher und leicht zu teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Werkzeuge zur Kontrolle jeder Schwärzung"
  features:
    # feature loop
    - title: "Sensible Texte suchen und ersetzen"
      content: "Durchsuchen Sie Ihre Dokumente, um privaten Text zu ersetzen und Ihre Daten sicher zu halten."

    # feature loop
    - title: "Bilder mit Überlagerungen maskieren"
      content: "Fügen Sie farbige Überlagerungen hinzu, um Bilder oder spezifische Teile davon zu verbergen."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen oder bearbeiten Sie versteckte Metadaten, um sicherzustellen, dass keine privaten Daten durchsickern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildinhalte mit Überlagerungen verbergen"
      content: |
        Dieses Beispiel zeigt, wie man Überlagerungen anwendet, um sensible Bilddaten in einem Dokument zu schützen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie die Überlagerungsdimensionen, -farbe und -position fest
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Wählen Sie einen Bildbereich auf der ersten Seite aus
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Öffnen Sie die Datei zur Schwärzung
          with gr.Redactor("source.png") as redactor:

              # Wenden Sie die Überlagerung an, um den Bildinhalt zu maskieren
              result = redactor.apply(redaction)

              # Speichern Sie die Datei nach der Schwärzung
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
    title: "Schützen Sie Inhalte in IMAGE-Dateien mit Python"
    exclude: "IMAGE"
    description: "Mit Python können Sie sensible Informationen in IMAGE-Dateien verbergen oder löschen. Ein zuverlässiger Weg, um Dokumente sicher und professionell zu halten."
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