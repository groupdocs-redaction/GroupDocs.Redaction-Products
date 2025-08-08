
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Rimuovi Testo Privato da XLSX Usando Python"
head_description: "Proteggi i tuoi file XLSX nascondendo o rimuovendo dati sensibili con GroupDocs.Redaction for Python via .NET e Python."

############################# Header ############################
title: "Nascondi o Elimina Testo Privato in File XLSX Utilizzando Python" 
description: "Con GroupDocs.Redaction for Python via .NET e Python, puoi rimuovere testo privato dai documenti XLSX—rapido e affidabile."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Incontra GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornisce agli sviluppatori Python tutto il necessario per rimuovere o nascondere dati privati nei file XLSX—testo, immagini, note e altro.

############################# Steps ############################
steps:
    enable: true
    title: "Come Rimuovere Contenuti in File Xlsx"
    content: |
      Utilizza GroupDocs.Redaction for Python via .NET nella tua app Python via .NET per cancellare o nascondere contenuti sensibili in modo veloce.
      
      1. Inizia un Redactor e carica il file Xlsx.
      2. Scegli le impostazioni di redazione di cui hai bisogno.
      3. Imposta il testo di ricerca e cosa dovrebbe sostituirlo.
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

        # Come redigere testo in un file XLSX

        # Scegli le tue preferenze di redazione
        # Imposta i valori di ricerca e sostituzione
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Usa il costruttore Redactor per caricare il tuo file
        with gr.Redactor("input.xslx") as redactor:

            # Applica le modifiche e salva il file XLSX aggiornato
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità Aggiuntive di Redazione"
  description: "GroupDocs.Redaction for Python via .NET rende facile nascondere o eliminare informazioni private in diversi formati di file. Condividi solo ciò che deve essere visto."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Funzionalità per redigere testo, immagini e metadati"
  features:
    # feature loop
    - title: "Sostituisci Testo Privato"
      content: "Trova e sostituisci parole o schemi corrispondenti. Supportate ricerche con regex e parole chiave."

    # feature loop
    - title: "Nascondi Contenuti Immagine"
      content: "Nascondi parti delle immagini con sovrapposizioni. Personalizza il modo in cui appare e quello che nasconde."

    # feature loop
    - title: "Rimuovi Metadati"
      content: "Elimina informazioni nascoste come la cronologia dei documenti, nomi degli autori o tag interni."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigi Utilizzando Modelli Regex"
      content: |
        Trova schemi di testo come numeri di telefono, ID o email con regex e rimuovili rapidamente.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # Imposta il tuo modello regex EMAIL e il testo di sostituzione
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # Apri il documento che desideri ripulire
          with gr.Redactor("source.xslx") as redactor:

              # Applica le regole di redazione
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
    title: "Redigi Contenuti in XLSX Usando Python"
    exclude: "XLSX"
    description: "Mantieni i dati sensibili privati rimuovendoli dai file XLSX utilizzando strumenti Python."
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