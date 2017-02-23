# ocaml-bucklescript-serverless-aws-lambda-example
ocaml code traspiled by bucklescript to javascript runnable in aws lambda with serverless framework

# install
```
git clone https://github.com/VaclavSynacek/ocaml-bucklescript-serverless-aws-lambda-example.git
npm install
npm run watch   #for local development
npm run build   #for one time build
npm run deploy  #for aws deployment once built
```

# use
Go to http://localhost:3000/ for test output or to http://localhost:3000/factorial/15 for factorial computation by lambda function. If deployed to AWS replace endpoints with the actual endpoins returned by serverless deploy tool.

# status
Works on local.
Works on AWS Lambda.
Ugly code.