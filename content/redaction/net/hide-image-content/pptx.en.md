
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redact Images in PPTX with Overlays Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can hide sensitive image content in PPTX files by applying colored overlays. Protect confidential data without changing your document’s structure."

############################# Header ############################
title: "Redact Sensitive Images in PPTX Documents Using .NET" 
description: "Protect private and business data in PPTX files with C#. Our tools make redacting images fast and easy."
subtitle: "What GroupDocs.Redaction for .NET Offers" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers easy-to-use tools for hiding or deleting content in PPTX files. Protect documents by redacting text, images, and metadata across multiple formats.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Business Data Safe in Pptx Documents"
    content: |
      GroupDocs.Redaction for .NET: Helping .NET apps secure documents by hiding sensitive information.
      
      1. Set up a Redactor instance and load the Pptx file.
      2. Configure redaction settings to fit your needs.
      3. Select image areas and assign overlay colors.
      4. Process the redaction and save your file.
   
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
        // Redact sensitive image areas in PPTX

        // Open file using Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Define overlay color and dimensions
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Select area to redact
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply overlay and save the document
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Document Redaction Tools"
  description: "GroupDocs.Redaction for .NET allows you to hide or delete sensitive content in various file types. Protect information while keeping documents clean and shareable."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Powerful Redaction Tools"
  features:
    # feature loop
    - title: "Search & Replace Text"
      content: "Locate and redact private text to enhance document security."

    # feature loop
    - title: "Redact Image Content"
      content: "Cover entire images or selected regions with overlays to hide private visuals."

    # feature loop
    - title: "Remove Metadata"
      content: "Erase or modify hidden metadata to prevent data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Data with Overlays"
      content: |
        This example demonstrates how to redact sensitive images in documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the document
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Set overlay size, position, and color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Specify the area to redact on the first page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply the overlay
              redactor.Apply(redaction);

              // Save the redacted file
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Redact PPTX Content with .NET"
    exclude: "PPTX"
    description: "Use .NET to hide or delete sensitive content in PPTX files. A reliable solution for document security."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact Image"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Popular image formats"

        # format loop 6
        - name: "Redact Photo"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Photo formats"

        # format loop 7
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 8
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 9
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPoint Open XML Presentation"

        # format loop 10
        - name: "Redact JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG Image"


---