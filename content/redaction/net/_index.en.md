---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: en
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Redact sensitive data in your documents using .NET"
head_description: "Safeguard your business documents with GroupDocs.Redaction for .NET. Easily redact, hide, or remove confidential content from PDFs, Word, Excel, PowerPoint, and image files."

############################# Header ############################
title: "Secure Your Content with GroupDocs.Redaction"
description: "Redact, hide, or permanently remove sensitive information and metadata from PDFs, Word documents, spreadsheets, presentations, and images using our powerful .NET solution."
words:
  for: "for"

actions:
  main: "Nuget Download"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Licensing"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Ready to Get Started?"
  description: "Try GroupDocs.Redaction features for free or request a license."

release:
  title: "Version {0} Released"
  notes: "See what’s new"
  downloads: "Downloads"

code:
  title: "How to Redact File Content"
  more: "More examples"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Pass the input file to a Redactor instance
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Configure the redaction options
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Run the redaction process
        RedactorChangeLog result = redactor.Apply(red);

        // Save the redacted file
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction at a Glance"
  description: "Add professional-grade content redaction to your .NET applications"
  features:
    # feature loop
    - title: "Redact Textual Content"
      content: "GroupDocs.Redaction for .NET allows you to locate and redact sensitive text. Text can be replaced or hidden using colored image overlays for added security. Supported across a wide variety of formats including PDFs and Office documents, this feature helps protect private data and streamline business compliance."

    # feature loop
    - title: "Redact Images"
      content: "Automatically detect and redact images—either fully or partially—on document pages. Specify search criteria and targeted regions to mask sensitive visual content efficiently."

    # feature loop
    - title: "Manage File Metadata"
      content: "Many file types contain hidden metadata, such as author names in Word files or EXIF data in images. GroupDocs.Redaction for .NET makes it simple to find and redact this information to ensure full data privacy."

    # feature loop
    - title: "Redact Document Objects"
      content: "Ensure complete content protection by redacting document-specific elements like annotations, comments, and embedded objects in formats such as PDFs."

############################# Platforms ############################
platforms:
  enable: true
  title: "Platform Independence"
  description: "GroupDocs.Redaction for .NET is compatible with a wide range of operating systems, development frameworks, and package managers."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Supported File Formats"
  description: |
    GroupDocs.Redaction for .NET supports operations with the following [file formats](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office Formats
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Other Office Formats
        * **Portable:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Text Formats:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Other Formats
        * **Web:** HTM, HTML, MD
        * **Images:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "GroupDocs.Redaction for .NET Features"
  description: "Extract and redact data from PDFs, Office files, and images with high speed and accuracy."

  items:
    # feature loop
    - icon: "search"
      title: "Flexible Search"
      content: "Perform case-sensitive or case-insensitive searches to redact specific phrases or terms."

    # feature loop
    - icon: "text"
      title: "Replace or Remove Text"
      content: "Easily find and replace or delete sensitive text throughout your documents."

    # feature loop
    - icon: "image"
      title: "Hide Text with Images"
      content: "Use colored image overlays to visually mask redacted content instead of replacing text."

    # feature loop
    - icon: "search"
      title: "Advanced Search Capabilities"
      content: "Use regular expressions for precise and flexible content redaction across complex data sets."

    # feature loop
    - icon: "table"
      title: "Scoped Redaction"
      content: "Target specific pages or defined page areas to limit redaction to relevant sections only."

    # feature loop
    - icon: "template"
      title: "Metadata Redaction"
      content: "Find and redact metadata properties to protect document ownership and creation details."

    # feature loop
    - icon: "pdf"
      title: "Flexible Output Formats"
      content: "Export redacted files to PDF or any supported format while preserving layout integrity."

    # feature loop
    - icon: "template"
      title: "Complete Metadata Erasure"
      content: "Erase all metadata from a document in a single action to ensure absolute privacy."

    # feature loop
    - icon: "hyperlink"
      title: "XML-Based Redaction Rules"
      content: "Define redaction policies in XML format for repeatable, automated processing across multiple files."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Code Samples"
  description: "Typical usage examples of GroupDocs.Redaction for .NET in action"
  items:
    # code sample loop
    - title: "Redaction with Regular Expressions"
      content: |
        GroupDocs.Redaction for .NET enables C# developers to redact text using [regular expressions](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) and hide it with image overlays:
        {{< landing/code title="Redact Word Documents Using Regular Expressions">}}
        ```csharp {style=abap}
        // Create an instance of the Redactor class
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Define redaction rules using a regular expression
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Mask all matching text with blue square overlays
            redactor.Apply(redaction);

            // Save the redacted Word document
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Metadata Cleanup"
      content: |
        Use our API to easily [remove](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) all metadata from supported file formats:
        {{< landing/code title="Remove All Metadata from Presentations">}}
        ```csharp {style=abap}   
        // Provide the path of the presentation to Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Configure the redaction options
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Erase all metadata from the presentation
            redactor.Apply(redaction);

            // Save the cleaned presentation file
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
