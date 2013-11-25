MAS-Feedback
============

Gem for implementing feedback forms within MAS properties.


Usage
-----

For Zendesk feedback tabs:

```ruby
settings = { 
  en: {
    id: <english zendesk dropbox id>
    url: 'http://<zendesk url>'
  },
  cy: {
    id: <welsh zendesk dropbox id>
    url: 'http://<zendesk url>'
  }
}

zendesk_feedback_tab(settings)
```