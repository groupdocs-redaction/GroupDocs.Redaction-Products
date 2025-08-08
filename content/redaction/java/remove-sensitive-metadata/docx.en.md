
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Delete Metadata from DOCX with Java"
head_description: "Use GroupDocs.Redaction for Java to clean hidden metadata in your DOCX files. Make sure your documents don’t reveal private information."

############################# Header ############################
title: "Clean Up Metadata in DOCX Documents Using Java" 
description: "Remove unwanted metadata from your DOCX files with Java. Keep your files private and secure for sharing or storage."
subtitle: "Key Tools Inside GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction helps Java developers remove private content from DOCX files. Easily redact text, images, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Erase Hidden Info from Docx Files"
    content: |
      GroupDocs.Redaction makes it easy to delete metadata in your Java apps.
      
      1. Initialize Redactor and load the Docx file.
      2. Set the tool to remove specific metadata fields.
      3. Apply redaction to delete the hidden info.
      4. Save the updated file.
   
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
        // Delete metadata from DOCX files

        // Open file with Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choose which metadata to remove
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Apply and save changes
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Protect Sensitive Data in Documents"
  description: "GroupDocs.Redaction for Java lets you hide private content from all types of files. Make sure no hidden data gets shared."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Metadata, Text, and Image Redaction Tools"
  features:
    # feature loop
    - title: "Text Redaction"
      content: "Find and delete sensitive text across your document."

    # feature loop
    - title: "Image Overlays"
      content: "Cover up parts of images to hide private visuals."

    # feature loop
    - title: "Metadata Cleaning"
      content: "Remove background metadata that may reveal hidden info."
      
  code_samples_ext:
    # code sample ext loop
    - title: "How to Remove Metadata"
      content: |
        This example shows how to delete hidden properties like Author and Title from a DOCX file.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open your DOCX document
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Select the Author field to clean
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Select the Title field to clean
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Run the redaction
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Save the final file
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Clean Metadata from DOCX with Java"
    exclude: "DOCX"
    description: "Use Java to remove hidden metadata from DOCX documents. Great for privacy and data protection."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact Image"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Popular image formats"

        # format loop 6
        - name: "Redact Photo"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Photo formats"

        # format loop 7
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 8
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 9
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "PowerPoint Open XML Presentation"

        # format loop 10
        - name: "Redact JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "JPEG Image"


---