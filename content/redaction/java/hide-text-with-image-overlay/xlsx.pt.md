
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
head_title: "Bloquear Texto em XLSX com Sobreposições Java"
head_description: "GroupDocs.Redaction for Java permite que você cubra informações sensíveis em arquivos XLSX com blocos coloridos. Oculte dados enquanto mantém a formatação inalterada."

############################# Header ############################
title: "Ocultar Dados em XLSX com Sobreposições Usando Java" 
description: "Use Java e GroupDocs.Redaction for Java para mascarar conteúdo privado em arquivos XLSX sem afetar o formato."
subtitle: "Principais Recursos do GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Por Que GroupDocs.Redaction for Java Funciona"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java permite que os desenvolvedores de Java protejam arquivos XLSX. Oculte texto, figuras ou metadados rapidamente.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Informações em Documentos Xlsx"
    content: |
      Mantenha seus documentos seguros usando um código simples com GroupDocs.Redaction for Java em Java.
      
      1. Crie um Redactor com o caminho do arquivo.
      2. Configure sua lógica de redacção.
      3. Escolha a palavra-chave e a cor da sobreposição.
      4. Redija e salve o arquivo.
   
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
        // Oculte informações em XLSX usando blocos

        // Carregue o arquivo com Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Configure as preferências de redacção
            // Adicione texto e cor para blocar
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Salve o documento atualizado
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Recursos de Privacidade Integrados"
  description: "Use GroupDocs.Redaction for Java para bloquear ou deletar conteúdo em seus arquivos enquanto mantém a estrutura inalterada."
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "Ferramentas de privacidade fáceis"
  features:
    # feature loop
    - title: "Alterar ou ocultar texto"
      content: "Edite ou redija palavras específicas facilmente."

    # feature loop
    - title: "Máscara partes de imagens"
      content: "Adicione sobreposições para ocultar fotos ou detalhes gráficos."

    # feature loop
    - title: "Remover informações ocultas"
      content: "Apague metadados como informações do usuário ou histórico de arquivos."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Regex para Redigir Conteúdo"
      content: |
        Encontre e oculte automaticamente texto com correspondência de padrão
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra a planilha
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Defina o padrão e a cor da sobreposição
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // Aplique as regras de redacção
              redactor.apply(redaction);

              // Exporte seu resultado
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "Redija Dados XLSX Usando Java"
    exclude: "XLSX"
    description: "Use sobreposições ou delete conteúdo em arquivos XLSX para manter dados sensíveis privados com Java."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "Apresentação PowerPoint Open XML"


---