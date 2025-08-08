
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pulisci i Metadati Nascosti in IMAGE Usando Python"
head_description: "GroupDocs.Redaction for Python via .NET ti aiuta a rimuovere metadati privati dai documenti IMAGE. Mantieni i file puliti e sicuri."

############################# Header ############################
title: "Rimuovi Metadati nei File IMAGE con Python" 
description: "Utilizza strumenti Python per proteggere i documenti IMAGE. Elimina informazioni nascoste prima di condividerle o pubblicarle."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori Python gli strumenti per rimuovere dati sensibili dai file IMAGE, inclusi testo, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Metadati dai File Image"
    content: |
      GroupDocs.Redaction aiuta gli sviluppatori Python via .NET a pulire i metadati dei documenti in pochi passaggi.
      
      1. Imposta un Redactor e carica il tuo file Image.
      2. Scegli i metadati che desideri eliminare.
      3. Esegui il processo di redazione.
      4. Salva il tuo file aggiornato.
   
    code:
      platform: "python-net"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Pulisci i campi nascosti nei file IMAGE

        # Seleziona i campi di metadati da redigere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Usa Redactor per aprire il file
        with gr.Redactor("input.png") as redactor:

            # Elabora e esporta
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Pulisci Dati Sensibili da Qualsiasi File"
  description: "GroupDocs.Redaction for Python via .NET rimuove testo, immagini e metadati che non dovrebbero essere condivisi. Funziona con molti formati."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Principali Strumenti di Redazione"
  features:
    # feature loop
    - title: "Rimuovi Testo"
      content: "Elimina parole o schemi dai tuoi file per proteggere le informazioni sensibili."

    # feature loop
    - title: "Maschera le Immagini"
      content: "Coprire parti delle immagini che devono restare private."

    # feature loop
    - title: "Elimina Metadati"
      content: "Rimuovi i dati nascosti dalle proprietà del file come Autore o Titolo."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi i Campi di Metadati"
      content: |
        Questo esempio mostra come eliminare metadati come Autore e Titolo nei file IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Seleziona il campo Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Seleziona il campo Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Apri il file nel redattore
          with gr.Redactor("source.png") as redactor:

              # Esegui la redazione
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salva il documento finale
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Copia"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "clicca per copiare"
          copy_done: "copiato"
        top_links:
          #  loop
          - title: "Scarica risultato"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Altri esempi"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Usa Python per Rimuovere i Metadati di IMAGE"
    exclude: "IMAGE"
    description: "Pulisci rapidamente i metadati nei file IMAGE utilizzando Python. Mantieni i tuoi documenti sicuri e privati."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---