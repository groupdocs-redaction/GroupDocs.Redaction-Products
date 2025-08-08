
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Remove Private Text from WORD Using Python"
head_description: "Protect private data in your WORD files with GroupDocs.Redaction for Python via .NET and Python. Easy and quick text removal."

############################# Header ############################
title: "Edit or Hide Private Text in WORD Files with Python" 
description: "Clean up sensitive content in your WORD files using GroupDocs.Redaction for Python via .NET and Python. Keep personal or work documents safe."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET helps Python developers easily clean up WORD files. Remove text, images, notes, and metadata with just a few steps.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Redact Text in Word Files"
    content: |
      Use GroupDocs.Redaction for Python via .NET in your Python via .NET apps to quickly remove or hide sensitive information.
      
      1. Start a Redactor and load the Word file.
      2. Pick the redaction settings you want.
      3. Enter what text to find and what to replace it with.
      4. Run the redaction and save your document.
   
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

        # How to redact text in a WORD file

        # Set the options for redaction
        # Pick the text to replace and the new value
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Load the file using the Redactor constructor
        with gr.Redactor("input.docx") as redactor:

            # Apply and save your redacted WORD file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Tools for Redaction"
  description: "GroupDocs.Redaction for Python via .NET gives you the tools to clear sensitive content in many file formats. Keep your documents safe to share."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Overview of redaction options"
  features:
    # feature loop
    - title: "Replace sensitive text"
      content: "Search for text or patterns and replace them with something else. Regex is supported too."

    # feature loop
    - title: "Cover up private images"
      content: "Hide or overlay parts of images. Tweak appearance and size as needed."

    # feature loop
    - title: "Clear hidden metadata"
      content: "Erase hidden details like author names, creation dates, and comments."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Patterns with Regex"
      content: |
        Use regular expressions to find and clean text patterns like emails, names, or IDs.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Set an EMAIL regex rule and replacement text
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Open your document
          with gr.Redactor("source.docx") as redactor:

              # Apply the redaction settings
              result = redactor.apply(redaction)

              # Save the final version
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
    title: "Redact Content in WORD Using Python"
    exclude: "WORD"
    description: "Use Python tools to clean and protect WORD documents by redacting sensitive text and details."
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