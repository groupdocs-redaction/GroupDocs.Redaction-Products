
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "fr/redaction/java/metadata/category/dotm"
otherformats: BMP DOC DOCM DOCX DOT DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Rédiger les métadonnées | Java"
ad_description: "Rédiger le nom de la catégorie à partir des métadonnées DOTM dans Java"
############################# Head ############################
head_title: "Rédiger le nom de la catégorie à partir des métadonnées DOTM dans Java"
head_description: "GroupDocs.Redaction s fournit une API flexible qui permet de rechercher et de remplacer/supprimer toute propriété de métadonnées à l'aide de filtres."

############################# Header ############################
title: "Rédiger le nom de la catégorie à partir des métadonnées DOTM dans Java"
description: "GroupDocs.Redaction s fournit une API flexible qui permet de rechercher et de remplacer/supprimer toute propriété de métadonnées à l'aide de filtres."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que la rédaction de métadonnées ?"
    content: |
        La rédaction fait référence à la suppression d'informations indésirables ou confidentielles dans des documents électroniques. Tous les formats de fichiers, y compris PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX et d'autres possèdent certaines propriétés de métadonnées. Ces propriétés incluent le nom de l'auteur, la catégorie, le nom de l'entreprise, les commentaires, l'heure de création, la dernière mise à jour, etc. Parfois, vous devez supprimer complètement les champs de métadonnées indésirables ou mettre à jour leurs valeurs. Il existe également des données cachées associées aux fichiers qui peuvent être visualisées à l'aide de divers outils et techniques. Dans de nombreux cas, vous ne souhaitez pas que quiconque accède à ces données. Avec l'API GroupDocs.Redaction, vous pouvez appliquer des rédactions de métadonnées à n'importe laquelle de ces propriétés de métadonnées. Vous pouvez les modifier ou les supprimer en filtrant les métadonnées souhaitées. Dans ce guide, nous expliquerons comment supprimer le nom d'une catégorie à partir des métadonnées DOTM dans Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Rédiger DOTM métadonnées dans Java"
      content_left: |
        Le code suivant vous permet de rechercher et de supprimer des données sensibles à partir d'un document DOTM. Vous pouvez définir l'étendue de la rédaction en définissant un filtre, par exemple sur MetadataFilter.Category. - Cela annulera les correspondances des expressions régulières dans tous les éléments de métadonnées, à l'exception de la propriété « Catégorie » : 

      title_right: "Comment rédiger DOTM métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) et téléchargez le fichier DOTM
        * Créez une instance de la classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pour rechercher et remplacer les données sensibles des métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, utilisez MetadataFilters.category dans le code ci-dessous
        * Appelez la méthode redactor.save avec l'objet [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7aa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "Supprimer DOTM métadonnées dans Java"
      content_left: |
        Vous pouvez remplacer toutes les métadonnées ou certaines d'entre elles dans le document par des valeurs vides (vides ou minimales) à l'aide de la classe ErasemetadataRedaction. Le code suivant montre comment filtrer puis supprimer une propriété de métadonnées d'un document DOTM. L'exemple ci-dessous masque toutes les propriétés du document : 
        
      title_right: "Effacer les métadonnées de catégorie du fichier DOTM"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) et téléchargez le fichier DOTM
        * Créez une instance de la classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) pour supprimer les métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, remplacez MetadataFilter.ALL par MetadataFilter.category dans le code ci-dessous
        * Appelez la méthode redactor.save avec l'objet [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "Exigences du système"
      content_left: |
        GroupDocs.Redaction for Java Les API sont prises en charge sur toutes les principales plates-formes et systèmes d'exploitation. Pour obtenir le guide complet de la configuration requise, rendez-vous sur [configuration requise](https://docs.groupdocs.com/redaction/java/system-requirements) Avant d'exécuter le code ci-dessous, assurez-vous que les prérequis suivants sont installés sur votre système :
        * Systèmes d'exploitation : Microsoft Windows, Linux, Mac OS
        * Environnement de développement : NetBeans, Intellij IDEA, Eclipse, etc.
        * Java Environnement d'exécution : J2SE 6.0 et versions ultérieures
        * Téléchargez la dernière version de GroupDocs.Redaction for Java sur [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Pourquoi utiliser GroupDocs.Redaction"
      content_right: |
        * Permettre aux utilisateurs d'ajouter des formats de documents personnalisés et des types de rédactions
        * Aucun logiciel supplémentaire n'est requis pour supprimer les informations sensibles
        * Possibilité de définir le document de rendu par plage de pages comme PDF
        * Un moyen simple de rédiger différents types de métadonnées : nom de l'auteur, version, titre, sujet, description et bien d'autres
        * Extraction d'informations sur les documents : type de fichier, nombre de pages, etc.
        

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---