
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten in DOCX mit Python bereinigen"
head_description: "GroupDocs.Redaction for Python via .NET entfernt versteckte Details in DOCX-Dateien. Schützen Sie Ihre Daten, indem Sie sensible Metadateneinträge löschen."

############################# Header ############################
title: "Versteckte Metadaten aus DOCX-Dateien mit Python löschen" 
description: "Mit Python können Sie versteckte Metadaten aus DOCX-Dateien mit GroupDocs.Redaction for Python via .NET entfernen. Halten Sie Ihre Dateien sauber und privat."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gibt Python Entwicklern die Möglichkeit, versteckte Daten in DOCX-Dateien zu löschen. Reinigen Sie Texte, Grafiken und Metadaten aus Dokumenten effizient.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten aus Docx-Dateien entfernen"
    content: |
      GroupDocs.Redaction gibt Ihrer Python via .NET-App die Werkzeuge, um Metadaten schnell zu löschen.
      
      1. Starten Sie einen Redactor und laden Sie Ihr Docx-Dokument.
      2. Richten Sie die Metadatenfelder zur Entfernung ein.
      3. Führen Sie die Redaktion durch, um den versteckten Inhalt zu bereinigen.
      4. Speichern Sie die endgültige Version der Datei.
   
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

        # Metadaten in DOCX-Dateien aufräumen

        # Auswahl der Metadateneinträge zur Entfernung
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Verwenden Sie Redactor, um das Dokument zu öffnen
        with gr.Redactor("input.docx") as redactor:

            # Redaktion anwenden und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Jeden Teil eines Dokuments sichern"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht die Bereinigung von Text, Bildern und Metadaten in mehreren Dateiformaten. Ideal für Datenschutz und Sicherheit."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge zur Redaktion von Dokumenten in Aktion"
  features:
    # feature loop
    - title: "Textreiniger"
      content: "Finden und löschen Sie Namen, Begriffe oder private Wörter."

    # feature loop
    - title: "Bilder abdecken"
      content: "Verbergen Sie Teile eines Bildes, indem Sie eine farbige Überlagerung platzieren."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Entfernen Sie versteckte Dokumentinformationen wie Autor oder Softwaredetails."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Beispiel: Entfernen versteckter Metadaten"
      content: |
        So entfernen Sie Autor- und Titelfelder aus einem DOCX-Dokument mit der Redaktion.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Wählen Sie das Entfernen des Autorenfeldes
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Wählen Sie das Entfernen des Titel-Feldes
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Öffnen Sie die DOCX-Datei
          with gr.Redactor("source.docx") as redactor:

              # Führen Sie die Metadatenredaktion durch
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Die bereinigte Datei speichern
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
    title: "Metadaten in DOCX mit Python löschen"
    exclude: "DOCX"
    description: "Entfernen Sie versteckte Metadaten in DOCX-Dateien mit Python. Ideal, um Ihre Dateien vor dem Teilen oder Archivieren abzusichern."
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