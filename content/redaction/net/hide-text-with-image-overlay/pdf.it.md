
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Nascondi Testo Sensibile in PDF con Sovrapposizioni Utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi nascondere il testo sensibile nei file PDF posizionando sovrapposizioni quadrate colorate. Mantieni i dati privati al sicuro senza modificare il layout originale."

############################# Header ############################
title: "Nascondi Testo Sensibile nei Documenti PDF con Sovrapposizioni Utilizzando .NET" 
description: "Prendi il controllo del contenuto del file PDF utilizzando C#. Usa redazioni per proteggere informazioni legali, finanziarie e personali."
subtitle: "Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre agli sviluppatori C# gli strumenti per nascondere o rimuovere contenuti dai file PDF. È un modo semplice per mantenere i documenti al sicuro. Puoi coprire testo, immagini o metadati in molti tipi di file.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi i dati aziendali nei documenti Pdf"
    content: |
      GroupDocs.Redaction for .NET: progettato per aiutare le tue app .NET a mantenere i documenti sicuri. Redigi informazioni private rapidamente.
      
      1. Crea un'istanza di Redactor e fornisci il percorso del file Pdf che desideri redigere.
      2. Configura le impostazioni di redazione per ottenere il risultato desiderato.
      3. Imposta il modello di testo da cercare e scegli il colore della sovrapposizione.
      4. Redigi il documento e salva le modifiche.
   
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
        // Nascondi testo sensibile in PDF con immagini di sovrapposizione

        // Passa il percorso del file al costruttore di Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // Imposta le opzioni di redazione
            // Definisci il modello di testo e il colore di sovrapposizione
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Redigi e salva il file PDF aggiornato
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigi contenuti nei documenti"
  description: "Con GroupDocs.Redaction for .NET, puoi rimuovere o nascondere contenuti in molti tipi di file. Proteggi informazioni sensibili mantenendo i tuoi documenti facili da leggere e condividere."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Opzioni Avanzate di Redazione"
  features:
    # feature loop
    - title: "Modifica testo ovunque"
      content: "Cerca e sostituisci qualsiasi testo corrispondente nel tuo documento per aiutare a proteggere i dati riservati."

    # feature loop
    - title: "Copri immagini"
      content: "Posiziona sovrapposizioni sopra immagini intere o aree selezionate per nascondere contenuti visuali privati."

    # feature loop
    - title: "Gestisci i metadati"
      content: "Cancella o modifica i metadati nascosti per prevenire fughe di dati indesiderate."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Usa espressioni regolari per nascondere testo"
      content: |
        Questo esempio mostra come trovare e nascondere testo utilizzando espressioni regolari
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il documento che desideri redigere
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // Definisci le impostazioni di redazione: modello di testo e colore
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // Applica la redazione al contenuto
              redactor.Apply(redaction);

              // Salva la versione redatta
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
    title: "Proteggi il Contenuto PDF con Redazioni .NET"
    exclude: "PDF"
    description: "Usa .NET per coprire o cancellare contenuti nei file PDF. È una scelta intelligente per mantenere documenti sensibili o ufficiali sicuri."
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