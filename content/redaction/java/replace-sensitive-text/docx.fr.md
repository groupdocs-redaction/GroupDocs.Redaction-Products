
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer le Texte Privé des DOCX avec Java"
head_description: "Sécurisez le contenu de vos fichiers DOCX à l'aide de GroupDocs.Redaction for Java. Rédaction rapide et efficace pour le texte, les images et les métadonnées."

############################# Header ############################
title: "Modifier ou Supprimer du Texte dans des Documents DOCX à l'Aide de Java" 
description: "Protégez le contenu personnel ou professionnel dans vos fichiers DOCX avec Java et GroupDocs.Redaction for Java."
subtitle: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java aide les développeurs Java à nettoyer et rédiger des fichiers DOCX. Supprimez du texte, des images, des commentaires et des données cachées en toute simplicité.

############################# Steps ############################
steps:
    enable: true
    title: "Comment Rédiger du Contenu dans des Fichiers Docx"
    content: |
      Utilisez GroupDocs.Redaction for Java dans vos projets Java pour nettoyer les fichiers avant de les partager.
      
      1. Créez un Redactor et chargez le fichier.
      2. Choisissez vos options de rédaction.
      3. Entrez le texte à rechercher et son remplacement.
      4. Appliquez les rédactions et enregistrez le fichier.
   
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
        // Rédiger du contenu dans un fichier DOCX

        // Chargez le document à l'aide de Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Définissez les options de rédaction
            // Définissez ce qu'il faut trouver et remplacer
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez la rédaction et enregistrez
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Options de Rédaction"
  description: "GroupDocs.Redaction for Java vous permet de nettoyer le contenu sensible de nombreux types de fichiers. Gardez vos documents sûrs sans perdre leur structure."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Outils pour supprimer du contenu"
  features:
    # feature loop
    - title: "Remplacer du texte"
      content: "Trouvez un contenu spécifique et remplacez-le dans tout le document."

    # feature loop
    - title: "Cacher des images ou des parties"
      content: "Couvrez des visuels sensibles avec des superpositions colorées."

    # feature loop
    - title: "Supprimer des données cachées"
      content: "Effacez les métadonnées telles que les noms d'auteur, les horodatages ou les propriétés du document."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction Basée sur Regex"
      content: |
        Utilisez des expressions régulières pour détecter et rédiger des motifs comme des numéros de téléphone ou des emails.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le document
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Définissez un motif regex pour l'EMAIL et le texte de remplacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Exécutez la rédaction
              redactor.apply(redaction);

              // Enregistrez le fichier nettoyé
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
    title: "Nettoyer les Fichiers DOCX avec Java"
    exclude: "DOCX"
    description: "Rédigez ou remplacez le contenu sensible dans des documents DOCX en utilisant les outils fournis par Java."
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