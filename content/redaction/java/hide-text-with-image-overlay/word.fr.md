
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rédiger du texte dans WORD en utilisant des superpositions Java"
head_description: "Utilisez GroupDocs.Redaction for Java pour couvrir un texte sensible dans des fichiers WORD avec des blocs de couleur tout en conservant la structure du document inchangée."

############################# Header ############################
title: "Superposition de rédaction dans des fichiers WORD avec Java" 
description: "Masquez des détails importants dans vos documents WORD en utilisant des superpositions colorées alimentées par Java et GroupDocs.Redaction for Java."
subtitle: "Ce que GroupDocs.Redaction for Java peut faire" 

############################# About ############################
about:
    enable: true
    title: "Rencontrez GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java donne aux utilisateurs Java un contrôle total sur la rédaction WORD. Cachez tout ce que vous souhaitez—texte, visuels ou métadonnées.

############################# Steps ############################
steps:
    enable: true
    title: "Protéger les informations privées au format Word"
    content: |
      GroupDocs.Redaction for Java donne aux développeurs Java des moyens rapides de nettoyer des fichiers et sécuriser leur contenu.
      
      1. Démarrez un Redactor et chargez le fichier Word.
      2. Choisissez vos options de rédaction.
      3. Ajoutez un modèle de texte et une couleur de superposition.
      4. Exécutez la rédaction et enregistrez le fichier.
   
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
        // Masquez le texte à l'aide de superpositions dans WORD

        // Utilisez Redactor pour ouvrir le document
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Définissez les préférences de rédaction
            // Ajoutez des mots-clés et sélectionnez une couleur
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez et enregistrez votre fichier révisé
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de capacités de rédaction"
  description: "Utilisez GroupDocs.Redaction for Java pour supprimer à la fois du contenu visible et caché des fichiers tout en maintenant la mise en page intacte."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Sortie simple et propre"
  features:
    # feature loop
    - title: "Remplacer le texte"
      content: "Couvrez des mots ou des termes qui ne devraient pas être vus."

    # feature loop
    - title: "Masquer des visuels"
      content: "Utilisez des superpositions colorées pour masquer des images ou des parties de celles-ci."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Supprimez les détails cachés dans les propriétés du fichier."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction basée sur Regex"
      content: |
        Découvrez comment utiliser regex pour cacher automatiquement du contenu spécifique
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le document à rédiger
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Définissez votre modèle regex et la couleur de superposition
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Appliquez la rédaction
              redactor.apply(redaction);

              // Enregistrez votre version propre
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
    title: "Rédiger du contenu dans WORD avec Java"
    exclude: "WORD"
    description: "Gardez vos documents WORD privés en cachant ou en supprimant des données sensibles à l'aide de Java."
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