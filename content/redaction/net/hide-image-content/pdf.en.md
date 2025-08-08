
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hide Images in PDF with Overlays Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can protect sensitive images in PDF files by adding colored overlays. Secure private information without altering the document’s layout."

############################# Header ############################
title: "Protect Sensitive Images in PDF Documents with Overlays Using .NET" 
description: "Keep business and personal data safe in PDF files using C#. Our tools help you achieve strong data protection with ease."
subtitle: "GroupDocs.Redaction for .NET Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers powerful tools to hide or remove content from PDF files. Easily protect documents by covering text, images, and metadata across multiple formats.

############################# Steps ############################
steps:
    enable: true
    title: "Secure Business Data in Pdf Documents"
    content: |
      GroupDocs.Redaction for .NET: Designed to help your .NET apps protect documents. Redact private information quickly and easily.
      
      1. Create a Redactor instance and provide the path to the Pdf file you want to secure.
      2. Adjust redaction settings to get the result you need.
      3. Select the image area and set the overlay color.
      4. Process the file and save the redacted document.
   
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
        // Hide sensitive image content in PDF

        // Load the file using the Redactor constructor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Configure overlay color and size
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Select the area for redaction
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Apply overlay to the image and save the file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact Content in Documents"
  description: "With GroupDocs.Redaction for .NET, you can hide or delete content in a wide range of file formats. Protect confidential information while keeping documents easy to read and share."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Advanced Redaction Features"
  features:
    # feature loop
    - title: "Edit Text Anywhere"
      content: "Search and replace sensitive text throughout your document to keep private data secure."

    # feature loop
    - title: "Cover Images"
      content: "Apply overlays to entire images or selected areas to hide sensitive visuals."

    # feature loop
    - title: "Handle Metadata"
      content: "Remove or modify hidden metadata to prevent accidental data exposure."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Overlays to Hide Image Data"
      content: |
        This example shows how to cover sensitive information in document images.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the document for redaction
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Set overlay settings: size, position, and color
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Target a specific image area on the first page
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Apply the overlay to hide the image
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
    title: "Secure PDF Content with .NET Redactions"
    exclude: "PDF"
    description: "Use .NET to hide or delete sensitive content in PDF files. An effective solution for securing official and confidential documents."
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