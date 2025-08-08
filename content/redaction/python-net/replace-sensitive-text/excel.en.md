
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remove Private Text from EXCEL Using Python"
head_description: "Quickly clean sensitive info from your EXCEL files with GroupDocs.Redaction for Python via .NET and Python."

############################# Header ############################
title: "Find and Remove Private Text in EXCEL Files with Python" 
description: "Use Python and GroupDocs.Redaction for Python via .NET to clear sensitive details from your EXCEL documents. Whether it’s for work or personal use, your content stays safe."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers everything they need to clean up EXCEL files. Remove text, images, comments, and metadata with simple code.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Text in Excel Files"
    content: |
      With GroupDocs.Redaction for Python via .NET in your Python via .NET projects, you can easily remove or hide private content.
      
      1. Create a Redactor and open your Excel file.
      2. Choose your redaction settings.
      3. Enter the text you want to search and what to replace it with.
      4. Run the redaction and save your updated file.
   
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

        # How to redact text in a EXCEL file

        # Set up your redaction options
        # Choose the text to search and what to replace it with
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Open your file with the Redactor constructor
        with gr.Redactor("input.xslx") as redactor:

            # Apply the redactions and save your new EXCEL file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Features"
  description: "GroupDocs.Redaction for Python via .NET helps you clear sensitive content across many file formats. Keep your documents safe and shareable."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redaction tools in action"
  features:
    # feature loop
    - title: "Replace private text"
      content: "Search and replace any matching text. Works with smart search and regex patterns."

    # feature loop
    - title: "Cover image content"
      content: "Hide parts of images with overlays. Customize how it looks on the page."

    # feature loop
    - title: "Remove hidden details"
      content: "Erase metadata like author info, comments, and timestamps."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Patterns with Regex"
      content: |
        Use regex to find and clean text patterns like emails, phone numbers, or account details.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Define your EMAIL regex pattern and replacement text
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Open the file you need to clean
          with gr.Redactor("source.xslx") as redactor:

              # Apply redaction rules
              result = redactor.apply(redaction)

              # Save the final version of the file
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
    title: "Redact Content in EXCEL Using Python"
    exclude: "EXCEL"
    description: "Use Python to remove private text from EXCEL files. Make sure your content is safe to store or share."
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