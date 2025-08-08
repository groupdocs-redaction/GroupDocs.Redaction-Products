
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Erase Metadata from PPTX Files with C#"
head_description: "GroupDocs.Redaction for .NET helps you delete or edit metadata in PPTX files. Protect your documents by removing private background data."

############################# Header ############################
title: "Remove Metadata in PPTX Using .NET Tools" 
description: "Hide sensitive metadata in PPTX files using C#. Ideal for business and personal privacy."
subtitle: "GroupDocs.Redaction for .NET Core Functions" 

############################# About ############################
about:
    enable: true
    title: "Get to Know GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction is built for C# developers who need to erase data from PPTX files. Clean up text, images, and metadata quickly.

############################# Steps ############################
steps:
    enable: true
    title: "Erase Hidden Metadata in Pptx Files"
    content: |
      GroupDocs.Redaction helps your .NET solutions clean up hidden data easily.
      
      1. Create a Redactor instance and load the Pptx file.
      2. Configure redaction rules for metadata fields.
      3. Apply redaction to remove the data.
      4. Save your redacted file.
   
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
        // Delete metadata in PPTX

        // Open the file using Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Set redaction for metadata cleanup
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apply and save file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Extra Redaction Tools for Any File"
  description: "GroupDocs.Redaction for .NET supports redacting content across different formats. Make sure your data is private and your files are clean."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Built-In Privacy Tools"
  features:
    # feature loop
    - title: "Find and Remove Text"
      content: "Quickly delete personal text entries from your files."

    # feature loop
    - title: "Cover Images with Overlays"
      content: "Hide image sections that should not be visible."

    # feature loop
    - title: "Delete Metadata"
      content: "Wipe hidden fields like author, title, and more to stay safe."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Clean Up Metadata Fields"
      content: |
        This example shows how to clear metadata from a PPTX file safely.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Import your PPTX file
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Redact Author field
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Redact Title field
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Process redaction
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Export the redacted file
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
    title: "Clean Metadata in PPTX Files Using .NET"
    exclude: "PPTX"
    description: "Easily remove background metadata from PPTX files with .NET. Perfect for document safety."
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