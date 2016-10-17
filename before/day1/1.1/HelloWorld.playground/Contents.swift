//: Playground - noun: a place where people can play

let h: String? = "H"
let ell = "ell"
let o: String? = "o"
var world: String! = nil
world = " world!"

//let template = "\(h) \(ell) \(o) \(world)"
//print(template)

let strH = h ?? ""
let strO = o ?? ""

let helloWorld: String = strH + ell + strO + world


print(helloWorld)







///////////////////////////////////////////////////////
/*
 Swiftで値がない状態を保持するためにnilを使います。
 しかし、Swiftでは変数生成時にnilを指定することは許可されていません。
 そのため、nilを代入可能にするためにOptional型を使います。
 型の後ろに?をつけることで、Optional型を使うことができます。
 */
var vvalue: String? = nil

// String?はOptional<String>なので、Stringと違う型になるためStringの変数に代入することはできません。
// そのため、optional bindingを使ってunwrapします。

var value: String? = nil
value = "Apple"
print(value) //Optional("Apple")
if let v = value {
    print(v) //Apple
}

// また、変数の後ろに!をつけることで、強制的にunwrap（force unwrap）することができます。

var valuee: String? = nil
valuee = "Apple"
print(valuee) //Optional("Apple")
print(valuee!) //Apple

// しかしforce unwrapを使うと、変数がnilであった場合に実行時エラーになってしまうので、あまり使わないようにしましょう。

// また??を使うことでもunwrapすることができます。

var vaalue: String? = nil
vaalue = "Apple"
let newValue = vaalue ?? ""
print(newValue) //Apple
//上記の例の場合、valueがnilでなかったらvalueをunwrapを代入し、nilだった場合には空文字列を代入するという結果になります。

