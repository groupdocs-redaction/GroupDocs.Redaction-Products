
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: pt
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Ocultar Áreas de Imagem em Arquivos XLSX com Sobreposições Usando Python"
head_description: "Proteja regiões de imagem sensíveis em arquivos XLSX aplicando sobreposições com GroupDocs.Redaction for Python via .NET. Mantenha a estrutura do seu documento inalterada enquanto assegura visuais privados."

############################# Header ############################
title: "Ocultar Imagens Sensíveis em Documentos XLSX Usando Python" 
description: "Proteja facilmente imagens confidenciais em arquivos XLSX com Python. Nossas ferramentas garantem uma redigação de imagem rápida e eficaz."
subtitle: "Principais Recursos do GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "O que é GroupDocs.Redaction for Python via .NET?"
    link: "/redaction/python-net/"
    link_title: "Saiba mais"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET oferece aos desenvolvedores Python ferramentas para ocultar ou apagar dados sensíveis de documentos XLSX. Redija texto, imagens e metadados em diferentes formatos.

############################# Steps ############################
steps:
    enable: true
    title: "Proteger Dados Sensíveis em Arquivos Xlsx"
    content: |
      GroupDocs.Redaction for Python via .NET torna simples para seus aplicativos Python via .NET assegurar documentos.
      
      1. Inicialize Redactor e carregue o documento Xlsx.
      2. Configure os parâmetros de redigação para se adequar à sua tarefa.
      3. Defina qual parte da imagem cobrir e escolha uma cor.
      4. Aplique a redigação e salve o arquivo final.
   
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

        # Ocultar seções confidenciais de imagem em XLSX

        # Escolher tamanho e cor da sobreposição
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # Marcar a área de redigação
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Carregar documento com Redactor
        with gr.Redactor("input.xslx") as redactor:

            # Aplicar mudanças e salvar arquivo
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "Redigir Conteúdo em Documentos"
  description: "Com GroupDocs.Redaction for Python via .NET, você pode ocultar ou remover dados sensíveis em muitos formatos de documento. Mantenha documentos seguros e com aparência profissional."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "Ferramentas Eficientes de Redigação"
  features:
    # feature loop
    - title: "Pesquisar e Substituir Texto"
      content: "Localize texto privado e substitua ou oculte."

    # feature loop
    - title: "Cobrir Imagens com Sobreposições"
      content: "Oculte imagens completas ou seções específicas para proteger visuais sensíveis."

    # feature loop
    - title: "Remover Metadados Ocultos"
      content: "Limpe metadados de arquivos para evitar o compartilhamento de informações privadas."
      
  code_samples_ext:
    # code sample ext loop
    - title: "Mascarar Conteúdo de Imagem com Sobreposições"
      content: |
        Este guia mostra como ocultar áreas sensíveis de imagem em documentos usando sobreposições.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # Defina o tamanho, posição e cor da sobreposição
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # Selecione a seção específica da imagem
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # Abra o arquivo para redigação
          with gr.Redactor("source.xslx") as redactor:

              # Aplicar sobreposição para ocultar a área
              result = redactor.apply(redaction)

              # Salvar o documento modificado
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
    title: "Ocultar Conteúdo em Arquivos XLSX com Python"
    exclude: "XLSX"
    description: "Use Python para redigir ou remover dados sensíveis de arquivos XLSX. Ideal para empresas e indivíduos que buscam proteger seus documentos."
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