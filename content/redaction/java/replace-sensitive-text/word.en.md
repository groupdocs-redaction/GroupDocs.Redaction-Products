
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
head_title: "Remove Private Text from WORD Using Java"
head_description: "Keep your WORD files safe by redacting sensitive data with GroupDocs.Redaction for Java and Java. Fast and simple cleanup."

############################# Header ############################
title: "Edit or Remove Text in WORD Files with Java" 
description: "Protect important content in your WORD files using GroupDocs.Redaction for Java and Java. Redact business, legal, or personal data with confidence."
subtitle: "What You Can Do with GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What Is GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java gives Java developers a reliable way to redact WORD files. Clean up text, images, comments, and hidden details with just a few lines of code.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Redact Word Documents"
    content: |
      Use GroupDocs.Redaction for Java in your Java projects to clean files before sharing them.
      
      1. Create a Redactor and load the Word document.
      2. Set your preferred redaction options.
      3. Choose the text you want to find and replace.
      4. Apply the redaction and save your file.
   
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
        // Redacting a WORD document

        // Load the file using Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choose your redaction rules
            // Enter the search and replacement text
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Run redaction and save the new file
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Features"
  description: "GroupDocs.Redaction for Java can help you clean up sensitive info from different file types. Remove text, pictures, and hidden metadata quickly."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redact text, images, and metadata"
  features:
    # feature loop
    - title: "Search and replace text"
      content: "Find specific content and replace or delete it across the whole file. Regex supported."

    # feature loop
    - title: "Cover parts of pages"
      content: "Use overlays to hide photos or sections of the document."

    # feature loop
    - title: "Clear metadata"
      content: "Erase extra info like author, timestamps, or tracked edits."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaction with Regex Patterns"
      content: |
        Search for text using regular expressions to hide content like phone numbers, dates, or IDs.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Load your document
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Set an EMAIL regex pattern and replacement value
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Apply the redaction
              redactor.apply(redaction);

              // Save the updated document
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
    title: "Redact Content in WORD with Java"
    exclude: "WORD"
    description: "Hide or remove personal and private content from WORD documents using Java. A simple way to keep your files safe."
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