
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Modifica Metadati in JPEG Utilizzando Python"
head_description: "GroupDocs.Redaction for Python via .NET ti aiuta a pulire o aggiornare i metadati nei documenti JPEG. Rimuovi campi nascosti che possono rivelare dettagli privati."

############################# Header ############################
title: "Pulisci i Metadati in JPEG tramite Python" 
description: "Metti in sicurezza i tuoi file JPEG rimuovendo metadati nascosti utilizzando strumenti semplici progettati per Python."
subtitle: "Caratteristiche Fondamentali di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori Python strumenti semplici per rimuovere testo, immagini e metadati dai documenti JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Passaggi per Pulire i Metadati di Jpeg"
    content: |
      GroupDocs.Redaction rende la rimozione dei metadati veloce e semplice per le tue app Python via .NET.
      
      1. Imposta un Redactor e apri il tuo documento Jpeg.
      2. Scegli le opzioni per rimuovere i campi di metadati.
      3. Esegui la redazione per pulire il file.
      4. Salva la nuova versione senza dati nascosti.
   
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

        # Pulisci i metadati nei file JPEG

        # Scegli i campi di metadati da pulire
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Apri il file utilizzando Redactor
        with gr.Redactor("input.jpg") as redactor:

            # Applica la redazione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi la Privacy in Ogni File"
  description: "GroupDocs.Redaction for Python via .NET ti dà controllo su dati sensibili nei documenti. Rimuovi contenuti nascosti in testo, immagini e metadati."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche di Redazione Metadati"
  features:
    # feature loop
    - title: "Trova e Rimuovi Testo"
      content: "Scansiona per parole chiave o informazioni private e rimuovile dal documento."

    # feature loop
    - title: "Nascondi Dettagli delle Immagini"
      content: "Coprire aree delle immagini che non dovrebbero essere viste da altri."

    # feature loop
    - title: "Modifica i Metadati del File"
      content: "Cambia o elimina campi di metadati per proteggere le informazioni del documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Modifica i Campi dei Metadati"
      content: |
        Questo esempio illustra come rimuovere o modificare campi come Autore e Titolo in un documento JPEG.
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

          # Apri il file JPEG
          with gr.Redactor("source.jpg") as redactor:

              # Esegui il processo di pulizia
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salva la nuova versione
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
    title: "Pulisci i Metadati di JPEG con Python"
    exclude: "JPEG"
    description: "Utilizza Python per rimuovere dati nascosti e privati dai tuoi documenti JPEG rapidamente e facilmente."
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