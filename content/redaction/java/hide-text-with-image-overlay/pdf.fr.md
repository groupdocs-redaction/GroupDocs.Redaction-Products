
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Masquer le texte privé dans PDF avec des superpositions en utilisant Java"
head_description: "GroupDocs.Redaction for Java vous permet de cacher des informations sensibles dans des fichiers PDF en plaçant des cases colorées. Protégez les données sans modifier l'apparence de votre fichier."

############################# Header ############################
title: "Masquer le texte dans les documents PDF en utilisant des superpositions dans Java" 
description: "Prenez le contrôle total du contenu des fichiers PDF avec Java. Utilisez la rédaction pour protéger des détails financiers, juridiques ou personnels."
subtitle: "Fonctionnalités principales de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Ce que GroupDocs.Redaction for Java offre"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java un moyen simple de cacher ou de supprimer du contenu dans des fichiers PDF. Masquez du texte, des images et des métadonnées à travers différents types de documents.

############################# Steps ############################
steps:
    enable: true
    title: "Sécuriser les informations confidentielles dans les fichiers Pdf"
    content: |
      GroupDocs.Redaction for Java facilite la tâche aux développeurs Java pour cacher du contenu privé en quelques étapes simples.
      
      1. Démarrez un Redactor et chargez votre fichier Pdf.
      2. Configurez vos préférences de rédaction.
      3. Choisissez quoi trouver et sélectionnez la couleur de votre superposition.
      4. Appliquez la redaction et enregistrez votre document.
   
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
        // Masquer le texte dans PDF en utilisant des superpositions colorées

        // Passer le chemin du fichier au Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Ajustez les paramètres de rédaction
            // Définir le texte cible et la couleur
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez et enregistrez le PDF révisé
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Contrôlez ce qui est visible dans les documents"
  description: "GroupDocs.Redaction for Java vous permet de bloquer ou de supprimer des parties de vos fichiers tout en les rendant faciles à consulter et à partager."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Outils de rédaction puissants"
  features:
    # feature loop
    - title: "Cibler et masquer le texte"
      content: "Recherchez votre document et masquez des mots ou phrases spécifiques pour protéger des informations privées."

    # feature loop
    - title: "Cacher les images"
      content: "Ajoutez des superpositions pour masquer complètement ou partiellement des visuels."

    # feature loop
    - title: "Supprimer les métadonnées"
      content: "Supprimez les détails cachés du document pour éviter toute exposition involontaire."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Cacher du texte en utilisant Regex"
      content: |
        Cet exemple utilise des expressions régulières pour trouver et masquer un contenu spécifique
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le fichier que vous souhaitez traiter
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Définissez le modèle de texte et la couleur de superposition
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Appliquez la redaction
              redactor.apply(redaction);

              // Enregistrez vos modifications
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
    title: "Protéger les fichiers PDF avec Java"
    exclude: "PDF"
    description: "Utilisez Java pour couvrir ou effacer du contenu dans des documents PDF. Une excellente façon de garder les informations privées en sécurité."
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