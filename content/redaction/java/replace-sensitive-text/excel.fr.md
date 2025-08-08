
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer le Texte Privé des EXCEL avec Java"
head_description: "Gardez vos tableurs EXCEL en sécurité en supprimant du contenu sensible avec GroupDocs.Redaction for Java et Java. Rédaction rapide et simple."

############################# Header ############################
title: "Modifier ou Supprimer du Texte dans des Fichiers EXCEL avec Java" 
description: "Nettoyez vos fichiers EXCEL avec GroupDocs.Redaction for Java et Java. Idéal pour protéger des données commerciales ou personnelles."
subtitle: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Rencontrez GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java tout ce dont ils ont besoin pour nettoyer les fichiers EXCEL. Éditez ou cachez le texte, les images, les métadonnées et les notes avec précision.

############################# Steps ############################
steps:
    enable: true
    title: "Comment Rédiger du Contenu dans des Fichiers Excel"
    content: |
      Utilisez GroupDocs.Redaction for Java dans vos projets Java pour supprimer ou couvrir du texte que vous ne souhaitez pas partager.
      
      1. Créez un Redactor et chargez le fichier Excel.
      2. Choisissez vos paramètres de rédaction.
      3. Définissez ce qu'il faut trouver et ce par quoi le remplacer.
      4. Exécutez la rédaction et enregistrez votre fichier.
   
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
        // Comment rédiger du texte dans un fichier EXCEL

        // Chargez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Définissez vos règles de rédaction
            // Entrez le texte cible et le remplacement
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez et enregistrez le fichier nettoyé
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d'Outils de Rédaction"
  description: "GroupDocs.Redaction for Java aide à nettoyer le contenu privé de nombreux types de documents. Idéal pour la confidentialité avant le partage."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Fonctionnalités de rédaction de texte, d'images et de métadonnées"
  features:
    # feature loop
    - title: "Remplacer le texte privé"
      content: "Trouvez et changez des mots ou des chiffres correspondants dans l'ensemble du fichier. Utilisez des motifs de recherche ou des correspondances exactes."

    # feature loop
    - title: "Cacher des parties d'images"
      content: "Ajoutez des boîtes de superposition pour cacher des images ou des cellules. Choisissez des couleurs, des tailles et des positions."

    # feature loop
    - title: "Supprimer les informations de fond"
      content: "Éliminez les données cachées comme les auteurs, les horodatages ou les commentaires de document."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction de Motifs avec Regex"
      content: |
        Utilisez des expressions régulières pour trouver et cacher des motifs comme des adresses email ou des numéros de compte.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le fichier que vous souhaitez nettoyer
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Créez un motif regex d'EMAIL et définissez le texte de remplacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Exécutez le processus de rédaction
              redactor.apply(redaction);

              // Enregistrez la version mise à jour
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
    title: "Rédiger du Contenu dans EXCEL en Utilisant Java"
    exclude: "EXCEL"
    description: "Nettoyez les données privées des fichiers EXCEL en utilisant Java. Une méthode intelligente pour garder vos tableurs sécurisés."
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