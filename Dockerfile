FROM mcr.microsoft.com/playwright:v1.39.0-jammy

WORKDIR /work

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npx playwright install-deps && npx playwright install
