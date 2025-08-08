
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cover Images in WORD with Overlays Using C#"
head_description: "Hide sensitive image areas in WORD files using GroupDocs.Redaction for .NET. Add colored overlays to protect private data while keeping the document's original layout untouched."

############################# Header ############################
title: "Hide Private Images in WORD Files with Overlays Using .NET" 
description: "Shield your personal and business data in WORD documents using C#. Achieve reliable content protection with our simple tools."
subtitle: "GroupDocs.Redaction for .NET Key Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers the tools to hide or erase content from WORD files. Protect your documents by covering sensitive text, images, and metadata with ease.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Sensitive Data in Word Files"
    content: |
      GroupDocs.Redaction for .NET helps your .NET apps hide private content in documents quickly.
      
      1. Create a Redactor object and specify the Word file path.
      2. Set the redaction parameters to fit your needs.
      3. Mark the image area and define overlay color.
      4. Process and save the redacted file.
   
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
        // Cover sensitive images in WORD

        // Load the file via Redactor constructor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Define overlay color and dimensions
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Select image area to redact
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
  title: "Hide or Remove Document Content"
  description: "GroupDocs.Redaction for .NET makes it easy to hide or erase data in multiple file formats. Protect sensitive information while keeping documents clean and readable."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Detailed Redaction Tools"
  features:
    # feature loop
    - title: "Replace Text Anywhere"
      content: "Search and change sensitive text across your documents to secure private information."

    # feature loop
    - title: "Mask Images"
      content: "Add overlays to specific image areas or entire pictures to conceal private visuals."

    # feature loop
    - title: "Clean Metadata"
      content: "Delete or edit hidden metadata to avoid unintentional data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Add Overlays to Hide Image Content"
      content: |
        This example demonstrates how to protect sensitive data in document images using overlays.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load document for editing
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Set overlay size, location, and color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Focus on specific image area on page one
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply overlay redaction
              redactor.Apply(redaction);

              // Save changes to file
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
    title: "Protect WORD Content with .NET Redactions"
    exclude: "WORD"
    description: ".NET lets you hide or delete sensitive content in WORD files. A reliable way to protect confidential and official documents."
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