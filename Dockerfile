FROM ruby:3.0.2-alpine AS dev
RUN apk add build-base postgresql-dev tzdata
WORKDIR /app
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
