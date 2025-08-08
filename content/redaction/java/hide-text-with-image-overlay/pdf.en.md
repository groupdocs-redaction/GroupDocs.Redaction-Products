
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
head_title: "Cover Private Text in PDF with Overlays Using Java"
head_description: "GroupDocs.Redaction for Java lets you hide sensitive information in PDF files by placing colored boxes. Protect data without changing how your file looks."

############################# Header ############################
title: "Mask Text in PDF Documents Using Overlays in Java" 
description: "Take full control of PDF file content with Java. Use redaction to shield financial, legal, or personal details."
subtitle: "Top Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What GroupDocs.Redaction for Java Offers"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers an easy way to hide or remove content from PDF files. Cover up text, images, and metadata across different document types.

############################# Steps ############################
steps:
    enable: true
    title: "Secure Confidential Info in Pdf Files"
    content: |
      GroupDocs.Redaction for Java makes it easy for Java developers to hide private content with a few simple steps.
      
      1. Start a Redactor and load your Pdf file.
      2. Set up your redaction preferences.
      3. Choose what to find and select your overlay color.
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
        // Cover text in PDF using colored overlays

        // Pass file path to the Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Adjust redaction settings
            // Set target text and color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Apply and save the redacted PDF
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Control What’s Visible in Documents"
  description: "GroupDocs.Redaction for Java lets you block out or remove parts of your files while keeping them easy to view and share."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Powerful Redaction Tools"
  features:
    # feature loop
    - title: "Target and hide text"
      content: "Search your document and hide specific words or phrases to protect private info."

    # feature loop
    - title: "Cover images"
      content: "Add overlays to fully or partially hide visuals."

    # feature loop
    - title: "Remove metadata"
      content: "Clear hidden document details to avoid unintentional exposure."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide Text Using Regex"
      content: |
        This example uses regular expressions to find and hide specific content
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Load the file you want to process
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Set the text pattern and overlay color
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Apply the redaction
              redactor.apply(redaction);

              // Save your changes
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
    title: "Protect PDF Files with Java"
    exclude: "PDF"
    description: "Use Java to cover or erase content in PDF documents. A great way to keep private info safe and secure."
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