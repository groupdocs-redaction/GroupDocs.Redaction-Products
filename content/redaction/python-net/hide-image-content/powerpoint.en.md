
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Mask Sensitive Images in POWERPOINT Using Overlays with Python"
head_description: "With GroupDocs.Redaction for Python via .NET, you can hide private image areas in POWERPOINT files using overlays. Protect information without changing the document design."

############################# Header ############################
title: "Cover Private Images in POWERPOINT Documents Using Python Overlays" 
description: "Keep sensitive images safe in POWERPOINT files with Python. Simple tools designed for strong data protection."
subtitle: "Explore GroupDocs.Redaction for Python via .NET Features" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET equips Python developers with tools to hide or delete sensitive content in POWERPOINT files. Protect your documents by covering private text, images, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Your Powerpoint Documents Safe"
    content: |
      GroupDocs.Redaction for Python via .NET makes it easy for Python via .NET apps to protect sensitive content in documents.
      
      1. Create a Redactor object and load the Powerpoint file.
      2. Adjust redaction options to match your requirements.
      3. Select the image area and pick an overlay color.
      4. Apply the redaction and save your document.
   
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

        # Mask image content in POWERPOINT files

        # Set up overlay size and color
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Choose area to hide
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Load file with Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Apply overlay and save file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protect Private Data in Documents"
  description: "GroupDocs.Redaction for Python via .NET allows you to hide or erase sensitive content in different file formats. Keep your files secure and ready for sharing."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Redaction Features"
  features:
    # feature loop
    - title: "Search and Edit Text"
      content: "Find private text in documents and replace it to ensure privacy."

    # feature loop
    - title: "Mask Image Areas"
      content: "Cover entire images or selected parts with overlays to keep them private."

    # feature loop
    - title: "Erase Hidden Metadata"
      content: "Delete metadata to prevent accidental information sharing."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Overlays to Hide Image Data"
      content: |
        This example shows how to protect sensitive images in documents using overlays.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Set overlay dimensions, position, and color
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Mark image area on the first page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Open the document for redaction
          with gr.Redactor("source.pptx") as redactor:

              # Apply overlay to mask data
              result = redactor.apply(redaction)

              # Save the final document
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
    title: "Keep POWERPOINT Files Secure with Python"
    exclude: "POWERPOINT"
    description: "With Python, you can easily hide or remove sensitive data in POWERPOINT files. Trusted solution for protecting important documents."
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