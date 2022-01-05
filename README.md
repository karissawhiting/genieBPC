
<!-- badges: start -->

[![R-CMD-check](https://github.com/AxelitoMartin/genieBPC/workflows/R-CMD-check/badge.svg)](https://github.com/AxelitoMartin/genieBPC/actions)
[![Codecov test
coverage](https://codecov.io/gh/AxelitoMartin/genieBPC/branch/master/graph/badge.svg)](https://codecov.io/gh/AxelitoMartin/genieBPC?branch=master)
<!-- badges: end -->
<!--
# genieBPC <img src="man/figures/geniebpc_hex_sticker.png" align="right" height="20" /></a>
 -->
The {genieBPC} package provides a seamless way to obtain the data
corresponding to each release from Synapse and to create datasets for
analysis.

-   **Pull a specified version of a phenomic data release** from Synapse
    directly into the R environment. The most recent version is
    automatically pulled, but a specific version can be specified for
    the purposes of reproducing analyses. The phenomic data are recorded
    in multiple datasets, including: patient characteristics (vital
    status), cancer diagnosis, cancer-directed drug regimens, pathology,
    imaging, medical oncologist assessment, tumor markers and cancer
    panel test.

-   **Create a cohort for analysis** based on specified diagnosis or
    regimen inclusion criteria.

-   **Pull GENIE genomic data** corresponding to the analytic cohort
    directly into the R environment, including selection of a single
    next-generation sequencing test in the case that the patient has
    multiple, based on user-specified criteria.

The datasets obtained through {genieBPC} can be input directly into
{gnomeR} to prepare the genomics data for analysis.

## Installation

You can install the development version of {genieBPC} with the following
code:

``` r
remotes::install_github("GENIE-BPC/genieBPC")
```

## Obtaining Data Access

Access to the GENIE BPC data release folders on Synapse is required in
order to use this function. To obtain access:

1.  Register for a [Synapse account](https://www.synapse.org/#)

2.  Use [this link](https://www.synapse.org/#!Team:3399797) to access
    the GENIE BPC team list and request to join the team. Please include
    your full name and affiliation in the message before sending out the
    request.

3.  Once the request is accepted, you may access the data in the [GENIE
    Biopharma collaborative
    projects](https://www.synapse.org/#!Synapse:syn21226493).

*Note: Please allow up to a week to review and grant access.*

## Analytic Data Guides

The analytic data guides provide details on each analytic dataset and
its corresponding variables for each data release.

[NSCLC V1.1 Analtyic Data
Guide](https://github.com/AxelitoMartin/genieBPC/blob/development/files/BPC_NSCLC_v1.1-consortium_Analytic_Data_Guide.pdf)

[CRC V1.1 Analtyic Data
Guide](https://github.com/AxelitoMartin/genieBPC/blob/development/files/BPC_CRC_v1.1-consortium_Analytic_Data_Guide.pdf)
