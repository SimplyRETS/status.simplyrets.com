---
name: Manual Incident
about: Report customer impact independently of automated reachability checks
title: "[Incident] "
labels: status, manual
assignees: ''
---

Describe the affected service and customer impact in the title.

Post the initial customer-facing report and subsequent updates as **issue
comments**: stock Upptime displays comments, not this issue body. Close the issue
manually after the final resolution comment.

Optional component labels: `component:api`, `component:site`.
Do not add `api-health` or `site-health`: those are reserved for automated
incidents and allow health-check recovery to close an issue automatically.

Opening an issue with `status` is sufficient; neither monitoring nor a site
rebuild is required for it to appear on the deployed Upptime page.
