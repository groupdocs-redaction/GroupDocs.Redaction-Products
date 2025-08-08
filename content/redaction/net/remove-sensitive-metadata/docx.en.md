
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remove Metadata from DOCX Using C#"
head_description: "Use GroupDocs.Redaction for .NET to delete or change hidden metadata in DOCX files. Protect your documents from exposing private details."

############################# Header ############################
title: "Delete Metadata in DOCX Files with .NET" 
description: "Use C# to clean up sensitive metadata from DOCX files. Keep your business and personal data protected."
subtitle: "Top Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives C# developers tools to hide or remove content in DOCX files. Clean up text, images, and metadata fast.

############################# Steps ############################
steps:
    enable: true
    title: "Clean Hidden Data in Docx Files"
    content: |
      GroupDocs.Redaction helps your .NET projects remove unwanted metadata fast.
      
      1. Create a Redactor instance and open your Docx file.
      2. Set up redaction to target metadata entries.
      3. Apply changes to clean the document.
      4. Save the cleaned file.
   
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
        // Wipe metadata from DOCX documents

        // Load the file using Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Set up metadata removal settings
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apply and save the changes
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hide Sensitive Info in Any Document"
  description: "GroupDocs.Redaction for .NET lets you clean up sensitive content in many file types. Make your documents safer to share or store."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Smart Redaction Options"
  features:
    # feature loop
    - title: "Remove Private Text"
      content: "Search for and erase personal or business text from your files."

    # feature loop
    - title: "Mask Images"
      content: "Cover up images or selected areas to hide confidential content."

    # feature loop
    - title: "Erase Metadata"
      content: "Clear hidden metadata entries to avoid leaking background details."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Clean Metadata Fields"
      content: |
        This example demonstrates how to remove hidden data from DOCX files.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load your DOCX file
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Target Author field for removal
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Target Title field for removal
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Run redaction process
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Save your updated file
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
    title: "Erase Metadata in DOCX with .NET"
    exclude: "DOCX"
    description: "Remove unwanted metadata in DOCX files using .NET. A simple way to protect your file’s hidden details."
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