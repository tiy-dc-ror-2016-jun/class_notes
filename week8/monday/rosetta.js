> 1 + 1
2
> 1 + 1;
2
> var x = 1;
undefined
> var hi = "Hello World!";
undefined
> hi;
'Hello World!'
> hi:
...
> hi
'Hello World!'
> [];
[]
> var students = ["Martin", "Chris"];
undefined
> students;
[ 'Martin', 'Chris' ]
> students[0];
'Martin'
> students[0];
'Martin'
> students;
[ 'Martin', 'Chris' ]
> students;
[ 'Martin', 'Chris' ]
>
>
>
>
// Bad ruby like syntax
> var messages = {"success" => "It's party time"};
...
// JSON
> var messages = {"success": "It's party time"};
undefined
> messages
{ success: 'It\'s party time' }
> var messages = { success: "It's party time"};
undefined
> messages["success"];
'It\'s party time'
> messages.success;
'It\'s party time'
> messages["errors"] = "jaaaavascript";
'jaaaavascript'
> messages
{ success: 'It\'s party time', errors: 'jaaaavascript' }
// All numbers are floats
> 1
1
> 1 / 2
0.5
> 0.3 - 0.2
0.09999999999999998

// Named Function
> function cowsay() {}
undefined
> function cowsay() { console.log("Moo") };
undefined

// Restate a function name to get it's object
> cowsay
[Function: cowsay]
> cowsay();
Moo
undefined
// Functions are just objects
> var moosay = cowsay;
undefined
> moosay
[Function: cowsay]
> moosay();
Moo
undefined
> if (1 == 1){
... console.log("True!");
... }
True!
undefined
> 1 == 1
true
> 1 == "1"
true
> 1 === "1"
false
> [1,2,3] == [1,2,3];
false
>
> [1,2,3] === [1,2,3];
false
> [] === [];
false
> [] == [];
false

// JS has weird return values
> var a = 1;
undefined
> a++;
1
> a
2
> a++
2
> a
3
> a++
3
> a
4
> var x = 1;
undefined
> mooSayRealSayLolCat;
ReferenceError: mooSayRealSayLolCat is not defined
    at repl:1:1
    at REPLServer.defaultEval (repl.js:272:27)
    at bound (domain.js:280:14)
    at REPLServer.runBound [as eval] (domain.js:293:12)
    at REPLServer.<anonymous> (repl.js:441:10)
    at emitOne (events.js:101:20)
    at REPLServer.emit (events.js:188:7)
    at REPLServer.Interface._onLine (readline.js:224:10)
    at REPLServer.Interface._line (readline.js:566:8)
    at REPLServer.Interface._ttyWrite (readline.js:843:14)
> " hi " + "class"
' hi class'
>
