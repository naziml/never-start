FROM debian:jessie
EXPOSE 80
COPY init.sh
CMD ["init.sh"]
