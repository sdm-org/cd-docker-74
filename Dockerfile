FROM kkarczmarczyk/node-yarn

# if you're in China, please comment above image and uncomment following image :)

# FROM registry.docker-cn.com/kkarczmarczyk/node-yarn

ENV WORKSPACE=/root/workspace

RUN mkdir -p $WORKSPACE

WORKDIR $WORKSPACE

ADD package.json $WORKSPACE

# if you're in China, uncomment following phrase to boost your yarn with cn-npm-registry :)

# RUN yarn config set registry https://registry.npm.taobao.org

RUN yarn

ADD . $WORKSPACE

CMD yarn prod

EXPOSE 3006