
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:53
draft: false
lang: en
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cover Images in XLSX Files with Overlays Using Java"
head_description: "Use GroupDocs.Redaction for Java to cover sensitive images in XLSX files by adding colored overlays. Protect important data while keeping your document's structure unchanged."

############################# Header ############################
title: "Cover Private Images in XLSX Documents Using Java" 
description: "Keep sensitive image content safe in XLSX files with Java. Our easy-to-use tools make image redaction fast and reliable."
subtitle: "Key Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java provides Java developers with simple tools to hide or delete sensitive content from XLSX files. Redact text, images, and metadata across multiple document types.

############################# Steps ############################
steps:
    enable: true
    title: "Keep Private Data Safe in Xlsx Documents"
    content: |
      GroupDocs.Redaction for Java helps your Java apps protect documents with simple steps.
      
      1. Initialize a Redactor and load your Xlsx document.
      2. Set redaction options to match your project.
      3. Select the image section and pick an overlay color.
      4. Apply the redaction and save your file.
   
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
        // Cover sensitive image areas in XLSX

        // Create Redactor with file path
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Choose overlay dimensions and color
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Select the area to redact
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Apply overlay and save document
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Advanced Redaction Features"
  description: "With GroupDocs.Redaction for Java, you can hide or erase sensitive content in various file types while keeping document layout clean and readable."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Powerful Redaction Tools"
  features:
    # feature loop
    - title: "Find and Replace Text"
      content: "Search for private text and redact it to secure your documents."

    # feature loop
    - title: "Cover Image Content"
      content: "Apply overlays to hide confidential images or specific sections."

    # feature loop
    - title: "Clean Hidden Metadata"
      content: "Remove or update metadata to avoid sharing private details accidentally."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Image Details Using Overlays"
      content: |
        Learn how to protect sensitive parts of images in your documents with overlays.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Load the document to redact
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Set overlay size, color, and position
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Select a specific image area
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Apply overlay to mask the image
              redactor.apply(redaction);

              // Save the updated file
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
    title: "Cover XLSX Content with Java Redactions"
    exclude: "XLSX"
    description: "Use Java to mask or erase private content in XLSX files. A smart choice for securing business and personal documents."
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