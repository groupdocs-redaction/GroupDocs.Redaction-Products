
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pulisci Metadati in POWERPOINT Usando Python"
head_description: "Metti in sicurezza i tuoi documenti POWERPOINT con GroupDocs.Redaction for Python via .NET eliminando metadati nascosti che possono contenere informazioni private."

############################# Header ############################
title: "Pulisci i Metadati da POWERPOINT con Python" 
description: "Ottieni un migliore controllo sui tuoi file utilizzando gli strumenti Python che rimuovono rapidamente i metadati nascosti."
subtitle: "Le Migliori Caratteristiche di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri di Più su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è realizzato per sviluppatori Python per aiutare a redigere testo, immagini e metadati nei file POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Passaggi per Eliminare Metadati in Powerpoint"
    content: |
      GroupDocs.Redaction consente alle tue app Python via .NET di pulire i metadati dai documenti in pochi clic.
      
      1. Crea un'istanza di Redactor e apri il documento.
      2. Seleziona quali campi di metadati eliminare.
      3. Configura e applica le impostazioni di redazione.
      4. Salva la versione finale senza i dati nascosti.
   
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

        # Elimina metadati da POWERPOINT

        # Scegli i metadati da rimuovere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Carica il file nel redattore
        with gr.Redactor("input.pptx") as redactor:

            # Pulisci e salva il documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redazione Avanzata per POWERPOINT"
  description: "GroupDocs.Redaction for Python via .NET aiuta a pulire i file eliminando contenuti sensibili. Funziona con più formati di file e tipi di dati."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Principali Opzioni di Redazione"
  features:
    # feature loop
    - title: "Elimina Testo Privato"
      content: "Cerca e rimuovi parole o frasi che non dovrebbero essere condivise."

    # feature loop
    - title: "Coperte Aree Immagini"
      content: "Nascondi parti delle immagini che contengono visuali private o sensibili."

    # feature loop
    - title: "Elimina Metadati"
      content: "Rimuovi campi di metadati come Autore, Titolo e Commenti dai tuoi file."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Come Rimuovere Metadati Nascosti"
      content: |
        Questo esempio mostra come eliminare metadati incorporati come Autore e Titolo dal tuo documento POWERPOINT.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Elimina il campo Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Elimina il campo Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Apri il file nel redattore
          with gr.Redactor("source.pptx") as redactor:

              # Esegui la redazione
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salva il file aggiornato
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
    title: "Pulizia dei Metadati per POWERPOINT Utilizzando Python"
    exclude: "POWERPOINT"
    description: "Usa Python per eliminare dati privati dai documenti POWERPOINT. Ottimo per uso legale, aziendale e personale."
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