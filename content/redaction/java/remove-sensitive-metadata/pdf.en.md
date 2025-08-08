
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Clean Metadata in PDF Using Java"
head_description: "Use GroupDocs.Redaction for Java to delete or update hidden metadata in PDF files. Remove private info before sharing your documents."

############################# Header ############################
title: "Remove Metadata from PDF Files with Java" 
description: "Keep personal and business info safe in your PDF files using Java. Simple tools that help protect your data."
subtitle: "Main Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives Java developers tools to hide text, image content, and metadata in PDF documents.

############################# Steps ############################
steps:
    enable: true
    title: "Clean Metadata in Pdf Documents"
    content: |
      Get started with GroupDocs.Redaction to protect metadata in your Java projects.
      
      1. Set up a Redactor and open your Pdf file.
      2. Choose to delete all metadata fields.
      3. Run the redaction to clear hidden data.
      4. Save the file with metadata removed.
   
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
        // Clean metadata in PDF files

        // Use Redactor to open the file
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Set metadata redaction settings
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Apply and save your changes
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Remove Sensitive Info from Files"
  description: "GroupDocs.Redaction for Java lets you clean up private content in different document formats. Keep your files secure and easy to share."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Core Redaction Features"
  features:
    # feature loop
    - title: "Text Redaction"
      content: "Find and delete personal or sensitive words in your documents."

    # feature loop
    - title: "Cover Images"
      content: "Place overlays on images to hide private visuals."

    # feature loop
    - title: "Metadata Removal"
      content: "Erase hidden metadata that could leak private information."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Clear Hidden Metadata"
      content: |
        This example shows how to change or delete metadata in PDF files.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open PDF file using redactor
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Target the Author metadata field
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Target the Title metadata field
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Run metadata cleanup
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
    title: "Secure PDF Files with Java Metadata Redaction"
    exclude: "PDF"
    description: "Erase hidden fields in your PDF files using Java. Protect privacy with a simple metadata cleanup tool."
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