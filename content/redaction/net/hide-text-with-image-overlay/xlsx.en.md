
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
head_title: "Hide Text in XLSX with C# Overlays"
head_description: "GroupDocs.Redaction for .NET helps hide text in XLSX files using colored boxes. Keep information safe without changing your document’s format."

############################# Header ############################
title: "Mask Text in XLSX Files Using Overlays and .NET" 
description: "Use C# and GroupDocs.Redaction for .NET to add simple overlays that block sensitive text in your XLSX files."
subtitle: "Features of GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "How GroupDocs.Redaction for .NET Helps"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET lets developers using C# hide unwanted content in XLSX files. Block out anything—from words to pictures—across different file types.

############################# Steps ############################
steps:
    enable: true
    title: "Keep sensitive info safe in Xlsx documents"
    content: |
      GroupDocs.Redaction for .NET helps .NET developers protect files. Hide private content with just a few lines of code.
      
      1. Create a new Redactor object with your Xlsx file path.
      2. Adjust redaction settings as needed.
      3. Add a search pattern and pick a color for the overlay block.
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
        // Cover private text in XLSX using overlays

        // Load the file with Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // Choose how redaction will work
            // Enter text to hide and select overlay color
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Process the file and save changes
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Smart redaction features"
  description: "Use GroupDocs.Redaction for .NET to erase or hide content in various file types. Keep private details away from public view."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Practical redaction tools"
  features:
    # feature loop
    - title: "Change any text"
      content: "Search and update any string in the document to protect data."

    # feature loop
    - title: "Hide image content"
      content: "Add squares or rectangles to cover sensitive parts of pictures."

    # feature loop
    - title: "Clean up metadata"
      content: "Remove or overwrite background file details before sharing."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Match and hide with regex"
      content: |
        Learn how to detect and redact content using regular expressions
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Open the target document
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // Set up pattern and overlay color
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Apply redaction rules
              redactor.Apply(redaction);

              // Export the redacted version
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
    title: "Use .NET to Hide Info in XLSX Files"
    exclude: "XLSX"
    description: "Add overlays or remove parts of your XLSX documents to protect sensitive details with help from .NET."
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