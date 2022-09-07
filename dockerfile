FROM composer:latest AS composer
COPY composer.json /tmp
WORKDIR /tmp
RUN composer install -v

FROM php:8.1-cli
LABEL "com.github.actions.name"="Github Action Packagist Push"
LABEL "com.github.actions.description"="Push package to Packagist"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"
LABEL version="0.2.0"
LABEL repository="https://github.com/brown-a2/packman"
LABEL homepage="https://github.com/brown-a2/"
LABEL maintainer="browna2"

# Install WP applications and repos
COPY --from=composer /tmp/vendor /vendor 
COPY go.php .
COPY hale-compiled.zip .

CMD ["php", "go.php"]
