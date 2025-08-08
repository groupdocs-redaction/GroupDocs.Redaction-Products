
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Cover Sensitive Text in DOCX Using Overlays and C#"
head_description: "Use GroupDocs.Redaction for .NET to protect private text in DOCX files with simple square overlays. Keep your document layout unchanged and your data hidden."

############################# Header ############################
title: "Cover Text in DOCX with Overlays Using .NET" 
description: "Hide sensitive content in your DOCX documents using C# code. Great for legal, business, or personal document protection."
subtitle: "GroupDocs.Redaction for .NET features" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET helps C# developers hide or erase private content in DOCX files. Use it to block out text, images, and metadata in different file formats.

############################# Steps ############################
steps:
    enable: true
    title: "Remove private data from Docx documents"
    content: |
      GroupDocs.Redaction for .NET helps .NET developers clean up documents in just a few lines of code.
      
      1. Create a Redactor and provide your file path.
      2. Define how the redaction should work.
      3. Enter text to hide and choose the overlay color.
      4. Redact the file and save it.
   
    code:
      platform: "net"
      copy_title: "Copy"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Sample redactions"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "click to copy"
        copy_done: "copied"
      links:
        #  loop
        - title: "More examples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Hide text in DOCX using overlay blocks

        // Create a Redactor and load the file
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Set your redaction preferences
            // Enter the text and set block color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redact and save the updated document
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More ways to clean up documents"
  description: "With GroupDocs.Redaction for .NET, redact different file types to keep your content safe and professional."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Smart redaction built in"
  features:
    # feature loop
    - title: "Edit or remove text"
      content: "Find specific phrases and hide or replace them."

    # feature loop
    - title: "Hide image areas"
      content: "Cover sensitive spots in pictures or scanned pages."

    # feature loop
    - title: "Wipe hidden metadata"
      content: "Delete invisible info that may expose user or system data."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex for redacting content"
      content: |
        See how regular expressions can find and hide sensitive words
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the target file
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Set pattern and color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Apply redaction logic
              redactor.Apply(redaction);

              // Export the redacted document
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Copy"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Ready to get started?"
  description: "Try GroupDocs.Redaction features for free or request a license"
  items:
    #  loop
    - title: "Nuget download"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licensing"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Hide Content in DOCX with .NET"
    exclude: "DOCX"
    description: "Protect sensitive data in DOCX documents by covering it with overlays or removing it completely using .NET tools."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Presentation"


---