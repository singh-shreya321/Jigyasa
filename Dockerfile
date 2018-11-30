FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN git clone https://github.com/singh-shreya321/Jigyasa.git
WORKDIR Jigyasa
RUN bundle install
RUN rake db:drop
RUN rake db:create
RUN rake db:migrate
RUN rake db:seed
CMD ["rails","s"]
