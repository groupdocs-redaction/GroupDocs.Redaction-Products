
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ซ่อนเนื้อหาใน EXCEL โดยใช้การทับซ้อนของ Python"
head_description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถปกปิดข้อความในไฟล์ EXCEL โดยการใช้รูประบายสี การปกปิดข้อมูลส่วนตัวในแบบที่เรียบง่าย"

############################# Header ############################
title: "การทับซ้อนในการซ่อนข้อความสำหรับ EXCEL ใน Python" 
description: "เขียนโค้ด Python เพื่อซ่อนข้อความและรักษาข้อมูลในไฟล์ EXCEL ของคุณให้ปลอดภัยและสะอาด"
subtitle: "สิ่งที่คุณจะได้รับจาก GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "ทำไมต้องใช้ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ถูกสร้างขึ้นสำหรับนักพัฒนา Python ที่ต้องการซ่อนหรือเอาเนื้อหาในไฟล์ EXCEL ออก ทำงานกับข้อความ ภาพ และเมตาดาทาได้อย่างง่ายดาย

############################# Steps ############################
steps:
    enable: true
    title: "ซ่อนข้อมูลที่ละเอียดอ่อนใน Excel"
    content: |
      GroupDocs.Redaction for Python via .NET ทำให้การเตรียมเอกสารก่อนการแชร์นั้นเป็นเรื่องง่ายสำหรับนักพัฒนา Python via .NET
      
      1. สร้าง Redactor และเปิดไฟล์ Excel ของคุณ
      2. เลือกการตั้งค่าการแก้ไขที่เหมาะสำหรับงานของคุณ
      3. ป้อนข้อความหรือวลีที่จะปกปิดและเลือกสี
      4. ใช้การแก้ไขและบันทึกไฟล์
   
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

        # ใช้การทับซ้อนเพื่อซ่อนข้อความใน EXCEL

        # เลือกการตั้งค่าการแก้ไขของคุณ
        # เลือกสิ่งที่จะซ่อนและสีที่ใช้
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # เริ่มต้นด้วยการโหลดไฟล์ของคุณด้วย Redactor
        with gr.Redactor("input.xlsx") as redactor:

            # ทำการแก้ไขและบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือที่มีประโยชน์ในการลบข้อมูล"
  description: "GroupDocs.Redaction for Python via .NET ช่วยคุณซ่อนหรือเอาข้อมูลในเอกสารในขณะที่ยังคงให้การจัดวางและเนื้อหาชัดเจน"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "สร้างมาเพื่อปกป้องไฟล์ของคุณ"
  features:
    # feature loop
    - title: "ซ่อนหรือเปลี่ยนข้อความ"
      content: "ค้นหาและแทนที่ส่วนใด ๆ ของข้อความที่ต้องการซ่อน"

    # feature loop
    - title: "ปกปิดภาพและกราฟิก"
      content: "เพิ่มการทับซ้อนเพื่อลบข้อมูลที่ละเอียดอ่อนจากภาพหรือกราฟ"

    # feature loop
    - title: "Clear hidden metadata"
      content: "ลบข้อมูลพื้นหลังเช่นชื่อผู้เขียนหรือเวลา"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ทำการแก้ไขโดยใช้ Regex"
      content: |
        เรียนรู้วิธีการใช้แพทเทิร์น regex เพื่อค้นหาและซ่อนข้อมูล
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # เพิ่มแพทเทิร์น regex และการตั้งค่าสี
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # เปิดไฟล์ที่คุณต้องการทำความสะอาด
          with gr.Redactor("source.xlsx") as redactor:

              # ดำเนินการแก้ไข
              result = redactor.apply(redaction)

              # บันทึกเวอร์ชันที่ถูกแก้ไขแล้ว
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
    title: "ป้องกัน EXCEL ด้วยการลบ Python"
    exclude: "EXCEL"
    description: "ซ่อนเนื้อหาใน EXCEL โดยใช้การทับซ้อนสี่เหลี่ยมหรือเอาออกโดยใช้ฟีเจอร์จาก Python"
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