FROM alpine

COPY gpsd /etc/conf.d/gpsd
RUN apk add gpsd gpsd-clients chrony
COPY chrony.conf /etc/chrony/chrony.conf

WORKDIR /bjf
COPY start.sh .

CMD ["./start.sh"]


