FROM public.ecr.aws/lambda/ruby:2.7.2022.09.22.12

COPY app.rb ${LAMBDA_TASK_ROOT}

# Copy dependency management file
COPY Gemfile ${LAMBDA_TASK_ROOT}

# Install dependencies under LAMBDA_TASK_ROOT
ENV GEM_HOME=${LAMBDA_TASK_ROOT}
RUN bundle install

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "app.LambdaFunction::Handler.process" ]
