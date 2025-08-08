
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remove Private Text from POWERPOINT Using Java"
head_description: "Secure sensitive data in your POWERPOINT files using GroupDocs.Redaction for Java and Java. Fast, easy text redaction."

############################# Header ############################
title: "Edit or Hide Sensitive Text in POWERPOINT Documents with Java" 
description: "Protect sensitive content in your POWERPOINT files using Java and GroupDocs.Redaction for Java. Personal or business, your data stays private."
subtitle: "What You Can Do with GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers everything they need to redact POWERPOINT content. Clean up text, images, annotations, comments, and metadata in popular file types.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Clean Content in Powerpoint Docs"
    content: |
      Use GroupDocs.Redaction for Java to remove or cover private content in your Java apps. Simple and fast redaction.
      
      1. Initialize a Redactor and load your Powerpoint file.
      2. Set up the redaction options you need.
      3. Specify the text to search and the replacement text.
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
        // How to redact text in a POWERPOINT file

        // Load your file using the Redactor constructor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Set your redaction preferences
            // Choose what to search and what to replace it with
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Apply redactions and save the new POWERPOINT file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Extra Redaction Tools"
  description: "GroupDocs.Redaction for Java helps remove or hide sensitive content in multiple file formats. Keep documents clean and safe to share."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redaction tools and options"
  features:
    # feature loop
    - title: "Replace confidential text"
      content: "Find and replace matching text anywhere in your file. Supports regex and smart search options."

    # feature loop
    - title: "Hide sensitive images"
      content: "Cover images or specific areas with overlays. Adjust page settings, colors, and more."

    # feature loop
    - title: "Clean hidden metadata"
      content: "Remove hidden data like authorship, timestamps, or comments to protect privacy."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pattern-Based Redaction with Regex"
      content: |
        Use regular expressions to search and redact sensitive text patterns like emails or IDs.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the document you want to clean
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Define an EMAIL regex pattern and the text to use as replacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Apply redaction rules
              redactor.apply(redaction);

              // Save the final redacted file
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
    title: "Redact Content in POWERPOINT Using Java"
    exclude: "POWERPOINT"
    description: "Protect official and personal data by redacting text in POWERPOINT files with Java tools. Keep documents secure and private."
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