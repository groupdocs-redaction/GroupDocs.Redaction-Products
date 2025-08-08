
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Deletar Metadados de DOCX com Java"
head_description: "Use GroupDocs.Redaction for Java para limpar metadados ocultos em seus arquivos DOCX. Certifique-se de que seus documentos não revelem informações privadas."

############################# Header ############################
title: "Limpeza de Metadados em Documentos DOCX Usando Java" 
description: "Remova metadados indesejados de seus arquivos DOCX com Java. Mantenha seus arquivos privados e seguros para compartilhamento ou armazenamento."
subtitle: "Principais Ferramentas Dentro do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ajuda desenvolvedores Java a remover conteúdo privado de arquivos DOCX. Redija texto, imagens e metadados com eficiência.

############################# Steps ############################
steps:
    enable: true
    title: "Apagar Informações Ocultas de Arquivos Docx"
    content: |
      GroupDocs.Redaction facilita a exclusão de metadados em seus aplicativos Java.
      
      1. Inicialize Redactor e carregue o arquivo Docx.
      2. Configure a ferramenta para remover campos específicos de metadados.
      3. Aplique a redação para deletar a informação oculta.
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
        // Delete metadados de arquivos DOCX

        // Abra o arquivo com Redactor
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // Escolha quais metadados remover
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplique e salve as alterações
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteger Dados Sensíveis em Documentos"
  description: "GroupDocs.Redaction for Java permite que você oculte conteúdos privados de todos os tipos de arquivos. Certifique-se de que nenhum dado oculto seja compartilhado."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas de Redação de Metadados, Texto e Imagem"
  features:
    # feature loop
    - title: "Redação de Texto"
      content: "Encontre e delete texto sensível em todo o seu documento."

    # feature loop
    - title: "Sobreposições de Imagem"
      content: "Cubra partes de imagens para ocultar visuais privados."

    # feature loop
    - title: "Limpeza de Metadados"
      content: "Remova metadados de fundo que podem revelar informações ocultas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Como Remover Metadados"
      content: |
        Este exemplo mostra como deletar propriedades ocultas como Autor e Título de um arquivo DOCX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra seu documento DOCX
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // Selecione o campo Autor para limpeza
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Selecione o campo Título para limpeza
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Execute a redação
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salve o arquivo final
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
    title: "Limpar Metadados de DOCX com Java"
    exclude: "DOCX"
    description: "Use Java para remover metadados ocultos de documentos DOCX. Ótimo para privacidade e proteção de dados."
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