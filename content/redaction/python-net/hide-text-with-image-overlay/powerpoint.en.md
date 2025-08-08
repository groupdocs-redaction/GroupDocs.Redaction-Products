
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Sensitive Text in POWERPOINT Using Python Overlays"
head_description: "GroupDocs.Redaction for Python via .NET helps you cover private content in POWERPOINT files with color overlays. Keep everything in place while hiding what matters."

############################# Header ############################
title: "Hide Text in POWERPOINT Presentations with Python" 
description: "Use Python and GroupDocs.Redaction for Python via .NET to add overlays and hide sensitive text in your POWERPOINT slides."
subtitle: "What You Can Do with GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Learn More About GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET helps Python developers clean POWERPOINT presentations by covering or deleting text, images, and hidden info.

############################# Steps ############################
steps:
    enable: true
    title: "Redact Information in Powerpoint Files"
    content: |
      With GroupDocs.Redaction for Python via .NET, you can prepare Powerpoint files for sharing using simple redaction steps.
      
      1. Create a new Redactor and load your file.
      2. Choose what to hide and how to apply it.
      3. Add the search pattern and set an overlay color.
      4. Apply redaction and save your updated document.
   
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

        # Cover sensitive text in POWERPOINT using overlays

        # Set up how redaction will work
        # Pick the text and color to hide it
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Use Redactor to load your presentation
        with gr.Redactor("input.pptx") as redactor:

            # Redact and save your file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Easy Ways to Hide Information"
  description: "GroupDocs.Redaction for Python via .NET makes it simple to hide or remove sensitive parts of documents — perfect for legal, personal, or business use."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Useful tools for privacy"
  features:
    # feature loop
    - title: "Find and replace text"
      content: "Search for words or numbers and hide or change them."

    # feature loop
    - title: "Cover up parts of images"
      content: "Draw overlays to hide full images or selected spots."

    # feature loop
    - title: "Remove hidden info"
      content: "Delete metadata like names or timestamps that users don’t see."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Using Regex Search"
      content: |
        See how regular expressions help you find and hide text in your slides.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Define the pattern and overlay color
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Open your POWERPOINT file
          with gr.Redactor("source.pptx") as redactor:

              # Run the redaction
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
    title: "Hide Text in POWERPOINT with Python"
    exclude: "POWERPOINT"
    description: "Use Python to add overlays or remove content from your POWERPOINT slides to keep private data safe."
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