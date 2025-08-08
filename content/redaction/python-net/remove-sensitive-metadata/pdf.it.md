
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Rimuovi Metadati da PDF Usando Python"
head_description: "GroupDocs.Redaction for Python via .NET permette di eliminare dati nascosti da file PDF. Evita di condividere informazioni private modificando o cancellando i metadati."

############################# Header ############################
title: "Elimina Metadati nei File PDF con Python" 
description: "Utilizza Python e GroupDocs.Redaction for Python via .NET per rimuovere informazioni sensibili dai tuoi documenti PDF. Mantieni il controllo sui tuoi dati con strumenti di redazione efficaci."
subtitle: "Cosa Può Fare GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction aiuta gli sviluppatori Python a pulire documenti PDF rimuovendo contenuti testuali, immagini e metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Elimina Metadati dai Documenti Pdf"
    content: |
      Inizia a proteggere i tuoi file utilizzando GroupDocs.Redaction nelle app Python via .NET.
      
      1. Crea un Redactor e carica il tuo file Pdf.
      2. Aggiungi regole per rimuovere metadati nascosti.
      3. Esegui la redazione per eliminare le voci di metadati.
      4. Salva il file senza i dati nascosti.
   
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

        # Rimuovi i metadati dai documenti PDF

        # Scegli i campi di metadati da rimuovere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Apri il file utilizzando Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redigi e salva il tuo documento
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Pulisci i Contenuti Nascosti nei Documenti"
  description: "Con GroupDocs.Redaction for Python via .NET, puoi rimuovere in modo sicuro testo, immagini e metadati. Mantieni i tuoi file privati e sicuri prima di condividerli."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opzioni di Redazione"
  features:
    # feature loop
    - title: "Rimozione di Testo"
      content: "Cerca e cancella testi sensibili in tutti i documenti."

    # feature loop
    - title: "Mascheramento Immagini"
      content: "Nascondi specifiche parti delle immagini con semplici sovrapposizioni."

    # feature loop
    - title: "Pulizia dei Metadati"
      content: "Elimina metadati indesiderati che potrebbero rivelare dati privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Modifica e Rimuovi i Campi dei Metadati"
      content: |
        Questo esempio spiega come eliminare i metadati nascosti in un file PDF.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Rimuovi il metadato dell'Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Rimuovi il metadato del Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Apri il file in Redactor
          with gr.Redactor("source.pdf") as redactor:

              # Esegui il processo di redazione
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
    title: "Pulisci i Metadati da PDF con Python"
    exclude: "PDF"
    description: "Rimuovi i campi di dati nascosti in PDF utilizzando Python. Un modo intelligente per proteggere la privacy e mantenere i tuoi file puliti."
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