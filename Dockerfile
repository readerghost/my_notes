FROM jekyll/jekyll:latest

WORKDIR /srv/jekyll

COPY . .

RUN git config --global --add safe.directory /srv/jekyll

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch", "--drafts"]
