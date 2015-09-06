//: 扩展构造器: 给既有类型扩展新构造器, 如自定义的初始化参数,或原本不支持的初始化选项.
struct Weapon {
    var atk = 0, dex = 0
}

struct Equip {
    var def = 0, agl = 0
}

struct Role {
    var weapon = Weapon()
    var equip = Equip()
}

let xiaobo = Role()

let xida = Role(weapon: Weapon(atk: 300, dex: 5), equip: Equip(def: 200, agl: 3))

//土豪玩家 VIP1
extension Role {
    init(vip1weapon: Weapon, vip1Equip: Equip) {
        let vipatk = vip1weapon.atk * 2
        let vipdef = vip1Equip.def * 2
        
        self.init(weapon: Weapon(atk: vipatk, dex: vip1weapon.dex), equip: Equip(def: vipdef, agl: vip1Equip.agl))
    }
}

let tuhao1 = Role(vip1weapon: Weapon(atk: 300, dex: 5), vip1Equip: Equip(def: 200, agl: 3))



//: [扩展方法](@next)
