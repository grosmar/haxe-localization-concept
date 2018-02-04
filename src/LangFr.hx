package ;
class LangFr extends Lang{

    override public function simple()
        return 'Simple sans param';

    override public function hello(name)
        return 'Bonjour $name';

    override public function happyBirthday(name:String, age:Int)
        return 'Joyeux ${age}er anniversaire $name ${age < 18 ? 'jeune' : 'vieux'} garçon!';
}
