
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hide Images in EXCEL with Overlays Using Java"
head_description: "Use GroupDocs.Redaction for Java to cover sensitive images in EXCEL files. Add colored overlays to protect private information while keeping the document’s design intact."

############################# Header ############################
title: "Hide Sensitive Images in EXCEL Files with Overlays Using Java" 
description: "Protect private and business visuals in EXCEL files with Java. Fast and easy tools for reliable data protection."
subtitle: "Discover Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers the tools to hide or delete content in EXCEL files. Cover text, images, and metadata to protect sensitive data.

############################# Steps ############################
steps:
    enable: true
    title: "Secure Your Data in Excel Files"
    content: |
      GroupDocs.Redaction for Java helps Java apps hide sensitive content inside documents with ease.
      
      1. Create a Redactor object and load your Excel file.
      2. Set redaction options to match your needs.
      3. Choose the image area to cover and pick an overlay color.
      4. Apply the redaction and save your document.
   
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
        // Hide image content in EXCEL

        // Open file with Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Define overlay size and color
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Mark area you want to hide
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Apply changes and save the file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hide or Delete Content in Documents"
  description: "GroupDocs.Redaction for Java lets you cover or erase sensitive data in multiple file types. Keep your documents clear and secure."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Advanced Redaction Features"
  features:
    # feature loop
    - title: "Find and Replace Text"
      content: "Search documents for private text and replace it to keep data safe."

    # feature loop
    - title: "Cover Image Areas"
      content: "Hide parts of images or entire visuals with colored overlays."

    # feature loop
    - title: "Clean Metadata"
      content: "Remove hidden metadata to avoid sharing extra information."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cover Image Data with Overlays"
      content: |
        This example shows how to hide sensitive image areas in documents using overlays.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the file for editing
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Set overlay dimensions, color, and position
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Pick the image section on the first page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Apply the overlay to hide data
              redactor.apply(redaction);

              // Save your redacted document
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
    title: "Secure EXCEL Files with Java Redaction"
    exclude: "EXCEL"
    description: "Use Java to hide or erase private information in EXCEL files. A simple way to ensure document privacy."
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