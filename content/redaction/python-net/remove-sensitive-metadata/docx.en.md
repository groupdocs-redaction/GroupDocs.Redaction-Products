
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Clear Metadata in DOCX Using Python"
head_description: "Use GroupDocs.Redaction for Python via .NET to erase hidden details in DOCX files. Protect your data by removing sensitive metadata entries."

############################# Header ############################
title: "Erase Hidden Metadata from DOCX Files with Python" 
description: "With Python, you can delete hidden metadata from DOCX files using GroupDocs.Redaction for Python via .NET. Keep your files clean and private."
subtitle: "Main Features in GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives Python developers the ability to erase hidden data in DOCX files. Clean text, visuals, and metadata from documents easily.

############################# Steps ############################
steps:
    enable: true
    title: "Remove Metadata from Docx Files"
    content: |
      GroupDocs.Redaction gives your Python via .NET apps the tools to delete metadata quickly.
      
      1. Start a Redactor and load your Docx document.
      2. Set up metadata fields for removal.
      3. Apply redaction to clean the hidden content.
      4. Save the final version of the file.
   
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

        # Clean up metadata in DOCX files

        # Choose metadata entries to remove
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Use Redactor to open the document
        with gr.Redactor("input.docx") as redactor:

            # Apply redaction and save the file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Secure Every Part of a Document"
  description: "With GroupDocs.Redaction for Python via .NET, you can clean up text, images, and metadata in multiple file formats. Ideal for privacy and security."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Document Redaction Tools in Action"
  features:
    # feature loop
    - title: "Text Cleaner"
      content: "Find and delete names, terms, or any private words."

    # feature loop
    - title: "Cover Images"
      content: "Hide parts of an image by placing a color overlay."

    # feature loop
    - title: "Metadata Removal"
      content: "Get rid of hidden document info like author or software details."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Example: Remove Hidden Metadata"
      content: |
        Here’s how you can remove Author and Title fields from a DOCX document using redaction.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Choose to remove the Author field
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Choose to remove the Title field
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Open the DOCX file
          with gr.Redactor("source.docx") as redactor:

              # Run metadata redaction
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Save the clean file
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
    title: "Delete Metadata in DOCX with Python"
    exclude: "DOCX"
    description: "Remove hidden metadata in DOCX files using Python. Great for securing your files before sharing or archiving."
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