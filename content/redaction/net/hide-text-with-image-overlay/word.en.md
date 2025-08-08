
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
head_title: "Use Overlays to Hide Text in WORD via C#"
head_description: "GroupDocs.Redaction for .NET makes it easy to cover sensitive text in WORD with blocks of color. Keep the document intact while hiding what matters."

############################# Header ############################
title: "Overlay Text Redaction in WORD Files with .NET" 
description: "Protect important information in WORD files using square overlays written in C#. Ideal for security and compliance."
subtitle: "See what GroupDocs.Redaction for .NET can do" 

############################# About ############################
about:
    enable: true
    title: "Meet GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       Developers working with C# can use GroupDocs.Redaction for .NET to hide or remove parts of WORD documents. Hide names, numbers, or other data in just a few lines of code.

############################# Steps ############################
steps:
    enable: true
    title: "Redact private data in Word files"
    content: |
      GroupDocs.Redaction for .NET helps .NET developers remove sensitive content fast. Follow these steps to secure your files.
      
      1. Initialize a Redactor with the path to your Word file.
      2. Set the rules for redacting content.
      3. Choose the text pattern and the color to cover it.
      4. Apply redaction and save your redacted file.
   
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
        // Redact text in WORD using image overlays

        // Load your file with the Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Define what needs to be redacted
            // Add the matching text and overlay color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Run redaction and save the final file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Extra redaction tools"
  description: "With GroupDocs.Redaction for .NET, you can keep files clean by removing visible and hidden information while keeping the layout intact."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Clean and secure output"
  features:
    # feature loop
    - title: "Replace exposed text"
      content: "Hide words or phrases that may leak important data."

    # feature loop
    - title: "Cover up images"
      content: "Mark out sensitive visuals with solid blocks."

    # feature loop
    - title: "Erase hidden info"
      content: "Clear out background metadata to keep files private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Hide matched text with regex"
      content: |
        This sample shows how to use regular expressions to find and cover sensitive content
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the document to redact
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Choose pattern and color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Run redaction rules
              redactor.Apply(redaction);

              // Save and review the redacted copy
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
    title: "Protect Your WORD Files Using .NET"
    exclude: "WORD"
    description: "With .NET, you can hide text or wipe out metadata in WORD formats without breaking layout or formatting."
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