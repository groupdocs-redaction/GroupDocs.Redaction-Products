
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Clean Up Metadata in XLSX Files with C#"
head_description: "With GroupDocs.Redaction for .NET, you can safely remove metadata from XLSX files. Clear hidden info that could reveal private data."

############################# Header ############################
title: "Erase Metadata from XLSX Files Using .NET" 
description: "Protect sensitive details in your XLSX files with C#. Easy redaction for personal and work documents."
subtitle: "Explore What GroupDocs.Redaction for .NET Can Do" 

############################# About ############################
about:
    enable: true
    title: "Learn About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives C# developers tools to clean content in XLSX documents. Mask or delete text, images, and metadata with ease.

############################# Steps ############################
steps:
    enable: true
    title: "Clear Metadata in Xlsx Files"
    content: |
      With GroupDocs.Redaction, your .NET apps can quickly remove hidden data.
      
      1. Set up a Redactor and open your Xlsx file.
      2. Define which metadata you want to erase.
      3. Apply the redaction rules.
      4. Save the final file.
   
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
        // Clean up hidden metadata in XLSX

        // Open file with Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Set up which metadata to remove
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Apply redaction and save
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protect Sensitive Info in Documents"
  description: "Use GroupDocs.Redaction for .NET to erase or hide content in many file formats. Keep files private and ready to share."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "All-in-One Redaction Features"
  features:
    # feature loop
    - title: "Replace or Remove Text"
      content: "Protect personal data by finding and removing sensitive text."

    # feature loop
    - title: "Hide Image Sections"
      content: "Use overlays to block image areas with private visuals."

    # feature loop
    - title: "Remove Metadata"
      content: "Clean out hidden metadata fields that may hold personal or business details."
      
  code_samples_ext:
    # code sample ext loop
    - title: "How to Remove Metadata"
      content: |
        This sample code removes metadata properties in a XLSX document.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the document
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Target the Author metadata
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Target the Title metadata
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
    title: "Redact Metadata in XLSX Using .NET"
    exclude: "XLSX"
    description: ".NET makes it easy to clear metadata from XLSX files. Keep your files clean and secure."
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