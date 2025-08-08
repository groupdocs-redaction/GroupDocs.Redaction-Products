
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: th
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ใน IMAGE ด้วย Java"
head_description: "ใช้ GroupDocs.Redaction for Java ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ IMAGE ทำให้ข้อมูลส่วนตัวไม่ถูกเปิดเผย"

############################# Header ############################
title: "ลบข้อมูลเมตาดาต้าจากไฟล์ IMAGE ด้วย Java" 
description: "รักษาเอกสาร IMAGE ของคุณให้ปลอดภัยโดยใช้เครื่องมือที่สร้างขึ้นสำหรับ Java ลบข้อมูลส่วนตัวได้อย่างง่ายดาย"
subtitle: "สิ่งที่คุณสามารถทำได้ด้วย GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction ช่วยให้นักพัฒนา Java ลบเนื้อหาที่ละเอียดอ่อนได้ — รวมทั้งข้อความ ภาพ และข้อมูลเมตาดาต้า ทั้งหมดจากไฟล์ IMAGE

############################# Steps ############################
steps:
    enable: true
    title: "วิธีการทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ Image"
    content: |
      เริ่มใช้ GroupDocs.Redaction ในแอป Java ของคุณเพื่อลบข้อมูลเมตาดาต้าที่ซ่อนอยู่ได้อย่างรวดเร็ว
      
      1. สร้าง Redactor และเปิดเอกสาร Image ของคุณ
      2. เลือกฟิลด์ข้อมูลเมตาดาต้าที่จะลบ
      3. ใช้การตั้งค่าการลบข้อมูลเมตาดาต้า
      4. บันทึกไฟล์ที่ทำความสะอาดแล้ว
   
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
        // ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ IMAGE

        // โหลดไฟล์ของคุณด้วย Redactor
        final Redactor redactor = new Redactor("input.png");
        try
        {
            // ตั้งค่าฟิลด์ข้อมูลเพื่อทำการลบ
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // ทำการบันทึกการเปลี่ยนแปลง
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ทำความสะอาดเนื้อหาในไฟล์ใดๆ"
  description: "GroupDocs.Redaction for Java ช่วยลบข้อมูลส่วนตัว, รายละเอียดที่ซ่อนอยู่ในภาพ และข้อมูลเมตาดาต้าก่อนการแชร์"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "ฟีเจอร์หลัก"
  features:
    # feature loop
    - title: "ทำความสะอาดข้อความ"
      content: "ค้นหาคำหรือหมายเลขที่ละเอียดอ่อนและลบออกอย่างปลอดภัย"

    # feature loop
    - title: "ปิดบังพื้นที่ในภาพ"
      content: "ซ่อนส่วนของภาพที่มีข้อมูลละเอียดอ่อนโดยการเพิ่มการซ้อนทับ"

    # feature loop
    - title: "การลบข้อมูลเมตาดาต้า"
      content: "ลบฟิลด์ข้อมูลเมตาดาต้าที่อาจมีข้อมูลส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ลบข้อมูลเมตาดาต้าที่ละเอียดอ่อน"
      content: |
        คำแนะนำนี้แสดงวิธีการทำความสะอาดฟิลด์ต่างๆ เช่น Author และ Title จากเอกสาร IMAGE
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิด IMAGE ใน redactor
          final Redactor redactor = new Redactor("source.png");
          try
          {
              // เลือกข้อมูล Author
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // เลือกข้อมูล Title
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // ดำเนินการลบ
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // บันทึกไฟล์สุดท้าย
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
    title: "ทำความสะอาดข้อมูลเมตาดาต้าในไฟล์ IMAGE ด้วย Java"
    exclude: "IMAGE"
    description: "ใช้ Java เพื่อลบข้อมูลที่ซ่อนในไฟล์ IMAGE ดีสำหรับการทำความสะอาดเอกสารก่อนการแชร์หรือเก็บรักษา"
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