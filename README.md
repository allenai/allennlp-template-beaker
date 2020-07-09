# allennlp-template-beaker

A template for starting new allennlp projects utilizing beaker to run experiments

## Requirements

You will need [Docker](https://docs.docker.com/get-docker/) and [beaker](https://github.com/allenai/beaker/#installation) installed.

## Overview

- `training_configs/` contains allennlp experiment configuration files.
- `beaker_configs/` contains the corresponding beaker configuration files needed to run the allennlp experiments.
- `Dockerfile` can be used to build a Docker image that is sufficient for running these experiments.

## Quick start

To run `training_configs/transformer_qa.jsonnet` experiment, for example, follow these steps:

1. Build a Docker image named 'allennlp-transformer-qa-train':

    ```bash
    docker build allennlp-transformer-qa-train .
    ```

2. Upload the image to beaker:

    ```bash
    beaker image create \
        --name allennlp-transformer-qa-train \  # this needs to match the image name in the beaker config
        allennlp-transformer-qa-train           # this needs to match the name of the image you just built
    ```

3. Submit the experiment to beaker:

    ```bash
    beaker experiment create \
        --name 'Transformer QA train' \
        -f beaker_configs/transformer_qa.yml
    ```
