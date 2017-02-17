FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.2.2

RUN gem install gettext --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rmsginit"]
CMD ["--help"]
