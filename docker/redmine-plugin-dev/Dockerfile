FROM redmine:5.0.3

RUN set -x && \
	apt update && \
	apt install -y graphviz && \
	(cd /usr/src/redmine && gosu redmine bundle add dalli)

# for rendering png/jpg image by graphviz with fontname
RUN apt install -y fonts-takao-gothic

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

