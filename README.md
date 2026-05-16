# Comet MCP Tests

A minimum viable Urbit Gall app for testing MCP-related comet workflows.

The app installs `%comet-mcp-tests`, registers a Landscape/Docket tile, and binds
an Eyre endpoint at `/comet-mcp-tests`.

The Urbit desk lives in [`desk/`](desk/).

## Install

Mount or copy `desk/` into a running ship as `%comet-mcp-tests`, then run:

```hoon
|commit %comet-mcp-tests
|install our %comet-mcp-tests
```

After install, open the `Comet MCP Tests` tile in Landscape or visit:

```text
/comet-mcp-tests
```
