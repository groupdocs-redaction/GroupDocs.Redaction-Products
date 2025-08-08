
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bilder in EXCEL mit Überlagerungen in Python abdecken"
head_description: "Schützen Sie sensible Bildbereiche in EXCEL-Dateien mit GroupDocs.Redaction for Python via .NET. Fügen Sie Überlagerungen hinzu, um private visuelle Inhalte zu verbergen, ohne das Aussehen des Dokuments zu ändern."

############################# Header ############################
title: "Sensible Bilder in EXCEL-Dateien mit Überlagerungen über Python schützen" 
description: "Sichern Sie Ihre persönlichen und geschäftlichen Bilder in EXCEL-Dateien mit Python. Zuverlässiger Schutz mit unseren benutzerfreundlichen Werkzeugen."
subtitle: "Wichtige Funktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern einfache Werkzeuge, um sensible Inhalte in EXCEL-Dateien zu verbergen oder zu entfernen. Decken Sie Bilder, Texte und Metadaten ab, um Ihre Dokumente zu schützen.

############################# Steps ############################
steps:
    enable: true
    title: "Daten in Excel-Dateien schützen"
    content: |
      GroupDocs.Redaction for Python via .NET hilft Python via .NET-Apps, private Informationen schnell und direkt zu verbergen.
      
      1. Erstellen Sie eine Redactor-Instanz und laden Sie die Excel-Datei.
      2. Stellen Sie die Schwärzungsoptionen nach Bedarf ein.
      3. Wählen Sie den Bildbereich aus und wählen Sie die Überlagerungsfarbe.
      4. Wenden Sie die Schwärzung an und speichern Sie die bearbeitete Datei.
   
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

        # Verbergen Sie Bildbereiche in EXCEL

        # Passen Sie die Größe und Farbe der Überlagerung an
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie den Bereich aus, den Sie abdecken möchten
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Öffnen Sie das Dokument mit Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Überlagerung anwenden und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensible Inhalte verbergen oder entfernen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, Dokumente zu schützen, indem Sie sensible Daten in verschiedenen Formaten verbergen oder löschen. Halten Sie Dateien sicher und übersichtlich für das Teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funktionsreiche Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text sicher bearbeiten"
      content: "Suchen Sie sensible Texte in Dokumenten und ersetzen Sie sie, um die Privatsphäre zu schützen."

    # feature loop
    - title: "Bilder abdecken"
      content: "Verbergen Sie ausgewählte Bildbereiche oder gesamte visuelle Inhalte mit Überlagerungen."

    # feature loop
    - title: "Versteckte Metadaten löschen"
      content: "Löschen Sie unsichtbare Metadatenfelder, um Datenlecks zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Überlagerungen, um Bilddaten zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie man Überlagerungen anwendet, um sensible Bilder in Dokumenten abzudecken.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Stellen Sie die Überlagerungsfarbe, -größe und -position ein
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Wählen Sie einen bestimmten Bildabschnitt auf Seite eins
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Laden Sie das Dokument zur Bearbeitung
          with gr.Redactor("source.xslx") as redactor:

              # Wenden Sie die Überlagerung an, um ihn zu verbergen
              result = redactor.apply(redaction)

              # Speichern Sie die aktualisierte Datei
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
    title: "Verstecken Sie Inhalte in EXCEL mit Python"
    exclude: "EXCEL"
    description: "Mit Python können Sie leicht sensible Informationen in EXCEL-Dateien verbergen oder löschen. Ein effektiver Weg, um die Sicherheit von Dokumenten zu gewährleisten."
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