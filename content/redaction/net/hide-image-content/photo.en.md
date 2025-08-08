
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Add Overlays to Hide Images in PHOTO Using C#"
head_description: "Hide sensitive image content in PHOTO files with GroupDocs.Redaction for .NET by applying overlays. Keep private data safe while keeping the document’s layout intact."

############################# Header ############################
title: "Hide Image Content in PHOTO Files with Overlays Using .NET" 
description: "Protect personal and business images in PHOTO files using C#. Easy-to-use tools for effective content protection."
subtitle: "GroupDocs.Redaction for .NET Main Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers a powerful way to hide or delete content in PHOTO files. Protect documents by masking text, images, and metadata quickly.

############################# Steps ############################
steps:
    enable: true
    title: "Secure Content in Photo Files"
    content: |
      GroupDocs.Redaction for .NET makes it quick and simple to protect content in your .NET apps.
      
      1. Create a Redactor object and point it to your Photo file.
      2. Adjust redaction settings for your needs.
      3. Choose image areas and set overlay color.
      4. Run the redaction and save the secured file.
   
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
        // Apply overlays to hide images in PHOTO

        // Load the file with Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // Configure overlay size and color
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Pick the image area to hide
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply overlay and save changes
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Easily Redact Sensitive Content"
  description: "GroupDocs.Redaction for .NET helps you hide or delete sensitive content in many file types. Protect private data while keeping your documents clean and easy to read."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "All-in-One Redaction Tools"
  features:
    # feature loop
    - title: "Edit Text in Documents"
      content: "Search and replace private text in your documents to secure sensitive information."

    # feature loop
    - title: "Hide Image Areas"
      content: "Add overlays to images or selected parts to cover sensitive visuals."

    # feature loop
    - title: "Clean Metadata"
      content: "Remove hidden metadata to avoid accidental data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Data with Overlays"
      content: |
        This code example shows how to cover image areas in a file using overlays.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the file for editing
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // Set overlay position, size, and color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Target a specific image area on page one
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply overlay to mask image
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
    title: "Protect PHOTO Files with .NET Redactions"
    exclude: "PHOTO"
    description: "With .NET, you can hide or delete private content in PHOTO files. A simple and effective way to secure official documents."
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