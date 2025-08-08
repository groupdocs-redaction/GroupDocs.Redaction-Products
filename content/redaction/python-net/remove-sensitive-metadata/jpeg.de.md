
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten in JPEG mit Python bearbeiten"
head_description: "GroupDocs.Redaction for Python via .NET hilft Ihnen, Metadaten in JPEG-Dokumenten zu bereinigen oder zu aktualisieren. Entfernen Sie versteckte Felder, die private Details enthüllen könnten."

############################# Header ############################
title: "Metadaten in JPEG über Python bereinigen" 
description: "Sichern Sie Ihre JPEG-Dateien, indem Sie versteckte Metadaten mithilfe einfacher Tools, die für Python entwickelt wurden, entfernen."
subtitle: "Kernfunktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gibt Python Entwicklern einfache Werkzeuge zur Verfügung, um Texte, Bilder und Metadaten aus JPEG-Dokumenten zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Schritte zur Bereinigung von Jpeg-Metadaten"
    content: |
      GroupDocs.Redaction macht die Entfernung von Metadaten in Ihren Python via .NET-Apps schnell und effizient.
      
      1. Richten Sie einen Redactor ein und öffnen Sie Ihr Jpeg-Dokument.
      2. Wählen Sie Optionen, um Metadatenfelder zu entfernen.
      3. Führen Sie die Redaktion durch, um die Datei zu bereinigen.
      4. Speichern Sie die neue Version ohne versteckte Daten.
   
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

        # Metadaten in JPEG bereinigen

        # Wählen Sie Metadatenfelder aus, die zu bereinigen sind
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Öffnen Sie die Datei mit Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Redaktion durchführen und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Privatsphäre in jeder Datei schützen"
  description: "GroupDocs.Redaction for Python via .NET gibt Ihnen die Kontrolle über sensible Daten in Dokumenten. Entfernen Sie versteckte Inhalte in Text, Bildern und Metadaten."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Funktionen zur Metadatenredaktion"
  features:
    # feature loop
    - title: "Text finden und löschen"
      content: "Scannen Sie nach Schlüsselwörtern oder privaten Informationen und entfernen Sie diese aus dem Dokument."

    # feature loop
    - title: "Bilddetails verbergen"
      content: "Bedecken Sie Bildbereiche, die von anderen nicht gesehen werden sollten."

    # feature loop
    - title: "Metadaten bearbeiten"
      content: "Ändern oder löschen Sie Metadatenfelder, um Dokumentinformationen zu schützen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadatenfelder bearbeiten"
      content: |
        Dieses Beispiel zeigt, wie man Felder wie Autor und Titel in einem JPEG-Dokument entfernen oder ändern kann.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Das Autorenfeld anvisieren
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Das Titel-Feld anvisieren
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Die JPEG-Datei öffnen
          with gr.Redactor("source.jpg") as redactor:

              # Den Bereinigungsprozess durchführen
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Die neue Version speichern
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
    title: "Bereinigen Sie JPEG-Metadaten mit Python"
    exclude: "JPEG"
    description: "Verwenden Sie Python, um versteckte und private Daten schnell und einfach aus Ihren JPEG-Dokumenten zu entfernen."
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