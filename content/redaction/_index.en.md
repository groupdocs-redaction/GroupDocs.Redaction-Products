---
############################# Static ############################
layout: "family"
date:  2025-08-08T14:47:02
draft: false

product: "Redaction"
product_tag: "redaction"

lang: en

############################# Head ############################
head_title: "Document Redaction Solution. Edit or remove any sensitive data."
head_description: "Remove, redact, or hide text, images, or metadata in PDFs, Word documents, Excel spreadsheets, PowerPoint presentations, images, and more. Use our library in your .NET, Java, Python, or cloud-based applications."

############################# Header ############################
title: "Document Redaction Library"
description:  |
  Hide or remove private information from various file types.

  Edit text or images to eliminate sensitive content.

  Manage file metadata using our advanced features.

############################# Supported Platforms ###############################
supported_platforms:
  enable: true
  head_title: "Choose Your Platform"
  title: "Platform Independence"
  description: "GroupDocs.Redaction library supports the following operating systems and frameworks:"
  details_link_title: "Learn more"

  items:
    # items loop
    - title: ".NET"
      description: GroupDocs.Redaction .NET 
      color: "blue"
      tag: "net"
      link: "/redaction/net/"
      features_link: "https://docs.groupdocs.com/redaction/net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    .NET Framework 4.6.2 or higher <br> .NET Core 3.1 or higher
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS <br> Microsoft Azure
      
          # features loop
          - rows: "3"
            content: |
                    Microsoft Visual Studio <br> JetBrains Rider <br> Microsoft Visual Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats
      

    # items loop
    - title: "Java"
      description: GroupDocs.Redaction Java
      color: "red"
      tag: "java"
      link: "/redaction/java/"
      features_link: "https://docs.groupdocs.com/redaction/java/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Java 8 or higher <br> Kotlin
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IntelliJ IDEA <br> Eclipse <br> NetBeans
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

    # items loop
    - title: "Python"
      description: GroupDocs.Redaction Python
      color: "yellow"
      tag: "python-net"
      link: "/redaction/python-net/"
      features_link: "https://docs.groupdocs.com/redaction/python-net/system-requirements/"
      features:
          # features loop
          - rows: "2"
            content: |
                    Python 3.9+ and .Net 6+
      
          # features loop
          - rows: "4"
            content: |
                    Windows <br> Linux <br> Mac OS
      
          # features loop
          - rows: "3"
            content: |
                    IDLE <br> PyCharm <br> Visual Studio Code
      
          # features loop
          - rows: "1"
            content: |
                    30+ file formats

############################# Features ###############################
features:
  enable: true
  title: "GroupDocs.Redaction at a Glance"
  description: "A solution to manage content in PDFs, Office documents, images, and other business files."

  items:
    # items loop
    - icon: "text"
      title: "Remove or Edit Text"
      content: "Find and redact sensitive text in your documents with ease."

    # items loop
    - icon: "image"
      title: "Redact Images"
      content: "Easily hide image areas in your files without extra effort."

    # items loop
    - icon: "template"
      title: "Manage Metadata"
      content: "Remove or replace metadata such as the author in Word documents or EXIF data in images."

    # items loop
    - icon: "pdf"
      title: "Advanced Features"
      content: "Search for data to redact using regular expressions or AI integration."

############################# Code samples ############################
code_samples:
  enable: true
  title: "GroupDocs.Redaction Code Samples"
  description: "Typical use cases of GroupDocs.Redaction redaction operations."
  items:
    # code sample loop
    - title: "How to Redact Text in PDF Documents"
      content: |
       GroupDocs.Redaction is the best solution for redacting text in your documents in just a few steps.
      samples:
        - language: "C#"
          color: "blue"
          content: |
            ```csharp {style=abap}   
            // Pass the file path to be redacted to a Redactor instance
            using (Redactor redactor  = new Redactor("source.pdf"))
            {
                // Provide redaction options
                var redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redact and save the result
                redactor.Apply(redaction);

                var outputFile = redactor.Save();
            }   
            ```
        - language: "Java"
          color: "red"
          content: |
            ```java {style=abap}   
            // Pass the file path to be redacted to a Redactor instance
            final Redactor redactor  = new Redactor("source.pdf");

            try 
            {
                // Provide redaction options
                ExactPhraseRedaction redaction = new ExactPhraseRedaction("Sensitive data", new ReplacementOptions("[hidden]"));

                // Redact and save the result
                redactor.apply(redaction);
                redactor.save();
            }
            finally { redactor.close(); } 
            ```
        - language: "Python"
          color: "yellow"
          content: |
            ```python {style=abap}
            import groupdocs.redaction as gr
            import groupdocs.redaction.options as gro
            import groupdocs.redaction.redactions as grr

            def run():

                # Pass the file path to be redacted to a Redactor instance
                with gr.Redactor("source.pdf") as redactor:

                    # Provide redaction options
                    repl_opt = grr.ReplacementOptions("[hidden]")
                    ex_red = grr.ExactPhraseRedaction("Sensitive data", repl_opt)

                    # Redact and save the result
                    result = redactor.apply(ex_red)
        
                    so = gro.SaveOptions()
                    so.add_suffix = True
                    so.rasterize_to_pdf = False
                    result_path = redactor.save(so)
            ```

############################# Supported Formats ###############################
formats:
  enable: true
  title: "30+ File Formats Supported"
  description: "GroupDocs.Redaction supports redaction operations across all widely used business file formats."

