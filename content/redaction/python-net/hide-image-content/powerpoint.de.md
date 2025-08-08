
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sensible Bilder in POWERPOINT mit Überlagerungen in Python maskieren"
head_description: "Mit GroupDocs.Redaction for Python via .NET können Sie private Bildbereiche in POWERPOINT-Dateien mit Überlagerungen verbergen. Schützen Sie Informationen, ohne das Design des Dokuments zu verändern."

############################# Header ############################
title: "Private Bilder in POWERPOINT-Dokumenten mit Python-Überlagerungen abdecken" 
description: "Halten Sie sensible Bilder in POWERPOINT-Dateien mit Python sicher. Einfache Werkzeuge, die für starken Datenschutz entwickelt wurden."
subtitle: "Erkunden Sie die Funktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET statten Python-Entwickler mit Werkzeugen aus, um sensible Inhalte in POWERPOINT-Dateien zu verbergen oder zu löschen. Schützen Sie Ihre Dokumente, indem Sie private Texte, Bilder und Metadaten abdecken.

############################# Steps ############################
steps:
    enable: true
    title: "Halten Sie Ihre Powerpoint-Dokumente sicher"
    content: |
      GroupDocs.Redaction for Python via .NET erleichtert es Python via .NET-Apps, sensible Inhalte in Dokumenten zu schützen.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie die Powerpoint-Datei.
      2. Passen Sie die Schwärzungsoptionen an Ihre Anforderungen an.
      3. Wählen Sie den Bildbereich aus und wählen Sie eine Überlagerungsfarbe.
      4. Wenden Sie die Schwärzung an und speichern Sie Ihr Dokument.
   
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

        # Maskieren Sie Bildinhalte in POWERPOINT-Dateien

        # Legen Sie die Überlagerungsgröße und -farbe fest
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie den Bereich aus, den Sie verbergen möchten
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie die Datei mit Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Wenden Sie die Überlagerung an und speichern Sie die Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Schützen Sie private Daten in Dokumenten"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sensible Inhalte in unterschiedlichen Dateiformaten zu verbergen oder zu löschen. Halten Sie Ihre Dateien sicher und bereit zum Teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Text suchen und bearbeiten"
      content: "Finden Sie private Texte in Dokumenten und ersetzen Sie sie, um die Privatsphäre sicherzustellen."

    # feature loop
    - title: "Bildbereiche maskieren"
      content: "Bedecken Sie gesamte Bilder oder ausgewählte Teile mit Überlagerungen, um private Informationen zu schützen."

    # feature loop
    - title: "Versteckte Metadaten löschen"
      content: "Löschen Sie Metadaten, um ein versehentliches Teilen zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Überlagerungen, um Bilddaten zu verbergen"
      content: |
        Dieses Beispiel zeigt, wie man sensible Bilder in Dokumenten mit Überlagerungen schützt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie die Überlagerungsdimensionen, -position und -farbe fest
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Markieren Sie den Bildbereich auf der ersten Seite
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Öffnen Sie das Dokument zur Schwärzung
          with gr.Redactor("source.pptx") as redactor:

              # Überlagerung anwenden, um Daten zu maskieren
              result = redactor.apply(redaction)

              # Speichern Sie das finale Dokument
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
    title: "POWERPOINT-Dateien mit Python sicher halten"
    exclude: "POWERPOINT"
    description: "Mit Python können Sie sensible Daten in POWERPOINT-Dateien leicht verbergen oder entfernen. Eine vertrauenswürdige Lösung zum Schutz wichtiger Dokumente."
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