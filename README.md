# Devcontainer  

This is an example of a devcontainer that prebuilds all features in /.devcontainer/devcontainer.json

This is pushed to your remote container registry for reuse


## How does this work

When the GitHub Action called _job-devcontainer-build.yaml_ it will look at the file ./devcontainer/devcontainer.json and using the devcontainer CLI prebuild all features into a custom image and push to docker hub.


## Read more on  prebuilds

https://containers.dev/guide/prebuild

## ToDo

For future changes to work, there is a GitHub Action included to 'prebuild' the dev container.  The below SECRETS need to be set in this repo for docker push to work


- REGISTRY_USER
- REGISTRY_TOKEN


This branch was manually built and pushed locally to _docker.io/chrismckelt/devcontainer-prebuild-template
_ by

     devcontainer build --workspace-folder . --image-name chrismckelt/devcontainer-prebuild-template
     docker push chrismckelt/devcontainer-prebuild-template:latest
