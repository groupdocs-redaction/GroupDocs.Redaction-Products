
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Couvrir le texte dans EXCEL avec des superpositions et Java"
head_description: "Protégez le contenu sensible dans des fichiers EXCEL en appliquant des superpositions colorées avec GroupDocs.Redaction for Java. Conservez la mise en page du document intacte."

############################# Header ############################
title: "Rédiger des données EXCEL avec des superpositions dans Java" 
description: "Utilisez le code Java pour masquer des informations sensibles dans des feuilles de calcul EXCEL. Un moyen efficace de garder les données privées."
subtitle: "Fonctionnalités clés de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Pourquoi choisir GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java est conçu pour les développeurs Java qui souhaitent cacher ou nettoyer rapidement du contenu dans des feuilles EXCEL.

############################# Steps ############################
steps:
    enable: true
    title: "Masquez des informations dans des feuilles Excel"
    content: |
      GroupDocs.Redaction for Java aide les développeurs Java à protéger les fichiers en cachant des informations privées en seulement quelques lignes.
      
      1. Démarrez un Redactor et chargez votre feuille de calcul.
      2. Configurez les règles de rédaction selon vos besoins.
      3. Choisissez le texte et la couleur de la superposition.
      4. Appliquez et enregistrez le fichier.
   
    code:
      platform: "java"
      copy_title: "Copier"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Exemples de rédactions"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "cliquez pour copier"
        copy_done: "copié"
      links:
        #  loop
        - title: "Plus d'exemples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Utilisez des superpositions pour cacher du texte dans EXCEL

        // Créez un Redactor et chargez votre fichier
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Choisissez les règles de rédaction
            // Indiquez ce qu'il faut cacher et choisissez une couleur
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez la rédaction et sauvegardez le fichier
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils essentiels de protection des données"
  description: "Masquez ou supprimez des informations sensibles de vos feuilles de calcul sans casser la mise en page ou la signification grâce à GroupDocs.Redaction for Java."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Conçu pour un nettoyage sécurisé des données"
  features:
    # feature loop
    - title: "Modifier ou cacher du texte"
      content: "Trouvez et masquez tout texte nécessitant une protection."

    # feature loop
    - title: "Couvrir des visuels sensibles"
      content: "Appliquez des blocs colorés sur des zones de graphiques ou des images."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Effacez l'historique des documents, les noms d'auteurs ou les horodatages."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction avec Regex"
      content: |
        Utilisez regex pour trouver et cacher du texte automatiquement
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez votre feuille de calcul
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Définissez le modèle et les détails de la superposition
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Appliquez la rédaction
              redactor.apply(redaction);

              // Enregistrez la version nettoyée
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copier"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "cliquez pour copier"
          copy_done: "copié"
        top_links:
          #  loop
          - title: "Télécharger le résultat"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "Plus d'exemples"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Prêt à commencer ?"
  description: "Essayez les fonctionnalités de GroupDocs.Redaction gratuitement ou demandez une licence"
  items:
    #  loop
    - title: "Télécharger Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licences"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Rédiger des feuilles EXCEL avec Java"
    exclude: "EXCEL"
    description: "Masquez ou effacez des données sensibles dans EXCEL en utilisant des superpositions et des outils de Java."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Présentation PowerPoint Open XML"


---