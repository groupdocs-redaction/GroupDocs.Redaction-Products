
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "fr/redaction/net/metadata/version/dotx"
otherformats: BMP DOC DOCM DOCX DOT DOTM GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Rédactions de métadonnées à partir de documents dans C#"
head_description: "Rédigez les métadonnées sensibles dans C# en appliquant des filtres aux documents de différents formats"

############################# Header ############################
title: "Version expurgée des métadonnées du fichier DOTX dans C#"
description: "L'API de GroupDocs.Redaction permet de rechercher puis de mettre à jour ou de supprimer toutes les données confidentielles des métadonnées d'un document."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que la rédaction de métadonnées ?"
    content: |
        La plupart des gens sont concernés par la rédaction du texte d'un document. Mais la rédaction des métadonnées est tout aussi importante. Les métadonnées sont les données cachées d'un document qui peuvent contenir des informations confidentielles que vous ne souhaitez peut-être pas partager avec d'autres personnes. La rédaction de métadonnées fait référence à la suppression d'informations indésirables ou confidentielles dans des documents électroniques. Les métadonnées d'un document incluent le nom de l'auteur, la catégorie, le nom de l'entreprise, les commentaires, l'heure de création, la dernière mise à jour, etc. Parfois, vous devez supprimer complètement les champs de métadonnées indésirables ou mettre à jour leurs valeurs. Avec l'API GroupDocs.Redaction, vous pouvez appliquer des rédactions de métadonnées à n'importe laquelle de ces propriétés de métadonnées. Vous pouvez les modifier ou les supprimer en filtrant les métadonnées souhaitées. Dans ce guide, nous expliquerons comment vous pouvez supprimer la version des métadonnées du fichier DOTX dans C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Version expurgée du fichier DOTX dans C#"
      content_left: |
        Le code suivant vous permet de rechercher et de supprimer des données sensibles à partir d'un document DOTX. Vous pouvez définir l'étendue de la rédaction en définissant le filtre, par exemple sur MetadataFilter.version. Les correspondances des expressions régulières seront annulées dans tous les éléments de métadonnées, à l'exception de la propriété « Version » :
        

      title_right: "Comment rédiger DOTX métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et téléchargez le fichier DOTX
        * Créez une instance de la classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) pour rechercher et remplacer les données sensibles des métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, utilisez MetadataFilter.version dans le code ci-dessous
        * Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) avec l'objet [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "8f1996554c2bb9abf77d09315497308a"
      gistfile: "RedactVersionMetadata.cs"

    - title_left: "Supprimer DOTX métadonnées dans C#"
      content_left: |
        Vous pouvez remplacer toutes les métadonnées ou certaines d'entre elles dans le document par des valeurs vides (vides ou minimales) à l'aide de la classe ErasemetadataRedaction. Le code suivant montre comment filtrer puis supprimer une propriété de métadonnées d'un document DOTX. L'exemple ci-dessous masque toutes les propriétés du document :
        
        
      title_right: "Effacer DOTX métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et téléchargez le fichier DOTX
        * Créez une instance de [ErasemetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) pour supprimer les métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, remplacez MetadataFilter.ALL par MetadataFilter.version dans le code ci-dessous 
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