
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remover Metadados de Arquivos PPTX Usando Java"
head_description: "Use GroupDocs.Redaction for Java para deletar ou editar metadados ocultos em seus arquivos PPTX. Proteja seu conteúdo e mantenha seus documentos limpos."

############################# Header ############################
title: "Limpar Metadados em PPTX com Ferramentas Java" 
description: "Remova detalhes pessoais armazenados em metadados usando Java. Funciona bem para documentos pessoais e de negócios."
subtitle: "Recursos Principais do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores Java ferramentas para remover conteúdo privado em arquivos PPTX. Delete metadados, oculte imagens e limpe texto de forma eficiente.

############################# Steps ############################
steps:
    enable: true
    title: "Remover Metadados em Arquivos Pptx"
    content: |
      Com GroupDocs.Redaction, seus projetos Java podem limpar metadados ocultos em apenas alguns passos.
      
      1. Configure um Redactor e carregue seu arquivo Pptx.
      2. Escolha quais campos de metadados limpar.
      3. Execute o processo de redação.
      4. Salve o arquivo com os metadados removidos.
   
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
        // Remova metadados de PPTX

        // Use Redactor para abrir o arquivo
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Defina quais metadados remover
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplique as alterações e salve
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas de Redação que Você Pode Usar"
  description: "GroupDocs.Redaction for Java ajuda você a limpar informações sensíveis de todos os principais tipos de arquivos. Mantenha os documentos limpos e prontos para compartilhar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos de Privacidade Integrados"
  features:
    # feature loop
    - title: "Remover Texto Sensível"
      content: "Encontre e delete nomes, e-mails e outras informações pessoais de seus arquivos."

    # feature loop
    - title: "Ocultar Partes de Imagens"
      content: "Adicione sobreposições para cobrir áreas em imagens que você deseja manter privadas."

    # feature loop
    - title: "Limpar Metadados"
      content: "Apague dados de fundo como autor ou título antes de compartilhar seus arquivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemplo de Remoção de Campos de Metadados"
      content: |
        Este exemplo mostra como você pode deletar metadados como autor e título de um arquivo PPTX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra seu arquivo PPTX
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Dirija-se ao metadado Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Dirija-se ao metadado Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Aplique regras de redação
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salve o arquivo redigido
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
    title: "Remover Metadados de PPTX com Java"
    exclude: "PPTX"
    description: "Java facilita a exclusão de dados ocultos em arquivos PPTX. Ótimo para manter os documentos seguros antes do compartilhamento."
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