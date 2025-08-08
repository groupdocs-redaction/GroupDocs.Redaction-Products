
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: it
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Rimuovi Metadati dai POWERPOINT con Java"
head_description: "Utilizza GroupDocs.Redaction for Java per pulire metadati nascosti dai file POWERPOINT e mantenere i tuoi documenti privati e sicuri."

############################# Header ############################
title: "Elimina Metadati in POWERPOINT usando Java" 
description: "Proteggi i tuoi file con strumenti facili da usare progettati per Java. Rimuovi metadati in pochi passaggi."
subtitle: "Cosa Ottieni con GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Cos'è GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Scopri di più"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction è uno strumento di redazione per sviluppatori Java. Ti aiuta a pulire testi, immagini e metadati nei file POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Come Pulire i Metadati dai File Powerpoint"
    content: |
      Con GroupDocs.Redaction, le tue app Java possono pulire rapidamente i metadati dai documenti.
      
      1. Crea un oggetto Redactor e carica il documento.
      2. Seleziona i campi di metadati che desideri eliminare.
      3. Applica le impostazioni di redazione.
      4. Esporta il documento senza i dati nascosti.
   
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
        // Elimina metadati dai file POWERPOINT

        // Apri il tuo file con il redattore
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Imposta quali metadati rimuovere
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Pulisci e salva il file
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mantieni i Tuoi File Sicuri con la Redazione"
  description: "GroupDocs.Redaction for Java aiuta a pulire contenuti privati o nascosti, in modo che i documenti possano essere condivisi in sicurezza. Supporta molti tipi di file."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Cosa Puoi Redigere"
  features:
    # feature loop
    - title: "Rimuovi Testo Sensibile"
      content: "Trova ed elimina parole personali o confidenziali dai tuoi file."

    # feature loop
    - title: "Nascondi Aree delle Immagini"
      content: "Coprire parti delle immagini che non dovrebbero essere viste."

    # feature loop
    - title: "Pulizia Metadati"
      content: "Elimina campi che potrebbero rivelare dettagli nascosti."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Rimuovi i Campi Metadati Nascosti"
      content: |
        Questo campione mostra come pulire informazioni incorporate come Autore e Titolo da un documento POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Apri il file con il redattore
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Elimina il campo Autore
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Elimina il campo Titolo
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Applica redazione
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salva il documento aggiornato
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
    title: "Pulisci i Metadati di POWERPOINT in Java"
    exclude: "POWERPOINT"
    description: "Utilizza Java per rimuovere dati privati dai file POWERPOINT. Perfetto per pulire e condividere documenti sensibili."
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