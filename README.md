![app_overview_xliff_string_catalog_localizer](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/cb2ea7e3-01bb-44b6-9ee4-72346c0fca65)
Use the demo source code in this repoistory to test localizing your Apple platform apps fast and easy with the Xcode String Catalog Localizer app for macOS.
This picture shows a high level overview of how this works. Detailed steps for one possible workflow, manual localization, are:

1. Pull the source code in this repository to your Xcode
![xliff-localizer-testcases-github-step-1](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/c2a62247-0685-4a38-83ec-4366679befcf)
	- This app still needs to be localized: both String Catalogs have their five localizations 0% complete.
	- And there are no localized strings in Swedish but only the English ones by default: light grey in the third column of the string catalog Localizable.
	- No surprise that the Swedish screen preview only shows English texts:
![xliff-localizer-testcases-github-step-1-b](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/0cf23274-fba2-4bbd-8561-22176bfa095a)

2. Open XLIFF Localizer Testcases in Xcode and select Product -> Export Localizations
![xliff-localizer-testcases-github-step-2](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/537b9268-4ca3-4c2f-ae56-dc4c4b662a1c)
   - Uncheck the default localization (English). This one does not require translation.
![xliff-localizer-testcases-github-step-2-b](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/10df4eee-bd18-4661-87bd-b283eac28f5f)
   - Click on Export. Xcode creates the folder <app name> Localizations, which contains an .xcloc package for each of the selected localizations.
![xliff-localizer-testcases-github-step-2-c](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/e0fea97c-57e6-4018-b356-4b79382b9d74)
   - Among other items your translator needs, this package contains an XLIFF file: the contents of your app's string catalogs in XML-format. Within Xcode, string catalogs have the .xcstrings file extension.
![xliff-localizer-testcases-github-step-2-d](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/04273b57-666f-4cbe-ab43-6c98d285c02d)

  
3. Download and install XLIFF String Catalog Localizer from the macOS Appstore
	- After installing you can use the full translation functionality for 14 days. After that period you need a subscription.

	![XLIFF-SCL-macos-logo-128](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/c5f5d189-ac40-4bf4-b0f6-3b5ad6668b98)

4. Prepare for translation via the built-in rule database.
	- Download one of the four .csv or .json files from this repository to your mac. Each file contains the complete set of strings in all five localizations of the test app.
 	- Deepl provides a more informal translation (for Dutch, German and seven other languages), while Google results in more formal localized strings. For Swedish there should be no difference in tone.

	![image](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/a050304e-5d61-4ab8-a50b-09a93d42ba61)
	
- Import the file into the rules database via the "Import to File" button on the Rules screen.
 
	![xliff-localizer-testcases-github-step-4](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/a06911d1-f492-4017-bd5d-5ad9dae6b9c0)

	- On the Translate screen the status of the Rules database has become "Active" instead of "Not configured". Now you are ready to translate without an API key.
	![xliff-localizer-testcases-github-step-4-b](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/32c5c572-e243-4d6a-ad40-684b4702437d)

	- If you want to try out machine translation of the strings in this test app, learn how to obtain your personal API keys and other details here: https://prosultsstudio.com/get-your-api-keys-for-xliff-string-catalog-localizer-app/
  
5. In the Translate screen of the XLIFF String Catalog Localizer app, select the folder with localizations you exported from Xcode and click Open.
![xliff-localizer-testcases-github-step-5](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/76e9e123-ea1e-454e-86e0-36209693eb67)

   - Translation will start immediately, for all String Catalogs and all localizations.
   - If localized strings are found, the XLIFF XML file(s) in the selected folder are immediately updated. This can't be undone.
   - Results of the localization, per string catalogue and per language, appear in minutes (via API) or seconds (via rule database) on the Translate screen.
   - All strings are correctly translated to Swedish (green background colour and no "Skipped strings") except for the macOS-related copyright notice (orange background and 1 untranslated string).
	![xliff-localizer-testcases-github-step-6](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/f125209a-e6ec-4edc-becb-696dff3a493d)


6. Open the Localizations folder you exported with Xcode, via File -> Open... . Then select the sv.xcloc file and inspect the contents with "open package". Click on Localizable to get this view of the Swedish XLIFF file:
![xliff-localizer-testcases-github-step-6-b](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/d75b9470-89fb-4d07-9ffd-dbd855e0ba69)
	- The localizations in Swedish in the sv.xcloc file (red border) look complete and correct. Ready to move them to the string catalog in Xcode (above the red border).
 - This inspection is an optional step. You can also see the results in your String Catalog after Import and the either fix manually or discard changes and repeat from step 2. (export).

7. In Xcode, select Product -> Import Localizations.
![xliff-localizer-testcases-github-step-7](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/25882a2b-a286-4ebb-9e46-f9cb9004562b)

	- Select the sv.xcloc file and again click on Import:
	![xliff-localizer-testcases-github-step-7-b](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/e5bfe4fc-12ca-4363-8b79-3200e068d4d9)

	- Xcode accepts the translated XLIFF file except for the missing localization of the copyright notice. That is not relevant for this test, so click on Import for the third and last time:
	![xliff-localizer-testcases-github-step-7-c](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/a10feb63-0b87-40ab-a757-ef942968519a)

   - This localization now has a green checkmark in both String Catalogs, indicating 100% localized. Congratulations!
	![xliff-localizer-testcases-github-step-7-d](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/198faac6-eefb-4561-8ee0-6b9676f6e427)
	- The state of the individual strings is also green (on the far right of the screen). While the state was "New" before the import.
  
8. Still in Xcode, select ContentView and check the Swedish localized Preview again. Each string is translated and shows all interpolations, variants by device and pluralizations like the English preview (base language).
![xliff-localizer-testcases-github-step-8](https://github.com/prosultsstudio/XLIFF-Localizer-Testcases/assets/16436079/e82a4ad1-7e22-4f4f-9c29-7b7cf0a8024b)

9. Repeat for the other four localizations. 
	- Hopefully Xcode 16 will offer multiple select here 😀.

Good luck with testing! 
And with transitioning to String Catalogs with ease.

More information about localization workflows supported by the XLIFF String Catalog Localizer app on: https://prosultsstudio.com/xliff-string-catalog-localizer-app/
