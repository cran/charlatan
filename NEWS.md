


charlatan 0.6.1
===============
This release changes the internal logic of the package to make it easier for you to contribute.
One of the greatest strengths of charlatan, _and its spirit brothers faker (in python) and faker (in perl),_ is
the ability to customize realistically looking data in many locales.
But it was not so easy to add locales that were very different from en_US.
This release aims to make it easier for you to add new locales for your favorite
data types.

## Detailed
Previous versions of {charlatan} used special logic to load in locale-specific 
data, and this worked great, but requires every locale to use the same naming 
conventions and required a lot of work across all locales of that provider
if you only needed that change for one locale.

Since version 0.6.0, locale specific Providers inherit from 
a **Parent provider** with basic functionality for that Provider type, 
and more specific functions for a locale are moved into that locale.
For example, if you are Spongebob Squarepants, and all of your addresses are 
required to have a fruit in the street name, this is now possible by 
overriding the address function for the spongebob squarepants locale only. 
See the revamped `contributing` vignette for more info.


### NEW FEATURES
* Added a new vignette with more detailed examples of data simulation. 
* A new baseclass `BareProvider` creates all of the selection and fill-in functions.
* The `BaseProvider` inherits from the `BareProvider` and provides  locale specific functionality. Functionality of BaseProvider remains the same.
* All **Parent providers**  will error when you try to init them.
* Locales inherit from a **Parent provider**, giving us the ability to customize 
every locale (when needed) without changing the logic for all locales.
* Every provider (when it has locales) has at least an en_US locale.
* Ability to create specific functions for your locale specific provider. Example: Are first and last names not used in your locale? you can now create specific functions for your locale. Example: the Japanese locale now has first_kana_name _(for example ヒロキ)_, last_kana_name functionality next to the romanized names. 
* all locales have labels so they are connected in the docs. You can now see all NZ Providers in one overview.


### REMOVED
* Removed the siren functionality from CompanyProvider (it was only used in the fr_FR locale and we can provide phone numbers with the PhoneProvider.

### MINOR IMPROVEMENTS
* All locale specific Providers fall back to locale `en_US` if there is no version of this locale provider and will warn you if they do.
* Reworked development vignette
* added locale-templates for addresses, colors, company, internet, job, lorem,person, phonenumber and ssn. 
* added the following functionality to fraudster: `address`, `company`, `element`, `element_symbol`, `file_name`, `email`, `url`, `mac_address`, `lorem_paragraph`, `ssn`
* add print method so the providers print nicely in the console.
* All data fields are moved to `private` to reduce visual clutter.
* Added docs for languages like `czech-language` `turkish-language`.
* modified tests so they work for test_that version 3

### BUG FIXES
* None




charlatan 0.5.1
===============

### NEW FEATURES
* added a SSN number generation process for en_US, addition by Neal Furtz (@nfultz)
* Changed maintainer of the package to RMHogervorst

### MINOR IMPROVEMENTS
* Fixed a failing test on r-devel



charlatan 0.5.0
===============

### NEW FEATURES

* `InternetProvider` adds new methods `ipv4` and `ipv6` via the new suggested package `ipaddress` (#112) thanks @davidchall
* `AddressProvider` and `JobsProvider` gain new langugage locale `nl_NL` (#118) (#119) thanks @markbaas

### MINOR IMPROVEMENTS

* fixed typo in docs (#117) thanks @j450h1


charlatan 0.4.0
===============

### NEW FEATURES

* gains new vignette "Contributing to charlatan" - given that it can be complicated to contribute, this vignette should make the process easier (#49) (#84)
* `InternetProvider` gains new method `slug` (#67)
* `MiscProvider` gains two new methods `boolean` and `null_boolean` (#70)
* `es_PE` locale support added to `PhoneNumberProvider` (#108)
* `en_NZ` locale support added to `AddressProvider`, `InternetProvider`, and `PersonProvider` (#109)
* main vignette gains examples on using the `MissingDataProvider` thanks to @KKulma (#110)
* `PhoneNumberProvider` gains support for locales: `dk_DK`, `en_NZ`, `id_ID`, `th_TH`, and `tw_GH` (#100)
* each R6 provider gains new method `allowed_locales()` - the exported character vector of allowed locales for each provider has moved inside of the R6 class in `$private` because there's no reason for the user to modify allowed locales - `allowed_locales()` reads this vector for each provider

### MINOR IMPROVEMENTS

* convert all documentation to the new R6 support in roxygen2


charlatan 0.3.0
===============

### NEW FEATURES

* `ch_job()` and `JobsProvider` gains `da_DK` locale support (#94) from @MartinMSPedersen

### MINOR IMPROVEMENTS

* fixes for `PersonProvider` for locale `fr_FR`: fix accents; avoid awkward french names; now can do double first names; removed some duplicate names   (#35) (#83) from @kylevoyto
* remove leading and trailing whitespace in `JobsProvider` and `PersonProvider` where found; and remove some blank suffixes for `fa_IR` `PersonProvider` (#88) (#91) from @kylevoyto
* standardization of locale names to always be `xx_XX` where first two letters are lowercase and second two are uppercase (#90) from @kylevoyto
* change locale for Danish/Denmark from `dk_DK` to `da_DK` to comply with ISO-3166 (#93) from @MartinMSPedersen
* fix Danish phone number formats to match phone numbers actually used there (#93) from @MartinMSPedersen
* remove duplicates and sort names across `PersonProvider` for various locales (#96) from @MartinMSPedersen
* mention similar packages (#72)


charlatan 0.2.2
===============

### BUG FIXES

* run examples conditionally if packages installed for packages in Suggests: `iptools` and `stringi` (#82)


charlatan 0.2.0
===============

### NEW FEATURES

* new package author: <https://github.com/kylevoyto>
* gains `ElementsProvider` and associated methods `ch_element_element()` and `ch_element_symbol()` for getting element names and symbols (#55)
* gains `InternetProvider` with many methods, including for domain names, urls (and their parts), emails, tld's, etc. (#66)
* gains `MiscProvider` with methods for getting locale names and locale codes  (#69)
* gains `UserAgentProvider` for user agent strings (#57)
* gains `FileProvider` with methods for mime type, file extension, file names and paths (#59)
* gains `LoremProvider` with methods for words, sentences and paragraphs (#58)
* `JobProvider` gains Finnish locale (#79)

### MINOR IMPROVEMENTS

* mention usage in the wild in README (#54)
* change behavior when a locale doesn't have a data type from erroring to a zero length string (#64)
* switch to markdown docs (#68)
* fix `PersonProvider` for locale `en_GB` - we were ignoring probabilities of different names (#63) (#75)
* fix `ColorProvider`: generate only the 216 colors in safe web colors (https://en.wikipedia.org/wiki/Web_colors#Web-safe_colors) - and fix method for generating hex colors (#18) (#42) (#76)
* fix to have `safe_color_name` within `ColorProvider` be sensitive to locale (#17) (#77)
* packages `stringi` and `iptools` moved from Imports to Suggests - not required for package use now unless a few specific methods used (#71)
* `AddressProvider` gains methods `street_name`, `street_address`, `postcode`, and `address`. in addition, various fixes to `AddressProvider`  (#62) (#80)


charlatan 0.1.0
===============

### NEW FEATURES

* Released to CRAN.
