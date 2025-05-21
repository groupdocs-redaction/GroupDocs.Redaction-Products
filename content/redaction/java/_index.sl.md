---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java API za redakcijo | Skrij občutljive podatke iz slike PDF Word Excel"
head_description: "Java API za redakcijo dokumentov — Skrij osebne podatke iz PDF, Word, Excel, PowerPoint predstavitev in rastrskih slik prek različnih vrst redigiranja."

############################# Header ############################
title: "Redaktiranje zasebnih podatkov prek API-ja Java"
description: "Izključite ali skrijete osebne podatke in metapodatke iz dokumentov, delovnih listov, predstavitev, PDF in datotek rastrskih slik z uporabo Java redakcijskega API-ja."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

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
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Cenitev"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API razvijalcem omogoča, da odstranijo občutljive podatke iz priljubljenih formatov datotek, kot so Microsoft Word, Excel, PowerPoint, PDF in slike, tako da jih je mogoče uporabljati in distribuirati, vendar še vedno varujejo zaupne podatke. Knjižnica redakcij ponuja enoten vmesnik, neodvisen od oblike, za redakcijo vseh vrst tajnih podatkov, vključno s številkami socialnega zavarovanja, medicinskimi informacijami, finančnimi, lastniškimi, pravnimi ali celo trgovinskimi podrobnostmi prek besedila, metapodatkov in vrst redakcij opomb. Omogoča vam shranjevanje dokumenta v izvirni obliki in ustvarjanje saniranega dokumenta PDF z rastrskimi slikami izvirnih strani.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Sledi pregled GroupDocs.Redaction za Java:
      
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
          GroupDocs.Redaction za Java podpira naslednje [oblike datotek dokumenta](https://docs.groupdocs.com/redaction//supported-document-formats/) :java

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
          GroupDocs.Redaction za Java podpira naslednje operacijske sisteme, okvire in upravljalce paketov:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Operacijski sistemi"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * Mac OS

            # table loop
            - icon: "fas fa-code"
              title: "Podprti okviri"
              content: |
                * Java 7 (1,7) in več

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-zobniki"
              title: "Razvojna okolja"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Mrk

            # table loop
            - icon: "fas fa-tools"
              title: "Orodje za avtomatizacijo izdelave"
              content: |
                * Maven

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction za Java Lastnosti"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Iskanje in urejanje natančnih ujemanja iskalnega niza"

      # feature loop
      - icon: "fas fa-eye"
        content: "Nadzirajte postopek redigiranja in preskočite določena ujemanja"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Poiščite in redigirajte z regularnimi izrazi"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Vgrajena podpora za pisarniške formate in PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Izbrišite metapodatke ali uredite vrednosti metapodatkov"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Omejite redakcije na določene delovne liste in stolpce"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Odstranite pripombe ali uredite njihova besedila"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Uporabite besedilne (kode izjeme) ali grafične (barvne pravokotnike) redakcije"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Shranite dokument v izvirni obliki ali kot PDF z rastrskimi slikami izvirnih strani"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Podpora za formate rastrskih slik in redakcije slikovnih regij"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Integracijski vmesnik za izvajanje redakcij in formatov po meri"

      # feature loop
      - icon: "fas fa-columns"
        content: "Urejanje ali odstranjevanje metapodatkov EXIF iz slikovnih datotek"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Redigiranje vdelanih slik znotraj PDF, Word in predstavitvenih dokumentov"

    more_feature:
      # more_feature_loop
      - title: "Zagotovite zasebnost tako, da uredite svoje zaupne podatke"
        content: |
          GroupDocs.Redaction for Java knjižnica omogoča razvijalcem, da redigirajo besedilo in slike iz podprtih dokumentov z uporabo različnih vrst redigiranja. Uporaba našega API-ja za redakcijo je preprosta in naravnost naprej.  

          Naslednji primer kode uporablja tabelarni dokument, kot je preglednica Microsoft Excel, kjer je obseg redigiranja lahko omejen na določen delovni list in/ali stolpec. Uporablja filtre za redakcijo drugega stolpca z e-poštnimi sporočili na delovnem listu« Stranke », pri čemer vsa druga e-poštna sporočila ostanejo nedotaknjena v dokumentu.

          ```java
          // Ustvarite primerek razreda Redactor
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Uporabi redakcijo
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
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
        - img_alt: "GroupDocs.Redaction for Python via .NET"
          image: "/border/groupdocs-redaction-python-net.svg"
          product: "GroupDocs.Redaction"
          platform: "Python via .NET"
          link: "/redaction/python-net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---