
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: de
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Privaten Text aus POWERPOINT mit Python entfernen"
head_description: "Schützen Sie schnell sensible Daten in Ihren POWERPOINT-Dateien mit GroupDocs.Redaction for Python via .NET und Python."

############################# Header ############################
title: "Suchen und verstecken Sie empfindlichen Text in POWERPOINT-Dateien mit Python" 
description: "Verwenden Sie GroupDocs.Redaction for Python via .NET und Python, um private Inhalte in Ihren POWERPOINT-Dateien zu entfernen oder zu verbergen. Halten Sie alles vertraulich, egal ob es sich um persönliche oder geschäftliche Informationen handelt."
subtitle: "Was Sie mit GroupDocs.Redaction for Python via .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern die Werkzeuge zur Bereinigung von POWERPOINT-Dateien umfassend. Entfernen Sie Inhalte, Bilder, Notizen und Metadaten effizient.

############################# Steps ############################
steps:
    enable: true
    title: "So bereinigen Sie Text in Powerpoint-Dateien"
    content: |
      Verwenden Sie GroupDocs.Redaction for Python via .NET in Ihren Python via .NET-Apps, um sensible Daten schnell zu entfernen oder zu ersetzen.
      
      1. Starten Sie einen Redactor und öffnen Sie Ihre Powerpoint-Datei.
      2. Wählen Sie die benötigten Schwärzungsoptionen.
      3. Geben Sie den zu suchenden Text und das Ersetzungstextfeld ein.
      4. Führen Sie die Schwärzung durch und speichern Sie die endgültige Datei.
   
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

        # So schwärzen Sie Text in einer POWERPOINT-Datei

        # Wählen Sie die Schwärzungsoptionen aus, die Sie benötigen
        # Geben Sie an, welcher Text gesucht und durch was ersetzt werden soll
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Laden Sie Ihre Datei mit dem Redactor-Generator
        with gr.Redactor("input.pptx") as redactor:

            # Führen Sie die Schwärzung aus und speichern Sie die finale POWERPOINT-Datei
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Werkzeuge zum Entfernen privater Daten"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht Ihnen das Bereinigen privater Inhalte in vielen Formaten. Perfekt zum sicheren Teilen oder Archivieren von Dateien."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Überblick über Schwärzungsoptionen und -werkzeuge"
  features:
    # feature loop
    - title: "Text finden und ersetzen"
      content: "Schnell sensible Wörter oder Nummern austauschen. Funktioniert mit Regex und Schlüsselsuche."

    # feature loop
    - title: "Teile von Bildern verbergen"
      content: "Decken Sie spezifische Bereiche mit Formen oder Überlagerungen ab. Passen Sie die Visuals Ihren Bedürfnissen an."

    # feature loop
    - title: "Verborgene Informationen löschen"
      content: "Löschen Sie Metadaten wie wer die Datei erstellt hat, Kommentare oder Änderungsverlauf."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Muster-Schwärzung mit Regex"
      content: |
        Verwenden Sie reguläre Ausdrücke, um Muster wie E-Mails, Kontaktdaten oder andere private Details zu finden und zu schwärzen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Legen Sie ein E-MAIL-Regex-Muster und den Ersetzungswert fest
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Öffnen Sie die Präsentation zur Bereinigung
          with gr.Redactor("source.pptx") as redactor:

              # Wenden Sie die Schwärzungs-Schritte an
              result = redactor.apply(redaction)

              # Speichern Sie Ihre endgültige geschwärzte Datei
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Inhalte in POWERPOINT mit Python schwärzen"
    exclude: "POWERPOINT"
    description: "Mit Python können Sie POWERPOINT-Dateien bereinigen, indem Sie private Texte entfernen oder verbergen. Halten Sie alles sicher."
    items: 
        # format loop 1
        - name: "PDF redigieren"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Word redigieren"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "MS Word und Open Office Dokumente"
          
        # format loop 3
        - name: "Excel redigieren"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "MS Excel und Open Office Tabellenkalkulationen"

        # format loop 4
        - name: "PowerPoint redigieren"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint und Open Office Präsentationen"

        # format loop 5
        - name: "DOCX redigieren"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML Dokument"
          
        # format loop 6
        - name: "XLSX redigieren"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML Tabellenkalkulation"
          
        # format loop 7
        - name: "PPTX redigieren"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML Präsentation"


---