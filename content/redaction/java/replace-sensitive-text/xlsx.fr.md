
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer le Texte Privé des XLSX à l'Aide de Java"
head_description: "Gardez vos données XLSX en sécurité en rédigeant du texte et des métadonnées à l'aide de GroupDocs.Redaction for Java. Protection simple et efficace."

############################# Header ############################
title: "Nettoyez les Fichiers XLSX à l'Aide de Java" 
description: "Supprimez le contenu sensible des fichiers XLSX avec Java et GroupDocs.Redaction for Java. Gardez vos tableurs sécurisés."
subtitle: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Pourquoi Utiliser GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java donne aux développeurs Java les outils nécessaires pour nettoyer les fichiers XLSX. Rédigez du texte, des métadonnées, des images et plus encore en quelques lignes de code.

############################# Steps ############################
steps:
    enable: true
    title: "Rédiger des Données des Fichiers Xlsx"
    content: |
      Utilisez GroupDocs.Redaction for Java dans n'importe quelle application Java pour supprimer du texte ou du contenu caché avant de partager.
      
      1. Créez une instance de Redactor et chargez votre fichier.
      2. Sélectionnez les options de rédaction que vous souhaitez.
      3. Choisissez le texte à trouver et son remplacement.
      4. Appliquez la rédaction et enregistrez votre document.
   
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
        // Comment rédiger une feuille de calcul XLSX

        // Créez un Redactor et chargez votre fichier
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // Choisissez vos paramètres de rédaction
            // Entrez le texte de recherche et de remplacement
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Appliquez les modifications et enregistrez
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Outils de Rédaction Utiles"
  description: "GroupDocs.Redaction for Java aide à supprimer le contenu privé de divers fichiers. Nettoyez les documents sans perdre leur mise en forme."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Protection intelligente du contenu"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez et mettez à jour ou cachez des données sensibles dans les cellules."

    # feature loop
    - title: "Couvrez les visuels"
      content: "Cachez des graphiques, des images ou des plages à l'aide de superpositions colorées."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Supprimez les informations d'auteur, les dates de création et d'autres données de fond."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction avec Regex"
      content: |
        Trouvez et rédigez des valeurs comme des numéros de compte ou des motifs à l'aide de regex.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Ouvrez le fichier à traiter
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // Ajoutez une règle regex d'EMAIL et un remplacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Appliquez les règles de rédaction
              redactor.apply(redaction);

              // Enregistrez le fichier mis à jour
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
    title: "Rédiger du Contenu dans XLSX avec Java"
    exclude: "XLSX"
    description: "Nettoyez et protégez les fichiers XLSX en utilisant les fonctionnalités de Java pour la rédaction et la suppression de contenu."
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