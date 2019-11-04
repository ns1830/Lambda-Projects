

let agent1 = (coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false)
let agent2 = (coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true)
let agent3 = (coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false)
let agent4 = (coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true)
let agent5 = (coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false)
let agent6 = (coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false)
let agent7 = (coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true)
let agent8 = (coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false)
let agent9 = (coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true)
let agent10 = (coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true)
let agent11 = (coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false)

let agentArray = [agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agent10, agent11]

func compromisedAgents() -> Int {
    var result = 0
    for agent in agentArray {
        if agent.3 {
            result += 1
        }
    }
    return result
}

print("\(compromisedAgents()) agents have been compromised!")


func findCleanAgents() -> [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] {
    var cleanAgents: [(coverName: String, realName: String, accessLevel: Int, compromised: Bool)] = []
    for agent in agentArray {
        if !agent.3 {
            print(agent.0)
            cleanAgents.append(agent)
        }
    }
    return cleanAgents
}

let cleanAgents = findCleanAgents()
print("\(cleanAgents.count) clean agents of \(agentArray.count) total agents.")



func findHighRisk() {
    for agent in agentArray {
        if agent.accessLevel >= 8 && agent.compromised {
            print("\(agent.realName), level: \(agent.accessLevel) **WARNING** **COMPROMISED")
        } else if agent.accessLevel >= 8 {
            print("\(agent.realName), level: \(agent.accessLevel)")
        }
    }
      
}

findHighRisk()


func agentTotals() {
    for agent in agentArray {
 //   if agent.accessLevel < 0 {
        switch agent.accessLevel {
            case 1...4:
                print(agent.accessLevel)
            case 5...7:
                print(agent.accessLevel)
            case 8...100:
                print(agent.accessLevel)
            default:
                print("NOT CLASSIFIED")
            }
        }
    }
//}

agentTotals()
