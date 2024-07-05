FROM ruby:3.3.3-alpine3.20

# Install system packages
# RUN apk add --no-cache --update alpine-sdk build-base gcompat

# Install prince XML
RUN wget https://www.princexml.com/download/prince-20240626-r0-alpine3.20-x86_64.apk \
  && apk --no-cache --allow-untrusted add prince-20240626-r0-alpine3.20-x86_64.apk \
  && apk --no-cache --allow-untrusted add msttcorefonts-installer fontconfig \
  && update-ms-fonts \
  && fc-cache -f \
  && rm prince-20240626-r0-alpine3.20-x86_64.apk

CMD [ "/bin/ash", "-c", "ash" ]
