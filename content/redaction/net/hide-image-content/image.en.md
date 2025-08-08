
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Protect Images in IMAGE by Adding Overlays Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can hide sensitive image data in IMAGE files using colored overlays. Secure important information while keeping the file's original design."

############################# Header ############################
title: "Hide Private Images in IMAGE files Using Overlays with .NET" 
description: "Keep sensitive business and personal images protected in IMAGE files using C#. Simple tools for fast and effective content protection."
subtitle: "Key Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET equips C# developers with powerful tools to hide or delete content in IMAGE files. Protect your documents by masking sensitive text, images, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Data in Image Files with Overlays"
    content: |
      Use GroupDocs.Redaction for .NET to quickly hide private content in your .NET applications.
      
      1. Create a Redactor instance and provide your Image file path.
      2. Adjust redaction settings as needed.
      3. Select image areas and define overlay colors.
      4. Process the file and save the secure version.
   
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
        // Protect image content in IMAGE

        // Open file using the Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // Define overlay dimensions and colors
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Select the area you want to hide
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply overlay and save the result
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Content in Different File Formats"
  description: "With GroupDocs.Redaction for .NET, you can hide or delete content across a variety of file formats. Protect sensitive data while maintaining a clean, readable format."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Full Control Over Redactions"
  features:
    # feature loop
    - title: "Find and Replace Text"
      content: "Search through documents and replace sensitive text to protect private information."

    # feature loop
    - title: "Overlay Images"
      content: "Apply colored overlays to mask entire images or selected parts."

    # feature loop
    - title: "Edit Metadata"
      content: "Remove or modify hidden metadata fields to prevent data exposure."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cover Image Content with Overlays"
      content: |
        This code example shows how to apply overlays to hide sensitive image content.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the file for redaction
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // Configure overlay size, color, and position
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Pick the image area on page one
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Add overlay to hide image content
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
    title: "Hide Content in IMAGE Files Using .NET Redactions"
    exclude: "IMAGE"
    description: "Use .NET to hide or remove sensitive data in IMAGE files. A reliable method for securing official files and protecting confidential information."
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