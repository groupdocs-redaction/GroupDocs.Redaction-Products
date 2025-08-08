
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Clean Up Metadata in POWERPOINT with C#"
head_description: "Remove unwanted metadata from POWERPOINT files using GroupDocs.Redaction for .NET. Protect your privacy by wiping hidden data."

############################# Header ############################
title: "Erase Metadata in POWERPOINT via .NET" 
description: "Protect document data in POWERPOINT files with simple tools built for C#. Remove metadata in just a few steps."
subtitle: "Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "More About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction is a redaction toolkit for C# developers, helping you work with text, image, and metadata redactions in POWERPOINT files.

############################# Steps ############################
steps:
    enable: true
    title: "Clean Metadata from Powerpoint Documents"
    content: |
      With GroupDocs.Redaction, your .NET apps can easily remove metadata from documents.
      
      1. Start with a Redactor object and load your file.
      2. Choose metadata fields to remove.
      3. Apply redaction settings.
      4. Export the final, cleaned document.
   
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
        // Get rid of metadata in POWERPOINT

        // Open document with redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Set metadata cleanup options
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apply redaction and save
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protect Documents with Redaction"
  description: "GroupDocs.Redaction for .NET helps remove hidden content from documents so you can share them safely. Works with many formats and content types."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redaction Capabilities"
  features:
    # feature loop
    - title: "Remove Private Text"
      content: "Find sensitive words or phrases and take them out of your document."

    # feature loop
    - title: "Mask Image Data"
      content: "Use overlays to cover areas in images that need to stay hidden."

    # feature loop
    - title: "Delete Metadata"
      content: "Clean metadata fields that might carry hidden information."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Clear Hidden Metadata Fields"
      content: |
        This example guides you through removing embedded data like Author and Title from a POWERPOINT file.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Import file to redactor
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Remove Author data
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Remove Title data
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Run redaction
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Save the cleaned version
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
    title: "Clean POWERPOINT Files with .NET"
    exclude: "POWERPOINT"
    description: "Use .NET to delete hidden data in POWERPOINT files. Ideal for cleaning up confidential documents."
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