
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: pt
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Limpar Metadados de Arquivos WORD com Python"
head_description: "Use GroupDocs.Redaction for Python via .NET para remover metadados ocultos em arquivos WORD. Proteja documentos de revelar informações pessoais ou internas."

############################# Header ############################
title: "Remover Metadados em WORD Usando Ferramentas Python" 
description: "Mantenha seus arquivos seguros excluindo metadados indesejados com Python. Perfeito para empresas e usuários individuais."
subtitle: "Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Conheça GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction é feito para desenvolvedores Python que desejam manter arquivos WORD privados. Permite remover texto, ocultar partes de imagens e limpar metadados.

############################# Steps ############################
steps:
    enable: true
    title: "Remover Metadados Ocultos em Word"
    content: |
      Com GroupDocs.Redaction, seu aplicativo Python via .NET pode rapidamente limpar os metadados do documento.
      
      1. Crie um objeto Redactor e abra o arquivo Word.
      2. Defina regras de redacção para os campos de metadados.
      3. Execute a redacção para remover os dados selecionados.
      4. Salve a versão limpa do arquivo.
   
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

        # Limpe os metadados em WORD

        # Selecione os metadados a serem removidos
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Abra o documento usando Redactor
        with gr.Redactor("input.docx") as redactor:

            # Aplique redacção e salve o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Proteja Mais do que Apenas Metadados"
  description: "Redacione texto, cubra imagens e remova metadados usando GroupDocs.Redaction for Python via .NET. Mantenha seus documentos limpos e privados."
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "Opções de Proteção de Documentos"
  features:
    # feature loop
    - title: "Encontrar e Substituir Texto"
      content: "Exclua ou substitua palavras e frases que contenham dados privados ou sensíveis."

    # feature loop
    - title: "Adicionar Coberturas de Imagem"
      content: "Coloque sobreposições para ocultar partes de imagens em seus documentos."

    # feature loop
    - title: "Limpar Metadados"
      content: "Limpe nomes de autores, títulos, comentários e outras informações ocultas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Remover Metadados de Arquivos WORD"
      content: |
        Este exemplo mostra como remover campos como Autor e Título de um documento WORD.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Direcione o metadado do Autor
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # Direcione o metadado do Título
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # Importe seu documento
          with gr.Redactor("source.docx") as redactor:

              # Execute a ferramenta de redacção
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # Salve o arquivo atualizado
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
    title: "Remover Metadados em WORD com Python"
    exclude: "WORD"
    description: "Use Python para limpar metadados ocultos de WORD. Mantenha seus arquivos seguros antes de compartilhar ou arquivar."
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