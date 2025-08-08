
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Text in WORD Using Python Overlays"
head_description: "With GroupDocs.Redaction for Python via .NET, it’s easy to hide private text in WORD documents using color blocks. Your layout stays untouched."

############################# Header ############################
title: "Use Overlays to Hide Text in WORD with Python" 
description: "Protect key info in WORD documents by placing overlay blocks using Python and GroupDocs.Redaction for Python via .NET."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       With GroupDocs.Redaction for Python via .NET, Python developers can hide or delete content in WORD documents—like names, numbers, and more.

############################# Steps ############################
steps:
    enable: true
    title: "Redact Private Content in Word"
    content: |
      GroupDocs.Redaction for Python via .NET makes it easy for Python via .NET developers to hide sensitive data fast.
      
      1. Create a Redactor and load your Word file.
      2. Set up the redaction options.
      3. Pick the text to hide and the overlay color.
      4. Run the redaction and save your file.
   
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

        # Cover text in WORD using overlays

        # Choose what to redact
        # Enter the text and set the color
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Load the file using Redactor
        with gr.Redactor("input.docx") as redactor:

            # Redact and save
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Ways to Hide Info"
  description: "Use GroupDocs.Redaction for Python via .NET to clean your files by hiding visible and hidden content without changing how they look."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Privacy-focused features"
  features:
    # feature loop
    - title: "Hide or Replace Text"
      content: "Protect important info by removing or swapping out words."

    # feature loop
    - title: "Cover Images"
      content: "Block sensitive images with solid shapes."

    # feature loop
    - title: "Delete Hidden Data"
      content: "Remove metadata that may reveal system or user info."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Find and Hide Text with Regex"
      content: |
        This example shows how to use regular expressions to match and hide content.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Set the pattern and overlay color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Open the file to edit
          with gr.Redactor("source.docx") as redactor:

              # Apply redaction
              result = redactor.apply(redaction)

              # Save your updated copy
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
    title: "Protect WORD Content with Python"
    exclude: "WORD"
    description: "Use Python to hide or delete sensitive info in WORD files without affecting the structure or layout."
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