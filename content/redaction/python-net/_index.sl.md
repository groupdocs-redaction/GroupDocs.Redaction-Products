---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# .NET API za redakcijo | Skrij zasebno besedilo iz PDF Word Excel Slike"
head_description: "API za redakcijo dokumenta za .NET. Redaktirate, skrijete ali odstranite občutljivo vsebino iz PDF, Microsoft Word, Excel, predstavitev in rastrskih slik."

############################# Header ############################
title: "Varujte zaupne podatke prek API-ja za redakcijo"
description: "Redaktirajte, skrijete ali odstranite občutljivo vsebino in metapodatke iz dokumentov, delovnih listov, predstavitev, PDF in datotek rastrskih slik z uporabo API-ja .NET."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Pregled"

            # button loop
            - link: "#features"
              text: "Lastnosti"

            # button loop
            - link: "#support"
              text: "Podpora"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Demo v živo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Cenitev"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET je knjižnica API, ki vam pomaga izbrisati občutljive in razvrščene podatke iz različnih formatov datotek, kot so Microsoft Word, Excel, PowerPoint in PDF. Enotni vmesnik, ki je odvisen od formata, podpira redakcijo različnih vrst, npr. redigiranje besedila, redigiranje metapodatkov, redakcijo opomb in redigiranje tabelarnih dokumentov. GroupDocs.Redaction for .NET API vam omogoča tudi redigiranje datotek, zaščitenih z geslom. Dokument lahko shranite v izvirni obliki in ustvarite saniran dokument PDF z rastrskimi slikami izvirnih strani.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Sledi pregled GroupDocs.Redaction za .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Pregled"
          content: |
            * Redegirano besedilo
            * Redegirajoči metapodatki
            * Redigiranje pripombe
            * Redegirajte tabelarni dokument
            * Redegirajte zaščitene datoteke
            * Prilagajanje
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction za .NET podpira naslednje [oblike datotek dokumenta](https://docs.groupdocs.com/redaction//supported-document-formats/) :net

        right:
          enable: true
          table:
            # table loop
            - title: "Redaktirajte besedilo, metapodatke in komentarje"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Fiksna postavitev**: PDF
                * **Rastrske slike**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction za .NET podpira naslednje operacijske sisteme, okvire in upravljalce paketov:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Operacijski sistemi"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Podprti okviri"
              content: |
                * .NET Framework 2.0 ali več
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Upravitelj paketov"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Razvojna okolja"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction za .NET Lastnosti"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Izvedite iskanje, občutljivo na velike črke, za natančno redakcijo besednih zvez"

      # feature loop
      - icon: "fas fa-eye"
        content: "Uporabite barvno polje, da skrijete redigirano besedilo namesto zamenjave niza"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Poiščite in redigirajte poljubno besedilo z iskanjem z regularnim izrazom"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtrirajte vse ali katero koli kombinacijo tajnih metapodatkov dokumenta"

      # feature loop
      - icon: "fas fa-code"
        content: "Hitro izbrišite popolne podatke o metapodatkih določenega dokumenta"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Nastavite obseg redakcije na določen delovni list in/ali stolpec v Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Odstranite vse ali posebne komentarje in druge pripombe iz dokumenta"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Iskanje in odstranjevanje občutljivih podatkov iz besedila opombe"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Sposobnost dela s svojimi formati in redakcijami"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Podpora za formate rastrskih slik in redakcije slikovnih regij"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Določite niz pravil za redigiranje (pravilnik) v datoteki XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Določite obseg strani in PDF Raven skladnosti med pretvorbo v PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Urejanje ali brisanje metapodatkov EXIF iz slikovnih datotek"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redigiranje vdelanih slik znotraj PDF, Word in predstavitvenih dokumentov"

      # feature loop
      - icon: "fas fa-print"
        content: "Shranite pravilnik o redakciji kot datoteko XML"

    more_feature:
      # more_feature_loop
      - title: "Redaktirajte svoje zaupne podatke z lahkoto & Control"
        content: |
          GroupDocs.Redaction for .NET API vam omogoča popoln nadzor nad tem, kako želite skriti ali izbrisati pomembne zaupne podatke iz podprtega dokumenta. Uporaba našega API-ja za redakcijo je precej preprosta in naravnost naprej.  

          V naslednjem primeru naložimo podprti dokument, redigiramo poljubno besedilo, ujemajoč »2 števki, presledek ali nič, 2 števki, spet prostor in 6 števk« (na primer 12 34 567890) z modro barvno škatlo z uporabo C#. Ko je to storjeno, dokument shrani v prvotni obliki, tako da ga preimenuje z dodano pripono »Redizirano«:

          ```cs
          // Ustvarite primerek razreda Redactor
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Uporabi redakcijo
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction ponuja API-je za ogled dokumentov za druga priljubljena razvojna okolja"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---