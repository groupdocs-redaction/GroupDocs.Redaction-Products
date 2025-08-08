
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Protéger le texte dans POWERPOINT avec des superpositions Java"
head_description: "Avec GroupDocs.Redaction for Java, vous pouvez bloquer du texte privé dans des diapositives POWERPOINT en utilisant de simples boîtes de superposition—sans changer la mise en page."

############################# Header ############################
title: "Cacher le texte dans POWERPOINT en utilisant des superpositions et Java" 
description: "Utilisez Java et GroupDocs.Redaction for Java pour sécuriser vos diapositives POWERPOINT en masquant du contenu sensible."
subtitle: "À l'intérieur de GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "À propos de GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java aide les développeurs Java à nettoyer les diapositives POWERPOINT en bloquant ou en supprimant du contenu sensible comme le texte, les métadonnées ou les images.

############################# Steps ############################
steps:
    enable: true
    title: "Nettoyer les présentations Powerpoint avant de partager"
    content: |
      Utilisez GroupDocs.Redaction for Java dans les applications Java pour masquer ou supprimer des parties sensibles de vos diapositives.
      
      1. Créez un nouveau Redactor avec le chemin de votre diaporama.
      2. Définissez vos préférences de rédaction.
      3. Définissez le modèle de texte et la couleur de superposition.
      4. Exécutez et enregistrez le fichier rédigé.
   
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
        // Superposez les zones de texte dans POWERPOINT

        // Ouvrez le fichier avec Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Ajustez les paramètres de rédaction
            // Entrez le texte et choisissez la couleur de superposition
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Rédigez et enregistrez le fichier mis à jour
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rédaction simple pour des diapositives sensibles"
  description: "GroupDocs.Redaction for Java facilite le blocage ou la suppression de contenu des diapositives, peu importe le cas d'utilisation."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Outils de rédaction qui s'adaptent"
  features:
    # feature loop
    - title: "Trouver et remplacer le texte"
      content: "Protégez des phrases ou des étiquettes sensibles sur n'importe quelle diapositive."

    # feature loop
    - title: "Couvrir des parties visuelles"
      content: "Ajoutez des superpositions aux zones sélectionnées des diapositives ou des images."

    # feature loop
    - title: "Supprimer le contenu caché"
      content: "Effacez les métadonnées des diapositives ou les notes de révision avant de partager."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex pour la rédaction de texte"
      content: |
        Apprenez à détecter et rédiger le texte à l'aide de la correspondance de motifs
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez le diaporama
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Appliquez vos règles regex
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Exécutez la rédaction
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
    title: "Protéger les diapositives POWERPOINT avec Java"
    exclude: "POWERPOINT"
    description: "Utilisez la rédaction par superposition et les outils de nettoyage de Java pour garder vos diapositives POWERPOINT privées."
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