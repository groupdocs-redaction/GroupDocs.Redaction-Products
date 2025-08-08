
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remove Private Text from XLSX Using C#"
head_description: "Quickly clean private content from your XLSX files using GroupDocs.Redaction for .NET and C#. Fast and easy redaction."

############################# Header ############################
title: "Edit or Hide Sensitive Text in XLSX Documents with .NET" 
description: "With GroupDocs.Redaction for .NET and C#, you can remove personal or business info from your XLSX files and keep them safe to share."
subtitle: "What You Can Do with GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET lets C# developers search and remove sensitive info from XLSX files. It works with text, pictures, notes, and file data.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Text in Xlsx Files"
    content: |
      Use GroupDocs.Redaction for .NET inside your .NET project to hide or delete sensitive info in just a few steps.
      
      1. Create a Redactor and load the Xlsx file.
      2. Pick the redaction settings that fit your needs.
      3. Enter the text to find and what to replace it with.
      4. Run the redaction process and save your updated file.
   
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
        // Redacting text from a XLSX file

        // Use Redactor to open the file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choose your redaction options
            // Set the search and replacement text
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Apply redactions and save the cleaned file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Tools for Redacting"
  description: "GroupDocs.Redaction for .NET helps clean different types of content—text, images, or metadata—so your files are ready to share safely."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Redaction options shown"
  features:
    # feature loop
    - title: "Replace sensitive text"
      content: "Search through the file and replace anything confidential. Supports simple text and patterns."

    # feature loop
    - title: "Cover image areas"
      content: "Use overlays to hide visual data. Pick the color, area size, and page layout."

    # feature loop
    - title: "Remove extra data"
      content: "Delete metadata like author names, timestamps, or internal notes to avoid leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redact with Regex Rules"
      content: |
        Use regex to find and clean up patterns like phone numbers, emails, or other personal details.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the file to begin
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Write an EMAIL regex rule and pick a replacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Run the redaction based on your pattern
              redactor.Apply(redaction);

              // Save the redacted file
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
    title: "Hide Info in XLSX with .NET"
    exclude: "XLSX"
    description: "Clean your XLSX documents by removing personal or sensitive text using .NET tools. Keep your data private."
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