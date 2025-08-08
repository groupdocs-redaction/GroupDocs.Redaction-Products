
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer le Texte Privé des PPTX avec Java"
head_description: "Protégez les détails sensibles dans vos présentations PPTX avec GroupDocs.Redaction for Java et Java. Rédaction rapide et efficace."

############################# Header ############################
title: "Nettoyez le Texte dans des Fichiers PPTX avec Java" 
description: "Utilisez GroupDocs.Redaction for Java et Java pour cacher ou supprimer du contenu dans vos diapositives PPTX. Idéal pour un usage professionnel, légal ou personnel."
subtitle: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Rencontrez GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java fournit aux développeurs Java une méthode solide pour éditer ou cacher du contenu dans des fichiers PPTX. Travaillez avec du texte, des images, des métadonnées et des commentaires en toute maîtrise.

############################# Steps ############################
steps:
    enable: true
    title: "Comment Rédiger du Contenu dans des Présentations Pptx"
    content: |
      Avec GroupDocs.Redaction for Java, vous pouvez nettoyer vos présentations Java en quelques étapes rapides.
      
      1. Créez un Redactor et chargez votre fichier Pptx.
      2. Choisissez les paramètres de rédaction qui correspondent à vos besoins.
      3. Définissez le terme de recherche et le contenu de remplacement.
      4. Appliquez les modifications et enregistrez votre fichier mis à jour.
   
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
        // Rédiger du texte dans une présentation PPTX

        // Chargez votre document avec Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Définissez les options de rédaction
            // Choisissez le texte à trouver et ce par quoi le remplacer
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Rédigez et enregistrez le fichier
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d'Outils de Rédaction"
  description: "GroupDocs.Redaction for Java simplifie la dissimulation ou la suppression de contenu privé dans un large éventail de fichiers. Parfait pour garder vos données en sécurité avant de partager."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Options pour supprimer du texte, des images et des métadonnées"
  features:
    # feature loop
    - title: "Remplacez le texte partout"
      content: "Recherchez et remplacez les mots ou phrases dans toutes les diapositives. Fonctionne avec du texte exact ou des motifs."

    # feature loop
    - title: "Cacher le contenu visuel"
      content: "Couvrez des parties d'une diapositive ou d'une image à l'aide de boîtes de superposition de la couleur de votre choix."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Supprimez des données de fond comme l'auteur, la date de création ou des notes pouvant contenir des informations privées."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction Basée sur Regex"
      content: |
        Utilisez des expressions régulières pour trouver et supprimer des motifs comme des emails, des numéros de téléphone ou des codes.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez votre fichier
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Ajoutez un motif regex d'EMAIL et un remplacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Appliquez la rédaction basée sur le motif
              redactor.apply(redaction);

              // Enregistrez la version propre
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Rédiger du Contenu dans PPTX avec Java"
    exclude: "PPTX"
    description: "Supprimez des détails privés ou sensibles des documents PPTX à l'aide de Java. Une méthode fiable pour garder vos fichiers sécurisés."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Présentation PowerPoint Open XML"


---