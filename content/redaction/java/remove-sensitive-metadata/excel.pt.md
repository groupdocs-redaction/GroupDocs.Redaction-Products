
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remover Metadados de EXCEL com Java"
head_description: "Proteja seus documentos EXCEL limpando metadados ocultos usando GroupDocs.Redaction for Java. Mantenha detalhes privados longe da vista."

############################# Header ############################
title: "Limpar Metadados em Arquivos EXCEL Usando Java" 
description: "Com Java, remova dados sensíveis de arquivos EXCEL. Uma maneira inteligente de manter seus documentos seguros."
subtitle: "Por que Escolher GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre o GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores Java as ferramentas para controlar o conteúdo em arquivos EXCEL. Remova texto, metadados e imagens conforme necessário.

############################# Steps ############################
steps:
    enable: true
    title: "Como Remover Metadados de Arquivos Excel"
    content: |
      Em Java, GroupDocs.Redaction facilita a limpeza de metadados de documentos.
      
      1. Crie um Redactor e carregue seu arquivo Excel.
      2. Defina regras para remover campos de dados ocultos.
      3. Execute o processo de limpeza.
      4. Salve o documento limpo.
   
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
        // Delete metadados ocultos de EXCEL

        // Inicie o redator e abra o arquivo
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Defina opções para remoção de metadados
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Limpe e salve o documento
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Remova Conteúdos Sensíveis de Arquivos"
  description: "Com GroupDocs.Redaction for Java, você pode excluir metadados, redigir texto e ocultar áreas de imagem em muitos tipos de arquivo. Ótimo para uso legal, pessoal ou corporativo."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Ferramentas para Limpeza de Metadados e Conteúdo"
  features:
    # feature loop
    - title: "Encontrar e Deletar Texto"
      content: "Pesquise por texto sensível e remova-o para proteger informações."

    # feature loop
    - title: "Cobrir Conteúdo de Imagem"
      content: "Oculte seções confidenciais de imagens usando sobreposições."

    # feature loop
    - title: "Deletar Metadados"
      content: "Remova detalhes incorporados que possam conter dados privados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Foque em Campos de Metadados Específicos"
      content: |
        Este exemplo orienta sobre como remover campos como Autor e Título de um arquivo EXCEL.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o arquivo no redator
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Selecione o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Selecione o campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Aplique a redação
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
    title: "Limpeza de Metadados em EXCEL Usando Java"
    exclude: "EXCEL"
    description: "Use as ferramentas Java para remover dados ocultos de arquivos EXCEL. Compartilhe documentos limpos e seguros."
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