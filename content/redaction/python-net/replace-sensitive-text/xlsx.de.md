
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: de
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Privaten Text aus XLSX mit Python entfernen"
head_description: "Schützen Sie Ihre XLSX-Dateien, indem Sie sensible Daten mit GroupDocs.Redaction for Python via .NET und Python verbergen oder entfernen."

############################# Header ############################
title: "Privaten Text in XLSX-Dateien mit Python verbergen oder löschen" 
description: "Mit GroupDocs.Redaction for Python via .NET und Python können Sie privaten Text aus XLSX-Dokumenten schnell und zuverlässig entfernen."
subtitle: "Was Sie mit GroupDocs.Redaction for Python via .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gibt Python-Entwicklern alles, was sie benötigen, um private Daten in XLSX-Dateien zu entfernen oder zu verbergen – Texte, Bilder, Notizen und mehr.

############################# Steps ############################
steps:
    enable: true
    title: "So entfernen Sie Inhalte in Xlsx-Dateien"
    content: |
      Verwenden Sie GroupDocs.Redaction for Python via .NET in Ihrer Python via .NET-App, um sensible Inhalte schnell zu bereinigen oder zu verbergen.
      
      1. Starten Sie einen Redactor und laden Sie die Xlsx-Datei.
      2. Wählen Sie die benötigten Schwärzungsoptionen.
      3. Legen Sie den zu suchenden Text und das Ersetzungstextfeld fest.
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

        # So schwärzen Sie Text in einer XLSX-Datei

        # Wählen Sie Ihre Schwärzungspräferenzen aus
        # Legen Sie die Such- und Ersetzungswerte fest
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Verwenden Sie den Redactor-Generator, um Ihre Datei zu laden
        with gr.Redactor("input.xslx") as redactor:

            # Änderungen anwenden und die aktualisierte XLSX speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Zusätzliche Schwärzungsfunktionen"
  description: "GroupDocs.Redaction for Python via .NET erleichtert das Verbergen oder Löschen privater Informationen in verschiedenen Dateiformaten. Teilen Sie nur das, was gesehen werden soll."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Funktionen zum Schwärzen von Texten, Bildern und Metadaten"
  features:
    # feature loop
    - title: "Privaten Text ersetzen"
      content: "Finden und tauschen Sie übereinstimmende Wörter oder Muster aus. Unterstützt Regex und Schlüsselwortsuche."

    # feature loop
    - title: "Sensible Bilder verbergen"
      content: "Decken Sie Teile Ihrer Datei mit Überlagerungen ab. Passen Sie das Aussehen und die versteckten Inhalte an."

    # feature loop
    - title: "Metadaten löschen"
      content: "Entfernen Sie versteckte Informationen wie Dokumentenhistorie, Autorennamen oder interne Tags."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Verwenden Sie Regex-Muster zur Schwärzung"
      content: |
        Finden Sie Textmuster wie Telefonnummern, IDs oder E-Mails mit Regex und entfernen Sie diese schnell.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Legen Sie Ihr E-MAIL-Reguläres Ausdrucksmuster und den Ersetzungstext fest
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Öffnen Sie das Dokument, das Sie bereinigen möchten
          with gr.Redactor("source.xslx") as redactor:

              # Wenden Sie Schwärzungsregeln an
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
    title: "Inhalte in XLSX mit Python schwärzen"
    exclude: "XLSX"
    description: "Halten Sie sensible Daten privat, indem Sie sie aus XLSX-Dateien mit Python-Tools entfernen."
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