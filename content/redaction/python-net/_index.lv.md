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
head_title: "C# .NET Redakcijas API | Slēpt privāto tekstu no PDF Word Excel Attēli"
head_description: "Dokumenta redakcijas API priekš .NET. Redaktējiet, paslēpiet vai noņemiet sensitīvu saturu no PDF, Microsoft Word, Excel, prezentācijām un rastra attēliem."

############################# Header ############################
title: "Droši klasificētie dati, izmantojot redakcijas API"
description: "Redaktējiet, paslēpiet vai noņemiet sensitīvu saturu un metadatus no dokumentiem, darblapām, prezentācijām, PDF un rastra attēlu failiem, izmantojot .NET API."
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
              text: "Pārskats"

            # button loop
            - link: "#features"
              text: "Features"

            # button loop
            - link: "#support"
              text: "Atbalsts"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Cenu noteikšana"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET ir API bibliotēka, kas palīdz izdzēst sensitīvus un klasificētus datus no dažādiem failu formātiem, piemēram, Microsoft Word, Excel, PowerPoint un PDF. Mūsu Redakcijas API viena formāta neatkarīgais interfeiss atbalsta dažādu veidu redakcijas, piemēram, teksta redakcijas, metadatu redakcijas, anotāciju redakcijas un tabulas dokumentu redakcijas. GroupDocs.Redaction for .NET API arī ļauj rediģēt ar paroli aizsargātus failus. Jums ir atļauts saglabāt dokumentu tā sākotnējā formātā, kā arī izveidot dezinficētu PDF dokumentu ar oriģinālllappušu rastra attēliem.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Tālāk ir sniegts pārskats par GroupDocs.Redaction par .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Pārskats"
          content: |
            * Realizēt tekstu
            * Reģēt metadatus
            * Realizēt anotāciju
            * Redakts tabulveida dokuments
            * Realizēt aizsargātus failus
            * Pielāgošana
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction .NET atbalsta šādus [dokumentu failu formātus](https://docs.groupdocs.com/redaction//supported-document-formats/) :net

        right:
          enable: true
          table:
            # table loop
            - title: "Realizēt tekstu, metadatus un komentārus"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Fiksēts izkārtojums**: PDF
                * **Rastra attēli**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction .NET atbalsta šādas operētājsistēmas, ietvarus un pakešu pārvaldniekus:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Operētājsistēmas"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Atbalstītās sistēmas"
              content: |
                * .NET Framework 2.0 vai jaunāka versija
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Pakotnes pārvaldnieks"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Attīstības vide"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction .NET funkcijām"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Veiciet reģistrjutīgu meklēšanu precīzai frāžu redakcijas redakcijas veikšanai"

      # feature loop
      - icon: "fas fa-eye"
        content: "Krāsu lodziņa izmantošana, lai paslēptu redakcijas tekstu virknes aizstāšanas vietā"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Atrodiet un rediģējiet jebkuru tekstu, izmantojot regulāro izteiksmju meklēšanu"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtrēt visu vai jebkādu dokumenta klasificēto metadatu informācijas kombināciju"

      # feature loop
      - icon: "fas fa-code"
        content: "Ātri izdzēsiet pilnu metadatu informāciju par konkrētu dokumentu"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Redakcijas tvēruma iestatīšana konkrētai darblapai un/vai kolonnai Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Visu vai konkrētu komentāru un citu anotāciju noņemšana no dokumenta"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Sensitīvu datu meklēšana un noņemšana no anotācijas teksta"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Spēja strādāt ar saviem formātiem un redakcijas"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Atbalsts rastra attēlu formātiem un attēlu reģionu redakcijām"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Redakcijas kārtulu (politikas) kopas norādīšana XML failā"

      # feature loop
      - icon: "fas fa-columns"
        content: "Norādiet lappušu diapazonu un PDF atbilstības līmeni, konvertējot uz PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Rediģēt vai dzēst EXIF metadatus no attēlu failiem"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redakt iegultos attēlus iekšā PDF, Word & prezentācijas dokumentos"

      # feature loop
      - icon: "fas fa-print"
        content: "Redakcijas politikas saglabāšana XML failā"

    more_feature:
      # more_feature_loop
      - title: "Klasificēto datu rediģēšana, izmantojot vieglumu un kontroli"
        content: |
          GroupDocs.Redaction for .NET API piešķir jums pilnīgu kontroli pār to, kā vēlaties paslēpt vai dzēst svarīgo klasificēto informāciju no atbalstītā dokumenta. Lai izmantotu mūsu Redaction API ir diezgan vienkāršs un taisni uz priekšu.  

          Šajā piemērā mēs ielādējam atbalstītu dokumentu, rediģējam jebkuru tekstu, saskaņojot “2 ciparus, atstarpi vai neko, 2 ciparus, atstarpes un 6 ciparus” (piemēram, 12 34 567890) ar zilu krāsu lodziņu, izmantojot C#. Kad tas ir izdarīts, tas saglabā dokumentu sākotnējā formātā, pārdēvējot to ar pievienoto sufiksu “Redakts”:

          ```cs
          // Redaktora klases instances izveide
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Lietot redakciju
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
    title: "GroupDocs.Redaction piedāvā dokumentu apskates API citām populārām izstrādes vidēm"

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