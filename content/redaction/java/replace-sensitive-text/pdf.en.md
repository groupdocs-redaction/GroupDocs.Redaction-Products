
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redact Sensitive Text in PDF Using Java"
head_description: "Use GroupDocs.Redaction for Java to find and remove private data from your PDF files. Simple, fast, and reliable text redaction."

############################# Header ############################
title: "Remove Sensitive Data from PDF Files with Java" 
description: "Clean up PDF files using Java and GroupDocs.Redaction for Java. Redact personal, legal, or business content easily."
subtitle: "What You Can Do with GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers a simple way to clean PDF files. Remove or replace text, images, comments, and hidden data.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Text in Pdf Files"
    content: |
      With GroupDocs.Redaction for Java, Java developers can remove sensitive content in just a few steps.
      
      1. Create a Redactor and load your Pdf file.
      2. Choose the redaction settings you want.
      3. Enter the text to search for and its replacement.
      4. Apply redaction and save the file.
   
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
        // How to clean up a PDF file

        // Create a Redactor and load the document
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Set your redaction rules
            // Add the text to remove and what to replace it with
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Apply the redaction and save the new file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Features"
  description: "GroupDocs.Redaction for Java removes sensitive info across many formats. Redact text, images, and metadata while keeping files readable."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Tools for text and image redaction"
  features:
    # feature loop
    - title: "Find and replace text"
      content: "Search for any words or phrases and replace them. Works with plain text or regex."

    # feature loop
    - title: "Cover image content"
      content: "Hide pictures or parts of images using colored overlays."

    # feature loop
    - title: "Clean metadata"
      content: "Remove author names, dates, or other hidden details before sharing."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Text with Regex"
      content: |
        Use regex to find and hide patterns like emails, IDs, or custom formats.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the document you want to edit
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Add an EMAIL regex pattern and replacement text
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Apply redaction to matching content
              redactor.apply(redaction);

              // Save the redacted version
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redact PDF Files with Java"
    exclude: "PDF"
    description: "Protect personal or business information by redacting PDF content with tools from Java."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML Presentation"


---