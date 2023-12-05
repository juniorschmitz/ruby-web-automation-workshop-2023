# E2E Web Test Automation

[![Linter CI](https://github.com/juniorschmitz/e2e-web-test-automation/actions/workflows/main.yml/badge.svg)](https://github.com/juniorschmitz/e2e-web-test-automation/actions/workflows/main.yml)

The project has examples on automated UI tests implemented using Ruby as the language for implementation. 

The project already uses some best practices on Web test automation focusing on end-to-end strategies.

It is a example project that has the objective of being used for future improvements on parallelization and atomic ui automation topics mainly.

The System Under Test (SUT) used for creating this example on atomic ui testing strategy was the Selenium Automation Practice website, which can be found at: [Automation Practice](http://automationpractice.com/index.php)

### Project stack

The project uses the following stack:
- Ruby language;
- Capybara gem;
- SitePrism gem;
- RSpec gem;
- Rubocop as linter;

### How to execute the project

The project uses bundler as the default Ruby package manager, and Cucumber as the tests executor.

For installing the project needed gems, one should:
```
bundle install
```

For running all tests sequentially, one should:
```
bundle exec cucumber -p default -t@full_regression
```

Where the tag @full_regression is, one could replace it with any Cucumber tag for running specific features or scenarios.

For running the project in headless mode, one could add the "-p headless" flag into the execution command, for example:
```
bundle exec cucumber -t@search_existent_product -p headless
```

Any doubts, feel free to contact me.
