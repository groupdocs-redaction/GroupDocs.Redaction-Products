
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
head_title: "Remove Private Text from DOCX Using C#"
head_description: "Quickly protect private content in your DOCX files with GroupDocs.Redaction for .NET and C#. Easy to use, fast to get results."

############################# Header ############################
title: "Find and Hide Sensitive Text in DOCX Documents with .NET" 
description: "Whether for personal or business use, GroupDocs.Redaction for .NET and C# help keep private information out of sight."
subtitle: "How GroupDocs.Redaction for .NET Helps You" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers the tools to find and clean up sensitive content in DOCX files. Works with text, images, notes, and more.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Content in Docx Files"
    content: |
      Follow these quick steps in your .NET project to clean up private text with GroupDocs.Redaction for .NET.
      
      1. Start a new Redactor and load the Docx file.
      2. Choose the redaction settings you want.
      3. Enter the text to find and what you want it replaced with.
      4. Run the redaction and save your file.
   
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
        // Redacting text in a DOCX file

        // Load your file using Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Pick the redaction options that suit your needs
            // Set what to search for and what to swap it with
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Run the tool and save your redacted file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Features"
  description: "With GroupDocs.Redaction for .NET, it's easy to remove hidden or visible content from different types of files. Great for sharing safely."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Overview of redaction tools"
  features:
    # feature loop
    - title: "Replace private text"
      content: "Search for specific text anywhere in the file and replace it. Works with plain text or patterns."

    # feature loop
    - title: "Cover sensitive images"
      content: "Mask parts of an image or full pages with overlays. You control colors, sizes, and positions."

    # feature loop
    - title: "Wipe hidden data"
      content: "Remove metadata like names, comments, or timestamps to make sure nothing is left behind."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Find and Redact Patterns with Regex"
      content: |
        Use regex to search for specific data types like email addresses or ID numbers and clean them automatically.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the file you need to clean
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Create an EMAIL regex rule and a replacement string
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Run the redaction using your settings
              redactor.Apply(redaction);

              // Save the updated file
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
    title: "Redact Data in DOCX Using .NET"
    exclude: "DOCX"
    description: "Protect personal or official info by hiding it in DOCX documents using .NET. It's simple and effective."
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