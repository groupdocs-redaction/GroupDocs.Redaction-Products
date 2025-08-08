
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าใน XLSX ด้วย Java"
head_description: "GroupDocs.Redaction for Java ช่วยทำความสะอาดข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ XLSX ของคุณ รักษาเอกสารของคุณให้เป็นส่วนตัวและปลอดจากรายละเอียดที่ไม่ต้องการ"

############################# Header ############################
title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ XLSX ด้วย Java" 
description: "ใช้ Java เพื่อลบข้อมูลส่วนตัวหรือรายละเอียดที่ซ่อนอยู่ในเอกสาร XLSX ของคุณ เหมาะสำหรับทั้งการทำงานและการใช้งานส่วนตัว"
subtitle: "ดูว่าสิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction มอบเครื่องมือที่จำเป็นให้กับนักพัฒนา Java ในการลบหรือลบข้อมูลในไฟล์ XLSX — รวมถึงข้อมูลเมตาดาต้า ข้อความ และภาพ.

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลเมตาดาต้าจากไฟล์ Xlsx"
    content: |
      GroupDocs.Redaction ช่วยโปรเจค Java ของคุณในการเคลียร์ข้อมูลเมตาดาต้าที่ละเอียดอ่อนได้อย่างรวดเร็ว
      
      1. เริ่มต้น Redactor และเปิดไฟล์ Xlsx
      2. เลือกข้อมูลเมตาดาต้าที่จะลบ
      3. รันการลบเพื่อลบข้อมูลนั้น
      4. บันทึกเวอร์ชันที่ทำความสะอาดแล้ว
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
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
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ในไฟล์ XLSX

        // เปิดไฟล์โดยใช้ Redactor
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // เลือกฟิลด์ข้อมูลเมตาดาต้าที่ยกเลิก
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการลบและบันทึกไฟล์ของคุณ
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "รักษาความปลอดภัยในไฟล์ของคุณโดยการลบข้อมูลละเอียดอ่อน"
  description: "ด้วย GroupDocs.Redaction for Java คุณสามารถทำความสะอาดข้อมูลส่วนตัวจากหลายประเภทเอกสาร วิธีง่ายๆ ในการรักษาความปลอดภัยในไฟล์ของคุณ"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์ในการทำความสะอาดข้อมูล"
  features:
    # feature loop
    - title: "ลบข้อความ"
      content: "ค้นหาและลบคำหรือวลีที่มีข้อมูลส่วนตัว"

    # feature loop
    - title: "ปิดบังภาพ"
      content: "ซ่อนส่วนของภาพที่มีข้อมูลละเอียดอ่อน"

    # feature loop
    - title: "ลบข้อมูลเมตาดาต้า"
      content: "ลบข้อมูลที่อาจเผยรายละเอียดส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ตัวอย่างการลบข้อมูลเมตาดาต้า"
      content: |
        ตัวอย่างนี้แสดงวิธีการลบข้อมูลเมตาดาต้า เช่น Author หรือ Title จากไฟล์ XLSX
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสารของคุณ
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // เลือกฟิลด์ Author เพื่อทำการลบ
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // เลือกฟิลด์ Title เพื่อทำการลบ
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // รันการลบ
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกผลลัพธ์
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ใช้ Java เพื่อลบข้อมูลเมตาดาต้าใน XLSX"
    exclude: "XLSX"
    description: "ใช้เครื่องมือ Java เพื่อทำการลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ในเอกสาร XLSX แชร์เอกสารที่สะอาดและปลอดภัย."
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "ภาพ JPEG"


---