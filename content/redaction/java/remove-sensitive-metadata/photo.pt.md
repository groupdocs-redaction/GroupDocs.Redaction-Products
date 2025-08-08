
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Deletar Metadados em PHOTO com Java"
head_description: "GroupDocs.Redaction for Java ajuda você a remover dados ocultos de arquivos PHOTO que poderiam expor detalhes pessoais ou comerciais."

############################# Header ############################
title: "Remover Metadados de PHOTO com Java" 
description: "Mantenha seus arquivos PHOTO seguros ao remover metadados ocultos usando ferramentas Java."
subtitle: "Destaques do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores Java ferramentas para ocultar conteúdo sensível em arquivos PHOTO, incluindo texto, seções de imagem e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Como Remover Metadados de Arquivos Photo"
    content: |
      Use GroupDocs.Redaction em seu aplicativo Java para apagar metadados de documentos.
      
      1. Inicie um Redactor e abra o arquivo Photo.
      2. Defina as regras para deletar campos ocultos.
      3. Aplique a redação para limpar o arquivo.
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
        // Limpar metadados em arquivos PHOTO

        // Carregue o arquivo com Redactor
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // Escolha campos de metadados para redigir
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplique e salve o arquivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Remover Informações Privadas de Documentos"
  description: "GroupDocs.Redaction for Java ajuda a limpar arquivos excluindo texto sensível, conteúdo de imagens e metadados. Ótimo para privacidade e segurança."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Úteis de Redação"
  features:
    # feature loop
    - title: "Limpeza de Texto"
      content: "Encontre e delete palavras ou números que não deveriam ser compartilhados."

    # feature loop
    - title: "Redação de Imagem"
      content: "Adicione coberturas sobre partes de imagens com conteúdo sensível."

    # feature loop
    - title: "Deletar Metadados"
      content: "Limpe detalhes do arquivo que possam carregar informações privadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Deletar Campos de Metadados Ocultos"
      content: |
        Este exemplo mostra como remover campos como Autor e Título de um documento PHOTO.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo PHOTO no redator
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // Redija o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Redija o campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Execute o processo
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
    title: "Use Java para Remover Metadados de PHOTO"
    exclude: "PHOTO"
    description: "Proteja seus documentos PHOTO ao deletar metadados usando as ferramentas Java."
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