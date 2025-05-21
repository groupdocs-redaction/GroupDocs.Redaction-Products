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
head_title: "API de rédaction Java | Masquer les données sensibles du PDF Word Excel Image"
head_description: "API de rédaction de documents Java - Masquez les données personnelles des présentations PDF, Word, Excel, PowerPoint et des images raster via différents types de rédaction."

############################# Header ############################
title: "Masquer les informations privées via l'API Java"
description: "Excluez ou masquez les informations personnelles et les métadonnées des documents, feuilles de calcul, présentations, fichiers PDF et image raster à l'aide de l'API de rédaction Java."
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
              text: "Aperçu"

            # button loop
            - link: "#features"
              text: "Caractéristiques"

            # button loop
            - link: "#support"
              text: "Support"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Pricing"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      L'API GroupDocs.Redaction pour Java permet aux développeurs de supprimer les données sensibles des formats de fichiers courants tels que Microsoft Word, Excel, PowerPoint, PDF et les images afin qu'elles puissent être utilisées et distribuées, tout en protégeant également les informations confidentielles. La bibliothèque de rédaction offre une interface unique indépendante du format pour rédiger tout type d'informations classifiées, y compris les numéros de sécurité sociale, les informations médicales, les détails financiers, propriétaires, juridiques ou même commerciaux par le biais de textes, de métadonnées et de types de rédaction d'annotations. Il vous permet d'enregistrer le document dans son format d'origine et de créer un document PDF aseptisé avec des images raster des pages d'origine.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Voici un aperçu de GroupDocs.Redaction pour Java:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Aperçu"
          content: |
            * Texte expurgé
            * Masquer les métadonnées
            * Expurger l'annotation
            * Caviarder le document tabulaire
            * Masquer les fichiers protégés
            * Personnalisation
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction pour Java prend en charge les [formats de fichier de document] suivants (https://docs.groupdocs.com/redaction/java/supported-document-formats/):

        right:
          enable: true
          table:
            # table loop
            - title: "Caviarder le texte, les métadonnées et les commentaires"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Disposition fixe**: PDF
                * **Images raster**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java prend en charge la suite Systèmes d'exploitation, cadres et gestionnaires de packages:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Systèmes d'exploitation"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            # table loop
            - icon: "fas fa-code"
              title: "Cadres pris en charge"
              content: |
                * Java 7 (1.7) et supérieur

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "Environnements de développement"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse

            # table loop
            - icon: "fas fa-tools"
              title: "Outil d'automatisation de construction"
              content: |
                * Maven

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Java Caractéristiques"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Rechercher et masquer les correspondances exactes d'une chaîne de recherche"

      # feature loop
      - icon: "fas fa-eye"
        content: "Contrôlez le processus de rédaction et ignorez des correspondances spécifiques"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Localiser et biffer à l'aide d'expressions régulières"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Prise en charge intégrée des formats bureautiques et PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Effacer les métadonnées ou masquer les valeurs des métadonnées"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Limiter les suppressions à des feuilles de calcul et des colonnes spécifiques"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Supprimer des annotations ou expurger leurs textes"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Utilisez des caviardages textuels (codes d'exemption) ou graphiques (rectangles de couleur)"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Enregistrez le document dans son format d'origine ou au format PDF avec des images raster des pages d'origine"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Prise en charge des formats d'image raster et des suppressions de régions d'image"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Interface d'intégration pour la mise en œuvre d'une rédaction et de formats personnalisés"

      # feature loop
      - icon: "fas fa-columns"
        content: "Modifier ou supprimer les métadonnées EXIF des fichiers image"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Masquer les images intégrées dans les documents PDF, Word et de présentation"

    more_feature:
      # more_feature_loop
      - title: "Assurez la confidentialité en caviardant vos données classifiées"
        content: |
          La bibliothèque GroupDocs.Redaction pour Java permet aux développeurs de rédiger du texte et des images à partir de documents pris en charge en utilisant une variété de types de rédaction. L'utilisation de notre API de rédaction est simple et directe.  

          L'exemple de code suivant utilise un document tabulaire tel qu'une feuille de calcul Microsoft Excel où l'étendue de la rédaction peut être limitée à une feuille de calcul et/ou une colonne spécifique. Il utilise des filtres pour masquer la deuxième colonne avec des e-mails sur une feuille de calcul "Clients", en laissant tous les autres e-mails intacts dans le document.

          ```java
          // Créer une instance de la classe Redactor
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              // Appliquer la rédaction
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
    title: "GroupDocs.Redaction propose des API de visualisation de documents pour d'autres environnements de développement populaires"

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