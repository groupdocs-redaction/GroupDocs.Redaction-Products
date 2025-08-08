
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Metadaten in POWERPOINT mit Python löschen"
head_description: "Schützen Sie Ihre POWERPOINT-Dokumente mit GroupDocs.Redaction for Python via .NET, indem Sie versteckte Metadaten löschen, die private Informationen enthalten können."

############################# Header ############################
title: "Metadaten aus POWERPOINT mit Python bereinigen" 
description: "Erlangen Sie bessere Kontrolle über Ihre Dateien mit Python-Tools, die schnell versteckte Metadaten entfernen."
subtitle: "Hauptmerkmale von GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction wurde für Python-Entwickler entwickelt, die bei der Redaktion von Text, Bildern und Metadaten in POWERPOINT-Dateien helfen.

############################# Steps ############################
steps:
    enable: true
    title: "Schritte zum Löschen von Metadaten in Powerpoint"
    content: |
      GroupDocs.Redaction ermöglicht es Ihren Python via .NET-Apps, in nur wenigen Klicks Metadaten aus Dokumenten zu bereinigen.
      
      1. Erstellen Sie eine Redactor-Instanz und öffnen Sie Ihr Dokument.
      2. Wählen Sie, welche Metadateneinträge gelöscht werden sollen.
      3. Konfigurieren und wenden Sie die Redaktions Einstellungen an.
      4. Speichern Sie die endgültige Version ohne die versteckten Daten.
   
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

        # Metadaten aus POWERPOINT löschen

        # Wählen Sie die Metadaten aus, die entfernt werden sollen
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Laden Sie die Datei in den Redaktor
        with gr.Redactor("input.pptx") as redactor:

            # Bereinigen und Dokument speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Erweiterte Redaktion für POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET hilft, Dateien zu bereinigen, indem sensible Inhalte gelöscht werden. Funktioniert mit mehreren Dateiformaten und Datentypen."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Hauptoptionen zur Redaktion"
  features:
    # feature loop
    - title: "Private Texte löschen"
      content: "Suchen und entfernen Sie Wörter oder Phrasen, die nicht geteilt werden sollten."

    # feature loop
    - title: "Bildabschnitte abdecken"
      content: "Verstecken Sie Teile von Bildern, die private oder sensible Visuals enthalten."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie Metadatenfelder wie Autor, Titel und Kommentare aus Ihren Dateien."
      
  code_samples_ext:
    # code sample ext loop
    - title: "So entfernen Sie versteckte Metadaten"
      content: |
        Dieses Beispiel zeigt, wie Sie eingebettete Metadaten wie Autor und Titel aus Ihrem POWERPOINT-Dokument löschen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Autorenfeld löschen
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Titel-Feld löschen
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Öffnen Sie die Datei im Redaktor
          with gr.Redactor("source.pptx") as redactor:

              # Redaktion durchführen
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
    title: "Bereinigung von Metadaten für POWERPOINT mit Python"
    exclude: "POWERPOINT"
    description: "Verwenden Sie Python, um private Daten aus POWERPOINT-Dokumenten zu löschen. Ideal für rechtliche, geschäftliche und persönliche Zwecke."
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