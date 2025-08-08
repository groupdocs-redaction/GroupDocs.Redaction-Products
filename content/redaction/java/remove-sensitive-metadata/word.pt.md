
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Deletar Metadados de WORD Usando Java"
head_description: "Com GroupDocs.Redaction for Java, você pode rapidamente remover metadados ocultos de arquivos WORD. Mantenha seus documentos seguros e privados."

############################# Header ############################
title: "Limpar Metadados Ocultos em Arquivos WORD com Java" 
description: "Proteja seus arquivos WORD removendo informações privadas usando ferramentas Java. Ótimo para uso profissional e pessoal."
subtitle: "Como o GroupDocs.Redaction for Java Ajuda Você" 

############################# About ############################
about:
    enable: true
    title: "Saiba Mais Sobre o GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores Java tudo que precisam para remover dados de arquivos WORD. Limpe metadados, texto e imagens de forma eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Arquivos Word"
    content: |
      Use GroupDocs.Redaction para limpar metadados de documentos em seus aplicativos Java.
      
      1. Inicie um objeto Redactor e carregue seu arquivo Word.
      2. Defina regras para deletar campos de metadados ocultos.
      3. Aplique a redação para apagar metadados.
      4. Salve o arquivo atualizado.
   
    code:
      platform: "java"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
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
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // Remova metadados ocultos de WORD

        // Carregue o arquivo com Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Configure opções de redação de metadados
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Execute a redação e salve
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas para Remover Informações Privadas"
  description: "Use GroupDocs.Redaction for Java para limpar texto, imagens e metadados de muitos formatos de arquivo. Compartilhe seus arquivos sem expor dados sensíveis."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Características de Redação de Metadados e Conteúdo"
  features:
    # feature loop
    - title: "Deletar Texto Privado"
      content: "Pesquise por conteúdo sensível em arquivos e remova ou altere conforme necessário."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Oculte partes específicas de imagens que podem conter detalhes privados."

    # feature loop
    - title: "Remover Campos de Metadados"
      content: "Delete tags ocultas como autor, título e mais para garantir privacidade."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpar Campos de Metadados em Documentos"
      content: |
        Este exemplo explica como apagar metadados como Autor e Título em um arquivo WORD.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o arquivo para processamento
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Apague o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Apague o campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Realize a redação
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salve o arquivo limpo
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "Copiar"
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
          copy_tip: "clique para copiar"
          copy_done: "copiado"
        top_links:
          #  loop
          - title: "Baixar resultado"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "Mais exemplos"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Apagar Metadados em WORD com Java"
    exclude: "WORD"
    description: "Java permite que você limpe metadados ocultos de arquivos WORD. Uma maneira simples de proteger seus documentos."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---