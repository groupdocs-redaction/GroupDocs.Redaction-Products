
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cover Sensitive Images in PDF with Overlays Using Python"
head_description: "With GroupDocs.Redaction for Python via .NET, you can easily hide sensitive images in PDF files by adding overlays. Protect private data without changing the document’s layout."

############################# Header ############################
title: "Hide Images in PDF Files with Overlays Using Python" 
description: "Keep personal and business images secure in PDF files with Python. Our tools make data protection easy and reliable."
subtitle: "GroupDocs.Redaction for Python via .NET Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET gives Python developers the tools to hide or delete content in PDF files. Cover text, images, and metadata to protect documents in different formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Sensitive Data in Pdf Files"
    content: |
      GroupDocs.Redaction for Python via .NET gives your Python via .NET apps the ability to protect documents. Hide private content with just a few clicks.
      
      1. Create a Redactor object and point it to the Pdf file.
      2. Adjust settings to match your redaction needs.
      3. Select which image area to cover and choose an overlay color.
      4. Process and save the redacted file.
   
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

        # Cover confidential image parts in PDF

        # Set up overlay color and size
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Choose the area to redact
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Load the document using the Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Apply the overlay and save the document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hide Sensitive Content in Documents"
  description: "With GroupDocs.Redaction for Python via .NET, you can hide or erase data in different file formats. Protect sensitive information while keeping documents clean and shareable."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Key Redaction Functions"
  features:
    # feature loop
    - title: "Search & Edit Text"
      content: "Find and change sensitive text in your document to protect private information."

    # feature loop
    - title: "Cover Image Areas"
      content: "Place overlays on images or selected parts to hide confidential visuals."

    # feature loop
    - title: "Manage Metadata"
      content: "Remove or edit hidden metadata to prevent unwanted data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Information with Overlays"
      content: |
        This example shows how to cover sensitive image data in documents using overlays.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Adjust overlay settings: size, color, and location
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Pick the image area on the first page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Open the file for redaction
          with gr.Redactor("source.pdf") as redactor:

              # Apply the overlay to conceal the image
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
    title: "Protect PDF Files with Python"
    exclude: "PDF"
    description: "Use Python to hide or delete sensitive data in PDF files. A practical solution for securing business and private documents."
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