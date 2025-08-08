
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remove Metadata from PPTX Files Using Java"
head_description: "Use GroupDocs.Redaction for Java to delete or edit hidden metadata in your PPTX files. Protect your content and keep your documents clean."

############################# Header ############################
title: "Clean Metadata in PPTX with Java Tools" 
description: "Clear personal details stored in metadata using Java. Works great for both personal and business documents."
subtitle: "Key Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What Is GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction gives Java developers tools to remove private content in PPTX files. Delete metadata, hide images, and clean text easily.

############################# Steps ############################
steps:
    enable: true
    title: "Remove Metadata in Pptx Files"
    content: |
      With GroupDocs.Redaction, your Java projects can clean hidden metadata in just a few steps.
      
      1. Set up a Redactor and load your Pptx file.
      2. Choose which metadata fields to clear.
      3. Run the redaction process.
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
        // Remove metadata from PPTX

        // Use Redactor to open the file
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Set up metadata fields to remove
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Apply changes and save
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Tools You Can Use"
  description: "GroupDocs.Redaction for Java helps you clear sensitive info from all major file types. Keep documents clean and ready to share."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Privacy Features Built In"
  features:
    # feature loop
    - title: "Remove Sensitive Text"
      content: "Find and delete names, emails, and other personal info from your files."

    # feature loop
    - title: "Hide Parts of Images"
      content: "Add overlays to cover areas in images you want to keep private."

    # feature loop
    - title: "Clean Metadata"
      content: "Erase background data like author or title before sharing your files."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remove Metadata Fields Example"
      content: |
        This example shows how you can delete metadata like author and title from a PPTX file.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open your PPTX file
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Target the Author metadata
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Target the Title metadata
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Apply redaction rules
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Save the redacted file
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
    title: "Remove Metadata from PPTX with Java"
    exclude: "PPTX"
    description: "Java makes it simple to delete hidden data in PPTX files. Great for keeping documents safe before sharing."
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