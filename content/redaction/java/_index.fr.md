---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: fr
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Supprimez des données confidentielles des documents en utilisant Java"
head_description: "Protégez vos informations sensibles avec GroupDocs.Redaction for Java. Masquez, censurez ou supprimez sans effort du contenu privé dans des fichiers PDF, des fichiers Office et des images."

############################# Header ############################
title: "Protégez les Données Confidentielles avec GroupDocs.Redaction"
description: "Supprimez facilement des données privées, censurez du texte et nettoyez les métadonnées des fichiers PDF, Word, Excel, PowerPoint et des formats image en utilisant la boîte à outils fiable Java."
words:
  for: "pour"

actions:
  main: "Maven Téléchargement"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Licences"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Prêt à Commencer?"
  description: "Essayez gratuitement les fonctionnalités de GroupDocs.Redaction ou demandez une licence."

release:
  title: "Version {0} Publiée"
  notes: "Voir les nouveautés"
  downloads: "Téléchargements"

code:
  title: "Étapes pour Censurer le Contenu d'un Document"
  more: "Plus d'exemples"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Chargez votre fichier source avec une instance de Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Définissez les critères et les paramètres de censure
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Exécutez l'opération de censure
        RedactorChangeLog result = redactor.apply(red);

        // Enregistrez le fichier avec des censure appliquées
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction en un coup d'œil"
  description: "Améliorez vos applications Java avec des outils de censure professionnels"
  features:
    # feature loop
    - title: "Supprimer le Texte Sensible"
      content: "Avec GroupDocs.Redaction for Java, vous pouvez rechercher et masquer du texte privé à l'aide de superpositions ou de remplacements personnalisables. Compatible avec les fichiers PDF, Word, Excel et plus encore, il est idéal pour la conformité réglementaire et le partage sécurisé de documents."

    # feature loop
    - title: "Cacher des Images"
      content: "Identifiez et masquez complètement ou partiellement les images selon vos besoins. Définissez des règles de détection et des coordonnées de zone pour sécuriser efficacement les données visuelles."

    # feature loop
    - title: "Nettoyer les Métadonnées Intégrées"
      content: "Les fichiers peuvent contenir des informations cachées telles que les noms d'auteur, les outils de création ou les détails d'appareil. GroupDocs.Redaction for Java vous permet de détecter et de désinfecter les métadonnées dans Word, Excel, images et autres formats."

    # feature loop
    - title: "Censurer des Objets Intégrés"
      content: "Assainissez complètement les documents en censurant des objets tels que les annotations de PDF, les commentaires ou d'autres éléments intégrés afin d'éliminer toute trace d'informations confidentielles."

############################# Platforms ############################
platforms:
  enable: true
  title: "Indépendance de Plateforme"
  description: "GroupDocs.Redaction for Java fonctionne sur les principaux systèmes d'exploitation, frameworks et plateformes de développement."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Formats de Fichiers Pris en Charge"
  description: |
    GroupDocs.Redaction for Java prend en charge le traitement des [formats de fichiers suivants](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### Formats MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Autres Formats Office
        * **Portable:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Formats de Texte:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Autres Formats
        * **Web:** HTM, HTML, MD
        * **Images:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Ce que Vous Pouvez Faire avec GroupDocs.Redaction"
  description: "Localisez et censurez rapidement le contenu des fichiers PDF, des documents Office et des images avec précision."

  items:
    # feature loop
    - icon: "search"
      title: "Recherche Précise"
      content: "Utilisez des modes de recherche sensibles et insensibles à la casse pour trouver et censurer des correspondances exactes."

    # feature loop
    - icon: "text"
      title: "Trouver et Remplacer du Texte"
      content: "Détectez automatiquement et remplacez ou supprimez du texte confidentiel dans tout le document."

    # feature loop
    - icon: "image"
      title: "Superposer avec des Images Personnalisées"
      content: "Utilisez des blocs d'image pour obscurcir le texte censuré tout en préservant la mise en page."

    # feature loop
    - icon: "search"
      title: "Utilisez Regex pour une Censure Avancée"
      content: "Exploitez les expressions régulières pour détecter des modèles complexes et censurer intelligemment."

    # feature loop
    - icon: "table"
      title: "Censurer des Zones Spécifiques"
      content: "Limitez la censure aux pages sélectionnées ou aux zones définies en définissant des zones cibles précises."

    # feature loop
    - icon: "template"
      title: "Nettoyer les Champs de Métadonnées"
      content: "Identifiez et nettoyez les métadonnées du document, y compris l'auteur, l'entreprise ou les données de suivi."

    # feature loop
    - icon: "pdf"
      title: "Exporter dans le Format Souhaité"
      content: "Enregistrez vos fichiers censurés au format PDF ou dans un autre format pris en charge sans perdre l'intégrité de la mise en page."

    # feature loop
    - icon: "template"
      title: "Épurer Toutes les Métadonnées"
      content: "Supprimez complètement les métadonnées des fichiers pris en charge en une seule commande."

    # feature loop
    - icon: "hyperlink"
      title: "Politiques de Censure Automatisées"
      content: "Créez des configurations de censure réutilisables stockées en XML pour une censure cohérente par lots."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemples de Code"
  description: "Exemples courants d'utilisation de GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Censurer en Utilisant Regex"
      content: |
        GroupDocs.Redaction for Java permet aux développeurs Java d'appliquer [censure basée sur regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) avec un masquage d'image optionnel :
        {{< landing/code title="Censurer des Documents Word à l'aide d'Expressions Régulières">}}
        ```java {style=abap}
        // Créez une instance de la classe Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Définissez des règles de censure à l'aide d'une expression régulière
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Masquez tout texte correspondant avec des superpositions carrées bleues
            redactor.apply(redaction);

            // Enregistrez le document Word censuré
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Supprimer Toutes les Métadonnées"
      content: |
        Avec notre API, vous pouvez [supprimer des métadonnées](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) à travers plusieurs types de fichiers en une seule étape :
        {{< landing/code title="Supprimer Toutes les Métadonnées des Présentations">}}
        ```java {style=abap}   
        // Fournissez le chemin de la présentation au Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Configurez les options de censure
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Effacez toutes les métadonnées de la présentation
            redactor.apply(red);

            // Enregistrez le fichier de présentation nettoyé
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
