
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Editar Metadados em JPEG Usando Java"
head_description: "Use GroupDocs.Redaction for Java para limpar ou alterar metadados em arquivos JPEG. Proteja a privacidade removendo dados ocultos."

############################# Header ############################
title: "Remover Metadados de Arquivos JPEG Usando Java" 
description: "Mantenha seus documentos JPEG seguros com ferramentas simples Java que removem detalhes privados."
subtitle: "Recursos Principais do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction dá aos desenvolvedores Java as ferramentas para remover texto, imagens e metadados indesejados de arquivos JPEG.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Documentos Jpeg"
    content: |
      GroupDocs.Redaction facilita a exclusão de metadados em seus projetos Java.
      
      1. Crie um Redactor e carregue seu arquivo Jpeg.
      2. Selecione opções para remover todos os campos de metadados.
      3. Execute a redação para limpar o arquivo.
      4. Salve o arquivo atualizado sem dados ocultos.
   
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
        // Limpar metadados de arquivos JPEG

        // Carregue o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // Configure a limpeza de metadados
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Execute e salve as alterações
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteja Seus Documentos"
  description: "GroupDocs.Redaction for Java ajuda a remover conteúdo privado de muitos tipos de documentos. Mantenha informações sensíveis fora de seus arquivos compartilhados."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Principais de Redação"
  features:
    # feature loop
    - title: "Remover Texto"
      content: "Encontre e apague palavras ou frases pessoais de seus arquivos."

    # feature loop
    - title: "Ocultar Conteúdo de Imagem"
      content: "Adicione sobreposições para cobrir áreas de imagens com informações sensíveis."

    # feature loop
    - title: "Editar Metadados"
      content: "Limpe ou altere campos de metadados para evitar expor informações privadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Deletar Campos de Metadados Ocultos"
      content: |
        Este exemplo mostra como remover ou editar metadados como Autor e Título em documentos JPEG.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo JPEG com o redator
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // Direcione o metadado Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Direcione o metadado Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Execute a redação
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
    title: "Remover Metadados de JPEG Usando Java"
    exclude: "JPEG"
    description: "Use Java para deletar dados ocultos de arquivos JPEG e proteger informações sensíveis."
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