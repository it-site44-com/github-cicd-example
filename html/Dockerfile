FROM nginx as production-stage
RUN mkdir /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY dist/ /app/
RUN ls -la /app/*
