package ;

/* This is the base language. It's called Lang and not LangEn for will, as all the other language extend this one
 * and later we reference it on this name, but noone need to know which language we actually use now
 */
class Lang {

    // This is a possible singleton reference, to use from anywhere
    public static var inst:Lang;

    public function new() {
    }

    public function simple()
        return 'Simple without param';

    public function hello(name)
        return 'Hello $name';

    public function happyBirthday(name:String, age:Int)
        return 'Happy ${age}th birthday $name ${age < 18 ? 'young' : 'old'} boy!';

}
