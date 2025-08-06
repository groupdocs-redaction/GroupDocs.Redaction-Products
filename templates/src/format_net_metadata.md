<% configRef "..\\configs\\metadata\\format_net.yml" %>
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
platform: ".NET"
platform_tag: "net"

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
      platform: "net"
      copy_title: "<% "{common-content.format-code.copy_title}" %>"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "<% "{common-content.format-code.result_title}" %>"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
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
        ```csharp {style=abap}
        // <% (dict "{fileformat}.example_top.comment_1") %>

        // <% (dict "{fileformat}.example_top.comment_2") %>
        using (Redactor redactor  = new Redactor("input.<% (dict "{fileformat}.ext") %>"))
        {
            // <% (dict "{fileformat}.example_top.comment_3") %>
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // <% (dict "{fileformat}.example_top.comment_4") %>
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "<% (dict "{fileformat}.more_features.title") %>"
  description: "<% (dict "{fileformat}.more_features.description") %>"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
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
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  <% (dict "{fileformat}.example_bottom.comment_1") %>
          using (Redactor redactor  = new Redactor("source.<% (dict "{fileformat}.ext") %>"))
          {
              // <% (dict "{fileformat}.example_bottom.comment_2") %>
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // <% (dict "{fileformat}.example_bottom.comment_3") %>
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // <% (dict "{fileformat}.example_bottom.comment_4") %>
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // <% (dict "{fileformat}.example_bottom.comment_5") %>
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "<% "{common-content.format-code.copy_title}" %>"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
<% include "..\\data\\format_others_all.md" %>

---