
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remove Metadata from WORD Using C#"
head_description: "Use GroupDocs.Redaction for .NET to find and delete hidden metadata in WORD files. Keep your documents private and secure from unwanted exposure."

############################# Header ############################
title: "Delete Metadata in WORD Files Using .NET" 
description: "Protect personal and corporate data in WORD files with C#. Simple tools for reliable file privacy."
subtitle: "What You Can Do with GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction helps C# developers protect content in WORD files. Clean text, images, and metadata quickly and easily.

############################# Steps ############################
steps:
    enable: true
    title: "Delete Metadata from Word Files"
    content: |
      With GroupDocs.Redaction, it’s easy to clean document metadata in your .NET environment.
      
      1. Initialize a Redactor object and open your Word document.
      2. Set up rules to wipe all hidden metadata.
      3. Run the redaction to remove sensitive tags.
      4. Save your cleaned document.
   
    code:
      platform: "net"
      copy_title: "Copy"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Sample redactions"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "click to copy"
        copy_done: "copied"
      links:
        #  loop
        - title: "More examples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Wipe metadata from WORD files

        // Open the document using Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Set metadata removal options
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redact and save the cleaned file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Confidential Data from Documents"
  description: "With GroupDocs.Redaction for .NET, you can remove private content from various formats. Keep your files secure while maintaining their structure."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Metadata and Content Redaction Tools"
  features:
    # feature loop
    - title: "Replace Sensitive Text"
      content: "Find text in documents and safely remove or change it to protect private information."

    # feature loop
    - title: "Mask Images"
      content: "Cover sensitive areas of images with overlays to hide visual data."

    # feature loop
    - title: "Erase Metadata"
      content: "Find and clean hidden data to avoid leaking information."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Edit or Delete Hidden Metadata"
      content: |
        This example shows how to target and clean metadata entries in a WORD document.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the file for redaction
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Remove the Author metadata
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Remove the Title metadata
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Run redaction process
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Export the clean document
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "Copy"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Ready to get started?"
  description: "Try GroupDocs.Redaction features for free or request a license"
  items:
    #  loop
    - title: "Nuget download"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licensing"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Metadata Redaction in WORD with .NET"
    exclude: "WORD"
    description: "Use .NET to clean hidden metadata from WORD files. Simple tools to keep sensitive info safe."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact Image"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "Popular image formats"

        # format loop 6
        - name: "Redact Photo"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "Photo formats"

        # format loop 7
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 8
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 9
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Presentation"

        # format loop 10
        - name: "Redact JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG Image"


---