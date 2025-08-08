
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ซ่อนข้อความใน WORD โดยใช้การทับซ้อนของ Python"
head_description: "ด้วย GroupDocs.Redaction for Python via .NET คุณสามารถซ่อนข้อความที่ละเอียดอ่อนในเอกสาร WORD โดยการใช้การทับซ้อนสี รูปแบบของคุณยังคงไม่เปลี่ยนแปลง"

############################# Header ############################
title: "ใช้การทับซ้อนเพื่อซ่อนข้อความใน WORD ด้วย Python" 
description: "ปกป้องข้อมูลสำคัญในเอกสาร WORD โดยการวางบล็อกการทับซ้อนด้วย Python และ GroupDocs.Redaction for Python via .NET"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       ด้วย GroupDocs.Redaction for Python via .NET นักพัฒนา Python สามารถซ่อนหรือเอาเนื้อหาในเอกสาร WORD — เช่น ชื่อ ตัวเลข และอื่น ๆ

############################# Steps ############################
steps:
    enable: true
    title: "แก้ไขเนื้อหาส่วนตัวใน Word"
    content: |
      GroupDocs.Redaction for Python via .NET ช่วยให้นักพัฒนา Python via .NET สามารถซ่อนข้อมูลที่ละเอียดอ่อนได้อย่างรวดเร็ว
      
      1. สร้าง Redactor และโหลดไฟล์ Word ของคุณ
      2. ตั้งค่าตัวเลือกการแก้ไข
      3. เลือกข้อความที่จะซ่อนและสีการทับซ้อน
      4. ดำเนินการแก้ไขและบันทึกไฟล์
   
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

        # ปกปิดข้อความใน WORD โดยใช้การทับซ้อน

        # เลือกสิ่งที่จะลบออก
        # ป้อนข้อความและตั้งค่าสี
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # โหลดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.docx") as redactor:

            # ดำเนินการแก้ไขและบันทึก
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "วิธีการซ่อนข้อมูลเพิ่มเติม"
  description: "ใช้ GroupDocs.Redaction for Python via .NET เพื่อทำความสะอาดไฟล์ของคุณโดยการซ่อนเนื้อหาและข้อมูลซ่อนอื่น ๆ โดยไม่ทำให้รูปแบบของไฟล์เปลี่ยนแปลง"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์ที่มุ่งเน้นไปที่ความเป็นส่วนตัว"
  features:
    # feature loop
    - title: "ซ่อนหรือแทนที่ข้อความ"
      content: "ปกป้องข้อมูลที่สำคัญโดยการลบหรือเปลี่ยนคำ"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "บล็อกภาพที่ละเอียดอ่อนด้วยรูปร่างที่เป็นสีทึบ"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อนอยู่"
      content: "ลบเมตาดาทาที่อาจแสดงข้อมูลระบบหรือผู้ใช้"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ค้นหาและซ่อนข้อความด้วย Regex"
      content: |
        ตัวอย่างนี้แสดงวิธีใช้ Regular Expressions เพื่อตรงและซ่อนเนื้อหา
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าแพทเทิร์นและสีการทับซ้อน
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # เปิดไฟล์เพื่อแก้ไข
          with gr.Redactor("source.docx") as redactor:

              # ดำเนินการแก้ไข
              result = redactor.apply(redaction)

              # บันทึกสำเนาที่ได้รับการปรับปรุง
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
    title: "ป้องกัน WORD ด้วย Python"
    exclude: "WORD"
    description: "ใช้ Python เพื่อซ่อนหรือเอาข้อมูลที่ละเอียดอ่อนออกจากไฟล์ WORD โดยไม่ส่งผลต่อลักษณะหรือการจัดวาง"
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