package dataapi.authz

default allow = true

deny["Forbid writing sensitive data to be written to google-sheet"] {
      input.action.actionType == "write"
      input.resource.metadata.tags.finance
      input.resource.metadata.tags.connection_type == "google-sheets"
      input.resource.metadata.columns[i].tags.sensitive
}
