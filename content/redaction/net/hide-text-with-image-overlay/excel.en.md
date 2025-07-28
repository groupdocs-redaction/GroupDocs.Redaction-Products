
---
############################# Static ############################
layout: "format"
date:  2025-07-28T09:54:21
draft: false
lang: en
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Generate Watermark for Excel Spreadsheets"
head_description: "Automate image watermarking with .NET C# for consistent security. Handle large batches of images efficiently."

############################# Header ############################
title: "Add Dynamic Watermarks in Excel Using .NET C#" 
description: "Automate the application of dynamic text or image watermarks across your Excel files using C#. Our tutorials show you how to maintain consistency and professionalism, with minimal manual intervention required."
subtitle: "GroupDocs.Redaction for .NET API" 

header_actions:
  enable: true
  items:
    #  loop
    - title: "Free Nuget download"
      link: "https://releases.groupdocs.com/redaction/net/"
      
############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET library"
    link: "/redaction/net/"
    link_title: "Learn more"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET enables seamless integration of watermarks into Excel spreadsheets, providing businesses with the tools necessary to secure and personalize their documents. This C# library supports a variety of watermark types and allows for detailed customization, including opacity, rotation, and alignment adjustments. Additionally, it comes equipped with advanced search capabilities to detect and manage existing watermarks, ensuring your spreadsheets are protected against tampering and unauthorized disclosures.

############################# Steps ############################
steps:
    enable: true
    title: "Effortlessly Generate Watermarks for Excel Documents"
    content: |
      **[GroupDocs.Redaction for .NET](https://products.groupdocs.com/redaction/net/):** Advanced Watermarking library for .NET applications. Empower your solution and secure documents with watermarks just in time.
      
      1. **Core Class: Watermarker.** The main class of our API is Redactor. You need to instantiate it before document processing. Do not forget to pass the Excel file to the constructor as a path or a stream object.
      2. **Crafting Your Watermark.** The next step is constructing a Watermark object of the desired type. It can be placed not only on a specific document page but also in native document parts like images or headers.
      3. **Fine-Tuning Appearance.** Set watermark properties such as height and width, top, left, central alignments, fonts and colors, etc.
      4. **Applying and Saving.** Use the {{TextWatermarkerBold}} method to add a new watermark. Feel free to add as many watermarks as you need. You may save the watermarked document to any location.
   
    code:
      platform: "net"
      copy_title: "Copy"
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
        // Generate image watermark in EXCEL file

        // Provide source file path to {{TextWatermarker}} constructor
        using (Watermarker watermarker = new Watermarker("input.xslx"))
        {
            // Generate image watermark instance with image file
            Font font = new Font("Arial", 19, FontStyle.Bold | FontStyle.Italic);
            TextWatermark watermark = new TextWatermark("my watermark", font);
            watermark.ForegroundColor = Color.Red;
            watermark.BackgroundColor = Color.Blue;
            watermarker.Add(watermark);

            // Save watermarked EXCEL result
            watermarker.Save("output.xslx");
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Elevate Your Watermarking Game"
  description: "Unlock advanced watermarking capabilities with our GroupDocs.Watermark API for .NET. This powerful tool allows for precise customization and application of watermarks across various document types to ensure maximum security and copyright adherence with minimal visual disruption."
  image: "/img/redaction/features_add.webp" # 500x500 px
  image_description: "Comprehensive Watermarking Solutions"
  features:
    # feature loop
    - title: "Sophisticated Tiling Options"
      content: "Extend your watermarks across entire documents seamlessly with our tiling options. This feature allows watermarks to cover the full document area, preventing removal and ensuring complete document protection without compromising on design or readability."

    # feature loop
    - title: "Vibrant Color Customization"
      content: "Add a splash of color to your watermarks! Our API enables full spectrum color customization, allowing you to apply watermarks that perfectly match your corporate branding or document style. Enhance visual appeal while maintaining robust security features."

    # feature loop
    - title: "Enhanced Security Settings"
      content: "Take document security to the next level with advanced watermark settings. Configure multi-layer watermarks, incorporating both visible and invisible elements, to protect against unauthorized copying and ensure only intended recipients can access critical information."
      
  code_samples:
    # code sample loop
    - title: "Generate PowerPoint watermark"
      content: |
        This example shows how to add watermark to the PPTX background images
        {{< landing/code title="C#">}}
        ```csharp {style=abap}
        
            //  Load PPTX presentation
            var loadOptions = new WordProcessingLoadOptions();
            using (Watermarker watermarker = new Watermarker("source.xslx", loadOptions))
            {
                //  Set up watermark properties
                using (ImageWatermark watermark = new ImageWatermark("logo.png"))
                {
                    WordProcessingImageEffects effects = new WordProcessingImageEffects();
                    effects.Brightness = 0.7;
                    effects.Contrast = 0.6;
                    effects.ChromaKey = Color.Red;
                    effects.BorderLineFormat.Enabled = true;
                    effects.BorderLineFormat.Weight = 1;

                    WordProcessingWatermarkSectionOptions options = new WordProcessingWatermarkSectionOptions();
                    options.Effects = effects;

                    //  Watermark slides background
                    watermarker.Add(watermark, options);
                }

                //  Save processed presentation
                watermarker.save("result.docx");
            }

        ```
        {{< /landing/code >}}


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
    title: "Embedding text and image Watermarks in Excel using C#"
    exclude: "EXCEL"
    description: "Utilize the GroupDocs.Watermark C# API to efficiently add custom watermarks to Excel spreadsheets. Enhance document security and corporate branding with tools designed for fast and flexible watermark integration."
    items: 
        # format loop 1
        - name: "Watermark PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe Portable Document Format"

        # format loop 2
        - name: "Watermark Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word and Open Office documents"
          
        # format loop 3
        - name: "Watermark Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel and Open Office spreadsheets"

        # format loop 4
        - name: "Watermark PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint and Open Office presentations"

        # format loop 5
        - name: "Watermark DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word Open XML Document"
          
        # format loop 6
        - name: "Watermark XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel Open XML Spreadsheet"
          
        # format loop 7
        - name: "Watermark PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint Open XML Presentation"


---