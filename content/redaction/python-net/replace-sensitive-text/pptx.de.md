
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: de
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Privaten Text aus PPTX mit Python entfernen"
head_description: "Schützen Sie Ihre PPTX-Dateien mit GroupDocs.Redaction for Python via .NET und Python. Finden und entfernen Sie schnell vertrauliche Inhalte."

############################# Header ############################
title: "Privaten Text in PPTX-Dateien mit Python bearbeiten oder entfernen" 
description: "Verwenden Sie GroupDocs.Redaction for Python via .NET und Python, um empfindliche Daten in Ihren PPTX-Dokumenten zu finden und zu bereinigen. Halten Sie persönliche oder geschäftliche Dateien privat."
subtitle: "Was Sie mit GroupDocs.Redaction for Python via .NET tun können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gibt Python-Entwicklern die vollständige Kontrolle über PPTX-Inhalte. Bereinigen Sie Texte, Bilder, Notizen und Metadaten effizient.

############################# Steps ############################
steps:
    enable: true
    title: "So schwärzen Sie Text in Pptx-Dokumenten"
    content: |
      Verwenden Sie GroupDocs.Redaction for Python via .NET in Ihrer Python via .NET-Umgebung, um sensible Inhalte schnell zu verbergen oder zu entfernen.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Pptx-Datei.
      2. Wählen Sie Ihre Schwärzungsoptionen.
      3. Geben Sie den zu suchenden Text und das Ersetzungstextfeld ein.
      4. Wenden Sie die Schwärzung an und speichern Sie Ihre aktualisierte Datei.
   
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

        # So schwärzen Sie Text in einer PPTX-Datei

        # Legen Sie Ihre Schwärzungsoptionen fest
        # Wählen Sie den zu suchenden Text und den Ersetzungstext
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Verwenden Sie den Redactor-Generator, um Ihre Datei zu laden
        with gr.Redactor("input.pptx") as redactor:

            # Führen Sie die Schwärzung aus und speichern Sie die aktualisierte PPTX
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Weitere Schwärzungsfunktionen"
  description: "GroupDocs.Redaction for Python via .NET unterstützt Sie dabei, sensible Daten in verschiedenen Formaten zu entfernen oder zu verbergen. Dokumente sicher teilen."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Übersicht über Schwärzungsfunktionen"
  features:
    # feature loop
    - title: "Privaten Text ersetzen"
      content: "Suchen Sie nach und tauschen Sie spezifische Wörter oder Phrasen aus. Funktioniert mit Regex und intelligenten Filtern."

    # feature loop
    - title: "Privaten Bilder abdecken"
      content: "Überlagern oder verbergen Sie spezifische Bereiche in Bildern. Passen Sie Farb- und Layout-Einstellungen an."

    # feature loop
    - title: "Verborgene Informationen entfernen"
      content: "Bereinigen Sie Metadaten wie Autorennamen, Zeitstempel oder interne Notizen."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Schwärzen nach Muster mit Regex"
      content: |
        Verwenden Sie reguläre Ausdrücke, um Textmuster wie E-Mail-Adressen, Telefonnummern oder IDs zu durchsuchen und bereinigen.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Legen Sie ein E-MAIL-Regex-Muster und den Ersetzungstext fest
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Öffnen Sie die Datei, die Sie bearbeiten möchten
          with gr.Redactor("source.pptx") as redactor:

              # Führen Sie den Schwärzungsprozess durch
              result = redactor.apply(redaction)

              # Speichern Sie die bereinigte Datei
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
    title: "Inhalte in PPTX mit Python schwärzen"
    exclude: "PPTX"
    description: "Mit Python können Sie sensible Texte aus PPTX-Dokumenten entfernen und Ihre Daten sicher halten."
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