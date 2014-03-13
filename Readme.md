MAS-Feedback
============

[![Code Climate](https://codeclimate.com/github/moneyadviceservice/mas-feedback.png)](https://codeclimate.com/github/moneyadviceservice/mas-feedback) [![Build Status](https://travis-ci.org/moneyadviceservice/mas-feedback.png)](https://travis-ci.org/moneyadviceservice/mas-feedback) [![Coverage Status](https://coveralls.io/repos/moneyadviceservice/mas-feedback/badge.png?branch=master)](https://coveralls.io/r/moneyadviceservice/mas-feedback?branch=master)

Gem for implementing feedback forms within MAS properties.

Install
-------

Add the following gem to your `Gemfile` or `gemspec`

```ruby
gem 'mas-feedback'
```

Remember to bundle install!

Usage
-----

For Zendesk feedback tabs:

```ruby
settings = {
  en: {
    id: <english zendesk dropbox id>
    url: 'http://<zendesk url>'
    name: Feedback (text visible to user)
  },
  cy: {
    id: <welsh zendesk dropbox id>
    url: 'http://<zendesk url>'
    name: Welsh equivalent
  }
}

zendesk_feedback_tab(settings)
```

[Zendesk DropBoxes](https://support.zendesk.com/entries/20990726-Setting-up-your-Feedback-Tab-channel) are a means to filter and render different feedback tabs to the user.

