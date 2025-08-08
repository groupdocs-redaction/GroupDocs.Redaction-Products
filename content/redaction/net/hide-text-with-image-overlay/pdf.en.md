
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
head_title: "Hide Sensitive Text in PDF with Overlays Using C#"
head_description: "With GroupDocs.Redaction for .NET, you can hide sensitive text in PDF files by placing colored square overlays. Keep private data safe without changing the original layout."

############################# Header ############################
title: "Hide Sensitive Text in PDF Documents with Overlays Using .NET" 
description: "Take control of PDF file content using C#. Use redactions to protect legal, financial, and personal information."
subtitle: "GroupDocs.Redaction for .NET features" 

############################# About ############################
about:
    enable: true
    title: "About GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives C# developers the tools to hide or remove content from PDF files. It’s a simple way to keep documents safe. You can cover text, images, or metadata in many file types.

############################# Steps ############################
steps:
    enable: true
    title: "Protect business data in Pdf documents"
    content: |
      GroupDocs.Redaction for .NET: built to help your .NET apps keep documents safe. Redact private info quickly and easily.
      
      1. Create a Redactor instance and provide the path to the Pdf file you want to redact.
      2. Configure redaction settings to get the result you need.
      3. Just set the text pattern to search for and pick the overlay color.
      4. Redact the document and save the changes.
   
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
        // Hide sensitive text in PDF with overlay images

        // Pass the file path to the Redactor constructor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Set up the redaction options
            // Define the text pattern and overlay color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redact and save the updated PDF file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redact content in documents"
  description: "With GroupDocs.Redaction for .NET, you can remove or hide content across many file types. Protect sensitive information while keeping your documents easy to read and share."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Advanced Redaction Options"
  features:
    # feature loop
    - title: "Edit text anywhere"
      content: "Search and replace any matching text in your document to help secure confidential data."

    # feature loop
    - title: "Cover images"
      content: "Place overlays over full images or selected areas to hide private visuals."

    # feature loop
    - title: "Handle metadata"
      content: "Erase or change hidden metadata to prevent unwanted data leaks."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use regular expressions to hide text"
      content: |
        This example shows how to find and hide text using regular expressions
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the document you want to redact
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Define the redaction settings: text pattern and color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Apply redaction to the content
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
    title: "Protect PDF Content with .NET Redactions"
    exclude: "PDF"
    description: "Use .NET to cover or erase content in PDF files. It’s a smart choice for keeping sensitive or official documents secure."
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