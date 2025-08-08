
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer le texte dans DOCX avec des superpositions en utilisant Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour bloquer le texte privé dans des fichiers DOCX. Conservez la mise en page inchangée tout en cachant des données sensibles."

############################# Header ############################
title: "Protéger le texte DOCX avec des superpositions dans Java" 
description: "Masquez rapidement des détails personnels, juridiques ou commerciaux dans des fichiers DOCX avec Java et GroupDocs.Redaction for Java."
subtitle: "Outils clés dans GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Ce qu'est GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java des outils pour nettoyer les fichiers DOCX. Rédigez des noms, des chiffres ou des notes rapidement.

############################# Steps ############################
steps:
    enable: true
    title: "Rédéclarez le contenu sensible dans Docx"
    content: |
      Nettoyez facilement les documents dans votre projet Java en utilisant GroupDocs.Redaction for Java.
      
      1. Initialisez Redactor avec votre fichier.
      2. Choisissez comment la rédaction doit fonctionner.
      3. Sélectionnez le texte à masquer et la couleur de la superposition.
      4. Appliquez la rédaction et sauvegardez le fichier.
   
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
        // Masquer le texte avec des superpositions dans DOCX

        // Créez un Redactor et chargez votre document
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choisissez les options de rédaction
            // Sélectionnez le texte et la couleur
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Enregistrez la version révisée
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de rédaction pour un usage quotidien"
  description: "GroupDocs.Redaction for Java vous offre des options simples pour masquer des détails sensibles à travers les documents tout en les maintenant utilisables."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Options de rédaction faciles"
  features:
    # feature loop
    - title: "Trouver et changer du texte"
      content: "Masquez ou remplacez des mots en quelques secondes."

    # feature loop
    - title: "Bloquer des parties d'images"
      content: "Masquez des sections d'images ou de contenu scanné."

    # feature loop
    - title: "Effacer les informations de fond"
      content: "Supprimez les métadonnées cachées comme l'auteur ou les dates."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trouver du texte avec Regex et le masquer"
      content: |
        Utilisez le correspondance de motifs pour masquer automatiquement des phrases clés
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le document que vous souhaitez rédiger
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Définissez le modèle regex et le style de superposition
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Appliquez la logique de rédaction
              redactor.apply(redaction);

              // Enregistrez votre document nettoyé
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
    title: "Rédiger des fichiers DOCX en utilisant Java"
    exclude: "DOCX"
    description: "Protégez du contenu sensible dans DOCX en le masquant ou en le supprimant à l'aide des outils de Java."
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