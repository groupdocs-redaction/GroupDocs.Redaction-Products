
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Text in PPTX Using Python and Overlays"
head_description: "Cover sensitive content in your PPTX files with colored overlays using GroupDocs.Redaction for Python via .NET. Your layout stays the same."

############################# Header ############################
title: "Protect Text in PPTX with Overlays and Python" 
description: "Use GroupDocs.Redaction for Python via .NET and Python to hide private info in PPTX presentations by covering it with color blocks."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "What GroupDocs.Redaction for Python via .NET Offers"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       With GroupDocs.Redaction for Python via .NET, Python developers can cover or delete content in PPTX files—from text to images to hidden data.

############################# Steps ############################
steps:
    enable: true
    title: "Redact Private Info in Pptx"
    content: |
      Use GroupDocs.Redaction for Python via .NET to protect your presentations in a few simple steps.
      
      1. Create a Redactor and load the file you want to edit.
      2. Choose the redaction settings that match your needs.
      3. Set the text pattern and choose a color for the overlay.
      4. Apply redaction and save your changes.
   
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

        # Use overlays to hide text in PPTX

        # Define redaction settings
        # Choose the text and color
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Start by loading your file with Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Redact and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Options"
  description: "GroupDocs.Redaction for Python via .NET gives you tools to hide or clean up data in different file formats without touching the layout."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Useful features for privacy"
  features:
    # feature loop
    - title: "Change or Hide Text"
      content: "Protect sensitive info by editing or hiding it from view."

    # feature loop
    - title: "Hide Images or Parts"
      content: "Draw overlays to block full images or selected areas."

    # feature loop
    - title: "Remove Hidden Details"
      content: "Erase metadata that may include private or system info."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex to Find Text"
      content: |
        See how regular expressions help you find and hide sensitive content.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Set the text pattern and overlay color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Open your file for redaction
          with gr.Redactor("source.pptx") as redactor:

              # Apply the redaction
              result = redactor.apply(redaction)

              # Save the edited file
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
    title: "Protect PPTX Slides Using Python"
    exclude: "PPTX"
    description: "Use Python to cover or erase private content in PPTX files while keeping the slides looking clean."
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