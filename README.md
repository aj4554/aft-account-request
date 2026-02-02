# AFT – Account Requests

This repository defines **declarative account requests** for AWS Account
Factory for Terraform (AFT).

Each Terraform file represents a request to create or update an AWS account
via Control Tower.

## When this runs

- Triggered manually via the `ct-aft-account-request` pipeline
- Pipelines are intentionally **not auto-triggered on push**

## What belongs here

- Account name and email
- Target OU
- Account tags
- High-level account metadata

No resources are created here. This repo only declares **account intent**.

## Repository structure

Terraform must live in a top-level `terraform/` directory:
