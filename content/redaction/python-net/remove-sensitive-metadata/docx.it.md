
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pulisci I Metadati in DOCX Usando Python"
head_description: "Usa GroupDocs.Redaction for Python via .NET per eliminare dettagli nascosti nei file DOCX. Proteggi i tuoi dati rimuovendo voci di metadati sensibili."

############################# Header ############################
title: "Elimina Metadati Nascosti dai File DOCX con Python" 
description: "Con Python, puoi eliminare metadati nascosti dai file DOCX utilizzando GroupDocs.Redaction for Python via .NET. Mantieni i tuoi file puliti e privati."
subtitle: "Caratteristiche Principali in GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli sviluppatori Python la possibilità di eliminare dati nascosti nei file DOCX. Pulisci testi, immagini e metadati dai documenti in modo efficace.

############################# Steps ############################
steps:
    enable: true
    title: "Rimuovi Metadati dai File Docx"
    content: |
      GroupDocs.Redaction offre alle tue app Python via .NET gli strumenti per eliminare rapidamente i metadati.
      
      1. Avvia un Redactor e carica il tuo documento Docx.
      2. Configura i campi di metadati da rimuovere.
      3. Applica la redazione per pulire il contenuto nascosto.
      4. Salva la versione finale del file.
   
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

        # Pulisci i metadati nei file DOCX

        # Scegli le voci di metadati da rimuovere
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Usa Redactor per aprire il documento
        with gr.Redactor("input.docx") as redactor:

            # Applica la redazione e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Sicurezza di Ogni Parte di un Documento"
  description: "Con GroupDocs.Redaction for Python via .NET, puoi pulire testi, immagini e metadati in diversi formati di file. Ideale per la privacy e la sicurezza."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Strumenti di Redazione Documenti in Azione"
  features:
    # feature loop
    - title: "Pulitore di Testo"
      content: "Trova ed elimina nomi, termini o parole private."

    # feature loop
    - title: "Coprire Immagini"
      content: "Nascondi parti di un'immagine posizionando un overlay colorato."

    # feature loop
    - title: "Rimozione di Metadati"
      content: "Elimina informazioni nascoste del documento come autore o dettagli del software."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Esempio: Rimuovi Metadati Nascosti"
      content: |
        Ecco come puoi rimuovere i campi Autore e Titolo da un documento DOCX utilizzando la redazione.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Scegli di rimuovere il campo Autore
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Scegli di rimuovere il campo Titolo
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Apri il file DOCX
          with gr.Redactor("source.docx") as redactor:

              # Esegui la redazione dei metadati
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salva il file pulito
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
    title: "Elimina Metadati in DOCX con Python"
    exclude: "DOCX"
    description: "Rimuovi metadati nascosti nei file DOCX utilizzando Python. Ottimo per proteggere i tuoi file prima di condividerli o archiviarli."
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