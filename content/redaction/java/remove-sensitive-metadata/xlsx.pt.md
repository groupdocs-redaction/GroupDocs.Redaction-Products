
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remover Metadados de XLSX Usando Java"
head_description: "GroupDocs.Redaction for Java ajuda a limpar metadados ocultos de arquivos XLSX. Mantenha seus documentos privados e livres de detalhes indesejados."

############################# Header ############################
title: "Limpar Metadados de Arquivos XLSX em Java" 
description: "Use Java para eliminar detalhes pessoais ou ocultos em seus documentos XLSX. Ideal para uso profissional e pessoal."
subtitle: "Veja o que você pode fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre o GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos desenvolvedores Java as ferramentas para controlar o conteúdo em arquivos XLSX. Remova texto, metadados e imagens conforme necessário.

############################# Steps ############################
steps:
    enable: true
    title: "Deletar Metadados de Arquivos Xlsx"
    content: |
      GroupDocs.Redaction ajuda seu projeto Java a limpar rapidamente metadados sensíveis.
      
      1. Inicie um Redactor e abra o arquivo Xlsx.
      2. Escolha quais campos de metadados remover.
      3. Execute a redação para excluir esses campos do arquivo.
      4. Salve a versão limpa.
   
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
        // Apague metadados ocultos em arquivos XLSX

        // Abra o arquivo usando Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Escolha os campos de metadados para remover
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplique a redação e salve seu arquivo
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Segurança de Seus Arquivos ao Ocultar Informações Sensíveis"
  description: "Com GroupDocs.Redaction for Java, você pode limpar dados pessoais de vários tipos de documentos. Uma maneira simples de manter seus arquivos seguros."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos para Limpeza de Metadados e Conteúdo"
  features:
    # feature loop
    - title: "Remover Texto"
      content: "Pesquise e delete palavras ou frases que contêm dados pessoais."

    # feature loop
    - title: "Cobrir Imagens"
      content: "Oculte seções de imagens que contêm partes privadas ou sensíveis."

    # feature loop
    - title: "Apagar Metadados"
      content: "Remova informações de fundo que possam revelar detalhes pessoais ou de negócios."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Exemplo de Remoção de Metadados"
      content: |
        Este exemplo mostra como deletar metadados como Autor ou Título de um arquivo XLSX.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra seu documento
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Selecione o campo Autor para redação
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Selecione o campo Título para redação
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Execute a ferramenta de redação
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // Salve o resultado
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
    title: "Limpeza de Metadados em XLSX Usando Java"
    exclude: "XLSX"
    description: "Use as ferramentas Java para remover dados ocultos de arquivos XLSX. Compartilhe documentos limpos e seguros."
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