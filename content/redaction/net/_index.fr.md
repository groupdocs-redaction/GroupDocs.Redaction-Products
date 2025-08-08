---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: fr
product: "Redaction"
product_tag: "redaction"
platform: "Net"
platform_tag: "net"

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
head_title: "Censurer des données sensibles dans vos documents en utilisant .NET"
head_description: "Protégez vos documents d'entreprise avec GroupDocs.Redaction for .NET. Censurez, masquez ou supprimez facilement du contenu confidentiel des fichiers PDF, Word, Excel, PowerPoint et images."

############################# Header ############################
title: "Sécurisez Votre Contenu avec GroupDocs.Redaction"
description: "Censurez, masquez ou supprimez définitivement des informations sensibles et des métadonnées des fichiers PDF, des documents Word, des feuilles de calcul, des présentations et des images en utilisant notre puissante solution .NET."
words:
  for: "pour"

actions:
  main: "Nuget Téléchargement"
  main_link: "https://www.nuget.org/packages/GroupDocs.Redaction"
  alt: "Licences"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/net/"
  title: "Prêt à Commencer?"
  description: "Essayez gratuitement les fonctionnalités de GroupDocs.Redaction ou demandez une licence."

release:
  title: "Version {0} Publiée"
  notes: "Voir les nouveautés"
  downloads: "Téléchargements"

