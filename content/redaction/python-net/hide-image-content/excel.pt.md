
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Cobrir Imagens em EXCEL Usando Sobreposições em Python"
head_description: "Proteja áreas de imagem sensíveis em arquivos EXCEL com GroupDocs.Redaction for Python via .NET. Adicione sobreposições para ocultar visuais privados sem alterar a aparência do documento."

############################# Header ############################
title: "Proteger Imagens Sensíveis em Arquivos EXCEL com Sobreposições Usando Python" 
description: "Garanta a segurança de suas imagens pessoais e empresariais em arquivos EXCEL com Python. Obtenha proteção confiável com nossas ferramentas de fácil uso."
subtitle: "Recursos Principais do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "Sobre GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET fornece aos desenvolvedores Python ferramentas simples para ocultar ou remover conteúdo em arquivos EXCEL. Cubra imagens, texto e metadados para proteger seus documentos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados em Arquivos Excel"
    content: |
      GroupDocs.Redaction for Python via .NET ajuda os aplicativos Python via .NET a ocultar informações privadas em documentos de forma rápida.
      
      1. Crie uma instância de Redactor e carregue o arquivo Excel.
      2. Defina as opções de redigação conforme necessário.
      3. Selecione a área da imagem e escolha a cor da sobreposição.
      4. Aplique a redigação e salve o arquivo editado.
   
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
        import groupdocs.pydrawing as grd

        # Cobrir áreas de imagem em EXCEL

        # Ajustar o tamanho e a cor da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Escolher área a cobrir
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Abrir documento com Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplicar sobreposição e salvar o arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Ocultar ou Remover Conteúdo Sensível"
  description: "GroupDocs.Redaction for Python via .NET permite que você proteja documentos ocultando ou excluindo dados sensíveis em vários formatos. Mantenha arquivos seguros e claros para compartilhamento."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas de Redigação Ricas em Recursos"
  features:
    # feature loop
    - title: "Editar Texto com Segurança"
      content: "Encontre texto sensível em documentos e substitua para proteger a privacidade."

    # feature loop
    - title: "Ocultar Partes de Imagem"
      content: "Cubra áreas selecionadas de imagem ou visuais inteiros com sobreposições."

    # feature loop
    - title: "Excluir Metadados Ocultos"
      content: "Apague campos de metadados invisíveis para evitar vazamentos de dados."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Use Sobreposições para Ocultar Dados de Imagem"
      content: |
        Este exemplo mostra como aplicar sobreposições para cobrir imagens sensíveis em documentos.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Definir cor, tamanho e posição da sobreposição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Escolher uma seção específica da imagem na página um
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Carregar documento para edição
          with gr.Redactor("source.xslx") as redactor:

              # Aplicar sobreposição para ocultá-la
              result = redactor.apply(redaction)

              # Salvar o arquivo atualizado
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Ocultar Conteúdo em EXCEL com Python"
    exclude: "EXCEL"
    description: "Com Python, você pode ocultar ou excluir informações sensíveis em arquivos EXCEL. Uma maneira eficaz de garantir a segurança do documento."
    items: 
        # format loop 1
        - name: "Redigir PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Formato de Documento Portátil da Adobe"

        # format loop 2
        - name: "Redigir Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "Documentos do MS Word e Open Office"
          
        # format loop 3
        - name: "Redigir Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "Planilhas do MS Excel e Open Office"

        # format loop 4
        - name: "Redigir PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "Apresentações do MS PowerPoint e Open Office"

        # format loop 5
        - name: "Redigir Imagem"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "Formatos de imagem populares"

        # format loop 6
        - name: "Redigir Foto"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "Formatos de foto"

        # format loop 7
        - name: "Redigir DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Documento Microsoft Word Open XML"
          
        # format loop 8
        - name: "Redigir XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Planilha do Microsoft Excel Open XML"
          
        # format loop 9
        - name: "Redigir PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "Apresentação PowerPoint Open XML"

        # format loop 10
        - name: "Redigir JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "Imagem JPEG"


---