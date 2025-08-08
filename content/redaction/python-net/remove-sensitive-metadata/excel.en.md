
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Clear Metadata from EXCEL Using Python"
head_description: "Use GroupDocs.Redaction for Python via .NET to remove metadata from EXCEL documents. Eliminate hidden data and protect sensitive information."

############################# Header ############################
title: "Remove Hidden Metadata in EXCEL with Python" 
description: "Take control of your EXCEL files with Python. Get rid of unwanted data to keep your files private."
subtitle: "Key Features of GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Get to Know GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction is built for Python developers who need to clean and protect EXCEL files. Remove unwanted metadata, text, and images easily.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Clean Metadata in Excel Files"
    content: |
      In your Python via .NET apps, GroupDocs.Redaction helps remove metadata in just a few steps.
      
      1. Start a Redactor and open the Excel file.
      2. Choose metadata fields to remove.
      3. Run the redaction process.
      4. Export the final file.
   
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

        # Remove hidden data in EXCEL

        # Choose what metadata to remove
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Open your file with redactor
        with gr.Redactor("input.xslx") as redactor:

            # Process and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Clean All Types of Sensitive Data"
  description: "GroupDocs.Redaction for Python via .NET gives you tools to erase metadata, text, and images in many formats. Perfect for secure document sharing."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Metadata and Privacy Tools"
  features:
    # feature loop
    - title: "Remove Private Text"
      content: "Detect and delete personal or hidden information from your documents."

    # feature loop
    - title: "Mask Image Details"
      content: "Cover parts of images to block out private visuals."

    # feature loop
    - title: "Clean Metadata"
      content: "Erase hidden metadata fields that could contain sensitive data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remove Author and Title Metadata"
      content: |
        See how GroupDocs.Redaction for Python via .NET clears specific metadata fields from EXCEL documents.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Delete Author information
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Delete Title field
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Open document for redaction
          with gr.Redactor("source.xslx") as redactor:

              # Apply changes
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Save cleaned document
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
    title: "Clean Metadata in EXCEL with Python"
    exclude: "EXCEL"
    description: "Use Python to remove sensitive metadata from your EXCEL files. Secure content before sharing."
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