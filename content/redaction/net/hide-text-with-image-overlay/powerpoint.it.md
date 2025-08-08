
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Testo Sensibile in POWERPOINT con Sovrapposizioni C#"
head_description: "GroupDocs.Redaction for .NET ti consente di nascondere parti di file POWERPOINT utilizzando semplici redazioni di sovrapposizione. Mantieni i documenti sicuri senza cambiare la struttura."

############################# Header ############################
title: "Redazione del Testo in POWERPOINT con Sovrapposizioni Utilizzando .NET" 
description: "Proteggi il contenuto nei tuoi file POWERPOINT posizionando blocchi di sovrapposizione con l'aiuto di C# e GroupDocs.Redaction for .NET."
subtitle: "Strumenti all'interno di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su Questo Strumento"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET aiuta gli utenti C# a ripulire i documenti POWERPOINT coprendo o cancellando testo, metadati o immagini secondo necessità.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi contenuto nei documenti Powerpoint"
    content: |
      Usa GroupDocs.Redaction for .NET nelle tue app .NET per ripulire i file prima della distribuzione.
      
      1. Passa il percorso del file a una nuova istanza di Redactor.
      2. Imposta cosa e come vuoi redigere.
      3. Definisci il modello di testo e imposta il colore della sovrapposizione.
      4. Redigi e salva il tuo file aggiornato.
   
    code:
      platform: "net"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // Sovrapponi testo in POWERPOINT per nascondere dettagli

        // Usa Redactor per aprire il tuo file
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Regola le impostazioni per la redazione
            // Seleziona testo e un colore di blocco
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Esegui e salva il file redatto
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondi dati sensibili facilmente"
  description: "Usa GroupDocs.Redaction for .NET per rimuovere o coprire contenuti attraverso tipologie di documento, ideale per la protezione dei dati in file legali, aziendali o personali."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Redazione flessibile del documento"
  features:
    # feature loop
    - title: "Sostituisci testo"
      content: "Trova parole o numeri e sostituiscili o nascondili."

    # feature loop
    - title: "Redigi foto o sezioni"
      content: "Aggiungi sovrapposizioni alle immagini o a sezioni selezionate di una pagina."

    # feature loop
    - title: "Rimuovi dati extra"
      content: "Pulisci metadati che potrebbero rivelare informazioni nascoste."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Trova e redigi con regex"
      content: |
        Questo mostra come le regex possono aiutare a identificare e nascondere testo
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file che necessita di redazione
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Imposta le tue regole utilizzando regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Esegui il processo di redazione
              redactor.Apply(redaction);

              // Salva la versione ripulita
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Nascondi Contenuto in POWERPOINT Usando .NET"
    exclude: "POWERPOINT"
    description: "Aggiungi sovrapposizioni o dati chiari dai tuoi file POWERPOINT per mantenere contenuti sensibili privati utilizzando .NET."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 6
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 7
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "Presentazione Open XML di PowerPoint"


---