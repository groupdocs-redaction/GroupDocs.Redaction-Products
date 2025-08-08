
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redigi Testo in PPTX Utilizzando Sovrapposizioni e C#"
head_description: "Nascondi contenuti privati nei documenti PPTX coprendoli con quadrati colorati utilizzando GroupDocs.Redaction for .NET. Mantieni il tuo layout così com'è."

############################# Header ############################
title: "Redigi Testo in PPTX con Sovrapposizioni Utilizzando .NET" 
description: "Con C# e GroupDocs.Redaction for .NET, è semplice proteggere dati sensibili nei file PPTX nascondendoli dalla vista."
subtitle: "Esplora GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Cosa Fa GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ti dà il potere di coprire o rimuovere contenuti nei documenti PPTX utilizzando C#. Nascondi tutto, dai nomi alle note, in pochi passaggi.

############################# Steps ############################
steps:
    enable: true
    title: "Nascondi contenuti privati nei tuoi file Pptx"
    content: |
      Con GroupDocs.Redaction for .NET, gli sviluppatori .NET possono proteggere documenti in pochi semplici passaggi.
      
      1. Inizia un Redactor con il percorso del file che desideri ripulire.
      2. Scegli le regole di redazione che si adattano alle tue esigenze.
      3. Scegli un modello da corrispondere e un colore per la sovrapposizione dell'immagine.
      4. Esegui la redazione e salva il file aggiornato.
   
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
        // Usa sovrapposizioni per coprire testo in PPTX

        // Inizializza Redactor con il tuo file
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definisci come dovrebbe comportarsi la redazione
            // Imposta cosa nascondere e il colore della sovrapposizione
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Esegui e salva le modifiche
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Altri modi per proteggere i tuoi file"
  description: "GroupDocs.Redaction for .NET ti offre gli strumenti per nascondere dati in diversi formati senza modificare il layout."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Funzionalità che contano"
  features:
    # feature loop
    - title: "Sostituisci testo secondo necessità"
      content: "Sostituisci testo per mantenere informazioni chiave lontano da utenti non autorizzati."

    # feature loop
    - title: "Nascondi aree delle immagini"
      content: "Nascondi intere immagini o determinate parti disegnando caselle di sovrapposizione."

    # feature loop
    - title: "Pulisci dati nascosti"
      content: "Elimina metadati integrati che potrebbero rivelare dettagli privati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redazione con espressione regolare"
      content: |
        Questo esempio mostra come cercare e nascondere testo con espressioni regolari
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica un file per la redazione
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Imposta le regole di redazione: testo di ricerca e colore del blocco
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Applica la logica di redazione
              redactor.Apply(redaction);

              // Salva il risultato redatto
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
    title: "Sicurezza del testo PPTX con Strumenti .NET"
    exclude: "PPTX"
    description: "Coprire aree private o rimuovere dati nascosti nei file PPTX utilizzando le funzionalità di redazione .NET."
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