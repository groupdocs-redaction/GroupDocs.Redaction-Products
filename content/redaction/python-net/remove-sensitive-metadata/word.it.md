
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pulisci i Metadati da WORD con Python"
head_description: "Utilizza GroupDocs.Redaction for Python via .NET per rimuovere metadati nascosti nei file WORD. Proteggi i documenti da rivelare informazioni personali o interne."

############################# Header ############################
title: "Rimuovi Metadati in WORD Utilizzando gli Strumenti Python" 
description: "Mantieni i tuoi file al sicuro eliminando metadati indesiderati con Python. Perfetto per aziende e utenti singoli."
subtitle: "Caratteristiche di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Presentiamo GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è progettato per gli sviluppatori Python che vogliono mantenere i file WORD privati. Ti consente di rimuovere testo, nascondere parti delle immagini e pulire i metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Rimuovi Metadati Nascosti in Word"
    content: |
      Con GroupDocs.Redaction, la tua app Python via .NET può pulire rapidamente i metadati dei documenti.
      
      1. Crea un oggetto Redactor e apri il file Word.
      2. Imposta le regole di redazione per i campi di metadati.
      3. Esegui la redazione per rimuovere i dati selezionati.
      4. Salva la versione pulita del file.
   
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

        # Pulisci i metadati in WORD

        # Seleziona i metadati da rimuovere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Apri il documento utilizzando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Applica la redazione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteggi Più di Solo Metadati"
  description: "Redigi testi, copri immagini e rimuovi metadati utilizzando GroupDocs.Redaction for Python via .NET. Mantieni i tuoi documenti puliti e privati."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opzioni di Protezione Documenti"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo"
      content: "Elimina o sostituisci parole e frasi che contengono dati privati o sensibili."

    # feature loop
    - title: "Aggiungi Coperture Immagine"
      content: "Posiziona sovrapposizioni per nascondere parti delle immagini nei tuoi documenti."

    # feature loop
    - title: "Pulisci i Metadati"
      content: "Pulisci nomi di autori, titoli, commenti e altre informazioni nascoste."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi Metadati dai File WORD"
      content: |
        Questo esempio mostra come rimuovere campi come Autore e Titolo da un documento WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Mirare ai metadati dell'Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Mirare ai metadati del Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Importa il tuo documento
          with gr.Redactor("source.docx") as redactor:

              # Esegui lo strumento di redazione
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
    title: "Rimuovi Metadati in WORD con Python"
    exclude: "WORD"
    description: "Utilizza Python per pulire i metadati nascosti da WORD. Mantieni i tuoi file sicuri prima di condividerli o archiviarli."
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