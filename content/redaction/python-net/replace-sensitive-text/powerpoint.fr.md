
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fr
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer le texte privé de POWERPOINT avec Python"
head_description: "Protégez rapidement les données sensibles dans vos fichiers POWERPOINT à l'aide de GroupDocs.Redaction for Python via .NET et Python."

############################# Header ############################
title: "Trouver et cacher le texte sensible dans des fichiers POWERPOINT avec Python" 
description: "Utilisez GroupDocs.Redaction for Python via .NET et Python pour supprimer ou cacher le contenu privé dans vos fichiers POWERPOINT. Gardez tout confidentiel, qu'il s'agisse de contenu personnel ou lié au travail."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python les outils pour nettoyer les fichiers POWERPOINT de fond en comble. Retirez du contenu, des images, des notes et des métadonnées facilement.

############################# Steps ############################
steps:
    enable: true
    title: "Comment nettoyer le texte dans des fichiers Powerpoint"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET dans vos applications Python via .NET pour retirer ou remplacer rapidement les données sensibles.
      
      1. Commencez un Redactor et ouvrez votre fichier Powerpoint.
      2. Choisissez les options de rédaction dont vous avez besoin.
      3. Définissez le texte que vous souhaitez rechercher et ce avec quoi le remplacer.
      4. Exécutez la rédaction et enregistrez le fichier final.
   
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

        # Comment rédiger le texte dans un fichier POWERPOINT

        # Sélectionnez les paramètres de rédaction dont vous avez besoin
        # Entrez le texte à rechercher et ce avec quoi le remplacer
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Chargez votre fichier à l'aide du constructeur Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Exécutez les rédactions et enregistrez le fichier POWERPOINT final
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Plus d'outils pour supprimer des données privées"
  description: "GroupDocs.Redaction for Python via .NET vous permet de nettoyer le contenu privé dans de nombreux formats. Idéal pour partager ou archiver des fichiers en toute sécurité."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Options et outils de rédaction"
  features:
    # feature loop
    - title: "Trouvez et remplacez le texte"
      content: "Remplacez rapidement des mots ou des chiffres sensibles. Fonctionne avec des regex et des recherches par mots-clés."

    # feature loop
    - title: "Cacher des parties des images"
      content: "Couvrez des zones spécifiques avec des formes ou des superpositions. Ajustez les visuels pour répondre à vos besoins."

    # feature loop
    - title: "Supprimer les informations cachées"
      content: "Effacez les métadonnées telles que qui a créé le fichier, les commentaires ou l'historique des modifications."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédaction de motifs en utilisant Regex"
      content: |
        Utilisez des expressions régulières pour trouver et rédiger des motifs tels que des e-mails, des informations de contact ou d'autres détails privés.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Définissez un motif regex EMAIL et une valeur de remplacement
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Ouvrez la présentation à nettoyer
          with gr.Redactor("source.pptx") as redactor:

              # Appliquez les étapes de rédaction
              result = redactor.apply(redaction)

              # Enregistrez votre fichier rédigé final
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
    title: "Rédiger du contenu dans POWERPOINT en utilisant Python"
    exclude: "POWERPOINT"
    description: "Avec Python, vous pouvez nettoyer des fichiers POWERPOINT en supprimant ou cachant du texte privé. Gardez tout sécuritaire."
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