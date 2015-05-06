# Spartans.JS

JavaScript Script to easily interact with Spartans API to get suggestions.

## Requirements

You need to have a [Spartans account](http://spartans.co) in order to interract with Spartans API. Then create an application to get API credentials.

_Nota: `spartans.js` needs jQuery to work properly._

## Installation

You can create a file in your project, for example `spartans.js` and copy/paste the code inside [spartans.js](https://raw.githubusercontent.com/htaidirt/spartans-js/master/spartans.js) file or reference it directly from your project, using:

    <script type="text/javascript" src="https://raw.githubusercontent.com/htaidirt/spartans-js/master/spartans.js"></script>

In all cases, it is better to include the call to `spartans.js` at the bottom of your HTML code.

## Usage

Once installed, use the following pattern in your HTML to make Spartans work for you in a transparent way.

In the HTML element that will contain suggestions (div block, table, ul,...) add the following:

* `spartans` class name
* `data-spartans-app-id` attribute that will contain your Spartans app ID
* `data-spartans-source` attribute that will contain the ID of the actual item ID (visited house, product, user profile,...)

Then, in each HTML element that will contain your candidates, add the following:

* `spartans-candidate` class name
* `data-spartans-id` attribute that will contain the ID of the actual candidate ID

The reason of doing this, is that in case something wrong happens with Spartans, your application will stay safe. In addition, you keep control on the display of the candidates and suggestions, in term of behaviour (JS) and design (CSS).

### Example

    <table class="spartans" data-spartans-app-id="abc123" data-spartans-source="42">
        <tr class="spartans-candidate" data-spartans-id="1">...</tr>
        <tr class="spartans-candidate" data-spartans-id="2">...</tr>
        ...
    </table>

`spartans.js` will automatically reorder the candidates in decreased order or relevancy.

## Contribution

`spartans.js` was generated using [CoffeeScript](https://github.com/jashkenas/coffeescript).

To compile CoffeeScript into JavaScript, use the following:

    coffee -cw spartans.coffee

_Read [coffeescript: suppress “ReferenceError”](https://stackoverflow.com/questions/20296440/coffeescript-suppress-referenceerror) for more information._

If you want to share your changes, please follow this workflow:

1. Fork the repo ( https://github.com/**[my-github-username]**/spartans-js/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

With love,

Spartans team
