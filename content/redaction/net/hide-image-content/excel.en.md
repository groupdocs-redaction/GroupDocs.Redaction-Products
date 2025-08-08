
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Mask Images in EXCEL with Overlays Using C#"
head_description: "Hide private images in EXCEL files using GroupDocs.Redaction for .NET. Place colored overlays to keep sensitive data safe while preserving the document layout."

############################# Header ############################
title: "Cover Sensitive Images in EXCEL Files with Overlays Using .NET" 
description: "Protect personal and business data in EXCEL files using C#. Get fast and reliable data protection with our tools."
subtitle: "Explore GroupDocs.Redaction for .NET Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET equips C# developers with tools to hide or delete sensitive content in EXCEL files. Cover text, images, and metadata to keep documents secure.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Your Data Safe in Excel Files"
    content: |
      GroupDocs.Redaction for .NET helps your .NET apps secure documents by hiding sensitive content.
      
      1. Create a Redactor instance and provide the Excel file path.
      2. Configure redaction options for desired results.
      3. Select the image area and overlay color.
      4. Apply redaction and save the file.
   
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
        // Mask image content in EXCEL

        // Load document using Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Set up overlay size and color
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Select area to hide
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply and save changes
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Any Content in Documents"
  description: "GroupDocs.Redaction for .NET helps you hide or erase sensitive content in various document formats. Protect data while keeping documents easy to use."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Powerful Redaction Options"
  features:
    # feature loop
    - title: "Search and Edit Text"
      content: "Find sensitive text and replace it to protect private data in your documents."

    # feature loop
    - title: "Overlay Image Areas"
      content: "Cover full images or selected parts with overlays to keep visuals private."

    # feature loop
    - title: "Remove Metadata"
      content: "Erase hidden metadata fields to avoid accidental information leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mask Image Data with Overlays"
      content: |
        This example shows how to cover sensitive information in document images.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open file for editing
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Define overlay size, color, and placement
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Target a specific image section on page one
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply overlay to mask the image
              redactor.Apply(redaction);

              // Save the final document
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
    title: "Protect EXCEL Files with .NET Redaction Tools"
    exclude: "EXCEL"
    description: "Use .NET to hide or delete sensitive information in EXCEL files. A trusted solution for document security."
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