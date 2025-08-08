
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Rimuovi Testo Sensibile da PDF con Python"
head_description: "Mantieni al sicuro i dettagli riservati nei tuoi documenti PDF con GroupDocs.Redaction for Python via .NET. Trova e nascondi rapidamente informazioni sensibili."

############################# Header ############################
title: "Elimina Testo Sensibile da File PDF Usando Python" 
description: "Utilizza Python e GroupDocs.Redaction for Python via .NET per cercare e rimuovere dati privati, legali o personali dai tuoi file PDF."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornisce agli sviluppatori Python tutti gli strumenti necessari per redigere contenuti in file PDF—testo, immagini, commenti e altro.

############################# Steps ############################
steps:
    enable: true
    title: "Come Redigere Contenuti in File Pdf"
    content: |
      Mantieni i tuoi contenuti al sicuro in qualsiasi app Python via .NET utilizzando GroupDocs.Redaction for Python via .NET.
      
      1. Crea un Redactor e carica il tuo file Pdf.
      2. Scegli le impostazioni di redazione desiderate.
      3. Inserisci il testo da cercare e cosa sostituirlo.
      4. Applica la redazione e salva il tuo file.
   
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altre Funzionalità di Redazione"
  description: "GroupDocs.Redaction for Python via .NET ti consente di nascondere contenuti privati in vari formati di file. Mantieni i tuoi dati al sicuro e pronti per la condivisione."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Strumenti per la redazione di testo, immagini e metadati"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo Privato"
      content: "Cerca e sostituisci testo corrispondente. Funziona con regex e ricerca di parole chiave."

    # feature loop
    - title: "Copri Immagini Private"
      content: "Maschera immagini complete o parti di esse utilizzando sovrapposizioni. Personalizza le impostazioni di aspetto."

    # feature loop
    - title: "Elimina Metadati Nascosti"
      content: "Rimuovi informazioni nascoste come nomi di autori, timestamp e note di revisione."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redazione con Regex"
      content: |
        Utilizza regex per trovare e rimuovere schemi come email, ID o numeri.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Imposta un modello regex e il testo di sostituzione
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Apri il file che desideri ripulire
          with gr.Redactor("source.pdf") as redactor:

              # Applica le tue regole di redazione
              result = redactor.apply(redaction)

              # Salva il tuo file redatto
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redigi Contenuti in PDF Usando Python"
    exclude: "PDF"
    description: "Mantieni i dati personali o aziendali al sicuro redigendo testo in file PDF con strumenti Python."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---