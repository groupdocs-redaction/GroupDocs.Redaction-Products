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
head_title: "C# .NET Redaction API | Ascunde textul privat din PDF Word Excel Imagini"
head_description: "API-ul de redactare a documentelor pentru .NET. Redactați, ascundeți sau eliminați conținut sensibil din PDF, Microsoft Word, Excel, prezentări și imagini raster."

############################# Header ############################
title: "Securizați datele clasificate prin API Redaction"
description: "Redactați, ascundeți sau eliminați conținutul sensibil și metadatele din documente, foi de lucru, prezentări, PDF și fișiere imagine raster utilizând API .NET."
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
              text: "Prezentare generală"

            # button loop
            - link: "#features"
              text: "Caracteristici"

            # button loop
            - link: "#support"
              text: "Suport"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Demo live"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Prețuri"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET este o bibliotecă API care vă ajută să ștergeți date sensibile și clasificate din diferite formate de fișiere, cum ar fi Microsoft Word, Excel, PowerPoint și PDF. Interfața unică independentă de format a API-ului nostru Redaction acceptă redactarea de diferite tipuri, de exemplu, redactarea textului, redactarea metadatelor, redactarea adnotărilor și redactarea documentelor tabelare. GroupDocs.Redaction for .NET API vă permite, de asemenea, să redactați fișiere protejate prin parolă. Aveți permisiunea de a salva documentul în formatul său original, precum și de a crea un document igienizat PDF cu imagini raster ale paginilor originale.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Mai jos este o prezentare generală a GroupDocs.Redaction pentru .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Prezentare generală"
          content: |
            * Redactă text
            * Redactă metadate
            * Redact Adnotare
            * Redact document tabelar
            * Redactă fișiere protejate
            * Personalizare
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction pentru .NET suportă următoarele [formate de fișiere de documente](https://docs.groupdocs.com/redaction//supported-document-formats/) :net

        right:
          enable: true
          table:
            # table loop
            - title: "Redactează text, metadate și comentarii"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Aspect fix**: PDF
                * **Imagini raster**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction pentru .NET suportă următoarele sisteme de operare, cadre și manageri de pachete:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Sisteme de operare"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Cadre acceptate"
              content: |
                * .NET Framework 2.0 sau mai mare
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Manager de pachete"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Medii de dezvoltare"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction pentru .NET Caracteristici"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Efectuați o căutare sensibilă la majuscule și minuscule pentru redactarea exactă a expresiei"

      # feature loop
      - icon: "fas fa-eye"
        content: "Utilizați caseta de culoare pentru a ascunde textul redactat în loc de înlocuirea șirului"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Localizați și redactează orice text folosind căutarea regulată a expresiilor"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtrați toate sau orice combinație de informații clasificate ale metadatelor din document"

      # feature loop
      - icon: "fas fa-code"
        content: "Ștergeți rapid informațiile complete de metadate ale unui anumit document"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Setați un domeniu de redactare la o anumită foaie de lucru și/sau coloană în Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Eliminați toate sau anumite comentarii și alte adnotări din document"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Căutați și eliminați date sensibile din textul adnotării"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Abilitatea de a lucra cu propriile formate și redacții"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Suport pentru formatele de imagine raster și redacțiile regiunii imaginii"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Specificați un set de reguli de redactare (politică) în fișierul XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Specificați intervalul de pagini și nivelul de conformitate PDF în timpul conversiei la PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Editarea sau ştergerea metadatelor EXIF din fişierele imagine"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redactează imagini încorporate în PDF, Word & Documente de prezentare"

      # feature loop
      - icon: "fas fa-print"
        content: "Salvarea unei politici de redactare ca fișier XML"

    more_feature:
      # more_feature_loop
      - title: "Redactați datele dvs. clasificate cu ușurință și control"
        content: |
          GroupDocs.Redaction for .NET API vă oferă control complet asupra modului în care doriți să ascundeți sau să ștergeți informațiile clasificate importante din documentul acceptat. Utilizarea API-ului nostru Redaction este destul de simplă și directă.  

          În exemplul următor, încărcăm un document acceptat, redactăm orice text, potrivind „2 cifre, spațiu sau nimic, 2 cifre, din nou spațiu și 6 cifre” (cum ar fi 12 34 567890) cu o casetă de culoare albastră folosind C#. Odată făcut acest lucru, salvează documentul în formatul său original, redenumindu-l cu un sufix adăugat „Redactat”:

          ```cs
          // Creați o instanță a clasei Redactor
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Aplicați redactarea
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
    title: "GroupDocs.Redaction oferă API-uri de vizualizare a documentelor pentru alte medii de dezvoltare populare"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "/border/groupdocs-redaction-java.svg"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

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