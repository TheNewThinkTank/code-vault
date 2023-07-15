# CDK

## useful commands

```BASH
# installation
npm install -g aws-cdk

# start a new cdk app
cdk init app --language typescript

# synthesize cdk stack into CloudFormation
cdk synth

# deploy to aws
cdk deploy

# compare changes to previous deploy
cdk diff
```

## useful resources

[getting started](https://docs.aws.amazon.com/cdk/v2/guide/getting_started.html)

[cdk patterns](https://www.cdkpatterns.com/)

[cdk day](https://www.cdkday.com/)

## terms

`bootstrap` an AWS environment<br>
prerequisit for being able to deploy CDK stacks into said account.
provisions certain AWS resources used during deployment.<br>
`cdk bootstrap ACCOUNT-NUMBER-1/REGION-1 ACCOUNT-NUMBER-2/REGION-2 ...`

`environment`:<br>
An environment is the target AWS account and Region into which the CDK stack is intended to be deployed<br>
recommended to explicitly specify the environment for each stack in app:<br>
```TypeScript
const envEU  = { account: '2383838383', region: 'eu-central-1' };
const envUSA = { account: '8373873873', region: 'us-east-1' };

new MyFirstStack(app, 'first-stack-us', { env: envUSA });
new MyFirstStack(app, 'first-stack-eu', { env: envEU });
```

## deploy CDK stack to multiple environments:

override the account and Region at synthesis time:
```TypeScript
new MyDevStack(app, 'dev', { 
  env: { 
    account: process.env.CDK_DEPLOY_ACCOUNT || process.env.CDK_DEFAULT_ACCOUNT, 
    region: process.env.CDK_DEPLOY_REGION || process.env.CDK_DEFAULT_REGION 
}});
```

set the variables from command line arguments, `cdk-deploy-to.sh`:
```BASH
#!/usr/bin/env bash
if [[ $# -ge 2 ]]; then
    export CDK_DEPLOY_ACCOUNT=$1
    export CDK_DEPLOY_REGION=$2
    shift; shift
    npx cdk deploy "$@"
    exit $?
else
    echo 1>&2 "Provide account and region as first two args."
    echo 1>&2 "Additional args are passed through to cdk deploy."
    exit 1
fi
```
execute `chmod +x cdk-deploy-to.sh` to make it executable.

deploy to multiple environments, `cdk-deploy-to-prod.sh`:
```BASH
#!/usr/bin/env bash
./cdk-deploy-to.sh 135792468 us-east-1 "$@" || exit
./cdk-deploy-to.sh 246813579 eu-central-1 "$@"
```

## projen

## constructs

## examples

