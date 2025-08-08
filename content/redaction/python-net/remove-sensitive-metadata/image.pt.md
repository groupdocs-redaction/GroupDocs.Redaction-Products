
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpar Metadados Ocultos em IMAGE Usando Python"
head_description: "GroupDocs.Redaction for Python via .NET ajuda você a remover metadados privados de documentos IMAGE. Mantenha os arquivos limpos e seguros."

############################# Header ############################
title: "Remover Metadados em Arquivos IMAGE com Python" 
description: "Use as ferramentas Python para proteger documentos IMAGE. Exclua informações ocultas antes de compartilhar ou publicar."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction oferece aos desenvolvedores Python as ferramentas para remover dados sensíveis de arquivos IMAGE, incluindo texto, imagens e metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Como Remover Metadados de Arquivos Image"
    content: |
      GroupDocs.Redaction ajuda os desenvolvedores Python via .NET a limpar os metadados do documento em apenas alguns passos.
      
      1. Configure um Redactor e carregue seu arquivo Image.
      2. Escolha os metadados que deseja apagar.
      3. Execute o processo de redacção.
      4. Salve seu arquivo atualizado.
   
    code:
      platform: "python-net"
      copy_title: "Copiar"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "Redações de exemplo"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "clique para copiar"
        copy_done: "copiado"
      links:
        #  loop
        - title: "Mais exemplos"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "Documentação"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr

        # Limpe campos ocultos em arquivos IMAGE

        # Selecione campos de metadados para redacção
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Use Redactor para abrir o arquivo
        with gr.Redactor("input.png") as redactor:

            # Processar e exportar
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Limpar Dados Sensíveis de Qualquer Arquivo"
  description: "GroupDocs.Redaction for Python via .NET remove texto, imagens e metadados que não devem ser compartilhados. Funciona com muitos formatos."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Principais Ferramentas de Redacção"
  features:
    # feature loop
    - title: "Remover Texto"
      content: "Exclua palavras ou padrões de seus arquivos para proteger informações sensíveis."

    # feature loop
    - title: "Mascarar Imagens"
      content: "Cubra partes de imagens que precisam ser mantidas privadas."

    # feature loop
    - title: "Excluir Metadados"
      content: "Apague dados ocultos das propriedades do arquivo, como Autor ou Título."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Campos de Metadados"
      content: |
        Este exemplo demonstra como excluir metadados como Autor e Título em arquivos IMAGE.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Escolha o campo do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Escolha o campo do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Abra o arquivo no redactor
          with gr.Redactor("source.png") as redactor:

              # Execute a redacção
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o documento final
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
          ```
        platform: "python-net"
        copy_title: "Copiar"
        install:
          command: "pip install groupdocs-redaction-net"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "Documentação"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "Pronto para começar?"
  description: "Experimente os recursos do GroupDocs.Redaction gratuitamente ou solicite uma licença"
  items:
    #  loop
    - title: "Download do PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "Licenciamento"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "Use Python para Remover Metadados de IMAGE"
    exclude: "IMAGE"
    description: "Limpe rapidamente os metadados em arquivos IMAGE usando Python. Mantenha seus documentos seguros e privados."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "Imagem JPEG"


---