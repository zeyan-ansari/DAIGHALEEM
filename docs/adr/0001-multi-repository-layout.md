# ADR 0001: Separate application repositories

Status: Accepted

DAIG uses separate repositories for backend, customer app, rider app and web
console. This orchestration repository owns product requirements, contracts and
phase instructions. Cross-repository API changes update contracts first.

This keeps deployment and ownership boundaries explicit while avoiding nested
Git repositories. Sibling paths are resolved relative to the checked-out
`DAIGHALEEM` repository and must not contain hard-coded usernames.
