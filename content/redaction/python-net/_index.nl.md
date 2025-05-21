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
head_title: "C# .NET Redactie-API | Privétekst verbergen in PDF Word Excel afbeeldingen"
head_description: "API voor het redigeren van documenten voor .NET. Redigeer, verberg of verwijder gevoelige inhoud uit PDF, Microsoft Word, Excel, presentaties en rasterafbeeldingen."

############################# Header ############################
title: "Geclassificeerde gegevens beveiligen via de Redactie-API"
description: "Redigeer, verberg of verwijder gevoelige inhoud en metagegevens uit documenten, werkbladen, presentaties, PDF en rasterafbeeldingsbestanden met behulp van de .NET API."
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
              text: "Overzicht"

            # button loop
            - link: "#features"
              text: "Kenmerken"

            # button loop
            - link: "#support"
              text: "Ondersteuning"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Prijsstelling"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET is een API-bibliotheek waarmee je gevoelige en geheime gegevens kunt wissen uit verschillende bestandsindelingen, zoals Microsoft Word, Excel, PowerPoint en PDF. De interface van onze redactie-API ondersteunt verschillende soorten redactie, zoals tekstredactie, redactie van metagegevens, redactie van annotaties en redactie van documenten in tabelvorm. Met de GroupDocs.Redaction for .NET API kunt u ook bestanden redigeren die met een wachtwoord zijn beveiligd. Je mag het document in de oorspronkelijke indeling opslaan en een opgeschoond PDF document maken met rasterafbeeldingen van originele pagina's.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Hieronder volgt een overzicht van GroupDocs.Redaction voor .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Overzicht"
          content: |
            * Tekst redigeren
            * Metagegevens redigeren
            * Annotatie redigeren
            * Document in tabelvorm redigeren
            * Beveiligde bestanden redigeren
            * Aanpassing
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction for .NET ondersteunt de volgende [bestandsindelingen voor documenten](https://docs.groupdocs.com/redaction//supported-document-formats/net):

        right:
          enable: true
          table:
            # table loop
            - title: "Tekst, metagegevens en opmerkingen redigeren"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Vaste indeling**: PDF
                * **Rasterafbeeldingen**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for .NET ondersteunt de volgende besturingssystemen, frameworks en pakketbeheerders:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Besturingssystemen"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Ondersteunde frameworks"
              content: |
                * .NET Framework 2.0 of hoger
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "snelle faxbox"
              title: "Pakketbeheerder"
              content: |
                * NuGet

            # table loop
            - icon: "snelle fa-tools"
              title: "Ontwikkelomgevingen"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction voor .NET functies"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Voer een hoofdlettergevoelige zoekopdracht uit voor de exacte redactie van woordgroepen"

      # feature loop
      - icon: "fas fa-eye"
        content: "Gebruik een kleurvak om geredigeerde tekst te verbergen in plaats van een tekenreeks te vervangen"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Lokaliseer en redigeer elke tekst met behulp van de zoekfunctie voor reguliere expressies"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Alle of een combinatie van de gerubriceerde metagegevens van het document filteren"

      # feature loop
      - icon: "fas fa-code"
        content: "Snel volledige metadata-informatie van een specifiek document wissen"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Stel het bereik van de redactie in op een specifiek werkblad en/of kolom in Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Alle of specifieke opmerkingen en andere annotaties uit het document verwijderen"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Zoek en verwijder gevoelige gegevens uit de annotatietekst"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Mogelijkheid om met je eigen formaten en redacties te werken"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Ondersteuning voor rasterafbeeldingsformaten en redacties van afbeeldingsgebieden"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Specificeer een set redactieregels (beleid) in een XML-bestand"

      # feature loop
      - icon: "fas fa-columns"
        content: "Geef het paginabereik en het conformiteitsniveau van PDF op tijdens de conversie naar PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "EXIF metagegevens uit afbeeldingsbestanden bewerken of verwijderen"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Ingebedde afbeeldingen in de PDF, Word en presentatiedocumenten redigeren"

      # feature loop
      - icon: "fas fa-print"
        content: "Een redactiebeleid opslaan als een XML-bestand"

    more_feature:
      # more_feature_loop
      - title: "Redigeer uw geheime gegevens met gemak en controle"
        content: |
          De GroupDocs.Redaction for .NET API geeft je volledige controle over hoe je je belangrijke geheime informatie wilt verbergen of wissen in een ondersteund document. Het gebruik van onze Redactie-API is vrij eenvoudig en ongecompliceerd.  

          In het volgende voorbeeld laden we een ondersteund document, redigeren we elke tekst, waarbij we „2 cijfers, spatie of niets, 2 cijfers, opnieuw spatie en 6 cijfers” (zoals 12 34 567890) vergelijken met een blauw kleurvak met C#. Zodra dat is gebeurd, slaat het het document op in de oorspronkelijke indeling door het te hernoemen met een toegevoegd achtervoegsel „Redacted”:

          ```cs
          // Maak een instantie van de Redactor-klasse
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Redactie toepassen
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
    title: "GroupDocs.Redaction biedt API's voor het bekijken van documenten voor andere populaire ontwikkelomgevingen"

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