---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: fr
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

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
head_title: "Effacez des informations confidentielles des documents avec Python"
head_description: "Gardez vos fichiers sécurisés avec GroupDocs.Redaction for Python via .NET. Censurez rapidement, masquez ou supprimez du contenu sensible dans des fichiers PDF, Word, Excel, PowerPoint, et des fichiers image."

############################# Header ############################
title: "Gardez Vos Documents Sécurisés avec GroupDocs.Redaction"
description: "Supprimez facilement des données privées, censurez du texte et nettoyez les métadonnées cachées des fichiers PDF, des fichiers Office et des images en utilisant la boîte à outils avancée Python."
words:
  for: "pour"

actions:
  main: "PyPi Téléchargement"
  main_link: "https://pypi.org/project/groupdocs-redaction-net/"
  alt: "Licences"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
  title: "Prêt à Commencer?"
  description: "Essayez gratuitement les fonctionnalités de GroupDocs.Redaction ou demandez une licence."

release:
  title: "Version {0} Publiée"
  notes: "Voir les nouveautés"
  downloads: "Téléchargements"

code:
  title: "Censure du Contenu d'un Document"
  more: "Plus d'exemples"
  more_link: ""
  install: "pip install groupdocs-redaction-net"
  content: |
    ```python {style=abap}
    import groupdocs.redaction as gr
    import groupdocs.redaction.redactions as grr

    def run():

        # Ajustez les paramètres de censure
        repl_opt = grr.ReplacementOptions("[redacted]")
        red = grr.ExactPhraseRedaction("Data", repl_opt)

        # Chargez votre fichier dans l'instance Redactor
        with gr.Redactor("sample.pdf") as redactor:

            # Démarrez le processus de censure
            result = redactor.apply(red)
        
            # Exportez le fichier nettoyé
            result_path = redactor.save()
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction en un coup d'œil"
  description: "Intégrez des capacités de censure puissantes dans vos projets Python"
  features:
    # feature loop
    - title: "Censurer le Texte Sensible"
      content: "Avec GroupDocs.Redaction for Python via .NET, vous pouvez automatiquement trouver et couvrir des mots ou des phrases sensibles. Remplacez ou masquez le texte avec des boîtes colorées pour une protection renforcée à travers les fichiers PDF, les documents Word, et d'autres formats."

    # feature loop
    - title: "Masquer des Images"
      content: "Notre technologie peut détecter des images et les flouter, les masquer ou les bloquer selon vos critères choisis. Définissez des régions spécifiques ou laissez une détection automatique pour un contrôle complet."

    # feature loop
    - title: "Supprimer les Métadonnées Cachées"
      content: "Éliminez les détails personnels ou de suivi cachés dans les métadonnées, tels que l'auteur ou les informations sur l'appareil. GroupDocs.Redaction for Python via .NET s'assure que vos documents sont complètement nettoyés et sûrs à partager."

    # feature loop
    - title: "Censurer des Éléments Spéciaux"
      content: "Allez au-delà du texte en censurant des éléments intégrés comme des commentaires, des annotations et d'autres éléments spécifiques aux fichiers pour atteindre une confidentialité totale."

############################# Platforms ############################
platforms:
  enable: true
  title: "Indépendance de Plateforme"
  description: "GroupDocs.Redaction for Python via .NET fonctionne sur tous les principaux systèmes d'exploitation, prend en charge des frameworks populaires et s'intègre avec des gestionnaires de packages courants."
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
    GroupDocs.Redaction for Python via .NET prend en charge les [formats de fichiers suivants](https://docs.groupdocs.com/redaction/python-net/supported-document-formats/).
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
  title: "Fonctionnalités Clés de GroupDocs.Redaction for Python via .NET"
  description: "Scanner, localiser et censurer sans effort du contenu sensible dans des fichiers PDF, des images et des fichiers Office."

  items:
    # feature loop
    - icon: "search"
      title: "Recherche Personnalisable"
      content: "Utilisez des modes de recherche flexibles pour trouver des correspondances précises ou des mots-clés à supprimer."

    # feature loop
    - icon: "text"
      title: "Trouver, Remplacer ou Supprimer du Texte"
      content: "Localisez des données sensibles et soit substituez-les avec un texte sûr, soit effacez-les complètement."

    # feature loop
    - icon: "image"
      title: "Masquage Visuel"
      content: "Superposez des formes ou des motifs colorés pour couvrir visuellement les sections censurées."

    # feature loop
    - icon: "search"
      title: "Détection Alimentée par Regex"
      content: "Profitez des expressions régulières pour une précision ciblée dans des recherches textuelles avancées."

    # feature loop
    - icon: "table"
      title: "Censure Ciblée"
      content: "Appliquez la censure uniquement à certaines pages ou régions définies pour gagner du temps et vous concentrer sur des zones clés."

    # feature loop
    - icon: "template"
      title: "Sanitisation des Métadonnées"
      content: "Effacez facilement des champs de métadonnées tels que le créateur, l'entreprise ou les horodatages de vos fichiers."

    # feature loop
    - icon: "pdf"
      title: "Options d'Exportation"
      content: "Enregistrez les documents traités au format PDF ou dans d'autres formats compatibles sans perdre la fidélité de la mise en page."

    # feature loop
    - icon: "template"
      title: "Élimination Complète des Métadonnées"
      content: "Effacez toutes les métadonnées intégrées d'un seul clic pour une protection maximale des données."

    # feature loop
    - icon: "hyperlink"
      title: "Politiques XML Réutilisables"
      content: "Enregistrez vos configurations de censure personnalisées en tant que modèles XML pour automatiser les tâches futures."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Exemples de Code"
  description: "Découvrez comment GroupDocs.Redaction for Python via .NET simplifie les tâches de censure"
  items:
    # code sample loop
    - title: "Censure Basée sur Regex"
      content: |
        Les développeurs utilisant Python peuvent appliquer [règles basées sur regex](https://docs.groupdocs.com/redaction/python-net/text-redactions/#use-regular-expression) pour trouver et couvrir du texte sensible avec des masques d'images :
        {{< landing/code title="Censurer des Documents Word à l'aide d'Expressions Régulières">}}
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        def run():

            # Définissez des règles de censure à l'aide d'une expression régulière
            color = grd.Color.from_argb(255, 220, 20, 60)
            repl_opt = grr.ReplacementOptions(color)
            reg_red = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

            # Créez une instance de la classe Redactor
            with gr.Redactor("source.docx") as redactor:

                # Masquez tout texte correspondant avec des superpositions carrées bleues
                result = redactor.apply(reg_red)
        
                # Enregistrez le document Word censuré
                redactor.save()
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Supprimer les Métadonnées"
      content: |
        Utilisez l'API pour [effacer les métadonnées](https://docs.groupdocs.com/redaction/python-net/metadata-redactions/#clean-metadata) à travers plusieurs types de fichiers en quelques étapes seulement :
        {{< landing/code title="Supprimer Toutes les Métadonnées des Présentations">}}
        ```python {style=abap}   
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Configurez les options de censure
        red = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Fournissez le chemin de la présentation au Redactor
        with gr.Redactor("source.pptx") as redactor:

            # Effacez toutes les métadonnées de la présentation
            result = redactor.apply(red)
        
            # Enregistrez le fichier de présentation nettoyé
            redactor.save()
        ```
        {{< /landing/code >}}

---
