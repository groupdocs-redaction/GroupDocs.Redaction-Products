
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redact Sensitive Text in PDF with C#"
head_description: "Protect private information in your PDF files using GroupDocs.Redaction for .NET. Easily search and redact sensitive data."

############################# Header ############################
title: "Remove Sensitive Text from PDF Documents Using .NET" 
description: "Use C# and GroupDocs.Redaction for .NET to take full control over content in your PDF files. Redact personal, legal, or confidential data with ease."
subtitle: "What You Can Do with GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What is GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers everything they need to redact PDF content. Clean up text, images, annotations, comments, and metadata in popular file types.

############################# Steps ############################
steps:
    enable: true
    title: "How to Redact Content in Pdf Files"
    content: |
      Protect your documents in any .NET app using GroupDocs.Redaction for .NET. Redact sensitive text quickly and accurately.
      
      1. Initialize a Redactor and load your Pdf file.
      2. Set up the redaction options you need.
      3. Specify the text to search and the replacement text.
      4. Run the redaction and save the file.
   
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
        // How to redact text in a PDF file

        // Load your file using the Redactor constructor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Set your redaction preferences
            // Choose what to search and what to replace it with
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // Apply redactions and save the new PDF file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More Ways to Redact Documents"
  description: "GroupDocs.Redaction for .NET helps remove or hide sensitive content in multiple file formats. Keep documents clean and safe to share."
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
    - title: "Redact Text with Regex"
      content: |
        Use regular expressions to search and redact sensitive text patterns like emails or IDs.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the document you want to clean
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Define an EMAIL regex pattern and the text to use as replacement
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // Apply redaction rules
              redactor.Apply(redaction);

              // Save the final redacted file
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
    title: "Redact Content in PDF Using .NET"
    exclude: "PDF"
    description: "Protect official and personal data by redacting text in PDF files with .NET tools. Keep documents secure and private."
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