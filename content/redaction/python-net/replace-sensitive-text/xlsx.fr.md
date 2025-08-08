
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: fr
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Supprimer le texte privé de XLSX avec Python"
head_description: "Protégez vos fichiers XLSX en cachant ou en supprimant des données sensibles avec GroupDocs.Redaction for Python via .NET et Python."

############################# Header ############################
title: "Cacher ou supprimer le texte privé dans des fichiers XLSX en utilisant Python" 
description: "Avec GroupDocs.Redaction for Python via .NET et Python, vous pouvez supprimer le texte privé des documents XLSX - rapide et fiable."
subtitle: "Ce que vous pouvez faire avec GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Découvrez GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "En savoir plus"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre aux développeurs Python tout ce dont ils ont besoin pour supprimer ou cacher des données privées dans les fichiers XLSX : textes, images, notes et plus encore.

############################# Steps ############################
steps:
    enable: true
    title: "Comment supprimer du contenu dans des fichiers Xlsx"
    content: |
      Utilisez GroupDocs.Redaction for Python via .NET dans votre application Python via .NET pour effacer ou masquer rapidement le contenu sensible.
      
      1. Démarrez un Redactor et chargez le fichier Xlsx.
      2. Choisissez les paramètres de rédaction dont vous avez besoin.
      3. Définissez le texte de recherche et ce qui doit le remplacer.
      4. Appliquez la rédaction et enregistrez votre fichier.
   
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

        # Comment rédiger le texte dans un fichier XLSX

        # Choisissez vos préférences de rédaction
        # Définissez les valeurs de recherche et de remplacement
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Utilisez le constructeur Redactor pour charger votre fichier
        with gr.Redactor("input.xslx") as redactor:

            # Appliquez les modifications et enregistrez le XLSX mis à jour
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Fonctionnalités de rédaction supplémentaires"
  description: "GroupDocs.Redaction for Python via .NET facilite la suppression ou la caché d'infos privées dans différents formats de fichiers. Partagez uniquement ce qui doit être vu."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Fonctionnalités pour la rédaction de texte, d'images et de métadonnées"
  features:
    # feature loop
    - title: "Remplacer le texte privé"
      content: "Trouvez et remplacez des mots ou des motifs correspondants. Les regex et la recherche par mots-clés sont supportés."

    # feature loop
    - title: "Cacher des images sensibles"
      content: "Couvrez des parties de votre fichier avec des superpositions. Personnalisez son apparence et ce qu'il masque."

    # feature loop
    - title: "Effacer les métadonnées"
      content: "Supprimez des informations cachées telles que l'historique des documents, les noms d'auteur ou les balises internes."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rédiger en utilisant des motifs Regex"
      content: |
        Trouvez des motifs de texte tels que des numéros de téléphone, des identifiants ou des e-mails avec regex et supprimez-les rapidement.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Définissez votre motif regex EMAIL et le texte de remplacement
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Ouvrez le document que vous souhaitez nettoyer
          with gr.Redactor("source.xslx") as redactor:

              # Appliquez les règles de rédaction
              result = redactor.apply(redaction)

              # Enregistrez le fichier rédigé
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
    title: "Rédiger du contenu dans XLSX en utilisant Python"
    exclude: "XLSX"
    description: "Gardez vos données sensibles privées en les retirant des fichiers XLSX à l'aide des outils Python."
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