
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cover Text in EXCEL with Overlays and Java"
head_description: "Protect sensitive content in EXCEL files by applying color overlays using GroupDocs.Redaction for Java. Keep the document’s layout intact."

############################# Header ############################
title: "Redact EXCEL Data with Overlays in Java" 
description: "Use Java code to mask sensitive info in EXCEL spreadsheets. An effective way to keep data private."
subtitle: "Key GroupDocs.Redaction for Java Features" 

############################# About ############################
about:
    enable: true
    title: "Why Choose GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java is built for Java developers who want to hide or clean up content in EXCEL spreadsheets quickly.

############################# Steps ############################
steps:
    enable: true
    title: "Hide Info in Excel Spreadsheets"
    content: |
      GroupDocs.Redaction for Java helps Java developers protect files by hiding private info in just a few lines.
      
      1. Start a Redactor and load your spreadsheet.
      2. Set redaction rules as needed.
      3. Choose text and overlay color.
      4. Apply and save the file.
   
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
        // Use overlays to hide text in EXCEL

        // Create a Redactor and load your file
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Pick redaction rules
            // Enter what to hide and choose a color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Apply redaction and save the file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Essential Data Protection Tools"
  description: "Hide or delete sensitive info from your spreadsheets without breaking layout or meaning using GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Designed for secure data cleanup"
  features:
    # feature loop
    - title: "Edit or hide text"
      content: "Find and block out any text that needs protection."

    # feature loop
    - title: "Cover sensitive visuals"
      content: "Apply colored blocks over chart areas or images."

    # feature loop
    - title: "Remove metadata"
      content: "Clear document history, author names, or timestamps."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex Redaction"
      content: |
        Use regex to find and hide text automatically
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open your spreadsheet
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Set the pattern and overlay details
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Apply redaction
              redactor.apply(redaction);

              // Save the cleaned-up version
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
    title: "Redact EXCEL Sheets with Java"
    exclude: "EXCEL"
    description: "Hide or clear sensitive data in EXCEL using overlays and tools from Java."
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