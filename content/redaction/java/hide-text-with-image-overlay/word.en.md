
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Redact Text in WORD Using Java Overlays"
head_description: "Use GroupDocs.Redaction for Java to cover sensitive text in WORD files with blocks of color while keeping the document structure unchanged."

############################# Header ############################
title: "Overlay Redaction in WORD Files with Java" 
description: "Hide important details in your WORD documents using color overlays powered by Java and GroupDocs.Redaction for Java."
subtitle: "What GroupDocs.Redaction for Java Can Do" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java users full control over WORD redaction. Hide anything you want—text, visuals, or metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Private Info in Word Format"
    content: |
      GroupDocs.Redaction for Java gives Java developers quick ways to clean up files and secure their content.
      
      1. Start a Redactor and load the Word file.
      2. Choose your redaction options.
      3. Add text pattern and overlay color.
      4. Run the redaction and save the file.
   
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
        // Hide text using overlays in WORD

        // Use Redactor to open the document
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Set redaction preferences
            // Add keywords and select color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Apply and save your redacted file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Capabilities"
  description: "Use GroupDocs.Redaction for Java to remove both visible and hidden content from files while keeping layout intact."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Simple, clean output"
  features:
    # feature loop
    - title: "Replace text"
      content: "Cover words or terms that shouldn't be seen."

    # feature loop
    - title: "Mask visuals"
      content: "Use colored overlays to hide images or parts of them."

    # feature loop
    - title: "Erase metadata"
      content: "Remove details hidden in file properties."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex-Powered Redaction"
      content: |
        Learn how to use regex to automatically hide specific content
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Load the document to redact
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Define your regex pattern and overlay color
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Apply the redaction
              redactor.apply(redaction);

              // Save your clean version
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
    title: "Redact Content in WORD with Java"
    exclude: "WORD"
    description: "Keep your WORD documents private by hiding or removing sensitive data using Java."
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