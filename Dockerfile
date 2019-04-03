FROM 	shkoliar/varnish:4.1

LABEL 	maintainer="Dmitry Shkoliar @shkoliar"

ENV 	VCL_CONFIG /data/varnish.vcl
ENV 	VARNISHD_PARAMS -p default_ttl=3600 -p default_grace=3600 -p feature=+esi_ignore_https -p feature=+esi_disable_xml_check

ADD 	conf/varnish.vcl /data/varnish.vcl
