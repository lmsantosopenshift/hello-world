FROM quay.io/luismg26/golang:1.15

ADD src/hello-world.go hello-world.go

ENV MESSAGE "Web Restaurada. LLamar a POLICIA"
ENV HOME /go

RUN chgrp -R 0 /go && chmod -R g+rwX /go

EXPOSE 8080

LABEL io.openshift.expose-services 8080/http

USER 1001

CMD go run hello-world.go
# CMD pwd












