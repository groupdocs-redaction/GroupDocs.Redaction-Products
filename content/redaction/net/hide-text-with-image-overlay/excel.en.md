
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hide Content in EXCEL with Overlay Redaction and C#"
head_description: "Cover text in EXCEL documents using solid color blocks with GroupDocs.Redaction for .NET. An easy way to guard private content."

############################# Header ############################
title: "Overlay Redaction for EXCEL Files in .NET" 
description: "Use C# code to hide text and protect data inside your EXCEL files. A clean solution for document safety."
subtitle: "What GroupDocs.Redaction for .NET includes" 

############################# About ############################
about:
    enable: true
    title: "Why Choose GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET is made for C# developers who want to redact or delete content in EXCEL files. Use it to work with text, metadata, and images.

############################# Steps ############################
steps:
    enable: true
    title: "Redact sensitive info in Excel format"
    content: |
      GroupDocs.Redaction for .NET is a simple tool for .NET developers to clean up documents before sharing.
      
      1. Start a Redactor and load your Excel file.
      2. Decide on the redaction settings for your task.
      3. Add a keyword or phrase to redact and choose a color.
      4. Run the tool and save the changes.
   
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
        // Use overlays to hide text in EXCEL

        // Create a Redactor and load your file
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Pick redaction rules
            // Enter what to hide and choose a color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Apply redaction and save the file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Key features for data protection"
  description: "GroupDocs.Redaction for .NET lets you hide or delete data inside your documents without losing layout or meaning."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Built for document safety"
  features:
    # feature loop
    - title: "Change text content"
      content: "Swap out or hide selected words across the file."

    # feature loop
    - title: "Redact visuals"
      content: "Hide photos or areas with simple blocks."

    # feature loop
    - title: "Clear metadata"
      content: "Get rid of background data like author names or timestamps."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex text redaction"
      content: |
        Here’s how to use regex to find and hide content in a file
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load the document to process
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Add pattern and overlay settings
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Apply the changes
              redactor.Apply(redaction);

              // Save and close the redacted document
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
    title: "Redact EXCEL Files with .NET"
    exclude: "EXCEL"
    description: "Cover sensitive content in EXCEL using square overlays or clear redactions with .NET features."
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