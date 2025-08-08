
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer le texte dans les présentations PPTX avec des superpositions Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour bloquer le contenu sensible dans des fichiers PPTX avec des superpositions colorées. Gardez les diapositives intactes tout en cachant des informations clés."

############################# Header ############################
title: "Masquer le texte dans les présentations PPTX avec Java" 
description: "Protégez facilement des détails personnels ou commerciaux dans vos diapositives PPTX à l'aide de Java et GroupDocs.Redaction for Java."
subtitle: "Explorez les fonctionnalités de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Que fait GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permet aux développeurs Java de masquer ou de supprimer du texte, des images ou des métadonnées dans des présentations PPTX en quelques étapes seulement.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger du contenu privé dans les diapositives Pptx"
    content: |
      GroupDocs.Redaction for Java simplifie la protection du contenu pour les développeurs Java.
      
      1. Configurez un Redactor avec le chemin de votre présentation.
      2. Choisissez le comportement de rédaction.
      3. Ajoutez le modèle de texte et la couleur de superposition.
      4. Rédigez la diapositive et enregistrez-la.
   
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
        // Utilisez des superpositions pour bloquer le texte dans PPTX

        // Initialisez Redactor avec votre présentation
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Sélectionnez vos préférences de rédaction
            // Définissez le texte et la couleur de la superposition
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Lancez la rédaction et enregistrez le diaporama
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de rédaction puissants"
  description: "Avec GroupDocs.Redaction for Java, bloquez ou supprimez du contenu sensible dans vos présentations sans toucher à la mise en page ou au formatage."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Fonctionnalités qui fonctionnent à travers les diapositives"
  features:
    # feature loop
    - title: "Masquer ou remplacer le texte"
      content: "Protégez des noms, des termes ou des notes qui ne devraient pas être vues."

    # feature loop
    - title: "Couvrir des zones visuelles"
      content: "Ajoutez des superpositions aux images ou sections graphiques des diapositives."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Effacez les informations en coulisse qui pourraient révéler l'auteur ou l'historique d'édition."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédiger du texte avec Regex"
      content: |
        Utilisez des expressions régulières pour trouver et cacher des mots sensibles
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le fichier de présentation
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Définissez le modèle de recherche et la couleur de superposition
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Appliquez les règles de rédaction
              redactor.apply(redaction);

              // Enregistrez la version finale
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
    title: "Protéger les diapositives PPTX avec les outils Java"
    exclude: "PPTX"
    description: "Couvrez du contenu sensible ou supprimez-le complètement des présentations PPTX en utilisant les fonctionnalités de rédaction Java."
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