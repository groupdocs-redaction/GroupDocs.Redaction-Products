
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sensiblen Text In POWERPOINT Mit Python-Überlagerungen Verbergen"
head_description: "GroupDocs.Redaction for Python via .NET hilft Ihnen, private Inhalte in POWERPOINT-Dateien mit Farbüberlagerungen abzudecken. Halten Sie alles an Ort und Stelle, während Sie das Wesentliche verbergen."

############################# Header ############################
title: "Verbergen Sie Text In POWERPOINT-Präsentationen Mit Python" 
description: "Verwenden Sie Python und GroupDocs.Redaction for Python via .NET, um Überlagerungen hinzuzufügen und sensiblen Text in Ihren POWERPOINT-Folien zu verbergen."
subtitle: "Was Sie Mit GroupDocs.Redaction for Python via .NET Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Erfahren Sie Mehr Über GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET hilft Python-Entwicklern, POWERPOINT-Präsentationen zu säubern, indem sie Text, Bilder und versteckte Infos abdecken oder löschen.

############################# Steps ############################
steps:
    enable: true
    title: "Redigieren Sie Informationen In Powerpoint-Dateien"
    content: |
      Mit GroupDocs.Redaction for Python via .NET können Sie Powerpoint-Dateien für das Teilen mithilfe einfacher Schwärzungsverfahren vorbereiten.
      
      1. Erstellen Sie einen neuen Redactor und laden Sie Ihre Datei.
      2. Wählen Sie, was Sie verbergen möchten und wie Sie es anwenden.
      3. Fügen Sie das Suchmuster hinzu und legen Sie eine Überlagerungsfarbe fest.
      4. Wenden Sie die Schwärzung an und speichern Sie Ihr aktualisiertes Dokument.
   
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
        import groupdocs.pydrawing as grd

        # Verdecken Sie sensiblen Text in POWERPOINT mit Überlagerungen

        # Richten Sie ein, wie die Schwärzung funktionieren soll
        # Wählen Sie den Text und die Farbe, um ihn zu verbergen
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Verwenden Sie Redactor, um Ihre Präsentation zu laden
        with gr.Redactor("input.pptx") as redactor:

            # Schwärzen und speichern Sie Ihre Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Einfache Möglichkeiten, Informationen Zu Verbergen"
  description: "GroupDocs.Redaction for Python via .NET macht es einfach, sensible Teile von Dokumenten zu verbergen oder zu entfernen - perfekt für rechtliche, persönliche oder geschäftliche Zwecke."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Nützliche Werkzeuge für den Datenschutz"
  features:
    # feature loop
    - title: "Text Finden Und Ersetzen"
      content: "Suchen Sie nach Wörtern oder Zahlen und verbergen oder ändern Sie diese."

    # feature loop
    - title: "Teile Von Bildern Abdecken"
      content: "Fügen Sie Überlagerungen hinzu, um vollständige Bilder oder ausgewählte Stellen zu verbergen."

    # feature loop
    - title: "Löschen Sie Versteckte Informationen"
      content: "Löschen Sie Metadaten wie Namen oder Zeitstempel, die Nutzer nicht sehen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mit Regex Suchen, Um Text Zu Redigieren"
      content: |
        Sehen Sie, wie reguläre Ausdrücke Ihnen helfen, Text in Ihren Folien zu finden und zu verbergen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definieren Sie das Muster und die Überlagerungsfarbe
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Öffnen Sie Ihre POWERPOINT-Datei
          with gr.Redactor("source.pptx") as redactor:

              # Führen Sie die Schwärzung durch
              result = redactor.apply(redaction)

              # Speichern Sie die endgültige Version
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Verbergen Sie Text In POWERPOINT Mit Python"
    exclude: "POWERPOINT"
    description: "Verwenden Sie Python, um Überlagerungen hinzuzufügen oder Inhalte aus Ihren POWERPOINT-Folien zu entfernen, um private Daten zu schützen."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Präsentation"


---