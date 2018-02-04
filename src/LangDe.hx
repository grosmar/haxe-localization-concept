package ;
class LangDe extends Lang{

    override public function simple()
        return 'Einfach ohne param';

    override public function hello(name)
        return 'Hallo $name';

    override public function happyBirthday(name:String, age:Int)
        return 'Glücklicher ${age}. Geburtstag $name ${age < 18 ? 'kleiner' : 'alter'} Junge!';
}
