
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "fr/redaction/net/metadata/description/bmp"
otherformats: DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Rédactions de métadonnées à partir de documents dans C#"
head_description: "Rédigez les métadonnées sensibles dans C# en appliquant des filtres aux documents de différents formats"

############################# Header ############################
title: "Rédiger les métadonnées de description du document BMP dans C#"
description: "L'API de GroupDocs.Redaction permet de rechercher puis de mettre à jour ou de supprimer toutes les données confidentielles des métadonnées d'un document."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que la rédaction de métadonnées ?"
    content: |
        La plupart des gens sont concernés par la rédaction du texte d'un document. Mais la rédaction des métadonnées est tout aussi importante. Les métadonnées sont les données cachées d'un document qui peuvent contenir des informations confidentielles que vous ne souhaitez peut-être pas partager avec d'autres personnes. La rédaction de métadonnées fait référence à la suppression d'informations indésirables ou confidentielles dans des documents électroniques. Les métadonnées d'un document incluent le nom de l'auteur, la catégorie, le nom de l'entreprise, les commentaires, l'heure de création, la dernière mise à jour, etc. Parfois, vous devez supprimer complètement les champs de métadonnées indésirables ou mettre à jour leurs valeurs. Avec l'API GroupDocs.Redaction, vous pouvez appliquer des rédactions de métadonnées à n'importe laquelle de ces propriétés de métadonnées. Vous pouvez les modifier ou les supprimer en filtrant les métadonnées souhaitées. Dans ce guide, nous expliquerons comment vous pouvez supprimer les métadonnées de description d'un document BMP dans C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Rédiger la description du document BMP"
      content_left: |
        Le code suivant vous permet de rechercher et de supprimer des données sensibles à partir d'un document BMP. Vous pouvez définir l'étendue de la rédaction en définissant le filtre, par exemple sur MetadataFilter.description. Les correspondances des expressions régulières seront annulées dans tous les éléments de métadonnées, à l'exception de la propriété « Description » :
        

      title_right: "Comment rédiger BMP métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et téléchargez le fichier BMP
        * Créez une instance de la classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) pour rechercher et remplacer les données sensibles des métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, utilisez MetadataFilter.Description dans le code ci-dessous
        * Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) avec l'objet [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "15e3f0329c4e24c0f77f785b87753e0d"
      gistfile: "RedactDescriptionMetadata.cs"

    - title_left: "Supprimer BMP métadonnées dans C#"
      content_left: |
        Vous pouvez remplacer toutes les métadonnées ou certaines d'entre elles dans le document par des valeurs vides (vides ou minimales) à l'aide de la classe ErasemetadataRedaction. Le code suivant montre comment filtrer puis supprimer une propriété de métadonnées d'un document BMP. L'exemple ci-dessous masque toutes les propriétés du document :
        
        
      title_right: "Effacer BMP métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et téléchargez le fichier BMP
        * Créez une instance de [ErasemetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) pour supprimer les métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, remplacez MetadataFilter.ALL par Metadatafilter.Description dans le code ci-dessous 
        * Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) avec l'objet [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "Exigences du système"
      content_left: |
        GroupDocs.Redaction for .NET prend en charge tout système d'exploitation 32 bits ou 64 bits sur lequel la plate-forme .NET est installée. Il ne nécessite l'installation d'aucun logiciel externe ou outil tiers. Pour obtenir le guide complet de la configuration requise, rendez-vous sur [configuration requise](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Instructions d'installation"
      content_right: |
        Installez depuis la ligne de commande en tant que ```nuget install GroupDocs.Redaction ```ou via la console du gestionnaire de packages de Visual Studio avec ```Install-Package GroupDocs.Redaction```. 
        Vous pouvez également obtenir le programme d'installation MSI hors ligne ou les DLL dans un fichier ZIP depuis [downloads](https://downloads.groupdocs.com/redaction/net) et y faire référence manuellement dans votre projet.

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