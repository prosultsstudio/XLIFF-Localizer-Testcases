Use this source code to test localizing your Apple platform apps fast and easy with the Xcode String Catalog Localizer app for macOS.

1. Pull the source code in this repository to your Xcode
  - You will notice that both String Catalogs have their five localizations 0% complete and that all six previews of Contentview are English (the base language).

2. Open XLIFF Localizer Testcases in Xcode and select Product -> Export Localizations
   - Uncheck the default localization (English). This one does not require translation.
   - You will notice that Xcode creates the folder <app name> Localizations, which contains an .xcloc package for each of the selected localizations.
   - Among other items your translator needs, this package contains an XLIFF file: the contents of your app's String Catalogs in XML-format.
  
3. Download XLIFF String Catalog Localizer from the macOS Appstore
   - After installing you can use the full translation functionality for 14 days. After that period you need a subscription.

4.a. Pepare for machine translation of your test app strings by pasting your personal DeepL Translator and/or Google Cloud Transation API key in the Settings screen of this app.
   - You can request these API keys for free (requires a credit card to authenticate). Both services will only charge you beyond 500,000 translated characters per month. This test app requires about 4,500 characters for five localizations.
OR
4.b. Prepare for translation via the built-in rule database. Using one of the four .csv or .json files from this repository
   - Download a file with complete localizations from either a DeepL (more informal Dutch and German) or Google (more formal Dutch and German) for this test app to your Mac.
   - Import the file into the rules database via the "Import to File" button on the Rules screen.
   - Now you are ready to translate without an API key.
  
5. In the Translate screen of the XLIFF String Catalog Localizer app, select the folder you exported from Xcode and click Open.
   - Translation will start immediately, for all String Catalogs and all localizations.
   - If localized strings are found, the XLIFF XML file(s) in the selected folder are immediately updated. This can't be undone.

6. Open an .xcloc package in the Localizations folder you exported, to see the result of the localization.
   - This is an optional step. You can also see the results in your String Catalog after Import and the either fix manually or discard changes and repeat from step 2. (export).

7. In Xcode, select Product -> Import Localizations.
   - Select the Localizations folder you created in step 2. via Export Localizations.
   - Pick an .xcloc package (one for each localization), check for any mismatches in XML structure (there should be none) and click Import.
   - This localization now has a green checkmark in both String Catalogs, indicating 100% localized.
   - Repeat for the other four localizations (hopefully Xcode 16 will offer multiple select here).
  
8. Again in Xcode, select ContentView and check each of the five localized Previews. Each now shows the correct language, including all interpolations, variants by device and pluralizations.

More information about localization workflows supported by the XLIFF String Catalog Localizer app on: https://prosultsstudio.com/xliff-string-catalog-localizer-app/
