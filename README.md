# UPBEAT (Updating)

UPBEAT is a fuzzing tool to generate random test cases for bugs related to input checking in Q# libraries. It leverages open-source Q# code samples to synthesize test programs. It frames the test case generation as a constraint satisfaction problem for classical computing and a quantum state model for quantum computing to produce carefully generated subroutine inputs to test if the input-checking mechanism is appropriately implemented.

## Install

### Use Docker

We offer a [Docker image](https://hub.docker.com/repository/docker/weucodee/upbeat/general) that runs "out of the box".  Alternatively, users can also build and run their own image using the provided [Dockerfile](build/Dockerfile). 

### Setup Locally

1. Ensure you have downloaded the following pip tools.
```
pip install gdown numpy z3-solver jupyter matplotlib scipy tabulate
```
2. Follow the installation instructions in [INSTALL.md](build/INSTALL.md).
3. Clone the repository.
```
git clone https://github.com/NWU-NISL-Fuzzing/UPBEAT.git
```

## Usage

See [this document](AE.md).

## Troubleshooting

Here are some issues we've encountered when installing Upeat on different devices. We hope [this page](build/CommonIssues.md) can help you resolve them.
