
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Edit and Remove Metadata in EXCEL via C#"
head_description: "Secure your EXCEL documents by removing metadata using GroupDocs.Redaction for .NET. Eliminate hidden data that could compromise privacy."

############################# Header ############################
title: "Metadata Protection in EXCEL Files via .NET" 
description: "Using C#, you can clean sensitive data from EXCEL files. Tools designed to keep your information protected."
subtitle: "Top Benefits of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What Is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offers a reliable way for C# developers to manage redaction in EXCEL files. It works with text, images, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Clear Metadata in Excel Files"
    content: |
      Use GroupDocs.Redaction in your .NET projects to handle document metadata securely.
      
      1. Create a Redactor object and load the target Excel file.
      2. Configure redaction to clear hidden metadata.
      3. Run the cleanup process.
      4. Save the final version.
   
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
        // Clean metadata from EXCEL

        // Initialize redactor and load file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Set removal options for metadata
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Redact and save the result
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Erase Private Data in Your Files"
  description: "GroupDocs.Redaction for .NET allows you to clean text, images, and metadata in multiple formats. Ideal for personal, legal, and corporate documents."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Metadata Removal Tools"
  features:
    # feature loop
    - title: "Search and Remove Text"
      content: "Find personal or confidential text in documents and remove it safely."

    # feature loop
    - title: "Hide Visual Elements"
      content: "Overlay sensitive parts of images to prevent viewing."

    # feature loop
    - title: "Remove Metadata"
      content: "Erase embedded data that may leak sensitive information."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Target Metadata for Redaction"
      content: |
        Learn how to locate and remove metadata like Author or Title from a EXCEL document.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Import the document to the redactor
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Target Author metadata
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // Target Title metadata
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // Apply changes
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // Save the updated document
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
    title: "Remove Metadata in EXCEL Using .NET"
    exclude: "EXCEL"
    description: "Get rid of private metadata in EXCEL files with .NET. Keep your documents clean and safe."
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