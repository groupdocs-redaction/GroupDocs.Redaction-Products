
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Bloquer le texte dans XLSX avec des superpositions Java"
head_description: "GroupDocs.Redaction for Java vous permet de couvrir des informations sensibles dans des fichiers XLSX avec des blocs colorés. Cachez les données tout en maintenant la mise en page intacte."

############################# Header ############################
title: "Cacher des données dans XLSX avec des superpositions en utilisant Java" 
description: "Utilisez Java et GroupDocs.Redaction for Java pour masquer du contenu privé dans des fichiers XLSX sans affecter le format."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Pourquoi GroupDocs.Redaction for Java fonctionne"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permet aux développeurs Java de sécuriser les fichiers XLSX. Masquez du texte, des images ou des métadonnées rapidement.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger les informations dans les documents Xlsx"
    content: |
      Gardez vos documents en sécurité en utilisant un code simple avec GroupDocs.Redaction for Java dans Java.
      
      1. Créez un Redactor avec le chemin du fichier.
      2. Mettez en place votre logique de rédaction.
      3. Choisissez le mot-clé et la couleur de la superposition.
      4. Rédigez et enregistrez le fichier.
   
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
        // Masquer des informations dans XLSX en utilisant des blocs

        // Chargez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Configurez les préférences de rédaction
            // Ajoutez du texte et de la couleur à bloquer
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Enregistrez le document mis à jour
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de confidentialité intégrées"
  description: "Utilisez GroupDocs.Redaction for Java pour bloquer ou supprimer du contenu dans vos fichiers tout en maintenant la structure intacte."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Outils de confidentialité faciles"
  features:
    # feature loop
    - title: "Modifier ou masquer du texte"
      content: "Éditez ou rédigez des mots spécifiques facilement."

    # feature loop
    - title: "Masquer des parties d'images"
      content: "Ajoutez des superpositions pour cacher des photos ou des détails graphiques."

    # feature loop
    - title: "Supprimer des informations cachées"
      content: "Effacer les métadonnées comme les informations utilisateur ou l'historique des fichiers."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Utilisez Regex pour rédiger du contenu"
      content: |
        Trouvez et cachez automatiquement du texte avec une correspondance de motifs
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez la feuille de calcul
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Définissez le modèle et la couleur de la superposition
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Appliquez les règles de rédaction
              redactor.apply(redaction);

              // Exportez votre résultat
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
    title: "Rédiger des données XLSX en utilisant Java"
    exclude: "XLSX"
    description: "Utilisez des superpositions ou supprimez du contenu dans XLSX pour garder des données sensibles privées avec Java."
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