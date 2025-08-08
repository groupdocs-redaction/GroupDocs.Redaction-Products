
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hide Sensitive Images in POWERPOINT Using Overlays with C#"
head_description: "Use GroupDocs.Redaction for .NET to place overlays on images in POWERPOINT files, keeping private information hidden while keeping the layout intact."

############################# Header ############################
title: "Hide Private Images in POWERPOINT Documents Using Overlays with .NET" 
description: "Protect personal and corporate data in POWERPOINT files with C#. Simple tools for strong document privacy."
subtitle: "Main Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET provides C# developers with simple tools to hide or remove content in POWERPOINT files. Protect your documents by covering sensitive text, images, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Sensitive Information in Powerpoint Documents"
    content: |
      GroupDocs.Redaction for .NET is built to help your .NET apps safeguard document content quickly.
      
      1. Create a Redactor object and specify the Powerpoint file.
      2. Adjust redaction settings to suit your needs.
      3. Select the area of the image and pick overlay color.
      4. Apply redaction and save the document.
   
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
        // Hide image data in POWERPOINT files

        // Load the file using Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Set overlay color and dimensions
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Choose area to cover
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply overlay and save document
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Sensitive Data in Documents"
  description: "GroupDocs.Redaction for .NET lets you hide or erase content in multiple document types. Protect private data while keeping files easy to use and share."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Feature-Rich Redaction Tools"
  features:
    # feature loop
    - title: "Find and Edit Text"
      content: "Search for sensitive text in documents and replace it to protect private data."

    # feature loop
    - title: "Cover Image Content"
      content: "Use overlays to mask images or selected parts, ensuring private visuals stay hidden."

    # feature loop
    - title: "Clean Hidden Metadata"
      content: "Delete or modify hidden metadata to prevent unintentional data exposure."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Protect Image Data with Overlays"
      content: |
        This example demonstrates hiding sensitive content in document images.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load file for redaction
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Define overlay size, position, and color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Mark image area on page one
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply the overlay to cover image
              redactor.Apply(redaction);

              // Save redacted document
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
    title: "Secure POWERPOINT Content with .NET Redactions"
    exclude: "POWERPOINT"
    description: "Use .NET to cover or delete private content in POWERPOINT files. A trusted solution for protecting sensitive documents."
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