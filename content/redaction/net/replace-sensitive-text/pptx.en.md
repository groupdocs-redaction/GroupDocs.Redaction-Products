
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remove Private Text from PPTX Using C#"
head_description: "Quickly hide private content in your PPTX presentations with GroupDocs.Redaction for .NET and C#. Fast redaction, simple setup."

############################# Header ############################
title: "Edit or Hide Sensitive Text in PPTX Documents with .NET" 
description: "Keep your presentations clean and private. Use GroupDocs.Redaction for .NET and C# to remove anything you don’t want shared."
subtitle: "What You Can Do with GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers what they need to remove sensitive content from PPTX files. It handles text, visuals, comments, and metadata.

############################# Steps ############################
steps:
    enable: true
    title: "Steps to Clean Pptx Presentations"
    content: |
      Use GroupDocs.Redaction for .NET in your .NET app to remove or cover up sensitive content in just a few steps.
      
      1. Start a new Redactor and load your Pptx file.
      2. Pick the redaction rules you want to apply.
      3. Set the text to find and what to replace it with.
      4. Run redaction and save your file.
   
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
        // Redacting a PPTX presentation

        // Open the file with Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Pick the redaction settings
            // Choose the text to search and replace
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Apply changes and save the updated file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redaction Features You Can Use"
  description: "GroupDocs.Redaction for .NET helps you find and hide sensitive text, images, and hidden data across multiple file types. Perfect for sharing files safely."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Available redaction options"
  features:
    # feature loop
    - title: "Replace hidden text"
      content: "Search and swap private words or phrases anywhere in the file. Regex is supported too."

    # feature loop
    - title: "Cover images"
      content: "Use blocks to hide pictures or areas you want to mask. Control shape, size, and color."

    # feature loop
    - title: "Delete hidden details"
      content: "Clean metadata like author names, last edited dates, or comments to make your file clean."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact Using Regex Patterns"
      content: |
        Find and clean data like email addresses or IDs using regex. Great for repeatable redaction.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open your file
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Write an EMAIL regex pattern and set the replacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Apply your redaction settings
              redactor.Apply(redaction);

              // Save the redacted version
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Clean Up PPTX Files with .NET"
    exclude: "PPTX"
    description: "Make your PPTX documents safer to share by hiding private text with .NET. Quick, reliable results."
    items: 
        # format loop 1
        - name: "Redact PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Redact Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Redact Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Redact PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Redact DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Redact XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Redact PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPoint Open XML Presentation"


---