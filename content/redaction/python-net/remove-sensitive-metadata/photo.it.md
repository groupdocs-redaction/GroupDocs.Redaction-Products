
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Elimina Metadati in PHOTO con Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puoi eliminare dati nascosti dai file PHOTO ed evitare la fuga di informazioni private."

############################# Header ############################
title: "Pulisci i Metadati da PHOTO Utilizzando Python" 
description: "Proteggi i tuoi documenti PHOTO eliminando informazioni nascoste con strumenti Python facili da usare."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli utenti Python un modo per pulire i file rimuovendo contenuti nascosti da testo, immagini e metadati nei PHOTO.

############################# Steps ############################
steps:
    enable: true
    title: "Passaggi per Eliminare Metadati da Photo"
    content: |
      Usa GroupDocs.Redaction nel tuo progetto Python via .NET per pulire i metadati dei documenti in pochi passaggi.
      
      1. Imposta un Redactor e apri il tuo file Photo.
      2. Scegli quali campi di metadati eliminare.
      3. Applica la redazione per pulire il file.
      4. Salva la versione finale.
   
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

        # Cancella i metadati nei documenti PHOTO

        # Scegli quali metadati redigere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Usa Redactor per aprire il tuo file
        with gr.Redactor("input.jpeg") as redactor:

            # Esegui e salva
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Pulisci i File Prima della Condivisione"
  description: "GroupDocs.Redaction for Python via .NET aiuta a rimuovere dati che non dovrebbero essere visti. Elimina testo, immagini e dettagli nascosti in pochi clic."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche Utili di Redazione"
  features:
    # feature loop
    - title: "Rimozione di Testo"
      content: "Trova e cancella parole, numeri o schemi sensibili."

    # feature loop
    - title: "Mascheramento Immagini"
      content: "Nascondi parti delle immagini che contengono dati privati."

    # feature loop
    - title: "Pulizia dei Metadati"
      content: "Elimina dettagli del file come Autore, Titolo o Commenti."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi Metadati Specifici"
      content: |
        Segui questo esempio per eliminare i campi Autore e Titolo in un documento PHOTO.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Mirare al campo Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Mirare al campo Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Carica il file nel redattore
          with gr.Redactor("source.jpeg") as redactor:

              # Redigi i metadati selezionati
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
    title: "Redigi Metadati da PHOTO con Python"
    exclude: "PHOTO"
    description: "Utilizza Python per eliminare metadati nascosti da PHOTO. Mantieni i documenti puliti e sicuri."
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