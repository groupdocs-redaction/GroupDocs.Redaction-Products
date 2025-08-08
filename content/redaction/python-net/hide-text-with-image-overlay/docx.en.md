
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Text in DOCX with Overlays Using Python"
head_description: "Protect sensitive text in DOCX files with GroupDocs.Redaction for Python via .NET. Add simple square overlays without changing your layout."

############################# Header ############################
title: "Hide Content in DOCX Using Python" 
description: "Use Python to cover private content in DOCX files. Ideal for legal, personal, or business documents."
subtitle: "Key Features of GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET helps Python developers hide or remove private content in DOCX files. You can block out text, images, and even hidden metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Private Info Hidden in Docx"
    content: |
      With GroupDocs.Redaction for Python via .NET, Python via .NET developers can hide content in just a few lines.
      
      1. Create a Redactor and open your file.
      2. Choose your redaction settings.
      3. Enter the text to hide and pick a color.
      4. Apply and save the redacted version.
   
    code:
      platform: "python-net"
      copy_title: "Copy"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Sample redactions"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "click to copy"
        copy_done: "copied"
      links:
        #  loop
        - title: "More examples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # Hide content in DOCX using overlays

        # Configure your redaction options
        # Define text and overlay color
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Set up the Redactor and load your file
        with gr.Redactor("input.docx") as redactor:

            # Redact and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Extra Redaction Tools"
  description: "GroupDocs.Redaction for Python via .NET supports different file types so you can protect any content with ease."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Built-in Redaction Features"
  features:
    # feature loop
    - title: "Find and Edit Text"
      content: "Search for keywords and hide or replace them quickly."

    # feature loop
    - title: "Cover Image Areas"
      content: "Block out sensitive areas in scanned pages or photos."

    # feature loop
    - title: "Clean Metadata"
      content: "Remove hidden info that could expose details."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Find Text with Regex and Redact"
      content: |
        Learn how to use regular expressions to find and hide text.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Set pattern and color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Open the file to redact
          with gr.Redactor("source.docx") as redactor:

              # Run the redaction process
              result = redactor.apply(redaction)

              # Save your clean document
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Copy"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "click to copy"
          copy_done: "copied"
        top_links:
          #  loop
          - title: "Download result"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "More examples"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Ready to get started?"
  description: "Try GroupDocs.Redaction features for free or request a license"
  items:
    #  loop
    - title: "PyPi download"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licensing"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Secure DOCX Files with Python"
    exclude: "DOCX"
    description: "Cover or delete sensitive content in DOCX documents using simple tools from Python."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Presentation"


---