
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: de
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Sensible Inhalte in PDF mit Python schwärzen"
head_description: "Schützen Sie private Details in Ihren PDF-Dokumenten mit GroupDocs.Redaction for Python via .NET. Finden und verbergen Sie vertrauliche Informationen schnell."

############################# Header ############################
title: "Sensible Inhalte aus PDF-Dateien mit Python entfernen" 
description: "Verwenden Sie Python und GroupDocs.Redaction for Python via .NET, um private, rechtliche oder persönliche Daten aus Ihren PDF-Dateien zu suchen und zu entfernen."
subtitle: "Was Sie mit GroupDocs.Redaction for Python via .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Was ist GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern alle erforderlichen Werkzeuge, um Inhalte in PDF-Dateien zu schwärzen – Texte, Bilder, Kommentare und mehr.

############################# Steps ############################
steps:
    enable: true
    title: "So schwärzen Sie Inhalte in Pdf-Dateien"
    content: |
      Schützen Sie Ihren Inhalt in jeder Python via .NET-App mit GroupDocs.Redaction for Python via .NET.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Pdf-Datei.
      2. Wählen Sie die gewünschten Schwärzungsoptionen.
      3. Geben Sie den zu suchenden Text und das Ersetzungstextfeld ein.
      4. Wenden Sie die Schwärzung an und speichern Sie Ihre Datei.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungsfunktionen"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht das Verbergen privater Inhalte in vielen Dateiformaten. Halten Sie Ihre Daten sicher und bereit zum Teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Werkzeuge zur Schwärzung von Texten, Bildern und Metadaten"
  features:
    # feature loop
    - title: "Privaten Text finden und ersetzen"
      content: "Suchen und ersetzen Sie übereinstimmenden Text. Funktioniert mit Regex und Schlüsselsuche."

    # feature loop
    - title: "Verdeckte private Bilder"
      content: "Maskieren Sie vollständige Bilder oder Teile davon mit Überlagerungen. Passen Sie die Anzeigeeinstellungen an."

    # feature loop
    - title: "Verborgene Metadaten löschen"
      content: "Entfernen Sie versteckte Informationen wie Autorennamen, Zeitstempel und Überarbeitungsnotizen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mit Regex schwärzen"
      content: |
        Verwenden Sie Regex, um Muster wie E-Mails, IDs oder Nummern zu finden und zu entfernen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Legen Sie ein Regex-Muster und den Ersetzungstext fest
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Öffnen Sie die Datei, die Sie bereinigen möchten
          with gr.Redactor("source.pdf") as redactor:

              # Wenden Sie Ihre Schwärzungsregeln an
              result = redactor.apply(redaction)

              # Speichern Sie Ihre geschwärzte Datei
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
    title: "Inhalte in PDF mit Python schwärzen"
    exclude: "PDF"
    description: "Halten Sie persönliche oder geschäftliche Daten durch Schwärzen von Texten in PDF-Dateien mit Python-Tools sicher."
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