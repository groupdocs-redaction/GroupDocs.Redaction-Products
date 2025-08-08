
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redact Metadata in PDF Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can remove or update metadata in PDF files. Clean hidden data that might expose private information."

############################# Header ############################
title: "Clean Metadata in PDF Files with .NET" 
description: "Protect sensitive business and personal information in PDF files using C#. Easy-to-use tools for reliable data protection."
subtitle: "Key Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives C# developers easy-to-use tools to redact content in PDF files. Mask text, images, and metadata across multiple formats.

############################# Steps ############################
steps:
    enable: true
    title: "Remove Metadata from Pdf Documents"
    content: |
      Use GroupDocs.Redaction to quickly secure document metadata in your .NET apps.
      
      1. Create a Redactor instance and load your Pdf file.
      2. Set up redaction to remove all hidden metadata.
      3. Apply the redaction to clean the document.
      4. Save the updated file.
   
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
        // Erase metadata from PDF files

        // Load the file with Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configure metadata removal redaction
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apply changes and save the file
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Sensitive Data in Documents"
  description: "GroupDocs.Redaction for .NET helps you hide or erase confidential content in various file formats. Keep private data safe while keeping documents clear and professional."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Powerful Redaction Features"
  features:
    # feature loop
    - title: "Find and Replace Text"
      content: "Search for sensitive text in your documents and replace or remove it to protect privacy."

    # feature loop
    - title: "Hide Image Content"
      content: "Add overlays to images or specific areas to cover sensitive visuals."

    # feature loop
    - title: "Clean Metadata"
      content: "Delete or edit hidden metadata to prevent unwanted data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remove Hidden Metadata Entries"
      content: |
        This example shows how to modify metadata in a PDF file.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the PDF file into the redactor
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Set up redaction for the Author property
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Set up redaction for the Title property
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Run redaction on the document
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Save the cleaned file
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
    title: "Protect PDF Files with .NET Metadata Redaction"
    exclude: "PDF"
    description: "Use .NET to erase hidden data from PDF files. A simple and effective way to secure sensitive information in your documents."
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