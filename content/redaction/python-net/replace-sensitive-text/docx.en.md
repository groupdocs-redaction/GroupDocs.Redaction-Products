
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remove Private Text from DOCX Using Python"
head_description: "Keep your DOCX files safe by removing sensitive content with GroupDocs.Redaction for Python via .NET and Python. Quick and easy redaction."

############################# Header ############################
title: "Edit or Hide Private Text in DOCX Files with Python" 
description: "Take control of your DOCX content using GroupDocs.Redaction for Python via .NET and Python. Great for personal or business use."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers the tools to clean up content in DOCX files. Redact text, images, comments, and metadata easily.

############################# Steps ############################
steps:
    enable: true
    title: "How to Clean Text in Docx Files"
    content: |
      Use GroupDocs.Redaction for Python via .NET inside your Python via .NET apps to remove or hide private text. Fast and simple redaction process.
      
      1. Create a Redactor and open your Docx file.
      2. Set the redaction rules you want.
      3. Choose the text to find and what to replace it with.
      4. Run redaction and save your new file.
   
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

        # How to redact text in a DOCX file

        # Pick your redaction settings
        # Enter what to search and what to replace it with
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Open your file with the Redactor constructor
        with gr.Redactor("input.docx") as redactor:

            # Apply changes and save the updated DOCX file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Tools"
  description: "GroupDocs.Redaction for Python via .NET lets you delete or mask sensitive text across different formats. Share clean and secure files with confidence."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tools for text, image, and metadata redaction"
  features:
    # feature loop
    - title: "Find and Replace Private Text"
      content: "Search for specific words or patterns and swap them out. Works with regular expressions and keyword options."

    # feature loop
    - title: "Cover Sensitive Images"
      content: "Overlay or hide image areas. Change colors, opacity, and size as needed."

    # feature loop
    - title: "Remove Metadata"
      content: "Erase hidden info like author names, time stamps, and internal notes to keep your files private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex to Redact Patterns"
      content: |
        Search for emails, IDs, or patterns using regular expressions and replace them easily.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Set an EMAIL regex pattern and replacement text
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Open the file you want to clean
          with gr.Redactor("source.docx") as redactor:

              # Apply your redaction setup
              result = redactor.apply(redaction)

              # Save the redacted document
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redact Content in DOCX Using Python"
    exclude: "DOCX"
    description: "Use Python to remove sensitive text from DOCX files. Keep personal and work documents protected."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML Presentation"


---