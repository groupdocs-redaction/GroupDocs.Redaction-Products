
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
head_title: "Redact Text in PPTX Using Overlays and C#"
head_description: "Hide private content in PPTX documents by covering it with colored squares using GroupDocs.Redaction for .NET. Keep your layout just the way it is."

############################# Header ############################
title: "Redact Text in PPTX with Overlays Using .NET" 
description: "With C# and GroupDocs.Redaction for .NET, it’s easy to protect sensitive data in PPTX files by hiding it from view."
subtitle: "Explore GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "What GroupDocs.Redaction for .NET Does"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET gives you the power to cover or remove content in PPTX documents using C#. Hide anything from names to notes, in just a few steps.

############################# Steps ############################
steps:
    enable: true
    title: "Hide private content in your Pptx files"
    content: |
      With GroupDocs.Redaction for .NET, .NET developers can protect documents in a few simple steps.
      
      1. Start a Redactor with the path to the file you want to clean up.
      2. Pick the redaction rules that match your needs.
      3. Choose a pattern to match and a color for the image overlay.
      4. Run the redaction and save your updated file.
   
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
        // Use overlays to cover text in PPTX

        // Initialize Redactor with your file
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Define how redaction should behave
            // Set what to hide and color of the overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Run and save the changes
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "More ways to protect your files"
  description: "GroupDocs.Redaction for .NET gives you the tools to hide data in different formats without changing layout."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Features that matter"
  features:
    # feature loop
    - title: "Replace text as needed"
      content: "Swap out text to keep key info away from unauthorized users."

    # feature loop
    - title: "Hide image areas"
      content: "Hide full images or certain parts by drawing overlay boxes."

    # feature loop
    - title: "Wipe hidden data"
      content: "Delete embedded metadata that could reveal private details."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regular expression redaction"
      content: |
        This example shows how to search and hide text with regular expressions
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Load a file for redaction
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Set redaction rules: search text and block color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Apply redaction logic
              redactor.Apply(redaction);

              // Save redacted result
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
    title: "Secure PPTX Text with .NET Tools"
    exclude: "PPTX"
    description: "Cover private areas or remove hidden data in PPTX files using .NET redaction features."
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