code:
  title: "Comment Censurer le Contenu d'un Fichier"
  more: "Plus d'exemples"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
  install: "dotnet add package GroupDocs.Redaction"
  content: |
    ```csharp {style=abap}   
    // Passez le fichier d'entrée à une instance de Redactor
    using (Redactor redactor = new Redactor("source.pdf"))
    {
        // Configurez les options de censure
        var repl_opt = new ReplacementOptions("[redacted]");
        var red = new ExactPhraseRedaction("Data", repl_opt);

        // Exécutez le processus de censure
        RedactorChangeLog result = redactor.Apply(red);

        // Enregistrez le fichier censuré
        if (result.Status != RedactionStatus.Failed)
        {
            redactor.Save();
        }
    }  
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction en un coup d'œil"
  description: "Ajoutez des capacités de censure de contenu de grade professionnel à vos applications .NET"
  features:
    # feature loop
    - title: "Censurer le Contenu Textuel"
      content: "GroupDocs.Redaction for .NET vous permet de localiser et de censurer du texte sensible. Le texte peut être remplacé ou masqué à l'aide de superpositions d'images colorées pour plus de sécurité. Prise en charge d'une grande variété de formats, y compris les fichiers PDF et Office, cette fonctionnalité aide à protéger les données privées et à rationaliser la conformité commerciale."

    # feature loop
    - title: "Censurer des Images"
      content: "Détectez et censurez automatiquement des images—totalement ou partiellement—sur les pages de documents. Spécifiez des critères de recherche et des régions ciblées pour masquer efficacement le contenu visuel sensible."

    # feature loop
    - title: "Gérer les Métadonnées de Fichier"
      content: "De nombreux types de fichiers contiennent des métadonnées cachées, telles que les noms d'auteur dans les fichiers Word ou les données EXIF dans les images. GroupDocs.Redaction for .NET facilite la recherche et la censure de ces informations pour garantir la confidentialité des données."

    # feature loop
    - title: "Censurer les Objets de Document"
      content: "Assurez une protection complète du contenu en censurant les éléments spécifiques au document tels que les annotations, les commentaires et les objets intégrés dans des formats comme les fichiers PDF."

############################# Platforms ############################
platforms:
  enable: true
  title: "Indépendance de Plateforme"
  description: "GroupDocs.Redaction for .NET est compatible avec une large gamme de systèmes d'exploitation, de cadres de développement et de gestionnaires de packages."
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
    - title: "VS Code"
      image: "vs_code"
    # platform loop
    - title: "ReSharper"
      image: "resharper"
    # platform loop
    - title: "macOS"
      image: "finder"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "NuGet"
      image: "nuget"

############################# File formats ############################
formats:
  enable: true
  title: "Formats de Fichiers Pris en Charge"
  description: |
    GroupDocs.Redaction for .NET prend en charge des opérations avec les [formats de fichiers suivants](https://docs.groupdocs.com/redaction/net/supported-document-formats/).
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
  title: "Fonctionnalités de GroupDocs.Redaction for .NET"
  description: "Extrayez et censurez des données des fichiers PDF, des fichiers Office et des images avec rapidité et précision."

  items:
    # feature loop
    - icon: "search"
      title: "Recherche Flexible"
      content: "Effectuez des recherches sensibles ou insensibles à la casse pour censurer des phrases ou des termes spécifiques."

    # feature loop
    - icon: "text"
      title: "Remplacer ou Supprimer du Texte"
      content: "Trouvez et remplacez ou supprimez facilement du texte sensible dans vos documents."

    # feature loop
    - icon: "image"
      title: "Masquer le Texte avec des Images"
      content: "Utilisez des superpositions d'images colorées pour masquer visuellement le contenu censuré plutôt que de remplacer le texte."

    # feature loop
    - icon: "search"
      title: "Capacités de Recherche Avancées"
      content: "Utilisez des expressions régulières pour une censure de contenu précise et flexible à travers des ensembles de données complexes."

    # feature loop
    - icon: "table"
      title: "Censure Spécifiée"
      content: "Ciblez des pages spécifiques ou des zones définies pour limiter la censure uniquement aux sections pertinentes."

    # feature loop
    - icon: "template"
      title: "Censure des Métadonnées"
      content: "Trouvez et censurez les propriétés des métadonnées pour protéger les détails de propriété et de création du document."

    # feature loop
    - icon: "pdf"
      title: "Formats de Sortie Flexibles"
      content: "Exploitez les fichiers censurés au format PDF ou dans tout format pris en charge tout en préservant l'intégrité de la mise en page."

    # feature loop
    - icon: "template"
      title: "Effacement Complet des Métadonnées"
      content: "Effacez toutes les métadonnées d'un document en une seule action afin de garantir une confidentialité absolue."

    # feature loop
    - icon: "hyperlink"
      title: "Règles de Censure Basées sur XML"
      content: "Définissez des politiques de censure au format XML pour un traitement automatisé répétable à travers plusieurs fichiers."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemples de Code"
  description: "Exemples d'utilisation typiques de GroupDocs.Redaction for .NET"
  items:
    # code sample loop
    - title: "Censure avec des Expressions Régulières"
      content: |
        GroupDocs.Redaction for .NET permet aux développeurs C# de censurer du texte à l'aide [d'expressions régulières](https://docs.groupdocs.com/redaction/net/text-redactions/#use-regular-expression) et de le masquer avec des superpositions d'images :
        {{< landing/code title="Censurer des Documents Word à l'aide d'Expressions Régulières">}}
        ```csharp {style=abap}
        // Créez une instance de la classe Redactor
        using (Redactor redactor = new Redactor("source.docx"))
        {
            // Définissez des règles de censure à l'aide d'une expression régulière
            var replacement = new ReplacementOptions(System.Drawing.Color.Blue);
            var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);
            
            // Masquez tout texte correspondant avec des superpositions carrées bleues
            redactor.Apply(redaction);

            // Enregistrez le document Word censuré
            redactor.Save();
        }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Nettoyage des Métadonnées"
      content: |
        Utilisez notre API pour [supprimer facilement](https://docs.groupdocs.com/redaction/net/metadata-redactions/#clean-metadata) toutes les métadonnées des formats de fichiers pris en charge :
        {{< landing/code title="Supprimer Toutes les Métadonnées des Présentations">}}
        ```csharp {style=abap}   
        // Fournissez le chemin de la présentation au Redactor
        using (Redactor redactor = new Redactor("source.pptx"))
        {
            // Configurez les options de censure
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // Effacez toutes les métadonnées de la présentation
            redactor.Apply(redaction);

            // Enregistrez le fichier de présentation nettoyé
            redactor.Save();
        }
        ```
        {{< /landing/code >}}

---
