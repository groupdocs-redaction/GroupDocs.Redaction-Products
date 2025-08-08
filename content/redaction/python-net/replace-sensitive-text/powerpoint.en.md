
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remove Private Text from POWERPOINT Using Python"
head_description: "Quickly protect sensitive data in your POWERPOINT files using GroupDocs.Redaction for Python via .NET and Python."

############################# Header ############################
title: "Find and Hide Sensitive Text in POWERPOINT Files with Python" 
description: "Use GroupDocs.Redaction for Python via .NET and Python to remove or hide private content in your POWERPOINT files. Keep everything confidential whether it's personal or work-related."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers the tools to clean POWERPOINT files inside and out. Remove content, images, notes, and metadata easily.

############################# Steps ############################
steps:
    enable: true
    title: "How to Clean Up Text in Powerpoint Files"
    content: |
      Use GroupDocs.Redaction for Python via .NET inside your Python via .NET apps to remove or replace sensitive data fast.
      
      1. Start a Redactor and open your Powerpoint file.
      2. Pick the redaction options you need.
      3. Set the text you want to search and what to swap it with.
      4. Run redaction and save the final file.
   
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

        # How to redact text in a POWERPOINT file

        # Select the redaction settings you need
        # Enter what text to find and what to replace it with
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Load your file using the Redactor constructor
        with gr.Redactor("input.pptx") as redactor:

            # Run redactions and save the final POWERPOINT file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Tools to Remove Private Data"
  description: "GroupDocs.Redaction for Python via .NET lets you clean private content across many formats. Perfect for sharing or archiving files safely."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redaction options and tools"
  features:
    # feature loop
    - title: "Find and replace text"
      content: "Quickly swap out sensitive words or numbers. Works with regex and keyword search."

    # feature loop
    - title: "Hide parts of images"
      content: "Cover specific areas with shapes or overlays. Adjust visuals to fit your needs."

    # feature loop
    - title: "Delete hidden info"
      content: "Clear out metadata like who made the file, comments, or change history."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pattern Redaction Using Regex"
      content: |
        Use regular expressions to find and redact patterns like emails, contact info, or other private details.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Set an EMAIL regex pattern and replacement value
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Open the presentation to clean
          with gr.Redactor("source.pptx") as redactor:

              # Apply redaction steps
              result = redactor.apply(redaction)

              # Save your final redacted file
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
    title: "Redact Content in POWERPOINT Using Python"
    exclude: "POWERPOINT"
    description: "With Python, you can clean up POWERPOINT files by removing or hiding private text. Keep everything secure."
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