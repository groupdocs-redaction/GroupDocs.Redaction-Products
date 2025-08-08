
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: fr
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Supprimer le Texte Privé des WORD avec Java"
head_description: "Gardez vos fichiers WORD sécurisés en rédigeant des données sensibles avec GroupDocs.Redaction for Java et Java. Nettoyage rapide et simple."

############################# Header ############################
title: "Modifier ou Supprimer du Texte dans des Fichiers WORD avec Java" 
description: "Protégez le contenu important dans vos fichiers WORD à l'aide de GroupDocs.Redaction for Java et Java. Rédigez des données commerciales, légales ou personnelles en toute confiance."
subtitle: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java offre aux développeurs Java un moyen fiable de rédiger des fichiers WORD. Nettoyez du texte, des images, des commentaires et des détails cachés en seulement quelques lignes de code.

############################# Steps ############################
steps:
    enable: true
    title: "Étapes pour Rédiger des Documents Word"
    content: |
      Utilisez GroupDocs.Redaction for Java dans vos projets Java pour nettoyer les fichiers avant de les partager.
      
      1. Créez un Redactor et chargez le document Word.
      2. Définissez vos options de rédaction préférées.
      3. Choisissez le texte que vous souhaitez trouver et remplacer.
      4. Appliquez la rédaction et sauvegardez votre fichier.
   
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
        // Rédaction d'un document WORD

        // Chargez le fichier à l'aide de Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Choisissez vos règles de rédaction
            // Entrez le texte de recherche et de remplacement
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Exécutez la rédaction et enregistrez le nouveau fichier
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus de Fonctionnalités de Rédaction"
  description: "GroupDocs.Redaction for Java peut vous aider à nettoyer des informations sensibles provenant de différents types de fichiers. Supprimez du texte, des images et des métadonnées cachées rapidement."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Rédigez du texte, des images et des métadonnées"
  features:
    # feature loop
    - title: "Rechercher et remplacer du texte"
      content: "Trouvez un contenu spécifique et remplacez-le ou supprimez-le dans tout le fichier. Le support regex est inclus."

    # feature loop
    - title: "Couvrir des parties de pages"
      content: "Utilisez des superpositions pour cacher des photos ou des sections du document."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Effacez des informations supplémentaires comme l'auteur, les horodatages ou les modifications suivies."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction avec des Motifs Regex"
      content: |
        Recherchez du texte à l'aide d'expressions régulières pour cacher du contenu tel que des numéros de téléphone, des dates ou des identifiants.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Chargez votre document
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Définissez un motif regex d'EMAIL et une valeur de remplacement
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Appliquez la rédaction
              redactor.apply(redaction);

              // Enregistrez le document mis à jour
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
    title: "Rédiger du Contenu dans WORD avec Java"
    exclude: "WORD"
    description: "Cachez ou supprimez du contenu personnel et privé des documents WORD à l'aide de Java. Une méthode simple pour garder vos fichiers en sécurité."
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