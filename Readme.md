MAS-Feedback
============

[![Code Climate](https://codeclimate.com/github/moneyadviceservice/mas-feedback.png)](https://codeclimate.com/github/moneyadviceservice/mas-feedback) [![Build Status](https://travis-ci.org/moneyadviceservice/mas-feedback.png)](https://travis-ci.org/moneyadviceservice/mas-feedback) [![Coverage Status](https://coveralls.io/repos/moneyadviceservice/mas-feedback/badge.png?branch=master)](https://coveralls.io/r/moneyadviceservice/mas-feedback?branch=master)

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