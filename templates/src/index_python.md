<% configRef "..\\configs\\index\\index_python.yml" %>
<% include "..\\data\\platform_data.md" %>
---
############################# Static ############################
layout: "landing"
date: <% date "utcnow" %>
draft: false

lang: <% lower ( get "lang") %>
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
head_title: "<% "{index-content-python.head_title}" %>"
head_description: "<% "{index-content-python.head_description}" %>"

############################# Header ############################
title: "<% "{index-content-python.title}" %>"
description: "<% "{index-content-python.description}" %>"
words:
  for: "<% "{index-content.words_for}" %>"

actions:
  main: "<% "{index-content-python.actions_main}" %>"
  main_link: "<% get "PackageUrl" %>"
  alt: "<% "{index-content.actions.alt}" %>"
  alt_link: "<% get "PricesUrl" %>"
  title: "<% "{index-content.actions.title}" %>"
  description: "<% "{index-content.actions.description}" %>"

release:
  title: "<% "{index-content.release_title}" %>"
  notes: "<% "{index-content.release_notes}" %>"
  downloads: "<% "{index-content.release_downloads}" %>"

code:
  title: "<% "{index-content-python.code_title}" %>"
  more: "<% "{index-content.code_more}" %>"
  more_link: "<% dict "products.python.more_link" %>"
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # <% "{index-content-python.code_comment_2}" %>
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # <% "{index-content-python.code_comment_1}" %>
        with gr.Redactor("sample.pdf") as redactor:

            # <% "{index-content-python.code_comment_3}" %>
            result = redactor.apply(red)
        
            # <% "{index-content-python.code_comment_4}" %>
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "<% "{index-content.overview_title}" %>"
  description: "<% "{index-content-python.overview_description}" %>"
  features:
    # feature loop
    - title: "<% "{index-content-python.overview_feature_1.title}" %>"
      content: "<% "{index-content-python.overview_feature_1.description}" %>"

    # feature loop
    - title: "<% "{index-content-python.overview_feature_2.title}" %>"
      content: "<% "{index-content-python.overview_feature_2.description}" %>"

    # feature loop
    - title: "<% "{index-content-python.overview_feature_3.title}" %>"
      content: "<% "{index-content-python.overview_feature_3.description}" %>"

    # feature loop
    - title: "<% "{index-content-python.overview_feature_4.title}" %>"
      content: "<% "{index-content-python.overview_feature_4.description}" %>"

############################# Platforms ############################
platforms:
  enable: true
  title: "<% "{index-content.platforms.title}" %>"
  description: "<% "{index-content-python.platforms_description}" %>"
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
  title: "<% "{index-content.formats_title}" %>"
  description: |
    <% "{index-content-python.formats_description}" %>
  groups:
    # group loop
    - color: "green"
      content: |
        ### <% "{index-content.formats_groups.title_1}" %>
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### <% "{index-content.formats_groups.title_2}" %>
        * **<% "{index-content.formats_groups.format_portable}" %>:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **<% "{index-content.formats_groups.format_other_office}" %>:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### <% "{index-content.formats_groups.title_3}" %>
        * **<% "{index-content.formats_groups.format_other_web}" %>:** HTM, HTML, MD
        * **<% "{index-content.formats_groups.format_images}" %>:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **<% "{index-content.formats_groups.format_other_ebooks}" %>:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "<% "{index-content-python.features.title}" %>"
  description: "<% "{index-content-python.features.description}" %>"

  items:
    # feature loop
    - icon: "search"
      title: "<% "{index-content-python.features.feature_1.title}" %>"
      content: "<% "{index-content-python.features.feature_1.content}" %>"

    # feature loop
    - icon: "text"
      title: "<% "{index-content-python.features.feature_2.title}" %>"
      content: "<% "{index-content-python.features.feature_2.content}" %>"

    # feature loop
    - icon: "image"
      title: "<% "{index-content-python.features.feature_3.title}" %>"
      content: "<% "{index-content-python.features.feature_3.content}" %>"

    # feature loop
    - icon: "search"
      title: "<% "{index-content-python.features.feature_4.title}" %>"
      content: "<% "{index-content-python.features.feature_4.content}" %>"

    # feature loop
    - icon: "table"
      title: "<% "{index-content-python.features.feature_5.title}" %>"
      content: "<% "{index-content-python.features.feature_5.content}" %>"

    # feature loop
    - icon: "template"
      title: "<% "{index-content-python.features.feature_6.title}" %>"
      content: "<% "{index-content-python.features.feature_6.content}" %>"

    # feature loop
    - icon: "pdf"
      title: "<% "{index-content-python.features.feature_7.title}" %>"
      content: "<% "{index-content-python.features.feature_7.content}" %>"

    # feature loop
    - icon: "template"
      title: "<% "{index-content-python.features.feature_8.title}" %>"
      content: "<% "{index-content-python.features.feature_8.content}" %>"

    # feature loop
    - icon: "hyperlink"
      title: "<% "{index-content-python.features.feature_9.title}" %>"
      content: "<% "{index-content-python.features.feature_9.content}" %>"


############################# Code samples ############################
code_samples:
  enable: true
  title: "<% "{index-content.code_samples.title}" %>"
  description: "<% "{index-content-python.code_samples_description}" %>"
  items:
    # code sample loop
    - title: "<% "{index-content-python.code_title_sample_1}" %>"
      content: |
        <% "{index-content-python.code_samples_sample_1_content}" %>
        {{< landing/code title="<% "{index-content.code_samples.sample_1.code_title}" %>">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # <% "{index-content.code_samples.sample_1.comment_2}" %>
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # <% "{index-content.code_samples.sample_1.comment_1}" %>
            with gr.Redactor("source.docx") as redactor:

                # <% "{index-content.code_samples.sample_1.comment_3}" %>
                result = redactor.apply(reg_red)
        
                # <% "{index-content.code_samples.sample_1.comment_4}" %>
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "<% "{index-content-python.code_title_sample_2}" %>"
      content: |
        <% "{index-content-python.code_samples_sample_2_content}" %>
        {{< landing/code title="<% "{index-content.code_samples.sample_2.code_title}" %>">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # <% "{index-content.code_samples.sample_2.comment_2}" %>
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # <% "{index-content.code_samples.sample_2.comment_1}" %>
        with gr.Redactor("source.pptx") as redactor:

            # <% "{index-content.code_samples.sample_2.comment_3}" %>
            result = redactor.apply(red)
        
            # <% "{index-content.code_samples.sample_2.comment_4}" %>
            redactor.save()
        ```
        {{< /landing/code >}}

---
