# Node.js 14 버전을 기반으로 하는 이미지를 사용합니다.
# Node.js 버전은 프로젝트의 요구사항에 따라 변경될 수 있습니다.
FROM node:18

# 애플리케이션 디렉토리 생성
WORKDIR /app

# 의존성 설치
COPY package*.json ./
RUN npm install


# 애플리케이션 소스 추가
COPY . .


# 개발 환경에서는 아래의 명령어를 사용할 것.
# RUN npm ci --only=development
RUN npm run build

EXPORT 3000

CMD [ "npm", "start" ]
