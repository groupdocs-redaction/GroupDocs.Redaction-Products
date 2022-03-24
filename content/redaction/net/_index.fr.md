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
head_title: "API de rédaction C# .NET | Masquer le texte privé des images PDF Word Excel"
head_description: "API de rédaction de documents pour .NET. Masquez, masquez ou supprimez le contenu sensible des PDF, Microsoft Word, Excel, des présentations et des images raster."

############################# Header ############################
title: "Sécuriser les données classifiées via l'API de rédaction"
description: "Masquez, masquez ou supprimez le contenu sensible et les métadonnées des documents, feuilles de calcul, présentations, fichiers PDF et images raster à l'aide de l'API .NET."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "/border/groupdocs-redaction-net.svg"
        product: "GroupDocs.Redaction"
        platform: ".NET"

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
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Pricing"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Aperçu ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction pour .NET est une bibliothèque d'API qui vous aide à effacer les données sensibles et classifiées de divers formats de fichiers, tels que Microsoft Word, Excel, PowerPoint et PDF. L'interface unique indépendante du format de notre API de rédaction prend en charge la rédaction de différents types, par exemple la rédaction de texte, la rédaction de métadonnées, la rédaction d'annotations et la rédaction de documents tabulaires. GroupDocs.Redaction pour l'API .NET vous permet également de supprimer des fichiers protégés par mot de passe. Vous êtes autorisé à enregistrer le document dans son format d'origine et à créer un document PDF épuré avec des images raster des pages d'origine.
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Voici un aperçu de GroupDocs.Redaction pour .NET :
      
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
          GroupDocs.Redaction pour .NET prend en charge les [formats de fichier de document] suivants (https://docs.groupdocs.com/redaction/net/supported-document-formats/) :

        right:
          enable: true
          table:
            # table loop
            - title: "Caviarder le texte, les métadonnées et les commentaires"
              content: |
                * **Word** : DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel** : XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint** : PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Mise en page fixe** : PDF
                * **Images tramées** : JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for .NET prend en charge la suite Systèmes d'exploitation, Frameworks & Directeur chargé d'emballages:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Systèmes d'exploitation"
              content: |
                * Bureau Windows
                * Serveur Windows
                * windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Cadres pris en charge"
              content: |
                * .NET Framework 2.0 ou supérieur
                * Norme .NET 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Directeur chargé d'emballage"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Environnements de développement"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Caractéristiques ############################
features:
    enable: true
    title: "GroupDocs.Redaction for .NET Caractéristiques"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Effectuez une recherche sensible à la casse pour la rédaction exacte de la phrase"

      # feature loop
      - icon: "fas fa-eye"
        content: "Utilisez la boîte de couleur pour masquer le texte expurgé au lieu du remplacement de chaîne"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Localisez et biffez n'importe quel texte à l'aide de la recherche d'expressions régulières"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filtrer tout ou partie des informations de métadonnées classifiées du document"

      # feature loop
      - icon: "fas fa-code"
        content: "Effacez rapidement les informations de métadonnées complètes d'un document spécifique"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Définir une portée de la biffure sur une feuille de calcul et/ou une colonne spécifique dans Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Supprimer tout ou partie des commentaires et autres annotations du document"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Rechercher et supprimer des données sensibles du texte d'annotation"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Capacité à travailler avec vos propres formats et rédactions"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Prise en charge des formats d'image raster et des suppressions de régions d'image"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Spécifier un ensemble de règles de masquage (politique) dans le fichier XML"

      # feature loop
      - icon: "fas fa-columns"
        content: "Spécifiez la plage de pages et le niveau de conformité PDF lors de la conversion en PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Modifier ou supprimer les métadonnées EXIF des fichiers image"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Masquer les images intégrées dans les documents PDF, Word et de présentation"

      # feature loop
      - icon: "fas fa-print"
        content: "Enregistrer une politique de masquage en tant que fichier XML"

    more_feature :
      # more_feature_loop
      - title: "Caviardez vos données classifiées avec facilité et contrôle"
        content: |
          L'API GroupDocs.Redaction pour .NET vous permet de contrôler totalement la manière dont vous souhaitez masquer ou effacer vos informations classifiées importantes du document pris en charge. Utiliser notre API de rédaction est assez simple et direct.

          Dans l'exemple suivant, nous chargeons un document pris en charge, supprimons tout texte, correspondant à "2 chiffres, espace ou rien, 2 chiffres, encore un espace et 6 chiffres" (tel que 12 34 567890) avec une boîte de couleur bleue en utilisant C#. Une fois cela fait, il enregistre le document dans son format d'origine en le renommant avec un suffixe ajouté "_Redacted":

          ```cs
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // Appliquer la rédaction
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
    title: "GroupDocs.Redaction propose des API de visualisation de documents pour d'autres environnements de développement populaires"

    solution:
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