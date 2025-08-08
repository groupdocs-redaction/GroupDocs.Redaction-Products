
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Coprire Testo Sensibile nei File PDF Utilizzando Sovrapposizioni Python"
head_description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere il testo sensibile nei file PDF aggiungendo sovrapposizioni colorate. Proteggi i dati privati senza alterare l'aspetto del tuo file."

############################# Header ############################
title: "Coprire Testo Sensibile nei PDF Utilizzando Python" 
description: "Metti in sicurezza i tuoi file PDF con Python. Usa sovrapposizioni per bloccare informazioni legali, personali oconfidenziali."
subtitle: "Punti Salienti di GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET offre ai programmatori Python un modo semplice per nascondere o eliminare contenuti nei file PDF. Copri testo sensibile, immagini o metadati in vari formati.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni Sicure le Informazioni Sensibili nei File Pdf"
    content: |
      Utilizza GroupDocs.Redaction for Python via .NET con le tue app Python via .NET per nascondere rapidamente contenuti privati.
      
      1. Configura un Redactor e carica il tuo file Pdf.
      2. Scegli come deve funzionare la redazione.
      3. Seleziona il testo da nascondere e scegli un colore per la sovrapposizione.
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
        import groupdocs.pydrawing as grd

        # Nascondi testi sensibili in PDF usando sovrapposizioni colorate

        # Imposta le opzioni di redazione
        # Definisci cosa nascondere e scegli un colore
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Carica il file passando il suo percorso a Redactor
        with gr.Redactor("input.pdf") as redactor:

            # Redigi e salva il tuo file PDF
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondere o Rimuovere Informazioni dai Documenti"
  description: "Con GroupDocs.Redaction for Python via .NET, puoi nascondere testo, immagini e altri dati in molti formati. Proteggi ciò che conta mantenendo i tuoi documenti facili da leggere e condividere."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Caratteristiche di Redazione Flessibili"
  features:
    # feature loop
    - title: "Modifica Qualsiasi Testo"
      content: "Trova e sostituisci testo sensibile per mantenere i tuoi documenti sicuri."

    # feature loop
    - title: "Coprire Immagini"
      content: "Usa sovrapposizioni per oscurare immagini intere o aree specifiche."

    # feature loop
    - title: "Pulisci i Metadata"
      content: "Rimuovi dati nascosti per fermare perdite di informazioni non intenzionali."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa Regex per Trovare e Nascondere Testo"
      content: |
        Questo esempio mostra come cercare e nascondere testo utilizzando modelli regex.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Imposta il modello di testo e il colore della sovrapposizione
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Carica il tuo documento
          with gr.Redactor("source.pdf") as redactor:

              # Redigi il contenuto selezionato
              result = redactor.apply(redaction)

              # Salva il file aggiornato
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Proteggi i File PDF con gli Strumenti Python"
    exclude: "PDF"
    description: "Usa Python per nascondere o rimuovere contenuti nei file PDF. Un modo affidabile per mantenere al sicuro le informazioni private."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---