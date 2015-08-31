//: 协议作为代理: 代理是一种常见的设计模式, 可以让类或结构体把一部分职责,指派给非同类的实例去承担.
//: - 若要寻求代理,可以通过定义一个协议,打包要实现的职责于其中.
//: - 该代理协议的遵从者就可以实现这些打包的职责.
//: - 代理在iOS开发中,一般可以用于响应特定的操作,或从外部数据源取回数据但无需了解是何种数据源.
//游戏角色
struct Role {
    var name: String
    var attack: Int
    var defence: Int
}

//玩游戏
protocol Lolgame {
    var role: Role { get }
    mutating func play()
}

//游戏代练协议
protocol LolgameDelegate {
    func gameStart(game: Lolgame) -> Int
    func gameRolePK(game: Lolgame, armed: Bool) -> Int
    func gameOver(game: Lolgame) -> Int
}

//实现游戏代练
struct GameAgent: LolgameDelegate {
    func gameStart(game: Lolgame) -> Int {
        print(game.role.name,"开始打怪升级","起始经验:2000")
        return 2000
    }
    
    func gameRolePK(game: Lolgame, armed: Bool) -> Int {
        if armed {
            print(game.role.name, "您有武器,获得经验:5000")
            return 5000
        } else {
            print(game.role.name, "您赤手空拳,只获得经验:2500,有武器加倍哦!")
            return 2500
        }
    }
    
    func gameOver(game: Lolgame) -> Int {
        print(game.role.name, "您已经正常退出,获得经验1000")
        return 1000
    }
}

struct PlayGame: Lolgame {
    var exp: Int
    var gameAgent: GameAgent?
    
    let role = Role(name: "战神小波", attack: 2000, defence: 5000)
    
    mutating func play() {
        if let gameAgent = gameAgent {
            print("您使用了代练!")
            
            exp += gameAgent.gameStart(self)
            exp += gameAgent.gameRolePK(self, armed: true)
            exp += gameAgent.gameOver(self)
        } else {
            print("没有使用任何代练或挂机,不会自动升级")
        }
        
        print("一共经验值是:", exp)
    }
}

//🌰

var playgame1 = PlayGame(exp: 0, gameAgent: nil)
playgame1.play()

let agentSmith = GameAgent()

playgame1.gameAgent = agentSmith

playgame1.play()

//: [协议扩展和扩展约束](@next)
