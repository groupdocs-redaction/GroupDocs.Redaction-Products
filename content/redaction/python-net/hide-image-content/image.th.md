
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: th
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "ปกปิดภาพใน IMAGE ด้วย Overlay โดยใช้ Python"
head_description: "ซ่อนเนื้อหาภาพที่เป็นความลับในไฟล์ IMAGE โดยใช้ Overlay ที่มีสีสันด้วย GroupDocs.Redaction for Python via .NET รักษาเลย์เอาต์เอกสารของคุณให้ไม่เปลี่ยนแปลงในขณะที่ปกป้องข้อมูลที่สำคัญ."

############################# Header ############################
title: "ปกปิดภาพที่เป็นความลับในไฟล์ IMAGE ด้วย Overlay ของ Python" 
description: "ป้องกันข้อมูลภาพส่วนตัวและธุรกิจในไฟล์ IMAGE ด้วย Python เครื่องมือที่ง่ายเพื่อการป้องกันที่รวดเร็วและมีประสิทธิภาพ."
subtitle: "คุณสมบัติที่คุณต้องการจาก GroupDocs.Redaction for Python via .NET" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for Python via .NET"
    link: "/redaction/python-net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NET ให้เครื่องมือสำหรับนักพัฒนา Python ในนโยบายลบหรือซ่อนเนื้อหาจาก IMAGE เพื่อให้เอกสารของคุณปลอดภัย.

############################# Steps ############################
steps:
    enable: true
    title: "ปกปิดเนื้อหาส่วนตัวในไฟล์ Image"
    content: |
      GroupDocs.Redaction for Python via .NET สามารถซ่อนข้อมูลที่เป็นความลับในแอปพลิเคชัน Python via .NET ของคุณได้อย่างง่ายดาย.
      
      1. เริ่มต้น Redactor และชี้ไปที่ไฟล์ Image.
      2. กำหนดการตั้งค่าการปิดบังตามที่จำเป็น.
      3. เลือกส่วนของภาพและกำหนดสี Overlay.
      4. ดำเนินการและบันทึก. ไฟล์ที่ปิดบัง.
   
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

        # ปกปิดเนื้อหาภาพใน IMAGE

        # กำหนดขนาดและสีของ Overlay
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # เลือกพื้นที่ที่จะซ่อน
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # โหลดไฟล์โดยใช้ Redactor
        with gr.Redactor("input.png") as redactor:

            # นำ Overlay ไปใช้และบันทึกไฟล์
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ป้องกันข้อมูลในหลายรูปแบบเอกสาร"
  description: "GroupDocs.Redaction for Python via .NET ช่วยให้คุณปิดบังหรือลบข้อมูลที่เป็นความลับในการปิดบังข้อมูลที่ซ่อนไว้ในหลากหลายรูปแบบ เอกสาร."
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือที่ช่วยควบคุมการปิดบังทุกรูปแบบ"
  features:
    # feature loop
    - title: "ค้นหาระบุและแทนที่ข้อความที่มีความลับ"
      content: "ค้นหาในเอกสารทั้งหมดเพื่อแทนที่ข้อความส่วนตัวและเก็บข้อมูลให้ปลอดภัย."

    # feature loop
    - title: "ปิดบังภาพด้วย Overlay"
      content: "เพิ่ม Overlay เข้าไปรอบๆ สำหรับภาพหรือส่วนที่ต้องการซ่อน."

    # feature loop
    - title: "ลบหรือเปลี่ยน Metadata"
      content: "ลบหรือแก้ไข Metadata ที่ซอกซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูล."
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงให้เห็นว่าคุณสามารถเพิ่ม Overlay เพื่อปกป้องข้อมูลภาพที่เป็นความลับในเอกสารได้อย่างไร.
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # ตั้งค่าขนาด, สี, และตำแหน่งของ Overlay
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # เลือกพื้นที่ที่เป็นภาพในหน้าแรก
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # เปิดไฟล์เพื่อการปิดบัง
          with gr.Redactor("source.png") as redactor:

              # นำ Overlay ไปใช้เพื่อปกปิดข้อมูล
              result = redactor.apply(redaction)

              # บันทึกไฟล์หลังการปิดบัง
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ปกป้องเนื้อหาในไฟล์ IMAGE โดยใช้ Python"
    exclude: "IMAGE"
    description: "ด้วย Python คุณสามารถใช้ได้ง่ายเพื่อซ่อนหรือทำลายข้อมูลที่เป็นความลับในไฟล์ IMAGE เพื่อป้องกันการรั่วไหลข้อมูล."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---