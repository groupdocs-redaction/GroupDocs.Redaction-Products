
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Mask Images in XLSX Files with Overlays Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can mask sensitive image content in XLSX files by applying colored overlays. Protect important data while keeping the document structure intact."

############################# Header ############################
title: "Mask Sensitive Images in XLSX Documents Using .NET" 
description: "Ensure data privacy in XLSX files with C#. Our tools are designed to make image redaction quick and effective."
subtitle: "GroupDocs.Redaction for .NET Key Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offers C# developers simple tools to hide or erase content from XLSX files. Protect documents by redacting text, images, and metadata in different formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Private Data in Xlsx Documents"
    content: |
      GroupDocs.Redaction for .NET: Helping your .NET apps secure documents efficiently.
      
      1. Create a Redactor instance and load the Xlsx file.
      2. Set up the redaction parameters to match your needs.
      3. Define the image area and choose overlay color.
      4. Apply redaction and save the output file.
   
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
        // Mask sensitive image parts in XLSX

        // Initialize Redactor with file path
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choose overlay size and color
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Mark area to redact
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
  title: "Document Redaction Features"
  description: "With GroupDocs.Redaction for .NET, you can remove or hide content across various file formats. Keep sensitive data private while maintaining a clean layout."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Robust Redaction Features"
  features:
    # feature loop
    - title: "Search and Replace Text"
      content: "Quickly find and redact confidential text to protect sensitive data."

    # feature loop
    - title: "Mask Image Content"
      content: "Apply overlays to entire images or specific areas to hide private visuals."

    # feature loop
    - title: "Clean Up Metadata"
      content: "Remove or adjust hidden metadata to prevent unintentional data exposure."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Content with Overlays"
      content: |
        Learn how to mask sensitive image regions in your documents.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open document for redaction
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Define overlay attributes: size, location, color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Focus on a specific image area
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Overlay the image area
              redactor.Apply(redaction);

              // Save the redacted document
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
    title: "Mask XLSX Content with .NET Redactions"
    exclude: "XLSX"
    description: "Use .NET to redact or delete sensitive content in XLSX files. A practical solution for securing business and personal documents."
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