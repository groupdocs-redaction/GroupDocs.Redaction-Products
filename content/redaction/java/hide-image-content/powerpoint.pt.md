
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: pt
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Cobrir Imagens Sensíveis em POWERPOINT com Sobreposições Usando Java"
head_description: "Oculte conteúdos de imagem privada em arquivos POWERPOINT com GroupDocs.Redaction for Java. Adicione sobreposições para manter os documentos seguros sem afetar o layout."

############################# Header ############################
title: "Proteger Imagens Privadas em Documentos POWERPOINT com Sobreposições Usando Java" 
description: "Mantenha visuais pessoais e empresariais seguros em arquivos POWERPOINT com Java. Ferramentas fáceis de usar para proteção forte da privacidade."
subtitle: "Principais Características do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java dá aos desenvolvedores Java a capacidade de ocultar ou apagar conteúdo em arquivos POWERPOINT. Proteja seus documentos mascarando texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Ocultar Dados Sensíveis em Documentos Powerpoint"
    content: |
      GroupDocs.Redaction for Java ajuda suas aplicações Java a ocultar conteúdo privado em documentos rapidamente.
      
      1. Crie um objeto Redactor e carregue o arquivo Powerpoint.
      2. Defina as preferências de redação para a tarefa.
      3. Escolha a área da imagem e selecione a cor da sobreposição.
      4. Aplique a redação e salve o arquivo.
   
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
        // Ocultar dados de imagem em arquivos POWERPOINT

        // Abra o arquivo com Redactor
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // Defina a cor e o tamanho da sobreposição
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // Selecione a área a ser mascarada
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // Aplique a sobreposição e salve as alterações
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar Dados Sensíveis em Documentos"
  description: "GroupDocs.Redaction for Java ajuda você a cobrir ou excluir conteúdo privado em diferentes formatos de documentos. Mantenha os arquivos seguros para compartilhamento e armazenamento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas de Redação para Cada Necessidade"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Encontre palavras sensíveis e substitua para garantir a privacidade dos dados."

    # feature loop
    - title: "Cobrir Áreas de Imagem"
      content: "Aplique sobreposições a imagens ou partes de imagens para mantê-las privadas."

    # feature loop
    - title: "Remover Metadados Ocultos"
      content: "Apague metadados invisíveis para evitar vazamentos de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Ocultar Conteúdo de Imagem com Sobreposições"
      content: |
        Este exemplo mostra como colocar sobreposições em áreas sensíveis de imagem em documentos.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Carregue o arquivo para redação
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // Defina o tamanho, cor e posição da sobreposição
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // Marque a seção de imagem na primeira página
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // Aplique sobreposição para cobrir dados
              redactor.apply(redaction);

              // Salve o documento atualizado
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Proteger Arquivos POWERPOINT com Redação Java"
    exclude: "POWERPOINT"
    description: "Com Java, você pode cobrir ou remover dados sensíveis em arquivos POWERPOINT. Uma solução confiável para segurança de documentos."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---