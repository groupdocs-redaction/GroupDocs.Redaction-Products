
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Bildbereiche in XLSX-Dateien mit Überlagerungen in Python verbergen"
head_description: "Schützen Sie sensible Bildregionen in XLSX-Dateien, indem Sie mit GroupDocs.Redaction for Python via .NET Überlagerungen anwenden. Halten Sie die Struktur Ihres Dokuments unberührt, während Sie private visuelle Daten sichern."

############################# Header ############################
title: "Verbergen Sie empfindliche Bilder in XLSX-Dokumenten mit Python" 
description: "Schützen Sie vertrauliche Bilder in XLSX-Dateien mit Python. Unsere Werkzeuge gewährleisten eine schnelle und effektive Bildschwärzung."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern Werkzeuge, um sensible Daten aus XLSX-Dokumenten zu verbergen oder zu löschen. Schwärzen Sie Texte, Bilder und Metadaten in verschiedenen Formaten.

############################# Steps ############################
steps:
    enable: true
    title: "Sensible Daten in Xlsx-Dateien schützen"
    content: |
      GroupDocs.Redaction for Python via .NET macht es einfach, Ihre Python via .NET-Apps die Dokumente zu sichern.
      
      1. Initialisieren Sie Redactor und laden Sie das Xlsx-Dokument.
      2. Stellen Sie die Schwärzungsparameter ein, um Ihre Aufgabe zu entsprechen.
      3. Definieren Sie, welcher Teil des Bildes abzudecken ist, und wählen Sie eine Farbe.
      4. Wenden Sie die Schwärzung an und speichern Sie die endgültige Datei.
   
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

        # Verbergen Sie vertrauliche Bildabschnitte in XLSX

        # Wählen Sie die Überlagerungsgröße und -farbe aus
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Markieren Sie den Schwärzungsbereich
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Laden Sie das Dokument mit Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Änderungen vornehmen und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Inhalte in Dokumenten schwärzen"
  description: "Mit GroupDocs.Redaction for Python via .NET können Sie sensible Daten in vielen Dokumentformaten verbergen oder entfernen. Halten Sie Dokumente sicher und professionell."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Effiziente Schwärzungswerkzeuge"
  features:
    # feature loop
    - title: "Text suchen und ersetzen"
      content: "Sensible Texte leicht finden und ersetzen oder verbergen."

    # feature loop
    - title: "Bilder mit Überlagerungen abdecken"
      content: "Verbergen Sie vollständige Bilder oder spezifische Abschnitte, um sensible visuelle Inhalte zu schützen."

    # feature loop
    - title: "Versteckte Metadaten entfernen"
      content: "Bereinigen Sie Metadaten in Dateien, um das Teilen privater Informationen zu vermeiden."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Bildinhalte mit Überlagerungen maskieren"
      content: |
        Dieser Leitfaden zeigt, wie man sensible Bildbereiche in Dokumenten mit Überlagerungen verbirgt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definieren Sie die Überlagerungsgröße, Position und Farbe
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Wählen Sie den spezifischen Bildabschnitt
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Öffnen Sie die Datei zur Schwärzung
          with gr.Redactor("source.xslx") as redactor:

              # Wenden Sie die Überlagerung an, um den Bereich zu verbergen
              result = redactor.apply(redaction)

              # Speichern Sie das modifizierte Dokument
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
    title: "Verstecken Sie Inhalte in XLSX-Dateien mit Python"
    exclude: "XLSX"
    description: "Verwenden Sie Python, um sensible Daten aus XLSX-Dateien zu schwärzen oder zu löschen. Ideal für Unternehmen und Personen, die ihre Dokumente schützen möchten."
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