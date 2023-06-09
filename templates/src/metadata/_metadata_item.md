<% set "EXT" (upper (get "ext")) %>
<% set "ProductName" (dict "products.{product}.name") %>
<% set "ProductFullName" (dict "products.{product}.fullName") %>
<% set "ProductCode" (dict "products.{product}.code") %>
<% set "ProductUrl" (dict "products.{product}.url") %>
<% set "ProgLang" (dict "products.{product}.progLang") %>
<% set "DevEnv" (dict "products.{product}.devEnv") %>
<% set "Runtime" (dict "products.{product}.runtime") %>
<% set "RepoName" (dict "products.{product}.repoName") %>
<% set "RepoUrl" (dict "products.{product}.repoUrl") %>
<% set "OtherFormats" (upper (dict "otherformats.{ext}")) %>
<% if (eq (get "lang") "en") %><% set "slash_lang" ("") %><% else %><% set "slash_lang" (concat (get "lang") "/" ) %><% end %>
---
############################# Static ############################
layout: "<% "{layout}" %>"
draft: false
path: "<% get "slash_lang" %>redaction/<% get "ProductCode" %>/metadata<% get "PropertyUrl" %>/<% get "ext" %>"
otherformats: <% get "OtherFormats" %>  
<% if (eq (get "ProductCode") "java") %>ad_headline: "<% "{head.ad_headline}" %>"
ad_description: "<% "{head.ad_description}" %>"<% else %><% end %>

############################# Head ############################
head_title: "<% "{head.title}" %>"
head_description: "<% "{head.description}" %>"

############################# Header ############################
title: "<% "{header.title}" %>"
description: "<% "{header.description}" %>"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "<% "{about.title}" %>"
    content: |
        <% "{about.h1}" %>

############################# content ############################
steps:
    enable: true
    <% include "_steps_{product}.md" %>

############################# Demos ############################
demos:
    enable: true
<% if (eq ("{about_formats}") "true") %>
############################# About Formats ############################
about_formats:
    enable: true
<% end %>
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---