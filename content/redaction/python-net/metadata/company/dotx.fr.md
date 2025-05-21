
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "fr/redaction/net/metadata/company/dotx"
otherformats: BMP DOC DOCM DOCX DOT DOTM GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Rédiger les métadonnées sensibles de DOTX documents dans C#"
head_description: "Appliquez la rédaction des métadonnées en appliquant des filtres aux documents de différents formats"

############################# Header ############################
title: "Rédiger le nom de l'entreprise à partir des métadonnées DOTX dans C#"
description: "GroupDocs.Redaction s fournit une API flexible qui permet de rechercher et de remplacer/supprimer toute propriété de métadonnées à l'aide de filtres."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Qu'est-ce que la rédaction de métadonnées ?"
    content: |
        La rédaction fait référence à la suppression d'informations indésirables ou confidentielles dans des documents électroniques. Tous les formats de fichiers, y compris PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX et d'autres possèdent certaines propriétés de métadonnées. Ces propriétés incluent le nom de l'auteur, la catégorie, le nom de l'entreprise, les commentaires, l'heure de création, la dernière mise à jour, etc. Parfois, vous devez supprimer complètement les champs de métadonnées indésirables ou mettre à jour leurs valeurs. Il existe également des données cachées associées aux fichiers qui peuvent être visualisées à l'aide de divers outils et techniques. Dans de nombreux cas, vous ne souhaitez pas que quiconque accède à ces données. Avec l'API GroupDocs.Redaction, vous pouvez appliquer des rédactions de métadonnées à n'importe laquelle de ces propriétés de métadonnées. Vous pouvez les modifier ou les supprimer en filtrant les métadonnées souhaitées. Dans ce guide, nous expliquerons comment supprimer le nom de l'entreprise à partir des métadonnées DOTX dans C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Rédiger DOTX métadonnées dans C#"
      content_left: |
        Le code suivant vous permet de rechercher et de supprimer des données sensibles à partir d'un document DOTX. Vous pouvez définir l'étendue de la rédaction en définissant un filtre, par exemple sur MetadataFilter.company. - Cela annulera les correspondances des expressions régulières dans tous les éléments de métadonnées, à l'exception de la propriété « Company » :
        

      title_right: "Comment rédiger DOTX métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et téléchargez le fichier DOTX
        * Créez une instance de la classe [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) pour rechercher et remplacer les données sensibles des métadonnées du document
        * Définissez l'étendue de la rédaction en définissant un filtre, par exemple, utilisez MetadataFilter.company dans le code ci-dessous
        * Appelez la méthode [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) avec l'objet [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "28e28d1f0f09bbb1286cd97b95b22712"
      gistfile: "RedactCompanyMetadata.cs"

    - title_left: "Supprimer DOTX métadonnées dans C#"
      content_left: |
        Vous pouvez remplacer toutes les métadonnées ou certaines d'entre elles dans le document par des valeurs vides (vides ou minimales) à l'aide de la classe ErasemetadataRedaction. Le code suivant montre comment filtrer puis supprimer une propriété de métadonnées d'un document DOTX. L'exemple ci-dessous masque toutes les propriétés du document :
        
        
      title_right: "Effacer DOTX métadonnées"
      content_right: |
        * Créez une instance de la classe [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) et téléchargez le fichier DOTX
        * Créez une instance de [ErasemetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) pour supprimer les métadonnées du document
        * Définissez l'étendue de la rédaction en définissant le filtre, par exemple, remplacez MetadataFilter.ALL par MetadataFilter.company dans le code ci-dessous 
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