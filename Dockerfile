FROM postgres:14.2-alpine

#Dependencies

WORKDIR /usr/src/app/build
ENV POSTGRES_PASSWORD (CP)SVCDB02
ENV POSTGRES_DB members
ENV POSTGRES_USER dbadmin

EXPOSE 9000

