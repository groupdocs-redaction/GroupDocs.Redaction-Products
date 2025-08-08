
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bilder in PHOTO-Dateien mit Python-Überlagerungen abdecken"
head_description: "Wenden Sie Überlagerungen an, um sensible Bilddaten in PHOTO-Dateien mit GroupDocs.Redaction for Python via .NET zu verbergen. Halten Sie das Design Ihres Dokuments intakt, während Sie private Informationen schützen."

############################# Header ############################
title: "Sensible Bilder in PHOTO-Dateien mit Überlagerungen über Python verbergen" 
description: "Schützen Sie Bildinhalte in PHOTO-Dateien mit Python. Einfache Werkzeuge für schnellen und effektiven Datenschutz."
subtitle: "GroupDocs.Redaction for Python via .NET Hauptmerkmale" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern leistungsstarke Werkzeuge, um sensible Inhalte in PHOTO-Dateien zu verbergen oder zu löschen. Schützen Sie wichtige Daten, indem Sie Texte, Bilder und Metadaten effizient maskieren.

############################# Steps ############################
steps:
    enable: true
    title: "Bildbereiche in Photo-Dateien schützen"
    content: |
      Verwenden Sie GroupDocs.Redaction for Python via .NET, um sensible Bildbereiche in Ihren Python via .NET-Anwendungen abzudecken.
      
      1. Erstellen Sie ein Redactor-Objekt und verknüpfen Sie es mit Ihrer Photo-Datei.
      2. Konfigurieren Sie die Schwärzungseinstellungen entsprechend Ihrer Aufgabe.
      3. Heben Sie die Bildabschnitte hervor und setzen Sie Überlagerungsfarben.
      4. Wenden Sie die Schwärzung an und speichern Sie die geschützte Datei.
   
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

        # Verwenden Sie Überlagerungen, um Bilddaten in PHOTO zu verbergen

        # Legen Sie die Dimensions- und Überlagerungsfarbe fest
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie die Bildbereiche zum Maskieren aus
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Öffnen Sie die Datei mit Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Überlagerung anwenden und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Daten in mehreren Formaten schwärzen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sensible Inhalte in verschiedenen Dateitypen zu verbergen oder zu löschen. Halten Sie die Dokumente sauber und sicher zum Teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text finden und bearbeiten"
      content: "Suchen Sie nach sensiblen Texten und ersetzen Sie diese, um Ihre Dokumente zu sichern."

    # feature loop
    - title: "Bilder mit Überlagerungen verbergen"
      content: "Fügen Sie Überlagerungen hinzu, um vollständige Bilder oder spezifische Abschnitte abzudecken."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie versteckte Metadaten, um Datenlecks zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildabschnitte mit Überlagerungen abdecken"
      content: |
        Dieses Codebeispiel zeigt, wie man sensible Bildbereiche in einem Dokument mit Überlagerungen maskiert.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definieren Sie die Überlagerungsgröße, -farbe und -platzierung
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
          with gr.Redactor("source.jpeg") as redactor:

              # Wenden Sie die Überlagerung an, um den Inhalt zu verbergen
              result = redactor.apply(redaction)

              # Speichern Sie die gesicherte Datei
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
    title: "Sensible Inhalte in PHOTO mit Python schwärzen"
    exclude: "PHOTO"
    description: "Verbergen oder löschen Sie private Daten in PHOTO-Dateien mit Python. Ein einfacher Weg, um offizielle Dokumente zu sichern."
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