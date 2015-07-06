FROM ruby:2.1.5
MAINTAINER Pedro Fernandez <pedro.fernandez@koombea.com>

ENV PATH /gems/bin:$PATH

EXPOSE 3000

ENV BUNDLE_PATH /gems
ENV GEM_PATH /gems

WORKDIR /home/app/webapp

CMD ["rails s -b 0.0.0.0"]