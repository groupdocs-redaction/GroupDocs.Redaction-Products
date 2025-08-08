
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pulisci Metadati da EXCEL Utilizzando Python"
head_description: "Usa GroupDocs.Redaction for Python via .NET per rimuovere metadati dai documenti EXCEL. Elimina dati nascosti e proteggi informazioni sensibili."

############################# Header ############################
title: "Rimuovi Metadati Nascosti in EXCEL con Python" 
description: "Prendi il controllo dei tuoi file EXCEL con Python. Eliminare dati indesiderati per mantenere i file privati."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conosci GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è progettato per gli sviluppatori Python che devono pulire e proteggere i file EXCEL. Rimuovi metadati, testo e immagini indesiderate facilmente.

############################# Steps ############################
steps:
    enable: true
    title: "Passaggi per Pulire i Metadati nei File Excel"
    content: |
      Nelle tue app Python via .NET, GroupDocs.Redaction aiuta a rimuovere i metadati in pochi passaggi.
      
      1. Avvia un Redactor e apri il file Excel.
      2. Scegli i campi di metadati da rimuovere.
      3. Esegui il processo di redazione.
      4. Esporta il file finale.
   
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

        # Rimuovi dati nascosti in EXCEL

        # Scegli quali metadati rimuovere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Apri il tuo file con il redattore
        with gr.Redactor("input.xlsx") as redactor:

            # Elabora e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Pulisci Tutti i Tipi di Dati Sensibili"
  description: "GroupDocs.Redaction for Python via .NET ti offre strumenti per eliminare metadati, testo e immagini in molti formati. Perfetto per la condivisione sicura dei documenti."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti di Metadati e Privacy"
  features:
    # feature loop
    - title: "Rimuovi Testo Privato"
      content: "Rileva ed elimina informazioni personali o nascoste dai tuoi documenti."

    # feature loop
    - title: "Maschera Dettagli dell'Immagine"
      content: "Copri parti delle immagini per bloccare visuali private."

    # feature loop
    - title: "Pulisci i Metadati"
      content: "Elimina campi di metadati nascosti che potrebbero contenere dati sensibili."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi Metadati dell'Autore e del Titolo"
      content: |
        Guarda come GroupDocs.Redaction for Python via .NET elimina campi di metadati specifici dai documenti EXCEL.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Elimina le informazioni dell'Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Elimina il campo Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Apri il documento per la redazione
          with gr.Redactor("source.xlsx") as redactor:

              # Applica le modifiche
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salva il documento pulito
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
    title: "Pulisci Metadati in EXCEL con Python"
    exclude: "EXCEL"
    description: "Usa Python per rimuovere metadati sensibili dai tuoi file EXCEL. Sicurezza dei contenuti prima della condivisione."
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