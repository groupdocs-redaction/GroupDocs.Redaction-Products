
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten aus PPTX-Dateien mit Python löschen"
head_description: "GroupDocs.Redaction for Python via .NET hilft, versteckte Daten in PPTX-Dateien zu bereinigen. Entfernen Sie Details, die vertrauliche Informationen offenbaren könnten."

############################# Header ############################
title: "Metadaten in PPTX mit Python löschen" 
description: "Löschen Sie private Metadaten, die in PPTX-Dateien gespeichert sind, mit Python. Eine kluge Art, Ihre Informationen zu schützen."
subtitle: "Hauptwerkzeuge in GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie mehr über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction wurde für Python-Entwickler entwickelt, die Dokumente sauber halten möchten. Verwenden Sie es, um Text zu löschen, Bilder abzudecken oder Metadaten aus PPTX-Dateien zu entfernen.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Pptx-Dateien bereinigen"
    content: |
      Verwenden Sie GroupDocs.Redaction, um schnell Metadaten von Ihrer Python via .NET-App zu entfernen.
      
      1. Erstellen Sie einen Redactor und öffnen Sie das Pptx-Dokument.
      2. Wählen Sie die Metadaten aus, die Sie löschen möchten.
      3. Wenden Sie die Redaktion an, um versteckte Daten zu entfernen.
      4. Speichern Sie die aktualisierte Datei.
   
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

        # Metadaten in PPTX löschen

        # Wählen Sie die Felder aus, die redigiert werden sollen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Öffnen Sie Ihre Datei mit Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Führen Sie die Änderungen aus und speichern Sie
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Möglichkeiten, sensible Informationen zu verbergen"
  description: "GroupDocs.Redaction for Python via .NET unterstützt die Redaktion in vielen Formaten. Ein schneller Weg, persönliche Inhalte aus Dokumenten zu entfernen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Werkzeuge zur Datei-Redaktion"
  features:
    # feature loop
    - title: "Text suchen und entfernen"
      content: "Löschen Sie schnell Wörter oder Phrasen, die persönliche oder vertrauliche Daten enthalten."

    # feature loop
    - title: "Bildüberlagerungen hinzufügen"
      content: "Verdecken Sie Bildabschnitte, die nicht geteilt werden sollten."

    # feature loop
    - title: "Versteckte Metadaten entfernen"
      content: "Beseitigen Sie Autorenamen, Titel und andere verborgene Tags."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Beispiel: Metadatenfelder löschen"
      content: |
        Befolgen Sie dieses Beispiel, um gängige Metadatenfelder aus einer PPTX-Datei vor dem Teilen zu entfernen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Markieren Sie das Autorenfeld zur Redaktion
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Markieren Sie das Titel-Feld zur Redaktion
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Laden Sie die Datei
          with gr.Redactor("source.pptx") as redactor:

              # Führen Sie das Redaktionstool aus
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Speichern Sie die bereinigte Datei
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
    title: "Verwenden Sie Python, um Metadaten aus PPTX zu löschen"
    exclude: "PPTX"
    description: "Entfernen Sie Hintergrunddaten aus PPTX mit Python. Ideal für Datenschutz und Compliance."
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