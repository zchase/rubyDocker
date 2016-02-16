FROM alpine:3.1

# Update
RUN apk upgrade --update
RUN apk add ruby

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["bin/rails", "server"]