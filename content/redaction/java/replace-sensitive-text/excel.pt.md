
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Remova Texto Privado de EXCEL Usando Java"
head_description: "Mantenha suas planilhas EXCEL seguras removendo conteúdo sensível com GroupDocs.Redaction for Java e Java. Redação rápida e simples."

############################# Header ############################
title: "Editar ou Remover Texto em Arquivos EXCEL com Java" 
description: "Limpe seus arquivos EXCEL com GroupDocs.Redaction for Java e Java. Ótimo para proteger dados comerciais ou pessoais."
subtitle: "O que Você Pode Fazer com GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java oferece aos desenvolvedores Java tudo o que precisam para limpar arquivos EXCEL. Edite ou oculte texto, imagens, metadados e notas com precisão.

############################# Steps ############################
steps:
    enable: true
    title: "Como Redigir Conteúdo em Arquivos Excel"
    content: |
      Use GroupDocs.Redaction for Java em seus projetos Java para remover ou cobrir texto que você não deseja compartilhar.
      
      1. Crie um Redactor e carregue o arquivo Excel.
      2. Escolha suas configurações de redação.
      3. Defina o que buscar e o que substituir.
      4. Execute o processo de redação e salve seu arquivo.
   
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
        // Como redigir texto em um arquivo EXCEL

        // Carregue o arquivo com Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // Defina suas regras de redação
            // Digite o texto alvo e a substituição
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // Aplique e salve o arquivo limpo
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Mais Ferramentas de Redação"
  description: "GroupDocs.Redaction for Java ajuda a limpar conteúdo privado em muitos tipos de documentos. Ótimo para privacidade antes de compartilhar."
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "Recursos de redação de texto, imagem e metadados"
  features:
    # feature loop
    - title: "Substituir texto privado"
      content: "Encontre e altere palavras ou números correspondentes em todo o arquivo. Use padrões de pesquisa ou correspondências exatas."

    # feature loop
    - title: "Ocultar partes de imagens"
      content: "Adicione caixas de sobreposição para ocultar imagens ou células. Escolha cores, tamanhos e posições."

    # feature loop
    - title: "Remover informações de fundo"
      content: "Limpe dados ocultos como autoria, carimbos de data ou comentários do documento."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Redigir Padrões com Regex"
      content: |
        Use expressões regulares para encontrar e ocultar padrões como endereços de email ou números de conta.
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  Abra o arquivo que você deseja limpar
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // Crie um padrão de regex EMAIL e defina o texto de substituição
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // Execute o processo de redação
              redactor.apply(redaction);

              // Salve a versão atualizada
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Redigir Conteúdo em EXCEL Usando Java"
    exclude: "EXCEL"
    description: "Limpe dados privados de arquivos EXCEL usando Java. Uma maneira inteligente de manter suas planilhas seguras."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 6
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 7
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "Apresentação PowerPoint Open XML"


---