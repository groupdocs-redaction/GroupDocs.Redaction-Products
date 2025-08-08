
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hide Images in JPEG with Overlays Using C#"
head_description: "Protect private images in JPEG files with GroupDocs.Redaction for .NET by adding colored overlays. Keep sensitive information safe without changing the file layout."

############################# Header ############################
title: "Cover Sensitive Images in JPEG Files with Overlays Using .NET" 
description: "Keep your personal and business images safe in JPEG files using C#. Our simple tools make file protection easy and reliable."
subtitle: "Main Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers the tools to hide or delete content in JPEG files. Cover text, images, and metadata to secure your documents with ease.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Sensitive Data in Jpeg Files"
    content: |
      GroupDocs.Redaction for .NET is designed to help your .NET apps hide private content fast and easily.
      
      1. Create a Redactor object and provide the path to your Jpeg file.
      2. Set up redaction options to match your needs.
      3. Mark the image area and choose an overlay color.
      4. Run the redaction and save your protected file.
   
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
        // Cover image content in JPEG files

        // Load file using the Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // Set overlay size and color
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Select area for overlay
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply overlay and save the file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Any Content in Documents"
  description: "GroupDocs.Redaction for .NET makes it simple to hide or remove content in various file formats. Protect sensitive information while keeping your files neat and easy to share."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Redaction Tools for Complete Control"
  features:
    # feature loop
    - title: "Edit Text Anywhere"
      content: "Find and replace sensitive text throughout your documents to protect private data."

    # feature loop
    - title: "Mask Images"
      content: "Apply overlays to images or specific areas to keep sensitive visuals hidden."

    # feature loop
    - title: "Clean Metadata"
      content: "Remove or update hidden metadata to prevent accidental data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Data with Overlays"
      content: |
        This example demonstrates how to mask sensitive image areas in files.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the file for editing
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // Configure overlay size, position, and color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Pick a specific image area on page one
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply the overlay to hide the image
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
    title: "Protect JPEG Files with .NET Redactions"
    exclude: "JPEG"
    description: "With .NET, you can easily hide or erase sensitive content in JPEG files. A reliable solution for keeping your documents secure and professional."
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