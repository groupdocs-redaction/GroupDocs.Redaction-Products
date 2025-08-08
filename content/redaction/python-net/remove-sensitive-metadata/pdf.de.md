
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten aus PDF mit Python entfernen"
head_description: "GroupDocs.Redaction for Python via .NET hilft dabei, versteckte Daten aus PDF-Dateien zu löschen. Vermeiden Sie das Teilen privater Informationen, indem Sie Metadaten bearbeiten oder löschen."

############################# Header ############################
title: "Metadaten in PDF-Dateien mit Python löschen" 
description: "Verwenden Sie Python und GroupDocs.Redaction for Python via .NET, um sensible Informationen aus Ihren PDF-Dokumenten zu entfernen. Behalten Sie die Kontrolle über Ihre Daten mit leistungsstarken Redaktionswerkzeugen."
subtitle: "Was GroupDocs.Redaction for Python via .NET bieten kann" 

############################# About ############################
about:
    enable: true
    title: "Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction hilft Python Entwicklern, PDF-Dokumente sauber zu halten, indem Texte, Bildinhalte und Metadaten entfernt werden.

############################# Steps ############################
steps:
    enable: true
    title: "Metadaten in Pdf-Dokumenten löschen"
    content: |
      Beginnen Sie mit dem Schutz Ihrer Dateien mithilfe von GroupDocs.Redaction in Python via .NET-Apps.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Pdf-Datei.
      2. Fügen Sie Regeln hinzu, um versteckte Metadaten zu entfernen.
      3. Führen Sie die Redaktion durch, um Metadateneinträge zu löschen.
      4. Speichern Sie die Datei ohne die versteckten Daten.
   
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

        # Metadaten aus PDF-Dokumenten entfernen

        # Zu entfernende Metadatenfelder auswählen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Datei mit Redactor öffnen
        with gr.Redactor("input.pdf") as redactor:

            # Redaktion durchführen und das Dokument speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Versteckte Inhalte in Dokumenten bereinigen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht es Ihnen, sicher Text, Bilder und Metadaten zu entfernen. Halten Sie Ihre Dateien privat und sicher, bevor Sie sie teilen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Optionen zur Redaktion"
  features:
    # feature loop
    - title: "Textentfernung"
      content: "Suchen und entfernen Sie sensible Texte in Dokumenten."

    # feature loop
    - title: "Bildmaskierung"
      content: "Bestimmte Teile von Bildern einfach mit Überlagerungen verbergen."

    # feature loop
    - title: "Aufräumen von Metadaten"
      content: "Beseitigen Sie unerwünschte Metadaten, die möglicherweise vertrauliche Informationen offenbaren."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Metadatenfelder bearbeiten und entfernen"
      content: |
        Dieses Beispiel erklärt, wie man versteckte Metadaten in einer PDF-Datei löscht.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Autoren-Metadaten entfernen
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Titel-Metadaten entfernen
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Öffnen Sie die Datei in Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Redaktionsprozess durchführen
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
    title: "Metadaten aus PDF mit Python löschen"
    exclude: "PDF"
    description: "Entfernen Sie versteckte Datenfelder in PDF mit Python. Ein intelligenter Weg, die Privatsphäre zu schützen und Ihre Dateien aufgeräumt zu halten."
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