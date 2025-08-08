---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: en
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "Erase confidential information from documents with Python"
head_description: "Keep your files secure using GroupDocs.Redaction for Python via .NET. Quickly redact, hide, or delete sensitive content in PDFs, Word, Excel, PowerPoint, and image files."

############################# Header ############################
title: "Keep Your Documents Safe with GroupDocs.Redaction"
description: "Easily remove private data, redact text, and clean hidden metadata from PDFs, Office files, and images using the advanced Python toolkit."
words:
  for: "for"

actions:
  main: "PyPi Download"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Licensing"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Ready to Get Started?"
  description: "Try GroupDocs.Redaction features for free or request a license."

release:
  title: "Version {0} Released"
  notes: "See what’s new"
  downloads: "Downloads"

code:
  title: "Redacting Document Content"
  more: "More examples"
  more_link: ""
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Adjust the redaction parameters
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Load your file into the Redactor instance
        with gr.Redactor("sample.pdf") as redactor:

            # Start the redaction process
            result = redactor.apply(red)
        
            # Export the cleaned file
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction at a Glance"
  description: "Integrate powerful redaction capabilities into your Python projects"
  features:
    # feature loop
    - title: "Redact Sensitive Text"
      content: "With GroupDocs.Redaction for Python via .NET, you can automatically find and cover sensitive words or phrases. Replace or mask text with colored boxes for enhanced protection across PDFs, Word documents, and other formats."

    # feature loop
    - title: "Mask Images"
      content: "Our technology can detect images and blur, hide, or block them based on your chosen criteria. Define specific regions or allow automated detection for complete control."

    # feature loop
    - title: "Remove Hidden Metadata"
      content: "Eliminate personal or tracking details hidden in metadata, such as authorship or device info. GroupDocs.Redaction for Python via .NET ensures your documents are fully scrubbed and safe to share."

    # feature loop
    - title: "Redact Special Elements"
      content: "Go beyond text by redacting embedded items like comments, annotations, and other file-specific elements to achieve total confidentiality."

############################# Platforms ############################
platforms:
  enable: true
  title: "Platform Independence"
  description: "GroupDocs.Redaction for Python via .NET works on all major operating systems, supports popular frameworks, and integrates with common package managers."
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
    GroupDocs.Redaction for Python via .NET supports the following [file formats](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
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
  title: "Key Features of GroupDocs.Redaction for Python via .NET"
  description: "Effortlessly scan, locate, and redact sensitive content in PDFs, images, and Office files."

  items:
    # feature loop
    - icon: "search"
      title: "Customizable Search"
      content: "Use flexible search modes to find precise matches or keywords for removal."

    # feature loop
    - icon: "text"
      title: "Find, Replace, or Delete Text"
      content: "Locate sensitive data and either substitute it with safe text or erase it completely."

    # feature loop
    - icon: "image"
      title: "Visual Masking"
      content: "Overlay colored shapes or patterns to visually cover redacted sections."

    # feature loop
    - icon: "search"
      title: "Regex-Powered Detection"
      content: "Leverage regular expressions for pinpoint accuracy in advanced text searches."

    # feature loop
    - icon: "table"
      title: "Targeted Redaction"
      content: "Apply redaction only to certain pages or defined regions to save time and focus on key areas."

    # feature loop
    - icon: "template"
      title: "Metadata Sanitization"
      content: "Easily clear metadata fields like creator, company, or timestamps from your files."

    # feature loop
    - icon: "pdf"
      title: "Export Options"
      content: "Save processed documents in PDF or other compatible formats without losing layout fidelity."

    # feature loop
    - icon: "template"
      title: "Complete Metadata Wipe"
      content: "Erase all embedded metadata with a single click for maximum data protection."

    # feature loop
    - icon: "hyperlink"
      title: "Reusable XML Policies"
      content: "Save your custom redaction configurations as XML templates to automate future tasks."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Code Samples"
  description: "Explore how GroupDocs.Redaction for Python via .NET simplifies redaction tasks"
  items:
    # code sample loop
    - title: "Regex-Based Text Redaction"
      content: |
        Developers using Python can apply [regex-based rules](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) to find and cover sensitive text with image masks:
        {{< landing/code title="Redact Word Documents Using Regular Expressions">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Define redaction rules using a regular expression
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Create an instance of the Redactor class
            with gr.Redactor("source.docx") as redactor:

                # Mask all matching text with blue square overlays
                result = redactor.apply(reg_red)
        
                # Save the redacted Word document
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Remove Metadata"
      content: |
        Use the API to [erase metadata](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) across multiple file types in just a few steps:
        {{< landing/code title="Remove All Metadata from Presentations">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Configure the redaction options
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Provide the path of the presentation to Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Erase all metadata from the presentation
            result = redactor.apply(red)
        
            # Save the cleaned presentation file
            redactor.save()
        ```
        {{< /landing/code >}}

---
