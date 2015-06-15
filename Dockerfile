FROM dmhallahan/braveweb:v3

ADD . /home/iad
WORKDIR /home/iad

RUN chmod +x start_rails.sh

RUN bundle install






