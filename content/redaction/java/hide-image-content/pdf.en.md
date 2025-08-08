
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cover Images in PDF with Overlays Using Java"
head_description: "With GroupDocs.Redaction for Java, you can hide private images in PDF files by placing colored overlays. Protect sensitive visuals while keeping your document’s design intact."

############################# Header ############################
title: "Hide Confidential Images in PDF Files with Overlays Using Java" 
description: "Protect personal and business data in PDF files with Java. Our tools make image redaction simple and effective."
subtitle: "GroupDocs.Redaction for Java Features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offers Java developers effective tools to hide or erase content in PDF files. Cover text, images, and metadata to keep your documents safe across multiple formats.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Business Information in Pdf Files"
    content: |
      GroupDocs.Redaction for Java helps your Java applications secure documents. Redact private images in a few easy steps.
      
      1. Initialize a Redactor and set the path to your Pdf file.
      2. Choose redaction settings for best results.
      3. Pick the image area and pick an overlay color.
      4. Process and save the secured file.
   
    code:
      platform: "java"
      copy_title: "Copy"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Sample redactions"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "click to copy"
        copy_done: "copied"
      links:
        #  loop
        - title: "More examples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Cover sensitive images in PDF

        // Load the file with Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Set overlay color and dimensions
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Select the target area for redaction
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Apply the overlay and save the file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hide Content in Documents"
  description: "With GroupDocs.Redaction for Java, you can hide or delete sensitive data in various file formats. Protect private information while keeping files easy to read and distribute."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Powerful Redaction Options"
  features:
    # feature loop
    - title: "Modify Text Anywhere"
      content: "Find and replace sensitive words across your document to secure private content."

    # feature loop
    - title: "Hide Images"
      content: "Add overlays to images or parts of them to keep sensitive visuals hidden."

    # feature loop
    - title: "Clean Up Metadata"
      content: "Delete or edit hidden metadata to prevent unintended information leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cover Image Data with Overlays"
      content: |
        This example demonstrates how to hide confidential visuals in documents using overlays.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the document for editing
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Define overlay size, color, and position
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Choose the image area to redact on page one
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Add the overlay to cover sensitive data
              redactor.apply(redaction);

              // Save the updated document
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copy"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Ready to get started?"
  description: "Try GroupDocs.Redaction features for free or request a license"
  items:
    #  loop
    - title: "Maven download"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licensing"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Protect PDF Files with Java Redactions"
    exclude: "PDF"
    description: "Use Java to hide or remove sensitive data in PDF files. Ideal for securing official and private documents."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact Image"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Popular image formats"

        # format loop 6
        - name: "Redact Photo"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Photo formats"

        # format loop 7
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 8
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 9
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "PowerPoint Open XML Presentation"

        # format loop 10
        - name: "Redact JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "JPEG Image"


---