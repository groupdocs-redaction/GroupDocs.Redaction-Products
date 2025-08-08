
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ใน IMAGE ด้วย C#"
head_description: "ใช้ GroupDocs.Redaction for .NET เพื่อทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ IMAGE ของคุณ ให้แน่ใจว่ารายละเอียดส่วนตัวยังคงเป็นส่วนตัว"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ IMAGE ผ่าน .NET" 
description: "เก็บไฟล์ IMAGE ของคุณให้ปลอดภัยโดยใช้ C# ปกป้องข้อมูลธุรกิจและข้อมูลส่วนตัวอย่างง่าย"
subtitle: "สิ่งที่คุณจะได้จาก GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยผู้ใช้ C# ทำความสะอาดไฟล์ด้วยการลบข้อความ รูปภาพ และข้อมูลเมตาดาต้าที่ไม่ต้องการในไฟล์ IMAGE

############################# Steps ############################
steps:
    enable: true
    title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ Image"
    content: |
      เริ่มต้นด้วย GroupDocs.Redaction ในแอปพลิเคชัน .NET ของคุณเพื่อล้างข้อมูลเมตาดาต้า
      
      1. สร้าง Redactor และเปิดไฟล์ Image ของคุณ
      2. เลือกตัวเลือกในการลบข้อมูลเมตาดาต้าที่ซ่อน
      3. ใช้การตั้งค่าการลบข้อมูล
      4. บันทึกผลลัพธ์
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่จากไฟล์ IMAGE

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // เพิ่มกฎการลบเมตาดาต้า
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // ดำเนินการและบันทึก
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ทำความสะอาดเนื้อหาในเอกสารใดๆ"
  description: "GroupDocs.Redaction for .NET ลบข้อความส่วนตัว ลักษณะภาพ หรือฟิลด์ซ่อน ให้เอกสารสามารถแชร์ได้อย่างปลอดภัย"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์หลัก"
  features:
    # feature loop
    - title: "การลบข้อความ"
      content: "ค้นหาและลบคำหรือหมายเลขที่ไม่ควรแชร์"

    # feature loop
    - title: "การปกปิดภาพ"
      content: "เพิ่มหน้ากากภาพเพื่อปิดข้อมูลที่ละเอียดอ่อน"

    # feature loop
    - title: "การลบข้อมูลเมตาดาต้า"
      content: "ล้างฟิลด์ข้อมูลเมตาดาต้าที่อาจมีการรั่วไหลของข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลเมตาดาต้าที่ละเอียดอ่อน"
      content: |
        ตัวอย่างนี้อธิบายว่า如何จะลบฟิลด์ข้อมูลเมตาดาต้าเฉพาะในเอกสาร IMAGE
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิด IMAGE ด้วยตัวเรดักเตอร์
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // กำหนดเป้าหมายฟิลด์ผู้เขียน
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // กำหนดเป้าหมายฟิลด์ชื่อ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // ดำเนินการลบ
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // บันทึกเอกสาร
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าจาก IMAGE โดยใช้ .NET"
    exclude: "IMAGE"
    description: "ลบข้อมูลที่ละเอียดอ่อนจากไฟล์ IMAGE ด้วยการลบ .NET คงความปลอดภัยของเอกสารของคุณ"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---