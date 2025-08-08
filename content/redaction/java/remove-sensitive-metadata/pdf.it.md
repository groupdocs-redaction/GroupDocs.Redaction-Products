
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Pulisci i Metadati in PDF Usando Java"
head_description: "Utilizza GroupDocs.Redaction for Java per eliminare o aggiornare metadati nascosti nei file PDF. Rimuovi informazioni private prima di condividere i tuoi documenti."

############################# Header ############################
title: "Rimuovi Metadati dai File PDF con Java" 
description: "Mantieni sicure le informazioni personali e aziendali nei tuoi file PDF utilizzando Java. Strumenti semplici che aiutano a proteggere i tuoi dati."
subtitle: "Caratteristiche Principali di GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Informazioni su GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornisce agli sviluppatori Java strumenti per nascondere testi, contenuti immagine e metadati nei documenti PDF.

############################# Steps ############################
steps:
    enable: true
    title: "Pulisci i Metadati nei Documenti Pdf"
    content: |
      Inizia con GroupDocs.Redaction per proteggere i metadati nei tuoi progetti Java.
      
      1. Configura un Redactor e apri il tuo file Pdf.
      2. Scegli di eliminare tutti i campi dei metadati.
      3. Esegui la redazione per cancellare i dati nascosti.
      4. Salva il file con i metadati rimossi.
   
    code:
      platform: "java"
      copy_title: "Copia"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redazioni di esempio"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "clicca per copiare"
        copy_done: "copiato"
      links:
        #  loop
        - title: "Altri esempi"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentazione"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Pulisci i metadati nei file PDF

        // Utilizza Redactor per aprire il file
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Imposta le opzioni di redazione dei metadati
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Applica e salva le modifiche
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Rimuovi Info Sensibili dai File"
  description: "GroupDocs.Redaction for Java ti consente di pulire contenuti privati in diversi formati di documento. Mantieni i tuoi file sicuri e facili da condividere."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Caratteristiche Principali di Redazione"
  features:
    # feature loop
    - title: "Redazione Testo"
      content: "Trova ed elimina parole personali o sensibili nei tuoi documenti."

    # feature loop
    - title: "Copertura Immagini"
      content: "Posiziona sovrapposizioni sulle immagini per nascondere visivi privati."

    # feature loop
    - title: "Rimozione Metadati"
      content: "Cancella i metadati nascosti che potrebbero rivelare informazioni private."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Pulire i Metadati Nascosti"
      content: |
        Questo esempio mostra come modificare o eliminare i metadati nei file PDF.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file PDF usando il redattore
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Focalizzati sul campo dei metadati Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Focalizzati sul campo dei metadati Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Esegui la pulizia dei metadati
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il file finale
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copia"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "clicca per copiare"
          copy_done: "copiato"
        top_links:
          #  loop
          - title: "Scarica risultato"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Altri esempi"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentazione"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto per iniziare?"
  description: "Prova le funzionalità di GroupDocs.Redaction gratuitamente o richiedi una licenza"
  items:
    #  loop
    - title: "Download Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenze"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Sicurezza dei File PDF con la Redazione Metadati di Java"
    exclude: "PDF"
    description: "Cancella i campi nascosti nei tuoi file PDF usando Java. Proteggi la privacy con un semplice strumento di pulizia dei metadati."
    items: 
        # format loop 1
        - name: "Redazione PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Formato Documento Portabile Adobe"

        # format loop 2
        - name: "Redazione Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documenti MS Word e Open Office"
          
        # format loop 3
        - name: "Redazione Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Fogli di calcolo MS Excel e Open Office"

        # format loop 4
        - name: "Redazione PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Presentazioni MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redazione Immagine"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formati di immagine popolari"

        # format loop 6
        - name: "Redazione Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formati fotografici"

        # format loop 7
        - name: "Redazione DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Documento Open XML di Microsoft Word"
          
        # format loop 8
        - name: "Redazione XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Foglio di calcolo Open XML di Microsoft Excel"
          
        # format loop 9
        - name: "Redazione PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Presentazione Open XML di PowerPoint"

        # format loop 10
        - name: "Redazione JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Immagine JPEG"


---