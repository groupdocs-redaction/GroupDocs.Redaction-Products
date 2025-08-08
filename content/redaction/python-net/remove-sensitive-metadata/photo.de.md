
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten in PHOTO mit Python löschen"
head_description: "Mit GroupDocs.Redaction for Python via .NET können Sie versteckte Daten aus PHOTO-Dateien entfernen und das Leaken privater Informationen vermeiden."

############################# Header ############################
title: "Metadaten aus PHOTO mit Python bereinigen" 
description: "Schützen Sie Ihre PHOTO-Dokumente, indem Sie versteckte Informationen mit einfach zu bedienenden Python-Tools entfernen."
subtitle: "Wesentliche Funktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gibt Python-Benutzern eine Möglichkeit, Dateien zu bereinigen, indem sie versteckte Inhalte aus Text, Bildern und Metadaten in PHOTO-Dateien entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Schritte zum Löschen von Metadaten aus Photo"
    content: |
      Verwenden Sie GroupDocs.Redaction in Ihrem Python via .NET-Projekt, um Dokumentmetadaten in nur wenigen Schritten zu bereinigen.
      
      1. Richten Sie einen Redactor ein und öffnen Sie Ihre Photo-Datei.
      2. Wählen Sie die zu löschenden Metadatenfelder aus.
      3. Wenden Sie die Redaktion an, um die Datei zu bereinigen.
      4. Speichern Sie die endgültige Version.
   
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

        # Metadaten in PHOTO-Dokumenten löschen

        # Wählen Sie, welche Metadaten redigiert werden sollen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Verwenden Sie Redactor, um Ihre Datei zu öffnen
        with gr.Redactor("input.jpeg") as redactor:

            # Redaktion durchführen und speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Vor dem Teilen Dateien bereinigen"
  description: "GroupDocs.Redaction for Python via .NET hilft, Daten zu entfernen, die nicht sichtbar sein sollten. Löschen Sie Texte, Bilder und versteckte Details in nur wenigen Klicks."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Nützliche Redaktionsfunktionen"
  features:
    # feature loop
    - title: "Text entfernen"
      content: "Finden und löschen Sie sensible Wörter, Zahlen oder Muster."

    # feature loop
    - title: "Bilder maskieren"
      content: "Bedecken Sie Teile von Bildern, die private Daten enthalten."

    # feature loop
    - title: "Metadatenbereinigung"
      content: "Löschen Sie Dateidetails wie Autor, Titel oder Kommentare."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Spezifische Metadaten entfernen"
      content: |
        Befolgen Sie dieses Beispiel, um Autor- und Titel-Felder in einem PHOTO-Dokument zu löschen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Zielen Sie auf das Autorenfeld
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Zielen Sie auf das Titel-Feld
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Laden Sie die Datei in den Redaktor
          with gr.Redactor("source.jpeg") as redactor:

              # Redigieren Sie die ausgewählten Metadaten
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Aktualisierte Datei speichern
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
    title: "Redigieren Sie Metadaten aus PHOTO mit Python"
    exclude: "PHOTO"
    description: "Verwenden Sie Python, um versteckte Metadaten aus PHOTO-Dateien zu löschen. Halten Sie Dokumente sauber und sicher."
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