
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Elimina Metadati da XLSX Usando Python"
head_description: "Elimina metadati nascosti nei documenti XLSX utilizzando GroupDocs.Redaction for Python via .NET. Un modo efficace per proteggere la tua privacy."

############################# Header ############################
title: "Rimuovi Metadati nei File XLSX con Python" 
description: "Con Python, puoi eliminare in modo sicuro dettagli privati dai tuoi file XLSX. Perfetto per uso personale e professionale."
subtitle: "Caratteristiche Chiave di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction offre agli sviluppatori Python strumenti per eliminare o nascondere qualsiasi contenuto sensibile nei file XLSX — da testo a immagini a metadati.

############################# Steps ############################
steps:
    enable: true
    title: "Pulisci Metadati dai File Xlsx"
    content: |
      GroupDocs.Redaction consente ai tuoi progetti Python via .NET di rimuovere rapidamente dati file indesiderati.
      
      1. Crea un'istanza di Redactor e carica il tuo file Xlsx.
      2. Scegli le voci di metadati che desideri eliminare.
      3. Esegui la redazione per rimuovere quelle voci.
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

        # Elimina metadati nascosti nel tuo documento XLSX

        # Imposta quali campi di metadati devono essere rimossi
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Apri il file utilizzando Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # Applica le modifiche e salva il file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondi Contenuti Sensibili Ovunque nel File"
  description: "GroupDocs.Redaction for Python via .NET consente di pulire informazioni private da più formati di file. Tieni i tuoi contenuti pronti per la condivisione."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Redazione di Metadati e Contenuti"
  features:
    # feature loop
    - title: "Elimina Testo Sensibile"
      content: "Trova e rimuovi nomi, email o altri dettagli privati dai documenti."

    # feature loop
    - title: "Nascondi Aree dell'Immagine"
      content: "Posiziona sovrapposizioni per nascondere aree delle immagini che non dovrebbero essere visibili."

    # feature loop
    - title: "Pulitore di Metadati"
      content: "Rimuovi campi nascosti come Autore, Titolo o data di creazione."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi Metadati dal Documento"
      content: |
        Ecco come rimuovere metadati dal tuo file XLSX utilizzando alcune righe di codice.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Seleziona il campo Autore per la cancellazione
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Seleziona il campo Titolo per la cancellazione
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Apri il documento
          with gr.Redactor("source.xlsx") as redactor:

              # Esegui le regole di redazione
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
    title: "Pulisci Metadati in XLSX con Python"
    exclude: "XLSX"
    description: "Utilizza Python per eliminare metadati privati nei tuoi file XLSX. Un ottimo modo per rendere i file pronti per la condivisione o la pubblicazione."
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