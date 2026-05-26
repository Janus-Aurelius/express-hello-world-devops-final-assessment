# Chon base image la node phien ban 18 (hoac moi hon)
FROM node:18-alpine

# Thiet lap thu muc lam viec trong container
WORKDIR /usr/src/app

# Copy file package.json va yarn.lock de cai dat dependencies truoc
# Buoc nay giup docker cache lai qua trinh cai dat, tang toc do build
COPY package.json yarn.lock ./

# Cai dat cac thu vien can thiet (production)
RUN yarn install --production

# Copy toan bo code cua ung dung vao container
COPY . .

# Mo cong 3001 de truy cap tu ben ngoai (giong voi port trong app.js)
EXPOSE 3001

# Chay ung dung bang lenh node
CMD [ "node", "app.js" ]
