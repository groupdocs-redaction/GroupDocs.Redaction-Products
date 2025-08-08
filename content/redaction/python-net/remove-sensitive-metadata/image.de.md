
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Versteckte Metadaten in IMAGE mit Python entfernen"
head_description: "GroupDocs.Redaction for Python via .NET hilft Ihnen, private Metadaten aus IMAGE-Dokumenten zu entfernen. Halten Sie Dateien sauber und sicher."

############################# Header ############################
title: "Metadaten in IMAGE-Dateien mit Python entfernen" 
description: "Verwenden Sie Python-Tools, um IMAGE-Dokumente zu schützen. Löschen Sie versteckte Informationen, bevor Sie sie teilen oder veröffentlichen."
subtitle: "Wichtige Merkmale von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gibt Python Entwicklern die Werkzeuge, um sensible Daten aus IMAGE-Dateien zu entfernen, einschließlich Text, Bildern und Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "So entfernen Sie Metadaten aus Image-Dateien"
    content: |
      GroupDocs.Redaction hilft Python via .NET-Entwicklern, Dokumentmetadaten in nur wenigen Schritten zu bereinigen.
      
      1. Richten Sie einen Redactor ein und laden Sie Ihre Image-Datei.
      2. Wählen Sie die Metadaten aus, die Sie entfernen möchten.
      3. Führen Sie den Redaktionsprozess durch.
      4. Speichern Sie Ihre aktualisierte Datei.
   
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

        # Versteckte Felder in IMAGE-Dateien bereinigen

        # Wählen Sie Metadatenfelder aus, die redigiert werden sollen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Verwenden Sie Redactor, um die Datei zu öffnen
        with gr.Redactor("input.png") as redactor:

            # Prozesse durchführen und exportieren
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensitve Daten aus jeder Datei bereinigen"
  description: "GroupDocs.Redaction for Python via .NET entfernt Texte, Bilder und Metadaten, die nicht geteilt werden sollten. Funktioniert mit vielen Formaten."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Hauptwerkzeuge zur Redaktion"
  features:
    # feature loop
    - title: "Text entfernen"
      content: "Löschen Sie Wörter oder Muster aus Ihren Dateien, um sensible Informationen zu schützen."

    # feature loop
    - title: "Bilder maskieren"
      content: "Bedecken Sie Teile von Bildern, die privat bleiben sollten."

    # feature loop
    - title: "Metadaten löschen"
      content: "Löschen Sie versteckte Daten aus Datei-Eigenschaften wie Autor oder Titel."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadatenfelder entfernen"
      content: |
        Dieses Beispiel zeigt, wie man Metadaten wie Autor und Titel in IMAGE-Dateien löscht.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Wählen Sie das Autorenfeld
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Wählen Sie das Titel-Feld
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Laden Sie die Datei in den Redaktor
          with gr.Redactor("source.png") as redactor:

              # Führen Sie die Redaktionsanwendung durch
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Speichern Sie das endgültige Dokument
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
    title: "Verwenden Sie Python, um IMAGE-Metadaten zu entfernen"
    exclude: "IMAGE"
    description: "Bereinigen Sie Metadaten in IMAGE-Dateien schnell mit Python. Halten Sie Ihre Dokumente sicher und privat."
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