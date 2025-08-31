# ใช้ Node.js official image เป็น Base image
FROM node:18

# กำหนด working directory ภายใน container
WORKDIR /app

# คัดลอก package.json และ package-lock.json เข้าไปใน container
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดของโปรเจกต์เข้าไปใน container
COPY . .

# บอก Docker ว่า container นี้จะรันบน port 3000
EXPOSE 3000

# คำสั่งสำหรับรันแอปพลิเคชันเมื่อ container เริ่มทำงาน
CMD ["node", "index.js"]