
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: it
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "Redigi Immagini in PPTX con Sovrapposizioni Utilizzando C#"
head_description: "Con GroupDocs.Redaction for .NET, puoi nascondere contenuti sensibili delle immagini nei file PPTX applicando sovrapposizioni colorate. Proteggi dati confidenziali senza modificare la struttura del tuo documento."

############################# Header ############################
title: "Redigi Immagini Sensibili nei Documenti PPTX Utilizzando .NET" 
description: "Proteggi dati personali e aziendali nei file PPTX con C#. I nostri strumenti rendono la redazione delle immagini rapida e intuitiva."
subtitle: "Cosa Offre GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET offre agli sviluppatori C# strumenti facili da usare per nascondere o eliminare contenuti nei file PPTX. Proteggi i tuoi documenti coprendo testo, immagini e metadati in formati diversi.

############################# Steps ############################
steps:
    enable: true
    title: "Mantieni Sicuri i Dati Aziendali nei Documenti Pptx"
    content: |
      GroupDocs.Redaction for .NET: Aiuta le app .NET a proteggere i documenti nascondendo informazioni sensibili.
      
      1. Imposta un'istanza di Redactor e carica il file Pptx.
      2. Configura le impostazioni di redazione per adattarsi alle tue esigenze.
      3. Seleziona le aree delle immagini e assegna colori alle sovrapposizioni.
      4. Elabora la redazione e salva il tuo file.
   
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
        // Redigi aree sensibili delle immagini in PPTX

        // Apri il file utilizzando Redactor
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // Definisci colore e dimensioni della sovrapposizione
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // Seleziona l'area da redigere
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
  title: "Strumenti di Redazione Documentale"
  description: "GroupDocs.Redaction for .NET consente di nascondere o eliminare contenuti sensibili in vari tipi di file. Proteggi le informazioni mantenendo i documenti puliti e condivisibili."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Strumenti di Redazione Potenti"
  features:
    # feature loop
    - title: "Cerca & Sostituisci Testo"
      content: "Individua e redigi testo privato per migliorare la sicurezza del documento."

    # feature loop
    - title: "Redigi Contenuto delle Immagini"
      content: "Coprire intere immagini o regioni selezionate con sovrapposizioni per nascondere elementi visivi privati."

    # feature loop
    - title: "Rimuovi Metadati"
      content: "Cancella o modifica metadati nascosti per prevenire perdite di dati."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Nascondi Dati Immagine con Sovrapposizioni"
      content: |
        Questo esempio dimostra come redigere immagini sensibili nei documenti.
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  Carica il documento
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // Imposta dimensioni, posizione e colore della sovrapposizione
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // Specifica l'area da redigere nella prima pagina
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // Applica la sovrapposizione
              redactor.Apply(redaction);

              // Salva il file redatto
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
    title: "Redigi Contenuti PPTX con .NET"
    exclude: "PPTX"
    description: "Utilizza .NET per nascondere o eliminare contenuti sensibili nei file PPTX. Una soluzione affidabile per la sicurezza dei documenti."
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