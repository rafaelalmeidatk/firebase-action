FROM node:16-alpine

LABEL version="1.2.3"
LABEL repository="https://github.com/hashlab/firebase-action"
LABEL homepage="https://github.com/hashlab/firebase-action"
LABEL maintainer="Rafael Almeida <rafael.almeida@hash.com.br>"

LABEL com.github.actions.name="GitHub Action for Firebase"
LABEL com.github.actions.description="Wraps the firebase-tools CLI to enable common commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="gray-dark"

RUN npm i -g firebase-tools@9.14.0

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]

RUN echo "Test from Docker"