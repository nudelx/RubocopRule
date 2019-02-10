<p align="center">
  <img width="150px" src="https://raw.githubusercontent.com/nudelx/RubocopRule/master/img/rubocop.png" alt="RuboCop Lego"/>
</p>
  
# Rubocop Linter Rule

Tiny Rubocop linter - Provides the defensive against html_safe inside your code block

Calling html_safe on a String doesn't escape or unescape the String itself. It doesn't change the string at all. All it does is return a SafeBuffer which will handle future concatenations differently than a String. Which is increase the chance for XSS.

Cross-site scripting (XSS) is a type of computer security vulnerability typically found in web applications. XSS enables attackers to inject client-side scripts into web pages viewed by other users. A cross-site scripting vulnerability may be used by attackers to bypass access controls such as the same-origin policy. Cross-site scripting carried out on websites accounted for roughly 84% of all security vulnerabilities documented by Symantec as of 2007. Bug bounty company HackerOne in 2017 reported that XSS is still a major threat vector. XSS effects vary in range from petty nuisance to significant security risk, depending on the sensitivity of the data handled by the vulnerable site and the nature of any security mitigation implemented by the site's owner.

#### EXAMPLE

```RUBY
def print
  @html = '<script> alert("test")</script>'.html_safe  # BAD
  puts @html
end
```

This plugin/rule will increase you attention by providing an warning/error
when it will be detected by Rubocop.

```BASH
test_class.rb:1:7: C: SamanageLint/HtmlSave: ⚠️   Using html_safe is dangerous and requires additional approval
class Test
      ^^^^
```

#### INSTALATION (rubocop.yaml)

```YAML

# Common configuration.
require: /path/to/the/rule/samanage_lint.rb


```
