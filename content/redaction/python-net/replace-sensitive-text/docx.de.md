
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: de
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Privaten Text aus DOCX mit Python entfernen"
head_description: "Schützen Sie Ihre DOCX-Dateien, indem Sie empfindliche Inhalte mit GroupDocs.Redaction for Python via .NET und Python entfernen. Schnelle und gründliche Schwärzung."

############################# Header ############################
title: "Privaten Text in DOCX-Dateien mit Python bearbeiten oder verbergen" 
description: "Erhalten Sie die Kontrolle über Ihre DOCX-Inhalte mithilfe von GroupDocs.Redaction for Python via .NET und Python. Ideal für persönliche oder geschäftliche Nutzung."
subtitle: "Was Sie mit GroupDocs.Redaction for Python via .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern die Werkzeuge zur Bereinigung von Inhalten in DOCX-Dateien. Schwärzen Sie Texte, Bilder, Kommentare und Metadaten effektiv.

############################# Steps ############################
steps:
    enable: true
    title: "So bereinigen Sie Text in Docx-Dateien"
    content: |
      Verwenden Sie GroupDocs.Redaction for Python via .NET in Ihren Python via .NET-Apps, um privaten Text zu entfernen oder zu verbergen. Schneller und einfacher Schwärzungsprozess.
      
      1. Erstellen Sie einen Redactor und öffnen Sie Ihre Docx-Datei.
      2. Legen Sie die gewünschten Schwärzungsregeln fest.
      3. Wählen Sie den zu findenden Text und den Ersetzungstext.
      4. Führen Sie die Schwärzung aus und speichern Sie Ihre neue Datei.
   
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

        # So schwärzen Sie Text in einer DOCX-Datei

        # Wählen Sie Ihre Schwärzungsoptionen aus
        # Geben Sie an, was gesucht werden soll und was ersetzt werden soll
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Öffnen Sie Ihre Datei mit dem Redactor-Generator
        with gr.Redactor("input.docx") as redactor:

            # Änderungen anwenden und die aktualisierte DOCX-Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungswerkzeuge"
  description: "GroupDocs.Redaction for Python via .NET ermöglicht das Löschen oder Maskieren sensibler Texte in verschiedenen Formaten. Teilen Sie saubere und sichere Dateien mit Vertrauen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Werkzeuge zur Schwärzung von Texten, Bildern und Metadaten"
  features:
    # feature loop
    - title: "Privaten Text finden und ersetzen"
      content: "Suchen Sie nach bestimmten Wörtern oder Mustern und ersetzen Sie diese. Funktioniert mit regulären Ausdrücken und Schlüsselwortoptionen."

    # feature loop
    - title: "Verdeckte sensible Bilder"
      content: "Überlagern oder verbergen Sie Bildbereiche. Passen Sie Farben, Transparenz und Größe bei Bedarf an."

    # feature loop
    - title: "Metadaten entfernen"
      content: "Schwärzen Sie versteckte Informationen wie Autorennamen, Zeitstempel und interne Notizen, um Ihre Dateien privat zu halten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Regex, um Muster zu schwärzen"
      content: |
        Suchen Sie nach E-Mails, IDs oder Mustern mithilfe regulärer Ausdrücke und ersetzen Sie diese prompt.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Legen Sie ein E-MAIL-Reguläres Ausdrucksmuster und den Ersetzungstext fest
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Öffnen Sie die Datei, die Sie bereinigen möchten
          with gr.Redactor("source.docx") as redactor:

              # Wenden Sie Ihre Schwärzungssetups an
              result = redactor.apply(redaction)

              # Speichern Sie das geschwärzte Dokument
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
    title: "Inhalte in DOCX mit Python schwärzen"
    exclude: "DOCX"
    description: "Verwenden Sie Python, um vertrauliche Texte aus DOCX-Dateien zu entfernen. Halten Sie persönliche und Arbeitsdokumente geschützt."
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