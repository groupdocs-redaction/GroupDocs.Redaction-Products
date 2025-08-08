
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Edit Metadata in JPEG Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can clean or change metadata in your JPEG files. Remove hidden details that may contain private data."

############################# Header ############################
title: "Remove Metadata from JPEG Files Using .NET" 
description: "Protect private details in your JPEG files using C#. Simple tools for better document security."
subtitle: "Top Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction helps C# developers remove text, images, and metadata from JPEG files with simple tools.

############################# Steps ############################
steps:
    enable: true
    title: "Clean Metadata in Jpeg Documents"
    content: |
      GroupDocs.Redaction makes it easy to remove metadata in your .NET applications.
      
      1. Set up a Redactor and load the Jpeg file you want to clean.
      2. Choose the settings to clear all metadata.
      3. Run the redaction to clean the file.
      4. Save your file with cleaned metadata.
   
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
        // Remove metadata from JPEG files

        // Use Redactor to load the file
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Configure metadata redaction
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apply and save
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Remove Sensitive Data from Documents"
  description: "GroupDocs.Redaction for .NET lets you hide or clean private content across many formats. Protect sensitive data while keeping your files useful and clear."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Key Redaction Features"
  features:
    # feature loop
    - title: "Search and Remove Text"
      content: "Find sensitive words or phrases in your files and clean them out."

    # feature loop
    - title: "Cover Image Areas"
      content: "Use overlays to hide private parts of images."

    # feature loop
    - title: "Edit Metadata"
      content: "Delete or change metadata to avoid sharing private data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Clean Hidden Metadata Fields"
      content: |
        This example shows how to delete or edit hidden metadata in JPEG documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open JPEG file with redactor
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Add redaction for Author field
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Add redaction for Title field
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Run the redaction process
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Save the cleaned document
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
    title: "Clean JPEG Metadata with .NET"
    exclude: "JPEG"
    description: "Use .NET to remove hidden data from your JPEG documents. A great way to protect sensitive details."
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