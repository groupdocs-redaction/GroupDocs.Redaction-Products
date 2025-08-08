
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Wipe Metadata in POWERPOINT Using Python"
head_description: "Secure your POWERPOINT documents with GroupDocs.Redaction for Python via .NET by clearing out hidden metadata that may contain private information."

############################# Header ############################
title: "Clean Metadata from POWERPOINT with Python" 
description: "Get better control over your files using Python tools that quickly remove hidden metadata."
subtitle: "Top Features of GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Learn About GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction is made for Python developers to help with redacting text, images, and metadata in POWERPOINT files.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Erase Metadata in Powerpoint"
    content: |
      GroupDocs.Redaction lets your Python via .NET apps clean up metadata from documents in a few clicks.
      
      1. Create a Redactor instance and open your document.
      2. Pick which metadata fields to erase.
      3. Configure and apply redaction settings.
      4. Save the final version without the hidden data.
   
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

        # Erase metadata from POWERPOINT

        # Pick metadata to remove
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Load file into redactor
        with gr.Redactor("input.pptx") as redactor:

            # Clean and save document
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Advanced Redaction for POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET helps clean files by deleting sensitive content. Works with multiple file formats and data types."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Main Redaction Options"
  features:
    # feature loop
    - title: "Erase Private Text"
      content: "Search and remove words or phrases that shouldn't be shared."

    # feature loop
    - title: "Cover Image Sections"
      content: "Hide parts of images that contain private or sensitive visuals."

    # feature loop
    - title: "Wipe Metadata"
      content: "Erase metadata fields like Author, Title, and Comments from your files."
      
  code_samples_ext:
    # code sample ext loop
    - title: "How to Remove Hidden Metadata"
      content: |
        This sample shows how to erase embedded metadata such as Author and Title from your POWERPOINT document.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Clear Author field
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Clear Title field
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Open file in redactor
          with gr.Redactor("source.pptx") as redactor:

              # Perform redaction
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Save updated file
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
    title: "Metadata Cleanup for POWERPOINT Using Python"
    exclude: "POWERPOINT"
    description: "Use Python to clear private data from POWERPOINT documents. Great for legal, business, and personal use."
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