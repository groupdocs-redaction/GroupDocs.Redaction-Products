
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Maschera Immagini in EXCEL con Sovrapposizioni Utilizzando C#"
head_description: "Nascondi immagini private nei file EXCEL usando GroupDocs.Redaction for .NET. Aggiungi sovrapposizioni colorate per proteggere dati sensibili mantenendo il layout del documento."

############################# Header ############################
title: "Coprire Immagini Sensibili nei File EXCEL con Sovrapposizioni Utilizzando .NET" 
description: "Proteggi dati personali e aziendali nei file EXCEL utilizzando C#. Ottenere una protezione dei dati rapida e affidabile con i nostri strumenti."
subtitle: "Esplora le Funzionalità di GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre agli sviluppatori C# strumenti per nascondere o eliminare contenuti sensibili nei file EXCEL. Copri testo, immagini e metadati per mantenere i documenti sicuri.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni Sicuri i Tuoi Dati nei File Excel"
    content: |
      GroupDocs.Redaction for .NET aiuta le tue app .NET a proteggere i documenti nascondendo contenuti sensibili.
      
      1. Crea un'istanza di Redactor e fornisci il percorso del file Excel.
      2. Configura le opzioni di redazione per risultati desiderati.
      3. Seleziona l'area dell'immagine e il colore della sovrapposizione.
      4. Applica la redazione e salva il file.
   
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
        // Maschera contenuti immagine in EXCEL

        // Carica documento utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // Imposta dimensioni e colore della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona area da nascondere
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
  title: "Redigi Qualsiasi Contenuto nei Documenti"
  description: "GroupDocs.Redaction for .NET ti aiuta a nascondere o eliminare contenuti sensibili in vari formati di documento. Proteggi i dati mantenendo i documenti facili da usare."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Opzioni di Redazione Potenti"
  features:
    # feature loop
    - title: "Cerca e Modifica Testo"
      content: "Trova testo sensibile e sostituiscilo per proteggere dati riservati nei tuoi documenti."

    # feature loop
    - title: "Sovrapponi Areale delle Immagini"
      content: "Coprire immagini intere o parti selezionate con sovrapposizioni per mantenere riservati gli elementi visivi."

    # feature loop
    - title: "Rimuovi Metadati"
      content: "Cancella campi di metadati nascosti per evitare perdite accidentali di informazioni."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Maschera Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio mostra come coprire informazioni sensibili nelle immagini dei documenti.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Apri il file per modifiche
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // Definisci dimensioni, colore e posizionamento della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Prendi di mira una sezione dell'immagine specifica nella pagina uno
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Applica la sovrapposizione per mascherare l'immagine
              redactor.Apply(redaction);

              // Salva il documento finale
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
    title: "Proteggi File EXCEL con gli Strumenti di Redazione .NET"
    exclude: "EXCEL"
    description: "Utilizza .NET per nascondere o eliminare informazioni sensibili nei file EXCEL. Una soluzione affidabile per la sicurezza dei documenti."
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