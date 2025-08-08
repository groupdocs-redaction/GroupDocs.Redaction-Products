
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: en
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Hide Sensitive Text in POWERPOINT with C# Overlays"
head_description: "GroupDocs.Redaction for .NET lets you hide parts of POWERPOINT files using simple overlay redactions. Keep documents safe without changing structure."

############################# Header ############################
title: "Text Redaction in POWERPOINT with Overlays Using .NET" 
description: "Protect content in your POWERPOINT files by placing overlay blocks with help from C# and GroupDocs.Redaction for .NET."
subtitle: "Tools inside GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "About This Tool"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET helps C# users clean up POWERPOINT documents by covering or deleting text, metadata, or images as needed.

############################# Steps ############################
steps:
    enable: true
    title: "Secure content in Powerpoint documents"
    content: |
      Use GroupDocs.Redaction for .NET in your .NET apps to clean files before distribution.
      
      1. Pass the file path to a new Redactor instance.
      2. Set what and how you want to redact.
      3. Define the text pattern and set the overlay color.
      4. Redact and save your updated file.
   
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
        // Overlay text in POWERPOINT to hide details

        // Use Redactor to open your file
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Adjust settings for redaction
            // Select text and a blocking color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Run and save your redacted file
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Hide sensitive data easily"
  description: "Use GroupDocs.Redaction for .NET to remove or cover content across document types — ideal for protecting data in legal, business, or personal files."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Flexible document redaction"
  features:
    # feature loop
    - title: "Swap out text"
      content: "Find words or numbers and replace or hide them."

    # feature loop
    - title: "Redact photos or sections"
      content: "Add overlays to images or selected spots on a page."

    # feature loop
    - title: "Remove extra data"
      content: "Clean out metadata that may reveal hidden info."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Find & redact with regex"
      content: |
        This shows how regex can help identify and hide text
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the file that needs redaction
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Set up your rules using regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Run redaction process
              redactor.Apply(redaction);

              // Save the cleaned version
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
    title: "Hide Content in POWERPOINT Using .NET"
    exclude: "POWERPOINT"
    description: "Add overlays or clear data from your POWERPOINT files to keep sensitive content private using .NET."
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