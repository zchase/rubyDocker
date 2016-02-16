FROM alpine:3.1

# Update
RUN apk add ruby-rails4.2

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["bin/rails", "server"]