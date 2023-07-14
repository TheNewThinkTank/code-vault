# Azure pipelines (ADO)

[YAML schema](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/?view=azure-pipelines&viewFallbackFrom=azure-devops&tabs=schema%2Cparameter-schema)


```YAML
variables:
- template: vars/vars.yml 

parameters:
- name: DIRECTORY 
  type: string
  default: "."

trigger:
- main
# - feature/*
# TODO: add path(s)

pool: 
  vmImage: ubuntu-latest

stages:
- stage: CI
  jobs:
  - job: CIWork
    steps:
    - script: "Do CI work"

- stage: Test
  jobs:
  - job: TestWork
    steps:
    - script: "Do test work"
```
