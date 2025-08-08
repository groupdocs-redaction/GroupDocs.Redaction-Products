
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remover Metadados de POWERPOINT com Java"
head_description: "Use GroupDocs.Redaction for Java para limpar metadados ocultos de arquivos POWERPOINT e manter seus documentos privados e seguros."

############################# Header ############################
title: "Deletar Metadados em POWERPOINT usando Java" 
description: "Proteja seus arquivos com ferramentas fáceis de usar feitas para Java. Remova metadados em apenas alguns passos."
subtitle: "O Que Você Ganha com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é uma ferramenta de redação para desenvolvedores Java. Ajuda a limpar texto, imagens e metadados em arquivos POWERPOINT.

############################# Steps ############################
steps:
    enable: true
    title: "Como Limpar Metadados de Arquivos Powerpoint"
    content: |
      Com GroupDocs.Redaction, seus aplicativos Java podem rapidamente limpar metadados de documentos.
      
      1. Crie um objeto Redactor e carregue o documento.
      2. Selecione os campos de metadados que deseja excluir.
      3. Aplique suas configurações de redação.
      4. Exporte seu documento sem os dados ocultos.
   
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
        // Deletar metadados de arquivos POWERPOINT

        // Abra seu arquivo com o redator
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Defina o que metadados remover
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Limpe e salve o arquivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mantenha Seus Arquivos Seguros com Redação"
  description: "GroupDocs.Redaction for Java ajuda a limpar conteúdos privados ou ocultos para que os documentos possam ser compartilhados com segurança. Suporta muitos tipos de arquivos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "O Que Você Pode Redigir"
  features:
    # feature loop
    - title: "Remover Texto Sensível"
      content: "Encontre e apague palavras pessoais ou confidenciais de seus arquivos."

    # feature loop
    - title: "Ocultar Áreas de Imagem"
      content: "Cubra partes de imagens que não devem ser vistas."

    # feature loop
    - title: "Limpar Metadados"
      content: "Delete campos que podem revelar detalhes ocultos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Campos de Metadados Ocultos"
      content: |
        Este exemplo mostra como limpar informações incorporadas, como Autor e Título de um documento POWERPOINT.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo com o redator
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Delete o campo Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Delete o campo Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Aplique a redação
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salve o documento atualizado
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
    title: "Limpar Metadados de POWERPOINT em Java"
    exclude: "POWERPOINT"
    description: "Use Java para remover dados privados de arquivos POWERPOINT. Perfeito para limpeza e compartilhamento de documentos sensíveis."
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