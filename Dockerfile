FROM alpine:3.10

WORKDIR /root

RUN apk --no-cache add bash git go libc6-compat libc-dev

ENV PATH /root/go/bin:$PATH

RUN go get -u github.com/WICG/webpackage/go/bundle/cmd/gen-bundle && \
  go get -u github.com/WICG/webpackage/go/bundle/cmd/sign-bundle && \
  go get -u github.com/WICG/webpackage/go/bundle/cmd/dump-bundle

CMD ["bash"]
