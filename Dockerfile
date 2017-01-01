FROM ruby:2.4

MAINTAINER think@hotmail.de

ENV RUBOCOP_VERSION=0.27.0

RUN gem install rubocop --version ${RUBOCOP_VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rubocop"]
CMD ["--help"]
