
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: pt
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Limpar Metadados em PDF Usando Java"
head_description: "Use GroupDocs.Redaction for Java para deletar ou atualizar metadados ocultos em arquivos PDF. Remova informações privadas antes de compartilhar seus documentos."

############################# Header ############################
title: "Remover Metadados de Arquivos PDF com Java" 
description: "Mantenha as informações pessoais e comerciais seguras em seus arquivos PDF usando Java. Ferramentas simples que ajudam a proteger seus dados."
subtitle: "Principais Recursos do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre o GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction fornece aos desenvolvedores Java ferramentas para ocultar texto, conteúdo de imagem e metadados em documentos PDF.

############################# Steps ############################
steps:
    enable: true
    title: "Limpar Metadados em Documentos Pdf"
    content: |
      Comece a usar GroupDocs.Redaction para proteger metadados em seus projetos Java.
      
      1. Configure um Redactor e abra seu arquivo Pdf.
      2. Escolha deletar todos os campos de metadados.
      3. Execute a redação para limpar dados ocultos.
      4. Salve o arquivo com metadados removidos.
   
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
        // Limpar metadados em arquivos PDF

        // Use Redactor para abrir o arquivo
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // Defina as configurações de redação de metadados
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // Aplique e salve suas alterações
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Remover Informações Sensíveis de Arquivos"
  description: "GroupDocs.Redaction for Java permite que você limpe conteúdos privados em diferentes formatos de documento. Mantenha seus arquivos seguros e fáceis de compartilhar."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Recursos Principais de Redação"
  features:
    # feature loop
    - title: "Redação de Texto"
      content: "Encontre e delete palavras pessoais ou sensíveis em seus documentos."

    # feature loop
    - title: "Cobrir Imagens"
      content: "Coloque sobreposições em imagens para ocultar visuais privados."

    # feature loop
    - title: "Remoção de Metadados"
      content: "Apague metadados ocultos que poderiam vazar informações privadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Limpar Metadados Ocultos"
      content: |
        Este exemplo mostra como alterar ou deletar metadados em arquivos PDF.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo PDF usando redator
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // Direcione o campo de metadados Autor
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // Direcione o campo de metadados Título
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // Execute a limpeza de metadados
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
    title: "Segurança de Arquivos PDF com Redação de Metadados Java"
    exclude: "PDF"
    description: "Apague campos ocultos em seus arquivos PDF usando Java. Proteja a privacidade com uma ferramenta simples de limpeza de metadados."
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