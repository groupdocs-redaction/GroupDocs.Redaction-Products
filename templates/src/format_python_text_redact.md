<% configRef "..\\configs\\text-redact\\format_python.yml" %>
<% include "..\\data\\format_data.md" %>

---
############################# Static ############################
layout: "format"
date:  <% date "utcnow" %>
draft: false
lang: <% lower ( get "lang") %>
format: <% get "FileFormatCap" %>
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "<% (dict "{fileformat}.head.title") %>"
head_description: "<% (dict "{fileformat}.head.description") %>"

############################# Header ############################
title: "<% (dict "{fileformat}.header.title") %>" 
description: "<% (dict "{fileformat}.header.description") %>"
subtitle: "<% (dict "{fileformat}.header.subtitle") %>" 

############################# About ############################
about:
    enable: true
    title: "<% (dict "{fileformat}.about.title") %>"
    link: "/redaction/<% get "ProdCode" %>/"
    link_title: "<% "{common-content.texts.learn_more}" %>"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       <% (dict "{fileformat}.about.content") %>

############################# Steps ############################
steps:
    enable: true
    title: "<% (dict "{fileformat}.steps.title") %>"
    content: |
      <% (dict "{fileformat}.steps.content.title") %>
      
      1. <% (dict "{fileformat}.steps.content.step_1") %>
      2. <% (dict "{fileformat}.steps.content.step_2") %>
      3. <% (dict "{fileformat}.steps.content.step_3") %>
      4. <% (dict "{fileformat}.steps.content.step_4") %>
   
    code:
      platform: "python-net"
      copy_title: "<% "{common-content.format-code.copy_title}" %>"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "<% "{common-content.format-code.result_title}" %>"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "<% "{common-content.format-code.copy_tip}" %>"
        copy_done: "<% "{common-content.format-code.copy_done}" %>"
      links:
        #  loop
        - title: "<% "{common-content.format-code.links.title_1}" %>"
          link: "<% get "MoreLink" %>"
        #  loop
        - title: "<% "{common-content.format-code.links.title_2}" %>"
          link: "<% get "DocsUrl" %>"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # <% (dict "{fileformat}.example_top.comment_1") %>

        # <% (dict "{fileformat}.example_top.comment_3") %>
        # <% (dict "{fileformat}.example_top.comment_4") %>
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # <% (dict "{fileformat}.example_top.comment_2") %>
        with gr.Redactor("input.<% (dict "{fileformat}.ext") %>") as redactor:

            # <% (dict "{fileformat}.example_top.comment_5") %>
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "<% (dict "{fileformat}.more_features.title") %>"
  description: "<% (dict "{fileformat}.more_features.description") %>"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "<% (dict "{fileformat}.more_features.image_description") %>"
  features:
    # feature loop
    - title: "<% (dict "{fileformat}.more_features.feature_1.title") %>"
      content: "<% (dict "{fileformat}.more_features.feature_1.content") %>"

    # feature loop
    - title: "<% (dict "{fileformat}.more_features.feature_2.title") %>"
      content: "<% (dict "{fileformat}.more_features.feature_2.content") %>"

    # feature loop
    - title: "<% (dict "{fileformat}.more_features.feature_3.title") %>"
      content: "<% (dict "{fileformat}.more_features.feature_3.content") %>"
      
  code_samples_ext:
    # code sample ext loop
    - title: "<% (dict "{fileformat}.example_bottom.title") %>"
      content: |
        <% (dict "{fileformat}.example_bottom.content") %>
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # <% (dict "{fileformat}.example_bottom.comment_2") %>
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # <% (dict "{fileformat}.example_bottom.comment_1") %>
          with gr.Redactor("source.<% (dict "{fileformat}.ext") %>") as redactor:

              # <% (dict "{fileformat}.example_bottom.comment_3") %>
              result = redactor.apply(redaction)

              # <% (dict "{fileformat}.example_bottom.comment_4") %>
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "<% "{common-content.format-code.copy_title}" %>"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "<% "{common-content.format-code.copy_tip}" %>"
          copy_done: "<% "{common-content.format-code.copy_done}" %>"
        top_links:
          #  loop
          - title: "<% "{common-content.format-code.result_title_bottom}" %>"
            icon: "download"
            link: "/examples/redaction/formats/<% get "OperationLow" %>.pdf"
        links:
          #  loop
          - title: "<% "{common-content.format-code.links.title_1}" %>"
            link: "<% get "MoreLink" %>"
          #  loop
          - title: "<% "{common-content.format-code.links.title_2}" %>"
            link: "<% get "DocsUrl" %>"


############################# Actions ############################

actions:
  enable: true
  title: "<% "{common-content.format-actions.title}" %>"
  description: "<% "{common-content.format-actions.description}" %>"
  items:
    #  loop
    - title: "<% "{common-content.format-actions.comment_1}" %>"
      link: "<% get "ReleaseDownloads" %>"
      color: "red"
        #  loop
    - title: "<% "{common-content.format-actions.comment_2}" %>"
      link: "<% get "PricesUrl" %>"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "<% (dict "{fileformat}.formats.title") %>"
    exclude: "<% get "FileFormatUp" %>"
    description: "<% (dict "{fileformat}.formats.description") %>"
<% include "..\\data\\format_others_text.md" %>

---