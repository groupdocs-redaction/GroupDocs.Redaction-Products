
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Block Text in XLSX with Java Overlays"
head_description: "GroupDocs.Redaction for Java lets you cover sensitive info in XLSX files with colored blocks. Hide data while keeping layout intact."

############################# Header ############################
title: "Hide Data in XLSX with Overlays Using Java" 
description: "Use Java and GroupDocs.Redaction for Java to mask private content in XLSX files without affecting format."
subtitle: "Main Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Why GroupDocs.Redaction for Java Works"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java lets Java developers secure XLSX files. Hide text, pictures, or metadata quickly.

############################# Steps ############################
steps:
    enable: true
    title: "Protect Info in Xlsx Documents"
    content: |
      Keep your documents safe using simple code with GroupDocs.Redaction for Java in Java.
      
      1. Create a Redactor with the file path.
      2. Set up your redaction logic.
      3. Choose the keyword and overlay color.
      4. Redact and save the file.
   
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
        // Hide info in XLSX using blocks

        // Load the file with Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Set up redaction preferences
            // Add text and color to block
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Save the updated document
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Built-In Privacy Features"
  description: "Use GroupDocs.Redaction for Java to block or delete content in your files while keeping structure untouched."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Easy privacy tools"
  features:
    # feature loop
    - title: "Change or hide text"
      content: "Edit or redact specific words easily."

    # feature loop
    - title: "Mask image parts"
      content: "Add overlays to hide photos or graphic details."

    # feature loop
    - title: "Remove hidden info"
      content: "Wipe metadata like user info or file history."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex to Redact Content"
      content: |
        Automatically find and hide text with pattern matching
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the spreadsheet
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Define pattern and overlay color
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Apply redaction rules
              redactor.apply(redaction);

              // Export your result
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
    title: "Redact XLSX Data Using Java"
    exclude: "XLSX"
    description: "Use overlays or delete content in XLSX files to keep sensitive data private with Java."
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