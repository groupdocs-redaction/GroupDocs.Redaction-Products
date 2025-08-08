
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bilder in WORD mit Überlagerungen in Python schützen"
head_description: "Decken Sie sensible Bilder in WORD-Dateien mit GroupDocs.Redaction for Python via .NET ab. Wenden Sie Überlagerungen an, um private Daten zu schützen und dabei das Layout des Dokuments zu bewahren."

############################# Header ############################
title: "Private Bilder in WORD-Dateien mit Python abdecken" 
description: "Halten Sie persönliche und geschäftliche visuelle Inhalte in WORD-Dokumenten mit Python sicher. Zuverlässige und schnelle Schwärzungswerkzeuge für Sie."
subtitle: "Kernfunktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern einfache Werkzeuge, um Inhalte in WORD-Dateien zu verbergen oder zu löschen. Schützen Sie sensible Texte, Bilder und Metadaten in verschiedenen Dokumentformaten.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Informationen in Word-Dateien sichern"
    content: |
      GroupDocs.Redaction for Python via .NET hilft Ihren Python via .NET-Apps, Dokumente zu schützen, indem private Inhalte mit Überlagerungen abgedeckt werden.
      
      1. Erstellen Sie ein Redactor-Objekt und laden Sie die Word-Datei.
      2. Passen Sie die Schwärzungseinstellungen nach Bedarf an.
      3. Wählen Sie den Bildbereich aus und legen Sie die Überlagerungsfarbe fest.
      4. Wenden Sie die Überlagerung an und speichern Sie die geschwärzte Datei.
   
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

        # Verdecken Sie sensible Bildteile in WORD

        # Geben Sie die Überlagerungsfarbe und -größe an
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Wählen Sie den Bildbereich, den Sie verbergen möchten
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie die Datei mit Redactor
        with gr.Redactor("input.docx") as redactor:

            # Überlagerung anwenden und das Dokument speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Erweiterte Schwärzungsfunktionen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sensible Inhalte in mehreren Dokumentformaten zu verbergen oder zu löschen. Halten Sie Dateien sauber und sicher zum Teilen."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Finden Sie sensiblen Text in Dokumenten und ersetzen Sie ihn, um die Privatsphäre zu garantieren."

    # feature loop
    - title: "Bilder überlagern"
      content: "Bedecken Sie ausgewählte Bildbereiche oder ganze visuelle Inhalte, um private Informationen zu verbergen."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Löschen Sie ungenutzte Metadaten, um das Teilen unsichtbarer Daten zu verhindern."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildinhalte mit Überlagerungen abdecken"
      content: |
        Dieses Beispiel zeigt, wie man sensible Bilder in Dokumenten mittels Überlagerungen verbirgt.
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

          # Wählen Sie den Bereich auf der ersten Seite aus, der abgedeckt werden soll
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Öffnen Sie das Dokument
          with gr.Redactor("source.docx") as redactor:

              # Überlagern Sie die Schwärzung
              result = redactor.apply(redaction)

              # Speichern Sie das aktualisierte Dokument
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
    title: "Inhalte in WORD mit Python schwärzen"
    exclude: "WORD"
    description: "Python ermöglicht es Ihnen, sensible Inhalte in WORD-Dateien zu verbergen oder zu entfernen. Eine vertrauenswürdige Lösung für die Dokumentensicherheit."
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