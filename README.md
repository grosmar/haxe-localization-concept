# haxe-localization-concept
Example Haxe project with localization setup.
Check the Main and Lang files to see the idea behind the concept.

# Run
```
npm install
haxe build.hxml
open bin/index.html
```

# Dependencies
[modular](http://lib.haxe.org/p/modular)
[lix](https://github.com/lix-pm/lix.client) (only the example uses it, to follow the concept it's not necessary)

# Concept
Goals of the concept:
- Having a strongly typed localization system
- Give autocompletion support in code
- Load only those localization files that are needed and when they are needed
- Break compilation in case of invalid syntax of localized files (typical problem with translators or when some variable name changes, etc)
- Having default value for not localized language elements

How:
1. We declare one base Lang file where we define all our basic localizations
2. We extend this class and write our localizations there (or genereate these classes, see below)
3. We compile the project by splitting it up for each language to a different module
4. Based on the browser language or any parameter we load the proper language module
5. We use the loaded language, referencing it with the class type of the base Language

# Q&A
**Q: How to deal with external localalization systems (like Mozilla Pontoon, etc)?**  
  A: With some macro convert your Language classes to some standard localization files (ie PO, json, etc). When they are done with the translation, generate the Haxe classes again from it and you can compile now your main project.
  
**Q: What if I want to use templating systems because my translators prefer to write some other syntax**  
A: You can still compile your templates at compile time to some haxe code, like [tink_template](https://github.com/haxetink/tink_template) does it, and you can levarage the computation from the clients

**Q: Do I need to split up to multiple modules?**  
  A: No, if size doesn't matter for you, just compile all the languages in the same project file

