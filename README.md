# oscal-automation-libs

These are the building blocks for this and many of our other repositories to share code for Makefiles, helper scripts and other build related machinery.

## Makefiles
`mk/` directory contains several predefined makefiles `(*.mk)`. They are imported into the top-level Makefiles

As some advanced targets are generated, every Makefile contains `make help` target listing all the available ones. All of the "example" makefiles have a corresponding `.help` file listing all the targets available there.

Also for advanced use and if none of the predefined flows doesn't fit your needs, you can compose the flow from modules in similar way to how the predefined flows do,  


## Scripts
`scripts` contain more complicated logic that is used in some make targets and in CI.

## IAC

`iac` contains code for automating deployments for assessments.

## How to consume

These shared automation resources are able to be consumed locally and through CI.

We plan to publish the container image for the environment, but can be built locally using the following command:
```
```

To use the container images with a local Trestle workspace, use the following command:
```
```


