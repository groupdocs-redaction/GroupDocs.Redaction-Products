
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Hide Text in DOCX with Overlays Using Java"
head_description: "Use GroupDocs.Redaction for Java to block out private text in DOCX files. Keep layout unchanged while keeping sensitive data hidden."

############################# Header ############################
title: "Protect DOCX Text with Overlays in Java" 
description: "Quickly hide personal, legal, or business details in DOCX files with Java and GroupDocs.Redaction for Java."
subtitle: "Key Tools in GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What GroupDocs.Redaction for Java Is"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers tools to clean up DOCX files. Redact names, numbers, or notes with ease.

############################# Steps ############################
steps:
    enable: true
    title: "Redact Sensitive Content in Docx"
    content: |
      Easily clean documents in your Java project using GroupDocs.Redaction for Java.
      
      1. Initialize Redactor with your file.
      2. Choose how redaction should work.
      3. Select the text to hide and overlay color.
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
        // Cover text with overlays in DOCX

        // Create a Redactor and load your document
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choose redaction options
            // Pick text and color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Save the redacted version
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaction Tools for Everyday Use"
  description: "GroupDocs.Redaction for Java gives you simple options to hide sensitive details across documents while keeping them usable."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Easy redaction options"
  features:
    # feature loop
    - title: "Find and change text"
      content: "Hide or replace words in seconds."

    # feature loop
    - title: "Block parts of images"
      content: "Mask sections of pictures or scanned content."

    # feature loop
    - title: "Erase background info"
      content: "Remove hidden metadata like authorship or dates."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Find Text with Regex and Hide It"
      content: |
        Use pattern matching to hide key phrases automatically
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the document you want to redact
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Set regex pattern and overlay style
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Apply the redaction logic
              redactor.apply(redaction);

              // Save your cleaned document
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Redact DOCX Files Using Java"
    exclude: "DOCX"
    description: "Protect sensitive content in DOCX by hiding or removing it using the tools in Java."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Presentation"


---