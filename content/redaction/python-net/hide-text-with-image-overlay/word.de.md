
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: de
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Verbergen Sie Text In WORD Mit Python-Überlagerungen"
head_description: "Mit GroupDocs.Redaction for Python via .NET können Sie private Texte in WORD-Dokumenten einfach mithilfe von Farbblöcken verbergen. Ihr Layout bleibt unberührt."

############################# Header ############################
title: "Verwenden Sie Überlagerungen, um Text In WORD Mit Python Zu Verbergen" 
description: "Schützen Sie wichtige Informationen in WORD-Dokumenten, indem Sie Überlagerungsblöcke mit Python und GroupDocs.Redaction for Python via .NET platzieren."
subtitle: "Was Sie Mit GroupDocs.Redaction for Python via .NET Tun Können" 

############################# About ############################
about:
    enable: true
    title: "Lernen Sie GroupDocs.Redaction for Python via .NET Kennen"
    link: "/redaction/python-net/"
    link_title: "Mehr erfahren"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Mit GroupDocs.Redaction for Python via .NET können Python-Entwickler Inhalte in WORD-Dokumenten - wie Namen, Zahlen und mehr - verbergen oder löschen.

############################# Steps ############################
steps:
    enable: true
    title: "Private Inhalte In Word Redigieren"
    content: |
      GroupDocs.Redaction for Python via .NET erleichtert es Python via .NET-Entwicklern, sensible Daten schnell zu verbergen.
      
      1. Erstellen Sie einen Redactor und laden Sie Ihre Word-Datei.
      2. Richten Sie die Schwärzungsoptionen ein.
      3. Wählen Sie den zu verbergenden Text und die Überlagerungsfarbe aus.
      4. Führen Sie die Schwärzung durch und speichern Sie Ihre Datei.
   
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

        # Bedecken Sie Text In WORD Mit Überlagerungen

        # Entscheiden Sie, was geschwärzt werden soll
        # Geben Sie den Text ein und legen Sie die Farbe fest
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Laden Sie die Datei mit Redactor
        with gr.Redactor("input.docx") as redactor:

            # Schwärzen und speichern
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mehr Wege, Informationen Zu Verbergen"
  description: "Verwenden Sie GroupDocs.Redaction for Python via .NET, um Ihre Dateien zu reinigen, indem Sie sichtbare und unsichtbare Inhalte verbergen, ohne ihr Erscheinungsbild zu verändern."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Datenschutzorientierte Funktionen"
  features:
    # feature loop
    - title: "Text Verstecken Oder Ersetzen"
      content: "Schützen Sie wichtige Informationen, indem Sie Wörter entfernen oder austauschen."

    # feature loop
    - title: "Bilder Abdecken"
      content: "Blockieren Sie sensible Bilder mit festen Formen."

    # feature loop
    - title: "Versteckte Daten Löschen"
      content: "Entfernen Sie Metadaten, die möglicherweise systembezogene oder Benutzerinformationen enthalten."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Text Finden Und Verbergen Mit Regex"
      content: |
        Dieses Beispiel zeigt, wie man reguläre Ausdrücke zur Suche und zum Verbergen von Inhalten verwendet.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Legen Sie das Muster und die Überlagerungsfarbe fest
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Öffnen Sie die Datei zur Bearbeitung
          with gr.Redactor("source.docx") as redactor:

              # Führen Sie die Schwärzung durch
              result = redactor.apply(redaction)

              # Speichern Sie Ihre aktualisierte Kopie
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
    title: "WORD-Inhalt Mit Python Schützen"
    exclude: "WORD"
    description: "Verwenden Sie Python, um sensible Informationen in WORD-Dateien zu verbergen oder zu löschen, ohne die Struktur oder das Layout zu beeinträchtigen."
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