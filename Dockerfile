FROM public.ecr.aws/lambda/nodejs:16 as builder
WORKDIR /usr/app/
COPY . .
RUN npm install
RUN npm run build

FROM public.ecr.aws/lambda/nodejs:16
WORKDIR /var/task/
COPY --from=builder /usr/app/dist/main.js ./

CMD ["main.handler"]