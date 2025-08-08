
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remove Private Text from PPTX Using Java"
head_description: "Protect sensitive details in your PPTX presentations with GroupDocs.Redaction for Java and Java. Easy redaction with fast results."

############################# Header ############################
title: "Clean Up Text in PPTX Files with Java" 
description: "Use GroupDocs.Redaction for Java and Java to hide or remove content in your PPTX slides. Great for business, legal, or personal use."
subtitle: "What You Can Do with GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers a solid way to edit or hide content in PPTX files. Work with text, images, metadata, and comments with full control.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Content in Pptx Presentations"
    content: |
      With GroupDocs.Redaction for Java, you can clean your Java presentations in a few quick steps.
      
      1. Create a Redactor and load your Pptx file.
      2. Pick the redaction settings that match your needs.
      3. Set the search term and the replacement content.
      4. Apply changes and save your updated file.
   
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
        // Redacting text in a PPTX presentation

        // Load your document using Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Set the redaction options
            // Choose text to find and what to replace it with
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redact and save the file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Tools"
  description: "GroupDocs.Redaction for Java makes it simple to hide or delete private content from a wide range of files. Perfect for keeping your data safe before sharing."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Options to remove text, images, and metadata"
  features:
    # feature loop
    - title: "Replace text anywhere"
      content: "Search and replace words or phrases across slides. Works with exact text or patterns."

    # feature loop
    - title: "Hide visual content"
      content: "Cover parts of a slide or image using overlay boxes in the color of your choice."

    # feature loop
    - title: "Remove metadata"
      content: "Delete background data like author, creation date, or notes that may contain private info."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex-Based Redaction"
      content: |
        Use regular expressions to find and remove patterns like emails, phone numbers, or codes.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open your file
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Add an EMAIL regex pattern and replacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Apply redaction based on the pattern
              redactor.apply(redaction);

              // Save the clean version
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
    title: "Redact Content in PPTX Using Java"
    exclude: "PPTX"
    description: "Remove private or sensitive details from PPTX documents using Java. A reliable way to keep your files secure."
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