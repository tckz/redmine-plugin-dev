FROM redmine:4

RUN set -x && \
	apt update && \
	apt install -y graphviz && \
	(cd /usr/src/redmine && gosu redmine bundle add dalli)

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

