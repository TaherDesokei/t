FROM node:18

# ضبط مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات المشروع وإعداداته
COPY package*.json ./

# تثبيت التبعيات
RUN npm install

# نسخ باقي ملفات المشروع
COPY . .

# تحديد المنفذ الذي سيعمل عليه التطبيق
EXPOSE 3000

# تشغيل التطبيق
CMD ["node", "app.js"]


