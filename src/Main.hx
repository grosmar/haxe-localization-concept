package ;

import js.Promise;
class Main
{
    static function main()
    {
        // Let's imagine we get if from somewhere outside
        var lang:Language = "fr";

        // Based on the param we load the proper language and initialize our application with it
        (switch ( lang )
        {
            case Fr: Bundle.load(LangFr).then( function(_) new Main(new LangFr()) );
            case De: Bundle.load(LangDe).then( function(_) new Main(new LangDe()) );
            default: Promise.resolve().then( function(_) new Main(new Lang()) );
        })
        .catchError( function(_) new Main(new Lang()) );
    }


    // Node we reference the base Lang, as we don't need to actually know which translation we use
    function new(lang:Lang)
    {
        trace(lang.simple());
        trace(lang.hello("John"));
        trace(lang.happyBirthday("John", 10));

        // or we can also use it through singleton, as localization rarely scales
        Lang.inst = lang;
        trace(Lang.inst.simple());
    }
}

@:enum abstract Language(String) from String
{
    var En = "en";
    var De = "de";
    var Fr = "fr";
}