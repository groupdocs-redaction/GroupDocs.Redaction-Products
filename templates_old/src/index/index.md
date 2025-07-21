<% configRef "..\\..\\configs\\index.yml" %>
<% set "OtherFormats" (upper (dict "otherformats.{ext}")) %>
---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

############################# Head ############################
head_title: "<% "{head.title}" %>"
head_description: "<% "{head.description}" %>"

############################# Header ############################
title: "<% "{header.title}" %>"
description: "<% "{header.description}" %>"

############################# APIs ###############################
apis:
  enable: true

  api:
    # api loop
    - title: "<% "{apis.code.title}" %>"
      link: "/redaction/"
      label: "<% "{apis.code.label}" %>"
      api_product:
        # api_product loop
        - link: "/redaction/net/"
          img_alt: "<% "{apis.code.net.title}" %>"
          image: "<% "{apis.code.net.image}" %>"
          product: "<% "{apis.code.net.product}" %>"
          platform: ".NET"
          content: "<% "{apis.code.net.content}" %>"

        # api_product loop
        - link: "/redaction/java/"
          img_alt: "<% "{apis.code.java.title}" %>"
          image: "<% "{apis.code.java.image}" %>"
          product: "<% "{apis.code.java.product}" %>"
          platform: "Java"
          content: "<% "{apis.code.java.content}" %>"

    # api loop
    - title: "<% "{apis.apps.title}" %>"
      link: "https://products.groupdocs.app/redaction"
      label: "<% "{apis.apps.label}" %>"
      api_product:
        # api_product loop
        - link: "https://products.groupdocs.app/redaction/total"
          img_alt: "<% "{apis.apps.total.title}" %>"
          image: "<% "{apis.apps.total.image}" %>"
          product: "<% "{apis.apps.total.product}" %>"
          platform: "Total"
          content: "<% "{apis.apps.total.content}" %>"

        # api_product loop
        - link: "https://products.groupdocs.app/redaction/docx"
          img_alt: "<% "{apis.apps.docx.title}" %>"
          image: "<% "{apis.apps.docx.image}" %>"
          product: "<% "{apis.apps.docx.product}" %>"
          platform: "DOCX"
          content: "<% "{apis.apps.docx.content}" %>"

        # api_product loop
        - link: "https://products.groupdocs.app/redaction/pdf"
          img_alt: "<% "{apis.apps.pdf.title}" %>"
          image: "<% "{apis.apps.pdf.image}" %>"
          product: "<% "{apis.apps.pdf.product}" %>"
          platform: "PDF"
          content: "<% "{apis.apps.pdf.content}" %>"

############################# Back to top ###############################
back_to_top:
  enable: true
---
