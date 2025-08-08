
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rochetter du Texte Sensible dans des PDF avec Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour trouver et supprimer des données privées de vos fichiers PDF. Rédaction de texte simple, rapide et fiable."

############################# Header ############################
title: "Supprimer les Données Sensibles des Fichiers PDF avec Java" 
description: "Nettoyez les fichiers PDF grâce à Java et GroupDocs.Redaction for Java. Rédaction de contenu personnel, légal ou commercial."
subtitle: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À Propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java un moyen simple de nettoyer les fichiers PDF. Supprimez ou remplacez du texte, des images, des commentaires et des données cachées.

############################# Steps ############################
steps:
    enable: true
    title: "Comment Rédiger du Texte dans des Fichiers Pdf"
    content: |
      Avec GroupDocs.Redaction for Java, les développeurs Java peuvent supprimer du contenu sensible en quelques étapes.
      
      1. Créez un Redactor et chargez votre fichier Pdf.
      2. Choisissez les paramètres de rédaction souhaités.
      3. Entrez le texte à rechercher et son remplacement.
      4. Appliquez la rédaction et enregistrez le fichier.
   
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
        // Comment nettoyer un fichier PDF

        // Créez un Redactor et chargez le document
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Définissez vos règles de rédaction
            // Ajoutez le texte à supprimer et ce par quoi le remplacer
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez la rédaction et enregistrez le nouveau fichier
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de Fonctionnalités de Rédaction"
  description: "GroupDocs.Redaction for Java supprime les informations sensibles de nombreux formats. Rédigez du texte, des images et des métadonnées tout en conservant des fichiers lisibles."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Outils pour la rédaction de texte et d'images"
  features:
    # feature loop
    - title: "Trouver et remplacer du texte"
      content: "Recherchez des mots ou phrases et remplacez-les. Fonctionne avec du texte brut ou regex."

    # feature loop
    - title: "Couvrir le contenu d'images"
      content: "Cachez des images ou des parties d'images à l'aide de superpositions colorées."

    # feature loop
    - title: "Nettoyer les métadonnées"
      content: "Supprimez les noms d'auteur, les dates ou d'autres détails cachés avant le partage."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction de Texte avec Regex"
      content: |
        Utilisez regex pour trouver et cacher des motifs comme des emails, des identifiants ou des formats personnalisés.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le document que vous souhaitez éditer
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Ajoutez un motif regex d'EMAIL et le texte de remplacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Appliquez la rédaction au contenu correspondant
              redactor.apply(redaction);

              // Enregistrez la version rédigée
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
    title: "Rédiger des Fichiers PDF avec Java"
    exclude: "PDF"
    description: "Protégez les informations personnelles ou professionnelles en rédactant le contenu PDF avec les outils de Java."
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