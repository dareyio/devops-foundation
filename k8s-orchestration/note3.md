# Cert manager 
kubectl get order,csr,certificate,challenge -n mvp


# CICD
    - What it is and why we need it
    - What areas we use it for
    - Github actions
      - docker builds/test/deploy
      - Terraform
      - helm
    - Release tagging
      - Docker SemVer

# Configure S3 as Helm repository

helm package monolith-website

aws s3 cp monolith-website-0.1.0.tgz s3://liveclass-helm-repo/monolith-website-0.1.0.tgz

# Create or update the index.yaml file: Use the helm repo index command to generate or update the index.yaml file that contains the metadata for your Helm repository.

helm repo index --url https://liveclass-helm-repo.s3.amazonaws.com/charts/ .


# Upload the index.yaml file to the S3 bucket: Use the aws s3 cp command to upload the index.yaml file to the S3 bucket

aws s3 cp index.yaml s3://liveclass-helm-repo/charts/index.yaml

# Configure the Helm repository: Use the helm repo add command to add your S3 bucket as a Helm repository.
export AWS_REGION=eu-west-2
helm repo add monolith-website s3://liveclass-helm-repo/charts
/;
# Push the chart to S3 helm repo
helm s3 push --force monolith-website-0.1.0.tgz monolith-website

