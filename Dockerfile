FROM rabbitmq:3.5.7

RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-3.5.7/plugins /plugins
ADD autocluster-0.4.1.ez /plugins/
RUN rabbitmq-plugins enable --offline autocluster

ENV CONSUL_PORT 8500
ENV CONSUL_SERVICE rabbitmq
