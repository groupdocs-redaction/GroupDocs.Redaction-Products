
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Elimina Metadati dai File PPTX Utilizzando Python"
head_description: "GroupDocs.Redaction for Python via .NET aiuta a pulire i dati nascosti nei file PPTX. Rimuovi dettagli che potrebbero rivelare informazioni sensibili."

############################# Header ############################
title: "Elimina Metadati in PPTX con Python" 
description: "Elimina metadati privati memorizzati nei file PPTX utilizzando Python. Un modo intelligente per proteggere le tue informazioni."
subtitle: "Strumenti Principali in GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Maggiori Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è costruito per gli sviluppatori Python che vogliono mantenere puliti i documenti. Usalo per eliminare testo, coprire immagini o rimuovere metadati dai file PPTX.

############################# Steps ############################
steps:
    enable: true
    title: "Pulisci i Metadati nei File Pptx"
    content: |
      Utilizza GroupDocs.Redaction per rimuovere rapidamente i metadati dalla tua app Python via .NET.
      
      1. Crea un Redactor e apri il documento Pptx.
      2. Scegli quali metadati vuoi eliminare.
      3. Applica la redazione per rimuovere i dati nascosti.
      4. Salva il file aggiornato.
   
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

        # Elimina metadati in PPTX

        # Scegli quali campi redigere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Apri il tuo file con Redactor
        with gr.Redactor("input.pptx") as redactor:

            # Esegui e salva le modifiche
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri Modi per Nascondere Info Sensibili"
  description: "GroupDocs.Redaction for Python via .NET supporta la redazione su molti formati. Un modo veloce per rimuovere contenuti personali dai documenti."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti di Redazione File"
  features:
    # feature loop
    - title: "Cerca e Rimuovi Testo"
      content: "Elimina rapidamente parole o frasi che contengono dati personali o sensibili."

    # feature loop
    - title: "Aggiungi Sovrapposizioni Immagine"
      content: "Copri sezioni delle immagini che non dovrebbero essere condivise."

    # feature loop
    - title: "Rimuovi Metadati Nascosti"
      content: "Elimina nomi degli autori, titoli, e altri tag nascosti."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Esempio: Elimina Campi di Metadati"
      content: |
        Segui questo esempio per rimuovere campi di metadati comuni da un file PPTX prima di condividerlo.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Seleziona il campo Autore per la redazione
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Seleziona il campo Titolo per la redazione
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Carica il file
          with gr.Redactor("source.pptx") as redactor:

              # Esegui la redazione
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Esporta il file pulito
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
    title: "Usa Python per Pulire i Metadati da PPTX"
    exclude: "PPTX"
    description: "Rimuovi dati di background da PPTX con Python. Ottimo per privacy e conformità."
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