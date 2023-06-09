<% configRef "..\\..\\configs\\platform_index.yml" %>
<% set "ProductName" (dict "products.{product}.name") %>
<% set "ProductFullName" (dict "products.{product}.fullName") %>
<% set "ProductCode" (dict "products.{product}.code") %>
<% set "ProductUrl" (dict "products.{product}.url") %>
<% set "ProgLang" (dict "products.{product}.progLang") %>
<% set "DevEnv" (dict "products.{product}.devEnv") %>
<% set "Runtime" (dict "products.{product}.runtime") %>
<% set "RepoName" (dict "products.{product}.repoName") %>
<% set "RepoUrl" (dict "products.{product}.repoUrl") %>
<% set "LogoUrl" (dict "products.{product}.logo_url") %>
<% set "OtherFormats" (upper (dict "otherformats.{ext}")) %>
---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "<% get "ProductName" %>"
platform_tag: "<% get "ProductCode" %>"

############################# Head ############################
head_title: "<% "{head.title}" %>"
head_description: "<% "{head.description}" %>"

############################# Header ############################
title: "<% "{header.title}" %>"
description: "<% "{header.description}" %>"
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "<% get "ProductFullName" %>"
        image: "<% get "LogoUrl" %>"
        product: "GroupDocs.Redaction"
        platform: "<% get "ProductName" %>"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "<% "{submenu.content_middle.button_text_1}" %>"

            # button loop
            - link: "#features"
              text: "<% "{submenu.content_middle.button_text_2}" %>"

            # button loop
            - link: "#support"
              text: "<% "{submenu.content_middle.button_text_3}" %>"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "<% "{submenu.content_middle.button_text_4}" %>"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/<% get "ProductCode" %>"
              text: "<% "{submenu.content_middle.button_text_5}" %>"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/<% get "ProductCode" %>/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      <% "{tabs.overview}" %>
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          <% "{tabs.one.description}" %>
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "<% "{tabs.one.content.title}" %>"
          content: |
            * <% "{tabs.one.content.step_1}" %>
            * <% "{tabs.one.content.step_2}" %>
            * <% "{tabs.one.content.step_3}" %>
            * <% "{tabs.one.content.step_4}" %>
            * <% "{tabs.one.content.step_5}" %>
            * <% "{tabs.one.content.step_6}" %>
      
      ## TAB TWO ##
      tab_two:
        description: |
          <% "{tabs.two.description}" %>

        right:
          enable: true
          table:
            # table loop
            - title: "<% "{tabs.two.content.title}" %>"
              content: |
                * <% "{tabs.two.content.step_1}" %>
                * <% "{tabs.two.content.step_2}" %>
                * <% "{tabs.two.content.step_3}" %>
                * <% "{tabs.two.content.step_4}" %>
                * <% "{tabs.two.content.step_5}" %>

      ## TAB THREE ##
      tab_three:
        description: |
          <% "{tabs.three.description}" %>
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "<% "{tabs.three.content.left.row1.title}" %>"
              content: |
                <% "{tabs.three.content.left.row1.data}" %>

            # table loop
            - icon: "fas fa-code"
              title: "<% "{tabs.three.content.left.row2.title}" %>"
              content: |
                <% "{tabs.three.content.left.row2.data}" %>

        right:
          enable: true
          table:
            # table loop
            - icon: "<% "{tabs.three.content.right.row1.icon}" %>"
              title: "<% "{tabs.three.content.right.row1.title}" %>"
              content: |
                <% "{tabs.three.content.right.row1.data}" %>

            # table loop
            - icon: "<% "{tabs.three.content.right.row2.icon}" %>"
              title: "<% "{tabs.three.content.right.row2.title}" %>"
              content: |
                <% "{tabs.three.content.right.row2.data}" %>

############################# Features ############################
features:
    enable: true
    title: "<% "{features.title}" %>"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "<% "{features.feature1}" %>"

      # feature loop
      - icon: "fas fa-eye"
        content: "<% "{features.feature2}" %>"

      # feature loop
      - icon: "fas fa-bolt"
        content: "<% "{features.feature3}" %>"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "<% "{features.feature4}" %>"

      # feature loop
      - icon: "fas fa-code"
        content: "<% "{features.feature5}" %>"

      # feature loop
      - icon: "fas fa-cloud"
        content: "<% "{features.feature6}" %>"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "<% "{features.feature7}" %>"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "<% "{features.feature8}" %>"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "<% "{features.feature9}" %>"

      # feature loop
      - icon: "fas fa-border-all"
        content: "<% "{features.feature10}" %>"

      # feature loop
      - icon: "fas fa-wrench"
        content: "<% "{features.feature11}" %>"

      # feature loop
      - icon: "fas fa-columns"
        content: "<% "{features.feature12}" %>"

      # feature loop
      - icon: "fas fa-file-word"
        content: "<% "{features.feature13}" %>"
<% if (eq (get "ProductName") ".NET") %>

      # feature loop
      - icon: "fas fa-envelope"
        content: "<% "{features.feature14}" %>"

      # feature loop
      - icon: "fas fa-print"
        content: "<% "{features.feature15}" %>"
<% else %><% end %>

    more_feature:
      # more_feature_loop
      - title: "<% "{more_features.title}" %>"
        content: |
          <% "{more_features.content}" %>  

          <% "{more_features.example.description}" %>

        <% include "_example_{product}.md" %>

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "<% "{solutions}" %>"

    solution:
        # solution loop
        - img_alt: "<% get "ProductFullName" %>"
          image: "<% get "LogoUrl" %>"
          product: "GroupDocs.Redaction"
          platform: "<% get "ProductName" %>"
          link: "/redaction/<% get "ProductCode" %>/"

############################# Back to top ###############################
back_to_top:
  enable: true
---