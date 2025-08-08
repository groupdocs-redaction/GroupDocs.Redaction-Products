
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Redact Sensitive Text in PDF with Python"
head_description: "Keep private details safe in your PDF documents with GroupDocs.Redaction for Python via .NET. Quickly find and hide sensitive info."

############################# Header ############################
title: "Erase Sensitive Text from PDF Files Using Python" 
description: "Use Python and GroupDocs.Redaction for Python via .NET to search for and remove private, legal, or personal data from your PDF files."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers all the tools they need to redact content in PDF files—text, images, comments, and more.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Content in Pdf Files"
    content: |
      Keep your content safe in any Python via .NET app using GroupDocs.Redaction for Python via .NET.
      
      1. Create a Redactor and load your Pdf file.
      2. Choose the redaction settings you want.
      3. Enter the text to search and what to replace it with.
      4. Apply redaction and save your file.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Features"
  description: "GroupDocs.Redaction for Python via .NET lets you hide private content in many file types. Keep your data safe and ready to share."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tools for text, image, and metadata redaction"
  features:
    # feature loop
    - title: "Find and Replace Private Text"
      content: "Search for and swap out matching text. Works with regex and keyword search."

    # feature loop
    - title: "Cover Private Images"
      content: "Mask full images or parts of them using overlays. Customize appearance settings."

    # feature loop
    - title: "Erase Hidden Metadata"
      content: "Remove hidden info like author names, timestamps, and revision notes."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact with Regex"
      content: |
        Use regex to find and remove patterns like emails, IDs, or numbers.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Set a regex pattern and replacement text
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Open the file you want to clean
          with gr.Redactor("source.pdf") as redactor:

              # Apply your redaction rules
              result = redactor.apply(redaction)

              # Save your redacted file
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
    title: "Redact Content in PDF Using Python"
    exclude: "PDF"
    description: "Keep personal or business data safe by redacting text in PDF files with Python tools."
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