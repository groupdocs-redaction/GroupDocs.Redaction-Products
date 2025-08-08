
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cover Images in DOCX with Overlays Using C#"
head_description: "Use GroupDocs.Redaction for .NET to cover sensitive images in DOCX files with colored overlays. Protect private data while keeping the document layout unchanged."

############################# Header ############################
title: "Cover Sensitive Images in DOCX Documents with Overlays Using .NET" 
description: "Safeguard personal and business information in DOCX files using C#. Our tools make data protection simple and reliable."
subtitle: "Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Learn About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET equips C# developers with tools to hide or delete content in DOCX files. Protect documents by covering text, images, and metadata across various formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Data in Docx Files"
    content: |
      GroupDocs.Redaction for .NET: Built to help your .NET apps secure documents. Redact sensitive information with just a few steps.
      
      1. Initialize a Redactor and provide the path to your Docx file.
      2. Configure redaction options to meet your needs.
      3. Choose the image area and pick the overlay color.
      4. Run the redaction and save the file.
   
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
        // Cover sensitive image areas in DOCX

        // Load file via Redactor constructor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Set overlay color and size
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Define the redaction area
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
  title: "Redact Content in Files"
  description: "With GroupDocs.Redaction for .NET, you can hide or delete sensitive content in many file types. Keep documents safe while preserving readability."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Flexible Redaction Options"
  features:
    # feature loop
    - title: "Edit Text Easily"
      content: "Find and replace private text across your document for better data security."

    # feature loop
    - title: "Cover Image Areas"
      content: "Overlay full images or select specific parts to protect visual information."

    # feature loop
    - title: "Clean Metadata"
      content: "Remove or change hidden metadata to avoid unintentional data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Apply Overlays to Hide Image Details"
      content: |
        This example demonstrates how to hide sensitive areas in document images.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the document you want to redact
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Specify overlay parameters: size, position, color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Target a specific area on the first page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Place overlay on image
              redactor.Apply(redaction);

              // Save the updated file
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
    title: "Protect DOCX Files with .NET Redaction"
    exclude: "DOCX"
    description: "Use .NET to cover or remove sensitive data in DOCX files. Ideal for keeping confidential documents secure."
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