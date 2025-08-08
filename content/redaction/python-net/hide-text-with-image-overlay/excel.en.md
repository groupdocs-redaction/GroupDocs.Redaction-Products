
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Content in EXCEL Using Python Overlays"
head_description: "With GroupDocs.Redaction for Python via .NET, you can cover text in EXCEL files using solid color overlays. A simple way to protect private content."

############################# Header ############################
title: "Overlay Text Hiding for EXCEL in Python" 
description: "Write Python code to hide text and secure information in your EXCEL files. Keep your documents safe and clean."
subtitle: "What You Get with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Why Use GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET is built for Python developers who need to hide or remove content in EXCEL files. Work with text, images, and metadata easily.

############################# Steps ############################
steps:
    enable: true
    title: "Hide Sensitive Data in Excel"
    content: |
      GroupDocs.Redaction for Python via .NET makes it easy for Python via .NET developers to prepare documents before sharing.
      
      1. Create a Redactor and open your Excel file.
      2. Choose the redaction settings that fit your task.
      3. Enter the text or phrase to cover and pick a color.
      4. Apply redaction and save the file.
   
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

        # Use overlays to hide text in EXCEL

        # Pick your redaction settings
        # Choose what to hide and a color to use
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Start by loading your file with Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Apply changes and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Helpful Tools for Redacting Data"
  description: "GroupDocs.Redaction for Python via .NET lets you hide or remove data in documents while keeping the layout and content clear."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Built to protect your files"
  features:
    # feature loop
    - title: "Hide or change text"
      content: "Find and replace any part of the text that needs to be hidden."

    # feature loop
    - title: "Cover images and visuals"
      content: "Add overlays to remove sensitive parts of pictures or charts."

    # feature loop
    - title: "Clear hidden metadata"
      content: "Remove background info like author names or timestamps."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Using Regex"
      content: |
        Learn how to use regex patterns to find and hide content.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Add the regex pattern and color settings
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Open the file you want to clean up
          with gr.Redactor("source.xslx") as redactor:

              # Apply the redaction
              result = redactor.apply(redaction)

              # Save the redacted version
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
    title: "Protect EXCEL with Python Redactions"
    exclude: "EXCEL"
    description: "Hide content in EXCEL using square overlays or remove it completely with features from Python."
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