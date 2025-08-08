
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: en
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Text in XLSX Using Python and Overlays"
head_description: "GroupDocs.Redaction for Python via .NET helps you hide text in XLSX files by adding color overlays. Keep your data private without changing the file layout."

############################# Header ############################
title: "Hide Text in XLSX Files Using Python Overlays" 
description: "Protect sensitive text in your XLSX files with GroupDocs.Redaction for Python via .NET and Python by placing simple overlays."
subtitle: "What You Get with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "What GroupDocs.Redaction for Python via .NET Can Do"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers the tools to hide or delete text, images, and more in XLSX files.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Data in Xlsx Files"
    content: |
      GroupDocs.Redaction for Python via .NET lets Python via .NET developers hide private info with just a few lines of code.
      
      1. Start by creating a Redactor and load your Xlsx file.
      2. Set the redaction options that work for your case.
      3. Add the text pattern you want to hide and choose a color.
      4. Run redaction and save your file.
   
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

        # Hide private content in XLSX with overlays

        # Set redaction preferences
        # Choose text to cover and overlay color
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Use Redactor to load your file
        with gr.Redactor("input.xslx") as redactor:

            # Redact and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Helpful Redaction Tools"
  description: "GroupDocs.Redaction for Python via .NET lets you hide or remove content from many file types. Keep personal or business info protected."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Easy-to-use redaction options"
  features:
    # feature loop
    - title: "Find and Edit Text"
      content: "Search for specific text and replace or hide it."

    # feature loop
    - title: "Cover Image Content"
      content: "Draw overlays over pictures to block out private areas."

    # feature loop
    - title: "Remove Metadata"
      content: "Clean up background info before sharing your files."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Text Using Regex Patterns"
      content: |
        This example shows how to find and hide content using regular expressions.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Set your text pattern and overlay color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Open the file you want to edit
          with gr.Redactor("source.xslx") as redactor:

              # Apply redaction rules
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
    title: "Hide Data in XLSX with Python"
    exclude: "XLSX"
    description: "Use Python tools to hide or remove sensitive parts of your XLSX files quickly and easily."
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