
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fr
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer le texte privé de PPTX avec Python"
head_description: "Gardez vos fichiers PPTX en sécurité avec GroupDocs.Redaction for Python via .NET et Python. Trouvez et supprimez rapidement le contenu privé."

############################# Header ############################
title: "Modifier ou retirer le texte privé dans des fichiers PPTX avec Python" 
description: "Utilisez GroupDocs.Redaction for Python via .NET et Python pour trouver et nettoyer les données sensibles dans vos documents PPTX. Gardez vos fichiers personnels ou de travail privés."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET donne aux développeurs Python un contrôle total sur le contenu PPTX. Nettoyez le texte, les images, les notes et les métadonnées facilement.

############################# Steps ############################
steps:
    enable: true
    title: "Comment rédiger du texte dans des documents Pptx"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET dans votre environnement Python via .NET pour masquer ou retirer du contenu sensible rapidement.
      
      1. Créez un Redactor et chargez votre fichier Pptx.
      2. Choisissez vos paramètres de rédaction.
      3. Entrez le texte à rechercher et ce avec quoi le remplacer.
      4. Appliquez la rédaction et enregistrez votre fichier mis à jour.
   
    code:
      platform: "python-net"
      copy_title: "Copier"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Exemples de rédactions"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "cliquez pour copier"
        copy_done: "copié"
      links:
        #  loop
        - title: "Plus d'exemples"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentation"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Comment rédiger le texte dans un fichier PPTX

        # Définissez vos options de rédaction
        # Choisissez le texte à trouver et ce avec quoi le remplacer
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Utilisez le constructeur Redactor pour charger votre fichier
        with gr.Redactor("input.pptx") as redactor:

            # Exécutez les rédactions et enregistrez le fichier PPTX final
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de rédaction supplémentaires"
  description: "GroupDocs.Redaction for Python via .NET vous aide à supprimer ou cacher des données sensibles dans différents formats. Partagez des documents en toute sécurité."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Aperçu des fonctionnalités de rédaction"
  features:
    # feature loop
    - title: "Remplacer le texte privé"
      content: "Cherchez et remplacez des mots ou des expressions spécifiques. Fonctionne avec des regex et des filtres intelligents."

    # feature loop
    - title: "Couvrir des images privées"
      content: "Superposez ou cachez des zones spécifiques dans les images. Personnalisez des paramètres tels que les couleurs et la mise en page."

    # feature loop
    - title: "Supprimer les informations cachées"
      content: "Nettoyez les métadonnées telles que les noms d'auteur, les horodatages ou les notes internes."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redaction par motif avec Regex"
      content: |
        Utilisez des expressions régulières pour rechercher et nettoyer du texte comme des adresses e-mail, des numéros de téléphone ou des identifiants.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Définissez un motif regex EMAIL et un texte de remplacement
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Ouvrez le fichier que vous voulez éditer
          with gr.Redactor("source.pptx") as redactor:

              # Exécutez le processus de rédaction
              result = redactor.apply(redaction)

              # Enregistrez le fichier nettoyé
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "Copier"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentation"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Prêt à commencer ?"
  description: "Essayez les fonctionnalités de GroupDocs.Redaction gratuitement ou demandez une licence"
  items:
    #  loop
    - title: "Télécharger PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licences"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Rédiger du contenu dans PPTX en utilisant Python"
    exclude: "PPTX"
    description: "Avec Python, vous pouvez supprimer du texte sensible de documents PPTX et garder vos données en sécurité."
    items: 
        # format loop 1
        - name: "Rédaction PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Format de Document Portable Adobe"

        # format loop 2
        - name: "Rédaction Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documents MS Word et Open Office"
          
        # format loop 3
        - name: "Rédaction Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Feuilles de calcul MS Excel et Open Office"

        # format loop 4
        - name: "Rédaction PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Présentations MS PowerPoint et Open Office"

        # format loop 5
        - name: "Rédaction DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Document Microsoft Word Open XML"
          
        # format loop 6
        - name: "Rédaction XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Tableur Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Rédaction PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Présentation PowerPoint Open XML"


---