
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Delete Metadata in PHOTO with C#"
head_description: "GroupDocs.Redaction for .NET helps you remove hidden data in PHOTO files that could reveal personal or business information."

############################# Header ############################
title: "Remove Metadata from PHOTO with .NET" 
description: "Easily protect your documents by removing hidden info from PHOTO files using C#."
subtitle: "Highlights of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction helps C# developers hide private content in PHOTO files, including text, image parts, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Erase Metadata in Photo Files"
    content: |
      Use GroupDocs.Redaction in your .NET project to clean up document metadata.
      
      1. Start a Redactor and open your Photo file.
      2. Set the rules to delete metadata.
      3. Apply redaction and clean the file.
      4. Save the result file.
   
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
        // Delete metadata from PHOTO documents

        // Use Redactor to load the document
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Set metadata fields for redaction
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Clean the document and save
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Erase Private Information from Files"
  description: "GroupDocs.Redaction for .NET gives you ways to remove personal data from text, pictures, and file details. Perfect for data security."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Useful Redaction Features"
  features:
    # feature loop
    - title: "Text Cleanup"
      content: "Scan and erase any text that shouldn't be shared."

    # feature loop
    - title: "Cover Image Areas"
      content: "Add covers over image parts with private details."

    # feature loop
    - title: "Remove Metadata"
      content: "Delete hidden file data before sharing or publishing."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Delete Hidden Metadata Fields"
      content: |
        This example guides you through removing metadata in a PHOTO document.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load PHOTO file into the redactor
          using (Redactor redactor  = new Redactor("source.jpeg"))
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

              // Process the document
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
    title: "Use .NET to Redact PHOTO Metadata"
    exclude: "PHOTO"
    description: "Keep your PHOTO documents safe by cleaning out metadata with .NET tools."
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