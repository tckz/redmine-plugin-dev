FROM redmine:6.1.3

RUN set -x && \
	apt update && \
	apt install -y graphviz 
RUN set -x && \
	# https://qiita.com/T-Macchi/items/57d091b5195751320b40
	# rubyとrails, connection_poolの互換性がぶっ壊れているため2.xでとめる必要ある
	# redmineがrails 8.1.2になれば解消するかもしれない・・・
	# ruby 3.4でrexmlがdefault gemからbundled gemへ降格し、
	# Gemfileに書かないとbundler管理下でrequireできなくなった
	# (wiki_graphviz_pluginがrexml/documentをrequireするため必要)
	(cd /usr/src/redmine && \
		gosu redmine bundle add dalli && \
		gosu redmine bundle add connection_pool --version "< 3")

# for rendering png/jpg image by graphviz with fontname
RUN apt install -y fonts-takao-gothic

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

