
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Nascondere Testo Sensibile in POWERPOINT Utilizzando Sovrapposizioni Python"
head_description: "GroupDocs.Redaction for Python via .NET ti aiuta a coprire contenuti privati nei file POWERPOINT con sovrapposizioni colorate. Mantieni tutto al suo posto mentre nascondi ciò che conta."

############################# Header ############################
title: "Nascondere Testo nelle Presentazioni POWERPOINT con Python" 
description: "Usa Python e GroupDocs.Redaction for Python via .NET per aggiungere sovrapposizioni e nascondere testo sensibile nelle diapositive POWERPOINT."
subtitle: "Cosa Puoi Fare con GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Scopri di Più su GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET aiuta gli sviluppatori Python a pulire le presentazioni POWERPOINT coprendo o eliminando testo, immagini e informazioni nascoste.

############################# Steps ############################
steps:
    enable: true
    title: "Redigi Informazioni nei File Powerpoint"
    content: |
      Con GroupDocs.Redaction for Python via .NET, puoi preparare i file Powerpoint per la condivisione utilizzando semplici passaggi di redazione.
      
      1. Crea un nuovo Redactor e carica il tuo file.
      2. Scegli cosa nascondere e come applicarlo.
      3. Aggiungi il modello di ricerca e imposta un colore per la sovrapposizione.
      4. Applica la redazione e salva il documento aggiornato.
   
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

        # Coprire il testo sensibile in POWERPOINT utilizzando sovrapposizioni

        # Imposta come funzionerà la redazione
        # Scegli il testo e il colore per nasconderlo
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Usa Redactor per caricare la tua presentazione
        with gr.Redactor("input.pptx") as redactor:

            # Redigi e salva il tuo file
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Facili Modi per Nascondere Informazioni"
  description: "GroupDocs.Redaction for Python via .NET rende semplice nascondere o rimuovere parti sensibili dei documenti — perfetto per usi legali, personali o aziendali."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Strumenti utili per la privacy"
  features:
    # feature loop
    - title: "Trova e Sostituisci Testo"
      content: "Cerca parole o numeri e nascondili o cambiali."

    # feature loop
    - title: "Coprire Parti delle Immagini"
      content: "Disegna sovrapposizioni per nascondere immagini intere o punti selezionati."

    # feature loop
    - title: "Rimuovi Informazioni Nascoste"
      content: "Elimina i metadati come nomi o timestamp che gli utenti non vedono."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigi Utilizzando la Ricerca Regex"
      content: |
        Vedi come le espressioni regolari ti aiutano a trovare e nascondere testo nelle tue diapositive.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definisci il modello e il colore della sovrapposizione
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # Apri il tuo file POWERPOINT
          with gr.Redactor("source.pptx") as redactor:

              # Esegui la redazione
              result = redactor.apply(redaction)

              # Salva la versione finale
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
    title: "Nascondi Testo in POWERPOINT con Python"
    exclude: "POWERPOINT"
    description: "Usa Python per aggiungere sovrapposizioni o rimuovere contenuti dalle tue diapositive POWERPOINT per mantenere al sicuro i dati privati."
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