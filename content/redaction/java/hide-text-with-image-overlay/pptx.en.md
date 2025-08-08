
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
head_title: "Hide Text in PPTX Presentations with Java Overlays"
head_description: "Use GroupDocs.Redaction for Java to block sensitive content in PPTX files with color overlays. Keep slides intact while hiding key info."

############################# Header ############################
title: "Mask Text in PPTX Presentations with Java" 
description: "Easily protect personal or business details in your PPTX slides using Java and GroupDocs.Redaction for Java."
subtitle: "Explore Features of GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "What GroupDocs.Redaction for Java Does"
    link: "/redaction/java/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java lets Java developers hide or remove text, images, or metadata in PPTX presentations in just a few steps.

############################# Steps ############################
steps:
    enable: true
    title: "Redact Private Content in Pptx Slides"
    content: |
      GroupDocs.Redaction for Java makes content protection simple for Java developers.
      
      1. Set up a Redactor with your presentation path.
      2. Choose how redaction should behave.
      3. Add the text pattern and overlay color.
      4. Redact the slide and save it.
   
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
        // Use overlays to block text in PPTX

        // Initialize Redactor with your presentation
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Select your redaction preferences
            // Set the text and overlay color
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Run the redaction and save the slide deck
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Powerful Redaction Tools"
  description: "With GroupDocs.Redaction for Java, block or remove sensitive content in your presentations without touching layout or formatting."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Features that work across slides"
  features:
    # feature loop
    - title: "Hide or replace text"
      content: "Protect names, terms, or notes that shouldn't be seen."

    # feature loop
    - title: "Cover visual areas"
      content: "Add overlays to pictures or graphic sections of slides."

    # feature loop
    - title: "Clear metadata"
      content: "Erase behind-the-scenes info that may reveal authorship or editing history."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Text with Regex"
      content: |
        Use regular expressions to find and cover sensitive words
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Open the presentation file
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Set search pattern and overlay color
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Run redaction rules
              redactor.apply(redaction);

              // Save the final version
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
    title: "Protect PPTX Slides with Java Tools"
    exclude: "PPTX"
    description: "Cover sensitive content or remove it completely from PPTX presentations using Java redaction features."
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