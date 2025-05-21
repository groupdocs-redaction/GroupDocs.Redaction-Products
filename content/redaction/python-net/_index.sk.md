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
head_title: "C# .NET Redakcia API | Skryť súkromný text z PDF Word Excel Obrázky"
head_description: "API na redakciu dokumentov pre .NET. Redigujte, skryte alebo odstráňte citlivý obsah z PDF, Microsoft Word, Excel, prezentácií a rastrových obrázkov."

############################# Header ############################
title: "Zabezpečené utajované údaje prostredníctvom rozhrania Redaction API"
description: "Redigujte, skryte alebo odstráňte citlivý obsah a metaúdaje z dokumentov, pracovných hárkov, prezentácií, PDF a súborov rastrových obrázkov pomocou .NET API."
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
              text: "Prehľad"

            # button loop
            - link: "#features"
              text: "Vlastnosti"

            # button loop
            - link: "#support"
              text: "Podpora"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Živá ukážka"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Cenník"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET je knižnica API, ktorá vám pomôže vymazať citlivé a utajované údaje z rôznych formátov súborov, ako napríklad Microsoft Word, Excel, PowerPoint a PDF. Rozhranie nášho rozhrania Redaction API nezávislé od formátu podporuje redakciu rôznych typov, napr. redakciu textu, redakciu metadát, redakciu anotácií a redakciu tabuľkových dokumentov. GroupDocs.Redaction for .NET API vám tiež umožňuje redigovať súbory chránené heslom. Môžete uložiť dokument v pôvodnom formáte, ako aj vytvoriť dezinfikovaný dokument PDF s rastrovými obrázkami pôvodných strán.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Nasleduje prehľad GroupDocs.Redaction pre .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Prehľad"
          content: |
            * Redigovať text
            * Redigovať metadáta
            * Redigovať anotáciu
            * Redigovať tabuľkový dokument
            * Redigovať chránené súbory
            * Prispôsobenie
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction for .NET podporuje nasledujúce [formáty súborov dokumentov](https://docs.groupdocs.com/redaction//supported-document-formats/) :net

        right:
          enable: true
          table:
            # table loop
            - title: "Redigovať text, metaúdaje a komentáre"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Pevné rozloženie**: PDF
                * **Rastrové obrázky**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for .NET podporuje nasledujúce operačné systémy, rámce a správcov balíkov:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Operačné systémy"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Podporované rámce"
              content: |
                * .NET Framework 2.0 alebo vyššie
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fa-box"
              title: "Správca balíkov"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Vývojové prostredia"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction pre .NET Funkcie"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Vykonajte vyhľadávanie presnej redigovania frázy s rozlišením malých a malých písmen"

      # feature loop
      - icon: "fas fa-eye"
        content: "Použite farebné pole na skrytie redigovaného textu namiesto nahradenia reťazca"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Vyhľadajte a redigujte ľubovoľný text pomocou vyhľadávania regulárnych výrazov"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtrovať všetky alebo ľubovoľnú kombináciu utajovaných informácií o metaúdajoch dokumentu"

      # feature loop
      - icon: "fas fa-code"
        content: "Rýchle vymazanie úplných informácií o metaúdajoch konkrétneho dokumentu"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Nastavte rozsah redigovania na konkrétny pracovný hárok a/alebo stĺpec v Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Odstránenie všetkých alebo konkrétnych poznámok a iných anotácií z dokumentu"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Vyhľadávanie a odstránenie citlivých údajov z textu anotácie"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Schopnosť pracovať s vlastnými formátmi a redakciami"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Podpora formátov rastrových obrázkov a redakcie oblasti obrázkov"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Zadajte množinu pravidiel redigovania (politiky) v XML súbore"

      # feature loop
      - icon: "fas fa-columns"
        content: "Zadajte rozsah strán a úroveň zhody PDF počas konverzie na PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Úprava alebo odstránenie EXIF metaúdajov z obrázkových súborov"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redigovať vložené obrázky vo vnútri PDF, Word a prezentačných dokumentov"

      # feature loop
      - icon: "fas fa-print"
        content: "Uloženie politiky redigovania ako súboru XML"

    more_feature:
      # more_feature_loop
      - title: "Redigujte svoje utajované údaje s jednoduchosťou a kontrolou"
        content: |
          GroupDocs.Redaction for .NET API vám poskytuje úplnú kontrolu nad tým, ako chcete skryť alebo vymazať dôležité utajované informácie z podporovaného dokumentu. Používanie nášho Redaction API je celkom jednoduché a priame.  

          V nasledujúcom príklade načítame podporovaný dokument, redigujeme akýkoľvek text, ktorý zodpovedá „2 číslice, medzery alebo nič, 2 číslice, opäť medzery a 6 číslic“ (napríklad 12 34 567890) s modrým farebným rámčekom pomocou C#. Po dokončení uloží dokument v pôvodnom formáte premenovaním na pridanú príponu „Redigované“:

          ```cs
          // Vytvorte inštanciu triedy Redactor
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Použiť redakciu
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
    title: "GroupDocs.Redaction ponúka rozhrania API na prezeranie dokumentov pre ďalšie populárne vývojové prostredia"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---