
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Maschera Immagini nei File XLSX con Sovrapposizioni Utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi mascherare contenuti sensibili delle immagini nei file XLSX applicando sovrapposizioni colorate. Proteggi dati importanti mantenendo intatta la struttura del documento."

############################# Header ############################
title: "Maschera Immagini Sensibili nei Documenti XLSX Utilizzando .NET" 
description: "Garantisci la privacy dei dati nei file XLSX utilizzando C#. I nostri strumenti sono progettati per rendere la redazione delle immagini rapida ed efficace."
subtitle: "Funzionalità Chiave di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre agli sviluppatori C# strumenti semplici per nascondere o eliminare contenuti nei file XLSX. Proteggi i documenti copiando testo, immagini e metadati in formati diversi.

############################# Steps ############################
steps:
    enable: true
    title: "Proteggi Dati Privati nei Documenti Xlsx"
    content: |
      GroupDocs.Redaction for .NET: Aiuta le tue app .NET a mettere in sicurezza i documenti in modo efficiente.
      
      1. Crea un'istanza di Redactor e carica il file Xlsx.
      2. Imposta i parametri di redazione in base alle tue necessità.
      3. Definisci l'area dell'immagine e scegli il colore della sovrapposizione.
      4. Applica la redazione e salva il file di output.
   
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
        // Maschera parti sensibili delle immagini in XLSX

        // Inizializza Redactor con il percorso del file
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Scegli dimensioni e colore della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Segna l'area da redigere
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // Applica e salva le modifiche
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Funzionalità di Redazione nei Documenti"
  description: "Con GroupDocs.Redaction for .NET, puoi rimuovere o nascondere contenuti in vari formati di file. Mantieni dati sensibili privati mantenendo un layout pulito."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Funzionalità Robustä di Redazione"
  features:
    # feature loop
    - title: "Cerca e Sostituisci Testo"
      content: "Trova rapidamente e redigi testo confidenziale per proteggere dati sensibili."

    # feature loop
    - title: "Maschera Contenuto dell'Immagine"
      content: "Applica sovrapposizioni a immagini intere o a parti specifiche per nascondere elementi visivi privati."

    # feature loop
    - title: "Pulisci i Metadata"
      content: "Rimuovi o regola i metadati nascosti per prevenire esposizioni involontarie di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondi Contenuto Immagine con Sovrapposizioni"
      content: |
        Scopri come mascherare regioni sensibili dell'immagine nei tuoi documenti.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il documento per la redazione
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Definisci attributi della sovrapposizione: dimensioni, posizione, colore
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Concentrati su un'area specifica
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Sovrapponi l'area dell'immagine
              redactor.Apply(redaction);

              // Salva il documento redatto
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
    title: "Maschera Contenuto XLSX con le Redazioni di .NET"
    exclude: "XLSX"
    description: "Utilizza .NET per redigere o eliminare contenuti sensibili nei file XLSX. Una soluzione pratica per mettere in sicurezza documenti aziendali e personali."
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