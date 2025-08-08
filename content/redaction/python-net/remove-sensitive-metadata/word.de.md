
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten aus WORD-Dateien mit Python bereinigen"
head_description: "Verwenden Sie GroupDocs.Redaction for Python via .NET, um versteckte Metadaten in WORD-Dateien zu entfernen. Schützen Sie Dokumente davor, persönliche oder interne Informationen preiszugeben."

############################# Header ############################
title: "Metadaten in WORD mit Python-Tools entfernen" 
description: "Halten Sie Ihre Dateien sicher, indem Sie unerwünschte Metadaten mit Python löschen. Perfekt für Unternehmen und einzelne Benutzer."
subtitle: "Funktionen von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction wurde für Python-Entwickler entwickelt, die WORD-Dateien privat halten möchten. Sie können Text entfernen, Teile von Bildern verdecken und Metadaten bereinigen.

############################# Steps ############################
steps:
    enable: true
    title: "Versteckte Metadaten in Word entfernen"
    content: |
      Mit GroupDocs.Redaction kann Ihre Python via .NET-App Dokumentmetadaten schnell bereinigen.
      
      1. Erstellen Sie ein Redactor-Objekt und öffnen Sie die Word-Datei.
      2. Legen Sie Redaktionsregeln für die Metadatenfelder fest.
      3. Führen Sie die Redaktion durch, um die ausgewählten Daten zu entfernen.
      4. Speichern Sie die bereinigte Version der Datei.
   
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

        # Metadaten in WORD bereinigen

        # Wählen Sie die zu entfernenden Metadaten aus
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Öffnen Sie das Dokument mit Redactor
        with gr.Redactor("input.docx") as redactor:

            # Wenden Sie die Redaktion an und speichern Sie die Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Schützen Sie mehr als nur Metadaten"
  description: "Redigieren Sie Texte, verdecken Sie Bilder und entfernen Sie Metadaten mit GroupDocs.Redaction for Python via .NET. Halten Sie Ihre Dokumente sauber und privat."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Optionen zum Schutz von Dokumenten"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Löschen oder ersetzen Sie Wörter und Phrasen, die private oder vertrauliche Daten enthalten."

    # feature loop
    - title: "Bildüberdeckungen hinzufügen"
      content: "Platzieren Sie Überlagerungen, um Teile von Bildern in Ihren Dokumenten zu verstecken."

    # feature loop
    - title: "Metadaten herauslöschen"
      content: "Reinigen Sie Autorenamen, Titel, Kommentare und andere versteckte Informationen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadaten aus WORD-Dateien entfernen"
      content: |
        Dieses Beispiel zeigt, wie man Felder wie Autor und Titel aus einem WORD-Dokument entfernt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Ziel des Autor-Metadatensatzes
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Ziel des Titel-Metadatensatzes
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Importieren Sie Ihr Dokument
          with gr.Redactor("source.docx") as redactor:

              # Führen Sie das Redaktionstool aus
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

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
    title: "Metadaten in WORD mit Python entfernen"
    exclude: "WORD"
    description: "Verwenden Sie Python, um versteckte Metadaten aus WORD zu bereinigen. Halten Sie Ihre Dateien sicher, bevor Sie sie teilen oder archivieren."
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