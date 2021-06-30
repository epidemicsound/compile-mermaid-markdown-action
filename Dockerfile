FROM node:8.8.1
RUN yarn global add phantomjs-prebuilt@2.1.14 mermaid@7.0.0

WORKDIR /mmdc
COPY . /mmdc

ENV ENTRYPOINT_PATH /mmdc

ENTRYPOINT [ "/mmdc/entrypoint.sh" ]
CMD [ "--help" ]
