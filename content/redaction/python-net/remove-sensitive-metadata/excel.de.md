
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten aus EXCEL mit Python löschen"
head_description: "Verwenden Sie GroupDocs.Redaction for Python via .NET, um Metadaten aus EXCEL-Dokumenten zu entfernen. Entfernen Sie versteckte Daten und schützen Sie sensible Informationen."

############################# Header ############################
title: "Versteckte Metadaten in EXCEL mit Python entfernen" 
description: "Übernehmen Sie die Kontrolle über Ihre EXCEL-Dateien mit Python. Befreien Sie sich von unerwünschten Daten, um Ihre Dateien privat zu halten."
subtitle: "Wichtige Merkmale von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction wurde für Python-Entwickler entwickelt, die EXCEL-Dateien bereinigen und schützen müssen. Entfernen Sie unerwünschte Metadaten, Texte und Bilder problemlos.

############################# Steps ############################
steps:
    enable: true
    title: "Schritte zum Bereinigen von Metadaten in Excel-Dateien"
    content: |
      In Ihren Python via .NET-Apps hilft GroupDocs.Redaction, Metadaten in nur wenigen Schritten zu entfernen.
      
      1. Starten Sie einen Redactor und öffnen Sie die Excel-Datei.
      2. Wählen Sie die Metadatenfelder zur Entfernung aus.
      3. Führen Sie den Redaktionsprozess durch.
      4. Exportieren Sie die endgültige Datei.
   
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

        # Versteckte Daten in EXCEL entfernen

        # Wählen Sie aus, welche Metadaten entfernt werden sollen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Öffnen Sie Ihre Datei mit dem Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Prozesse durchlaufen und Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Alle Arten sensibler Daten bereinigen"
  description: "GroupDocs.Redaction for Python via .NET bietet Ihnen Werkzeuge, um Metadaten, Texte und Bilder in vielen Formaten zu löschen. Perfekt für sicheren Austausch von Dokumenten."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge für Metadaten und Datenschutz"
  features:
    # feature loop
    - title: "Private Texte entfernen"
      content: "Erkennen und löschen Sie persönliche oder versteckte Informationen aus Ihren Dokumenten."

    # feature loop
    - title: "Bilddetails maskieren"
      content: "Bedecken Sie Teile von Bildern, um private Visuals zu blockieren."

    # feature loop
    - title: "Metadaten bereinigen"
      content: "Löschen Sie versteckte Metadatenfelder, die sensible Daten enthalten könnten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Autoren- und Titelmetadaten entfernen"
      content: |
        Sehen Sie, wie GroupDocs.Redaction for Python via .NET spezifische Metadatenfelder aus EXCEL-Dokumenten bereinigt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Autoreninformationen löschen
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Titel-Feld löschen
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Dokument für die Redaktion öffnen
          with gr.Redactor("source.xlsx") as redactor:

              # Änderungen anwenden
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Bereinigtes Dokument speichern
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Metadaten in EXCEL mit Python löschen"
    exclude: "EXCEL"
    description: "Verwenden Sie Python, um sensible Metadaten aus Ihren EXCEL-Dateien zu entfernen. Sichern Sie Inhalte, bevor Sie sie teilen."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "Bild redigieren"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Beliebte Bildformate"

        # format loop 6
        - name: "Foto redigieren"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Fot Formate"

        # format loop 7
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 8
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 9
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Präsentation"

        # format loop 10
        - name: "JPEG redigieren"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG Bild"


---