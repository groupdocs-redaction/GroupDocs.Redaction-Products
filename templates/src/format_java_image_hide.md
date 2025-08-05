<% configRef "..\\configs\\image-hide\\format_java.yml" %>
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
platform: "Java"
platform_tag: "java"

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
      platform: "java"
      copy_title: "<% "{common-content.format-code.copy_title}" %>"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "<% "{common-content.format-code.result_title}" %>"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
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
        ```java {style=abap}
        // <% (dict "{fileformat}.example_top.comment_1") %>

        // <% (dict "{fileformat}.example_top.comment_2") %>
        final Redactor redactor = new Redactor("input.<% (dict "{fileformat}.ext") %>");
        try
        {
            // <% (dict "{fileformat}.example_top.comment_3") %>
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // <% (dict "{fileformat}.example_top.comment_4") %>
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // <% (dict "{fileformat}.example_top.comment_5") %>
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "<% (dict "{fileformat}.more_features.title") %>"
  description: "<% (dict "{fileformat}.more_features.description") %>"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
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
        title: "Java"
        content: |
          ```java {style=abap}
          //  <% (dict "{fileformat}.example_bottom.comment_1") %>
          final Redactor redactor = new Redactor("source.<% (dict "{fileformat}.ext") %>");
          try
          {
              // <% (dict "{fileformat}.example_bottom.comment_2") %>
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // <% (dict "{fileformat}.example_bottom.comment_3") %>
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // <% (dict "{fileformat}.example_bottom.comment_4") %>
              redactor.apply(redaction);

              // <% (dict "{fileformat}.example_bottom.comment_5") %>
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "<% "{common-content.format-code.copy_title}" %>"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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