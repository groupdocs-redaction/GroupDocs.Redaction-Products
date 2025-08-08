
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: en
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cover Images in PHOTO Files Using Python Overlays"
head_description: "Apply overlays to hide sensitive image data in PHOTO files with GroupDocs.Redaction for Python via .NET. Keep your document’s design intact while protecting private information."

############################# Header ############################
title: "Hide Sensitive Images in PHOTO Files with Overlays via Python" 
description: "Protect image content in PHOTO files with Python. Easy tools for quick and effective data protection."
subtitle: "GroupDocs.Redaction for Python via .NET Key Features" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offers Python developers powerful tools to hide or erase content in PHOTO files. Protect important data by masking text, images, and metadata efficiently.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Image Areas in Photo Files"
    content: |
      Use GroupDocs.Redaction for Python via .NET to easily cover sensitive image areas in your Python via .NET applications.
      
      1. Create a Redactor object and link it to your Photo file.
      2. Configure the redaction settings to fit your task.
      3. Highlight image sections and set overlay colors.
      4. Apply redactions and save the protected file.
   
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

        # Use overlays to hide image data in PHOTO

        # Set up overlay dimensions and color
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Select image areas to mask
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Open file with Redactor
        with gr.Redactor("input.jpeg") as redactor:

            # Apply overlay and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Private Data in Multiple Formats"
  description: "GroupDocs.Redaction for Python via .NET lets you cover or erase sensitive content in different file types. Keep documents clean and safe to share."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Redaction Features"
  features:
    # feature loop
    - title: "Find and Edit Text"
      content: "Search for sensitive text and replace it to secure your documents."

    # feature loop
    - title: "Hide Images with Overlays"
      content: "Add overlays to cover full images or specific sections."

    # feature loop
    - title: "Delete Metadata"
      content: "Remove hidden metadata to prevent data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cover Image Sections with Overlays"
      content: |
        This code example shows how to mask sensitive image areas in a document using overlays.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Define overlay size, color, and placement
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Select an image area on the first page
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Open the file for redaction
          with gr.Redactor("source.jpeg") as redactor:

              # Apply overlay to hide content
              result = redactor.apply(redaction)

              # Save the secured file
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
    title: "Redact Sensitive Content in PHOTO with Python"
    exclude: "PHOTO"
    description: "Hide or delete private data in PHOTO files using Python. An easy way to secure official documents."
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