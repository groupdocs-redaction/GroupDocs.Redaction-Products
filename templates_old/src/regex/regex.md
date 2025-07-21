<% configRef "..\\..\\configs\\regex.yml" %>
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
<% if (eq (get "lang") "en") %><% set "slash_lang" ("") %><% else %><% set "slash_lang" (concat (get "lang") "/") %><% end %>
<% if (eq ("{layout}") "autogen") %><% set "section_name" ("submenu") %><% else %><% set "section_name" ("button") %><% end %>
---
############################# Static ############################
layout: "<% if (eq ("{layout}") "autogen") %>autogen<% else %>auto-gen-gist<% end %>"
draft: false
path: "<% get "slash_lang" %>redaction/<% get "ProductCode" %>/regex/<% get "ext" %>"
otherformats: <% get "OtherFormats" %>  

############################# Head ############################
head_title: "<% "{head.title}" %>"
head_description: "<% "{head.description}" %>"

############################# Header ############################
title: "<% "{header.title}" %>"
description: "<% "{header.description}" %>"

################### SubMenu/Download Button #####################
<% get "section_name" %>:
    enable: true

############################# About ############################
about:
    enable: true
    title: "<% "{about.title}" %>"
    content: |
        <% "{about.h1}" %>

############################# Steps ############################
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