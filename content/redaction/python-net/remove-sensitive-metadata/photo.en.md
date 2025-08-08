
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: en
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Delete Metadata in PHOTO with Python"
head_description: "With GroupDocs.Redaction for Python via .NET, you can erase hidden data from PHOTO files and avoid leaking private information."

############################# Header ############################
title: "Clean Metadata from PHOTO Using Python" 
description: "Protect your PHOTO documents by clearing hidden info with easy-to-use Python tools."
subtitle: "Key Features of GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives Python users a way to clean up files by removing hidden content from text, images, and metadata in PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Erase Metadata from Photo"
    content: |
      Use GroupDocs.Redaction in your Python via .NET project to clean document metadata in just a few steps.
      
      1. Set up a Redactor and open your Photo file.
      2. Pick which metadata fields to delete.
      3. Apply redaction to clean the file.
      4. Save the final version.
   
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

        # Erase metadata in PHOTO documents

        # Choose which metadata to redact
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Use Redactor to open your file
        with gr.Redactor("input.jpeg") as redactor:

            # Run and save
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Clean Up Files Before Sharing"
  description: "GroupDocs.Redaction for Python via .NET helps remove data that shouldn’t be seen. Delete text, images, and hidden details in just a few clicks."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Useful Redaction Features"
  features:
    # feature loop
    - title: "Text Removal"
      content: "Find and delete sensitive words, numbers, or patterns."

    # feature loop
    - title: "Image Masking"
      content: "Cover parts of images that hold private data."

    # feature loop
    - title: "Metadata Cleanup"
      content: "Delete file details like Author, Title, or Comments."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remove Specific Metadata"
      content: |
        Follow this example to delete Author and Title fields in a PHOTO document.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Target the Author field
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Target the Title field
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Load the file into the redactor
          with gr.Redactor("source.jpeg") as redactor:

              # Redact selected metadata
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Save the updated file
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
    title: "Redact Metadata from PHOTO with Python"
    exclude: "PHOTO"
    description: "Use Python to clear hidden metadata from PHOTO files. Keep documents clean and secure."
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