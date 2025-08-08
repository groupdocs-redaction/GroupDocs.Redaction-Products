
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hide Images in WORD with Overlays Using Java"
head_description: "With GroupDocs.Redaction for Java, you can cover sensitive images in WORD files using colored overlays. Protect private data without changing the document layout."

############################# Header ############################
title: "Protect Sensitive Images in WORD Files Using Java" 
description: "Secure personal and business visuals in WORD documents with Java. Fast and reliable image redaction made simple."
subtitle: "Main Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers easy-to-use tools to hide or erase content from WORD files. Redact text, images, and metadata across various formats.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Confidential Data Safe in Word Files"
    content: |
      GroupDocs.Redaction for Java makes it easy for Java apps to hide private information inside documents.
      
      1. Initialize a Redactor and load the Word file.
      2. Define the redaction settings you need.
      3. Highlight the image area and select an overlay color.
      4. Run the redaction and save your updated document.
   
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
        // Hide sensitive image content in WORD

        // Load the file using Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choose overlay color and size
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Mark image area to cover
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Apply overlay and save the file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Tools to Hide and Remove Content"
  description: "GroupDocs.Redaction for Java helps you hide or erase sensitive data in various file formats. Keep your documents secure and well-structured."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Effective Redaction Features"
  features:
    # feature loop
    - title: "Find & Replace Text"
      content: "Search documents for private text and replace it to ensure data security."

    # feature loop
    - title: "Cover Image Areas"
      content: "Hide full images or selected regions by applying overlays."

    # feature loop
    - title: "Erase Metadata"
      content: "Remove or modify hidden metadata to protect confidential information."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Overlays to Hide Image Data"
      content: |
        This sample shows how to protect sensitive image content in documents with overlays.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Load the document
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Set overlay properties like size, position, and color
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Mark the image area on the first page
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Cover the area with the overlay
              redactor.apply(redaction);

              // Save the redacted document
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
    title: "Hide Content in WORD Files with Java"
    exclude: "WORD"
    description: "Use Java to hide or remove sensitive data in WORD files. An effective way to keep documents secure."
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