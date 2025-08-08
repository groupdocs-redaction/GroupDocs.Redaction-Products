
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Hide Image Content in DOCX with Overlays Using Python"
head_description: "Protect sensitive images in DOCX files by adding overlays with GroupDocs.Redaction for Python via .NET. Keep document formatting intact while securing private visuals."

############################# Header ############################
title: "Protect Images in DOCX Documents Using Overlays with Python" 
description: "Keep personal and business visuals safe in DOCX files using Python. Our redaction tools make document security easy."
subtitle: "Highlights of GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers the ability to hide or delete content in DOCX files. Protect text, images, and metadata across multiple document formats.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Data Safe in Docx Files"
    content: |
      GroupDocs.Redaction for Python via .NET makes it easy for Python via .NET applications to protect documents. Redact sensitive data in just a few steps.
      
      1. Create a Redactor instance and specify the path to the Docx file.
      2. Set up redaction preferences to fit your task.
      3. Choose the image part you want to cover and define the overlay color.
      4. Run the process and save the redacted file.
   
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

        # Hide sensitive parts of images in DOCX

        # Define overlay size and color
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Specify the area for redaction
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Load file using Redactor
        with gr.Redactor("input.docx") as redactor:

            # Apply overlay and save your document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hide Content in Documents"
  description: "With GroupDocs.Redaction for Python via .NET, you can easily hide or remove sensitive information from various document types. Keep files secure and shareable."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Effective Redaction Features"
  features:
    # feature loop
    - title: "Search & Edit Text"
      content: "Locate sensitive words and replace them to protect your data."

    # feature loop
    - title: "Cover Images"
      content: "Apply overlays to full images or selected parts to protect visual data."

    # feature loop
    - title: "Clean Hidden Metadata"
      content: "Remove or update metadata to prevent accidental data sharing."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Data Using Overlays"
      content: |
        This example shows how to protect sensitive image areas in documents with overlays.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Set overlay settings: color, size, position
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pick an area to redact on page one
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Load the file you want to redact
          with gr.Redactor("source.docx") as redactor:

              # Apply overlay to cover the image
              result = redactor.apply(redaction)

              # Save the redacted file
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Hide Sensitive Data in DOCX Files with Python"
    exclude: "DOCX"
    description: "Use Python to cover or erase private data in DOCX files. The right tool for keeping confidential documents secure."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact Image"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Popular image formats"

        # format loop 6
        - name: "Redact Photo"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Photo formats"

        # format loop 7
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 8
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 9
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "PowerPoint Open XML Presentation"

        # format loop 10
        - name: "Redact JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "JPEG Image"


---