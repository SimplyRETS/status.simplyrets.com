# SimplyRETS System Status

SimplyRETS public status page, powered by [Upptime](https://github.com/upptime/upptime).

**Public page:** https://status.simplyrets.com

## Configuration

`.upptimerc.yml` controls monitored endpoints, branding, and status-page settings.
GitHub Actions handles monitoring, response-time metrics, graphs, and publishing.
The `/health` checks measure reachability, not comprehensive application health.

`master` contains configuration and monitoring data; `gh-pages` contains generated
website output. Do not edit generated website files directly.

Repository variables live under **Settings → Secrets and variables → Actions → Variables**:

- `UPPTIME_MONITORING_ENABLED=true` allows uptime, response-time, summary, and
  graph workflows to run on `master`, including automated incident handling.
- `UPPTIME_PUBLISH_ENABLED=true` allows Static Site CI to publish to `gh-pages`
  and request a GitHub Pages build.

An absent variable or any value other than `true` disables the corresponding jobs.
Disabling publishing does not remove the existing public site. Manual incident
updates work independently of these variables and do not require a site rebuild.

## Manual incidents

1. Open **Issues → New issue → Manual Incident** in this repository.
   The template automatically applies `status` and `manual`; keep both labels.
   `status` makes the issue public on the status page; `manual` identifies an
   incident managed by the team rather than by automated checks.
2. Include the affected service in the title, for example:
   **[API] Degraded performance — elevated latency**.
3. Publish the initial report and subsequent updates as **issue comments**.
   Stock Upptime does not display the initial issue body. Include progress such
   as Investigating, Identified, or Monitoring in your comments.
4. To resolve the incident, post a final resolution comment, then **close the issue**.
   It moves from active incidents to past incidents on the public page.

**Do not add `api-health` or `site-health` to manual incidents.** These labels are
reserved for automated monitoring and can cause health-check recovery to close
an issue automatically. Optional manual component labels are `component:api`
and `component:site`.

Manual incidents appear publicly even when automated health indicators remain
green. Green reachability checks do not rule out customer impact. Updates may
take up to two minutes to appear after refreshing because of browser caching.

## Planned maintenance

Use the same **Manual Incident** template, labels, and comment workflow.
Suggested title: **[API] Scheduled maintenance**.

Open the issue when the maintenance notice should become public. Post the planned
time and expected impact in a comment, add progress updates as comments, and post
a final update before closing the issue when maintenance is complete.

This is a public notice, not an automatically scheduled or activated maintenance
window. It does not pause monitoring or suppress automated incidents.

## References

- [Upptime documentation](https://upptime.js.org/docs/)
- [Upptime configuration](https://upptime.js.org/docs/configuration)
