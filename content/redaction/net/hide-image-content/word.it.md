
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Coprire Immagini in WORD con Sovrapposizioni Utilizzando C#"
head_description: "Nascondi aree di immagini sensibili nei file WORD usando GroupDocs.Redaction for .NET. Aggiungi sovrapposizioni colorate per proteggere dati privati mantenendo inalterato il layout originale del documento."

############################# Header ############################
title: "Nascondi Immagini Private nei File WORD con Sovrapposizioni Utilizzando .NET" 
description: "Difendi i tuoi dati personali e aziendali nei documenti WORD utilizzando C#. Ottieni una protezione dei contenuti affidabile con i nostri strumenti semplici."
subtitle: "Principali Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET fornisce agli sviluppatori C# strumenti per nascondere o cancellare contenuti dai file WORD. Proteggi i tuoi documenti mascherando testo, immagini e metadati rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati Sensibili nei File Word"
    content: |
      GroupDocs.Redaction for .NET aiuta le tue app .NET a nascondere contenuti privati nei documenti rapidamente.
      
      1. Crea un oggetto Redactor e specifica il percorso del file Word.
      2. Imposta i parametri di redazione in base alle tue esigenze.
      3. Contrassegna l'area dell'immagine e definisci il colore della sovrapposizione.
      4. Elabora e salva il file redatto.
   
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
        // Coprire immagini sensibili in WORD

        // Carica il file tramite il costruttore Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // Definisci il colore e le dimensioni della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona l'area dell'immagine da redigere
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica la sovrapposizione e salva il documento
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Nascondi o Rimuovi Contenuti nei Documenti"
  description: "GroupDocs.Redaction for .NET semplifica la nasconditura o l'eliminazione dei dati in diversi formati di file. Proteggi informazioni sensibili mantenendo i documenti puliti e leggibili."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Dettagliati"
  features:
    # feature loop
    - title: "Sostituisci Testo Ovunque"
      content: "Cerca e modifica testo sensibile in tutto il tuo documento per mantenere riservate le informazioni private."

    # feature loop
    - title: "Maschera Immagini"
      content: "Aggiungi sovrapposizioni a parti specifiche delle immagini o a immagini intere per nascondere elementi visivi privati."

    # feature loop
    - title: "Pulisci i Metadati"
      content: "Elimina o modifica metadati nascosti per evitare perdite di dati involontarie."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Aggiungi Sovrapposizioni per Nascondere Contenuto Immagine"
      content: |
        Questo esempio dimostra come proteggere dati sensibili nelle immagini dei documenti con sovrapposizioni.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il documento per modifiche
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // Imposta dimensioni, posizione e colore della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Concentrati su un'area specifica della prima pagina
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Applica la redazione della sovrapposizione
              redactor.Apply(redaction);

              // Salva le modifiche al file
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Proteggi Contenuto WORD con le Redazioni di .NET"
    exclude: "WORD"
    description: ".NET consente di nascondere o eliminare contenuti sensibili nei file WORD. Un modo affidabile per proteggere documenti confidenziali e ufficiali."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "Immagine JPEG"


---