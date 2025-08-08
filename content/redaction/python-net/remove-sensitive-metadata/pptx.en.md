
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Delete Metadata from PPTX Files Using Python"
head_description: "GroupDocs.Redaction for Python via .NET helps clean up hidden data in PPTX files. Remove details that could reveal sensitive information."

############################# Header ############################
title: "Delete Metadata in PPTX with Python" 
description: "Erase private metadata stored in PPTX files using Python. A smart way to protect your information."
subtitle: "Main Tools in GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "More About GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction is built for Python developers who want to keep documents clean. Use it to delete text, cover images, or remove metadata from PPTX files.

############################# Steps ############################
steps:
    enable: true
    title: "Clean Up Metadata in Pptx Files"
    content: |
      Use GroupDocs.Redaction to quickly remove metadata from your Python via .NET app.
      
      1. Create a Redactor and open the Pptx document.
      2. Choose which metadata you want to erase.
      3. Apply the redaction to remove hidden data.
      4. Save the updated file.
   
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

        # Erase metadata in PPTX

        # Choose which fields to redact
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Open your file with Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Run and save changes
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Other Ways to Hide Sensitive Info"
  description: "GroupDocs.Redaction for Python via .NET supports redaction across many formats. A fast way to remove personal content from documents."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "File Redaction Tools"
  features:
    # feature loop
    - title: "Search and Remove Text"
      content: "Quickly delete words or phrases that contain personal or sensitive data."

    # feature loop
    - title: "Add Image Overlays"
      content: "Cover image sections that shouldn't be shared."

    # feature loop
    - title: "Remove Hidden Metadata"
      content: "Get rid of author names, titles, and other hidden tags."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Example: Delete Metadata Fields"
      content: |
        Follow this example to remove common metadata fields from a PPTX file before sharing.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Mark Author field for redaction
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Mark Title field for redaction
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Load the file
          with gr.Redactor("source.pptx") as redactor:

              # Apply redaction
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Export the cleaned file
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Use Python to Clean Metadata from PPTX"
    exclude: "PPTX"
    description: "Remove background data from PPTX with Python. Great for privacy and compliance."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact Image"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Popular image formats"

        # format loop 6
        - name: "Redact Photo"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Photo formats"

        # format loop 7
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 8
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 9
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Presentation"

        # format loop 10
        - name: "Redact JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG Image"


---