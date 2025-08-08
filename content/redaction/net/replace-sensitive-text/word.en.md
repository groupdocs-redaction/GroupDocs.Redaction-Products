
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Remove Private Text from WORD Using C#"
head_description: "Keep your WORD files private with GroupDocs.Redaction for .NET and C#. Quick and easy way to redact text."

############################# Header ############################
title: "Find and Remove Sensitive Text in WORD Files with .NET" 
description: "Use C# and GroupDocs.Redaction for .NET to protect your personal or work files. Your private info stays hidden."
subtitle: "Key Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What Is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# users the tools to clean WORD documents. Redact text, images, notes, and background data.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Word Files"
    content: |
      With GroupDocs.Redaction for .NET, it's easy to find and replace private content in .NET apps.
      
      1. Create a Redactor and open your Word file.
      2. Choose your redaction settings.
      3. Tell it what to search and what text to use as a replacement.
      4. Start the redaction and save your updated file.
   
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
        // Steps to redact content in a WORD document

        // Open the file with Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Adjust your redaction settings
            // Pick what to search for and what to replace it with
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Run the redaction and save your new WORD file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Redaction Tools"
  description: "GroupDocs.Redaction for .NET gives you powerful ways to hide or erase private info across many file types. Great for sharing safely."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Available redaction tools and settings"
  features:
    # feature loop
    - title: "Swap out private text"
      content: "Search and replace exact matches with smart text options, including regex support."

    # feature loop
    - title: "Hide private images"
      content: "Cover up full images or just parts of a page. You can adjust overlay color and size."

    # feature loop
    - title: "Erase hidden metadata"
      content: "Remove info like author names, edit history, and comments to protect your identity."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex for Smarter Redactions"
      content: |
        Find and remove data patterns like emails or IDs with regular expressions.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the file you want to clean
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Set an EMAIL regex pattern and choose the replacement text
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Run the redaction process
              redactor.Apply(redaction);

              // Save your final, redacted file
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
    title: "How to Redact WORD with .NET"
    exclude: "WORD"
    description: "Use .NET to clean WORD files. Keep your content private and secure from leaks."
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