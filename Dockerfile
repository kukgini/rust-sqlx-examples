from rust:slim-buster

RUN apt-get -q -y update
RUN apt-get install -q -y git pkg-config libssl-dev

USER root
WORKDIR /root
RUN git clone https://github.com/launchbadge/sqlx.git 
RUN cargo install sqlx-cli
RUN cargo install sqlx-cli --no-default-features --features native-tls,postgres
