
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดข้อความที่ละเอียดอ่อนในไฟล์ PDF ด้วยการทับซ้อนของ Python"
head_description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนข้อความที่ละเอียดอ่อนในไฟล์ PDF โดยการเพิ่มการทับซ้อนสี ปกป้องข้อมูลส่วนตัวโดยไม่เปลี่ยนแปลงรูปลักษณ์ของไฟล์"

############################# Header ############################
title: "ปกปิดข้อความที่ละเอียดอ่อนใน PDF โดยใช้ Python" 
description: "รักษาความปลอดภัยไฟล์ PDF ของคุณด้วย Python ใช้การทับซ้อนเพื่อบล็อกข้อมูลทางกฎหมาย ข้อมูลส่วนบุคคล หรือข้อมูลที่เป็นความลับ"
subtitle: "จุดเด่นของ GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET มอบวิธีที่สะดวกสำหรับนักพัฒนา Python ในการซ่อนหรือลบเนื้อหาในไฟล์ PDF ปกปิดข้อความที่ละเอียดอ่อน ภาพ หรือเมทาดาทาในหลายรูปแบบ

############################# Steps ############################
steps:
    enable: true
    title: "เก็บข้อมูลที่ละเอียดอ่อนให้ปลอดภัยในไฟล์ Pdf"
    content: |
      ใช้ GroupDocs.Redaction for Python via .NET กับแอป Python via .NET ของคุณเพื่อซ่อนเนื้อหาส่วนตัวอย่างรวดเร็ว
      
      1. ตั้งค่าการทับซ้อน Redactor และโหลดไฟล์ Pdf ของคุณ
      2. เลือกวิธีการทำงานของการแก้ไข
      3. เลือกข้อความที่จะซ่อนและเลือกสีสำหรับการทับซ้อน
      4. ใช้การแก้ไขและบันทึกไฟล์ของคุณ
   
    code:
      platform: "python-net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # ซ่อนข้อความที่ละเอียดอ่อนใน PDF โดยใช้การทับซ้อนสี

        # ตั้งค่าตัวเลือกการแก้ไข
        # กำหนดเนื้อหาที่จะซ่อนและเลือกสี
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # โหลดไฟล์โดยการส่งพาธไปยัง Redactor
        with gr.Redactor("input.pdf") as redactor:

            # แก้ไขและบันทึกไฟล์ PDF ของคุณ
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนหรือเอาข้อมูลออกจากเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนข้อความ ภาพ และข้อมูลอื่น ๆ ในหลายรูปแบบ ปกป้องสิ่งที่สำคัญโดยยังคงให้เอกสารของคุณอ่านและแบ่งปันได้ง่าย"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์การแก้ไขที่ยืดหยุ่น"
  features:
    # feature loop
    - title: "แก้ไขข้อความใด ๆ"
      content: "ค้นหาและแทนที่ข้อความที่ละเอียดอ่อนเพื่อรักษาความปลอดภัยให้กับเอกสารของคุณ"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "ใช้การทับซ้อนเพื่อบล็อกภาพทั้งหมดหรือพื้นที่เฉพาะ"

    # feature loop
    - title: "ทำความสะอาดเมตาดาทา"
      content: "ลบข้อมูลที่ซ่อนเพื่อหยุดการรั่วไหลของข้อมูลโดยไม่ตั้งใจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regex เพื่อค้นหาและซ่อนข้อความ"
      content: |
        ตัวอย่างนี้แสดงวิธีการค้นหาและซ่อนข้อความโดยใช้แพทเทิร์น regex
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าแพทเทิร์นข้อความและสีของการทับซ้อน
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # โหลดเอกสารของคุณ
          with gr.Redactor("source.pdf") as redactor:

              # แก้ไขเนื้อหาที่เลือก
              result = redactor.apply(redaction)

              # บันทึกไฟล์ที่ปรับปรุงแล้ว
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "คัดลอก"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด PyPi"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ป้องกันไฟล์ PDF ด้วยเครื่องมือ Python"
    exclude: "PDF"
    description: "ใช้ Python เพื่อซ่อนหรือเอาเนื้อหาในไฟล์ PDF ออก เป็นวิธีที่เชื่อถือได้ในการรักษาความปลอดภัยข้อมูลส่วนตัว"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---