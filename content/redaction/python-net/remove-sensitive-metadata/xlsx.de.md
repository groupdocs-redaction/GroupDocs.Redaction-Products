
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten aus XLSX mit Python löschen"
head_description: "Entfernen Sie versteckte Metadaten in Ihren XLSX-Dokumenten mit GroupDocs.Redaction for Python via .NET. Ein sauberer Weg, um Ihre Privatsphäre zu schützen."

############################# Header ############################
title: "Metadaten in XLSX-Dateien mit Python entfernen" 
description: "Mit Python können Sie private Details sicher aus Ihren XLSX-Dateien löschen. Perfekt für den persönlichen und beruflichen Gebrauch."
subtitle: "Wichtige Merkmale von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction bietet Python Entwicklern Werkzeuge, um sensible Inhalte in XLSX-Dateien zu löschen oder zu verbergen - von Text über Bilder bis hin zu Metadaten.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten aus Xlsx-Dateien bereinigen"
    content: |
      GroupDocs.Redaction ermöglicht es Ihren Python via .NET-Projekten, unerwünschte Dateidaten schnell zu entfernen.
      
      1. Erstellen Sie eine Redactor-Instanz und laden Sie Ihre Xlsx-Datei.
      2. Wählen Sie die Metadateneinträge aus, die Sie löschen möchten.
      3. Führen Sie die Redaktion durch, um diese Einträge zu bereinigen.
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

        # Versteckte Metadaten in Ihrem XLSX-Dokument löschen

        # Legt fest, welche Metadatenfelder entfernt werden sollen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Öffnen Sie die Datei mit Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Änderungen vornehmen und die Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sensitive Inhalte überall in der Datei verbergen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, private Informationen aus mehreren Dateiformaten zu bereinigen. Halten Sie Ihre Inhalte teilbar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redaktionswerkzeuge für Metadaten und Inhalte"
  features:
    # feature loop
    - title: "Sensitive Texte löschen"
      content: "Finden und entfernen Sie Namen, E-Mails oder andere vertrauliche Details aus Dokumenten."

    # feature loop
    - title: "Bildbereich abdecken"
      content: "Platzieren Sie Überlagerungen, um Bereiche in Bildern zu verstecken, die nicht sichtbar sein sollten."

    # feature loop
    - title: "Metadatenreiniger"
      content: "Entfernen Sie versteckte Felder wie Autor, Titel oder Erstellungsdatum."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadaten aus dem Dokument entfernen"
      content: |
        So entfernen Sie Metadaten aus Ihrer XLSX-Datei mit ein paar Codezeilen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Das Autorenfeld zur Löschung markieren
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Das Titel-Feld zur Löschung markieren
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Dokument öffnen
          with gr.Redactor("source.xlsx") as redactor:

              # Redaktionsregeln ausführen
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
    title: "Metadaten in XLSX mit Python löschen"
    exclude: "XLSX"
    description: "Verwenden Sie Python, um private Metadaten in Ihren XLSX-Dateien zu bereinigen. Ein guter Weg, um Dateien vor dem Teilen oder Veröffentlichen bereitzustellen."
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