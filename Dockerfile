# menggunakan node versi 14
FROM node:14

# membuat direktori /app sebagai working directory
WORKDIR /app

# menyalin semua file ke direktori /app
COPY . .

# mengatur environment variable
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies dan build aplikasi
# saya selalu gagal Build ketika menggunakan npm :
# RUN npm install --production --unsafe-perm && npm run build 

RUN yarn install --production --unsafe-perm && yarn build

# expose port 8080
EXPOSE 8080

# menjalankan aplikasi
CMD [ "yarn", "start" ]