
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: de
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Privaten Text aus EXCEL mit Python entfernen"
head_description: "Bereinigen Sie schnell sensible Informationen aus Ihren EXCEL-Dateien mit GroupDocs.Redaction for Python via .NET und Python."

############################# Header ############################
title: "Suchen und Entfernen privater Texte in EXCEL-Dateien mit Python" 
description: "Verwenden Sie Python und GroupDocs.Redaction for Python via .NET, um sensible Details aus Ihren EXCEL-Dokumenten zu bereinigen. Egal ob für die Arbeit oder persönliche Nutzung, Ihr Inhalt bleibt sicher."
subtitle: "Was Sie mit GroupDocs.Redaction for Python via .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET bietet Python-Entwicklern alles, was sie brauchen, um EXCEL-Dateien zu bereinigen. Entfernen Sie Texte, Bilder, Kommentare und Metadaten mit einfachem Code.

############################# Steps ############################
steps:
    enable: true
    title: "So schwärzen Sie Text in Excel-Dateien"
    content: |
      Mit GroupDocs.Redaction for Python via .NET in Ihren Python via .NET-Projekten können Sie private Inhalte leicht entfernen oder verbergen.
      
      1. Erstellen Sie einen Redactor und öffnen Sie Ihre Excel-Datei.
      2. Wählen Sie Ihre Schwärzungsoptionen.
      3. Geben Sie den zu suchenden Text und den Ersetzungstext ein.
      4. Führen Sie die Schwärzung aus und speichern Sie Ihre aktualisierte Datei.
   
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

        # So schwärzen Sie Text in einer EXCEL-Datei

        # Richten Sie Ihre Schwärzungsoptionen ein
        # Wählen Sie den Text, den Sie suchen und ersetzen möchten
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Öffnen Sie Ihre Datei mit dem Redactor-Generator
        with gr.Redactor("input.xslx") as redactor:

            # Änderungen anwenden und Ihre neue EXCEL-Datei speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungsfunktionen"
  description: "GroupDocs.Redaction for Python via .NET hilft Ihnen, sensible Inhalte in vielen Dateiformaten zu bereinigen. Halten Sie Ihre Dokumente sicher und teilbar."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Schwärzungswerkzeuge in Aktion"
  features:
    # feature loop
    - title: "Privaten Text ersetzen"
      content: "Suchen und ersetzen Sie jedes übereinstimmende Wort. Funktioniert mit intelligenter Suche und Regex-Mustern."

    # feature loop
    - title: "Bildinhalte abdecken"
      content: "Verstecken Sie Teile von Bildern mit Überlagerungen. Passen Sie an, wie es auf der Seite aussieht."

    # feature loop
    - title: "Verborgene Details entfernen"
      content: "Entfernen Sie Metadaten wie Autorinformationen, Kommentare und Zeitstempel."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Muster mit Regex schwärzen"
      content: |
        Verwenden Sie Regex, um Textmuster wie E-Mails, Telefonnummern oder Kontoinformationen zu finden und zu bereinigen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Definieren Sie Ihr E-MAIL-Regex-Muster und den Ersetzungstext
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Öffnen Sie die Datei, die Sie bereinigen möchten
          with gr.Redactor("source.xslx") as redactor:

              # Wenden Sie die Schwärzungsregeln an
              result = redactor.apply(redaction)

              # Speichern Sie die endgültige Version der Datei
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
    title: "Inhalte in EXCEL mit Python schwärzen"
    exclude: "EXCEL"
    description: "Verwenden Sie Python, um private Texte aus EXCEL-Dateien zu entfernen. Stellen Sie sicher, dass Ihr Inhalt sicher zu speichern oder zu teilen ist."
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