FROM alpine:latest
COPY christmas.sh /christmas.sh
RUN apk add --update ncurses bash
ENV TERM=xterm-256color
CMD ["bash","/christmas.sh"]