############################# Metrics ###############################
metrics:
  enable: true
  title: "GroupDocs.Redaction Achievements"
  description: "Discover Key Metrics That Highlight Our Library’s Success"

  items:
    # items loop
    - number: "40+"
      title: "Supported Formats"
      content: "GroupDocs.Redaction supports operations with over 30 widely used file formats."

    # items loop
    - number: "440k"
      title: "NuGet Downloads"
      content: "GroupDocs.Redaction for .NET has been downloaded more than 440,000 times from NuGet."

    # items loop
    - number: "12k"
      title: "Maven Downloads"
      content: "GroupDocs.Redaction has over 12,000 downloads on Maven, offering powerful Java redaction features."

    # items loop
    - number: "140+"
      title: "Happy Customers"
      content: "Both global enterprises and individual developers rely on GroupDocs products to build innovative solutions."


############################# Customers ###############################
customers:
  enable: true
  title: "Our Happy Customers"
  description: "GroupDocs libraries are trusted by globally recognized and respected brands."

  items:
    # items loop
    - title: "BenQ Corporation"
      logo: "benq"
      
    # items loop
    - title: "Nasdaq Stock Market"
      logo: "nasdaq"
      
    # items loop
    - title: "AT&T Inc."
      logo: "att"
      
    # items loop
    - title: "Customer logo AstraZeneca"
      logo: "astrazeneca"
      
    # items loop
    - title: "Central Bank of Argentina"
      logo: "argentinacentralbank"
      
    # items loop
    - title: "Roche Holding AG"
      logo: "roche"
      
    # items loop
    - title: "Capita"
      logo: "capita"
      
    # items loop
    - title: "Axa S.A."
      logo: "axa"
      
    # items loop
    - title: "Instructure Inc."
      logo: "instructure"
      
    # items loop
    - title: "Wipro"
      logo: "wipro"


############################# Actions ###############################
actions:
  enable: true
  title: "Ready to Get Started?"
  description: "Try GroupDocs.Redaction features for free on your platform."

  items:
    # items loop
    - title: ".NET"
      color: "blue"
      link: "/redaction/net/"

    # items loop
    - title: "Java"
      color: "red"
      link: "/redaction/java/"

    # items loop
    - title: "Node.js"
      color: "yellow"
      link: "/redaction/python-net/"   

############################# FAQ ###############################
faq:
  enable: true
  title: "Frequently Asked Questions"
  description: "Answers to the most commonly asked questions."

  items:
    # items loop
    - question: "Does the GroupDocs.Redaction library require any third-party software to manipulate documents?"
      answer: "GroupDocs.Redaction does not require any external software like Adobe Acrobat, Microsoft Office, or others."

    # items loop
    - question: "Can I try the GroupDocs.Redaction library before purchasing?"
      answer: "Yes, you can try GroupDocs.Redaction without purchasing a license. It works in trial mode, which adds trial badges and limits output to the first 3 pages. To test without restrictions, request a 30-day temporary license. For more details, [see](https://purchase.groupdocs.com/temporary-license/)."

    # items loop
    - question: "What license options are available?"
      answer: "We offer several license types based on your development and distribution needs. These include developer-based, site-based, and Metered licenses depending on usage. Learn more [here](https://purchase.groupdocs.com/pricing/redaction/net/)."

############################# Cloud Links ###############################
cloud_links:
  enable: true
  title: "GroupDocs.Redaction Low-Code APIs"
  description: "Integrate document redaction into any application using our cloud-based REST API."
  
  items:
    # items loop
    - title: "GroupDocs.Redaction Cloud for cURL"
      content: "Use cURL commands with our RESTful Cloud API to redact documents in a wide range of supported file formats."
      icon: "groupdocs_redaction-for-curl"
      link: "https://products.groupdocs.cloud/redaction/curl"

    # items loop
    - title: "GroupDocs.Redaction Cloud for .NET"
      content: "Extract images, text, and metadata or redact documents using templates in Microsoft .NET applications."
      icon: "groupdocs_redaction-for-net"
      link: "https://products.groupdocs.cloud/redaction/net"

    # items loop
    - title: "GroupDocs.Redaction Cloud for Java"
      content: "Java SDK for redacting documents and extracting data within your Java-based applications."
      icon: "groupdocs_redaction-for-java"
      link: "https://products.groupdocs.cloud/redaction/java"

############################# App links ###############################
app_links:
  enable: true
  title: "GroupDocs.Redaction No-Code Apps"
  description: "A web-based app that enables you to redact over 30 popular file formats directly in your browser."

  items:
    # items loop
    - title: "GroupDocs.Redaction Total"
      content: "Free online tool to redact Word, Excel, PowerPoint, PDF, and 30+ other file types."
      icon: "groupdocs_redaction-app"
      link: "https://products.groupdocs.app/redaction/total"

    # items loop
    - title: "GroupDocs.Redaction DOCX"
      content: "Redact Word documents in your browser and extract images, text, or metadata."
      icon: "groupdocs_words-app"
      link: "https://products.groupdocs.app/redaction/docx"

    # items loop
    - title: "GroupDocs.Redaction PDF"
      content: "Free PDF redaction tool that works on any device or platform with no limitations."
      icon: "groupdocs_pdf-app"
      link: "https://products.groupdocs.app/redaction/pdf"


      


---