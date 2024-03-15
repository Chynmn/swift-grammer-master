import UIKit

var cnt = 0
var visited = [Bool]()
var order = [Int]()

func dfs(_ now: Int, _ parent: Int) -> Int {
    cnt += 1
    visited[now] = true
    order[now] = cnt
    let lsv = order[now]
    
    for child in graph[now] {
        if child == parent { continue }
        
        
    }
}






while(true) {
    print("---------------- 브리지 테스트 ----------------")
    print("생성된 그래프에서 브리지를 확인 할 옵션의 번호를 입력하세요.")
    print("1. 전체 브리지 확인하기")
    print("2. 두 정점을 입력해 브리지 여부 판별하기")
    print("-1. 프로그램 종료")
    
    let option = Int(readLine()!)!
    
    switch option {
    case 1:
        print("------------- 전체 브리지 확인 -------------")
        
    case 2:
        print("------------- 브리지 여부 판별 -------------")
        print("브리지 여부를 판별할 두 정점을 입력해주세요")
        print("입력 예 : 1 2")
        
    case -1:
        print("------------ 브리지 프로그램 종료 ------------")
        
    default:
        print("잘못된 번호를 입력하셨습니다! 다시 입력해주세요.")
        break
    }
}


var V = 0
var E = 0

print("정점의 개수와 간선의 개수를 입력하세요 : ", terminator: "")
if let input = readLine(),
   let values = input.split(separator: " ").compactMap({ Int($0) }),
   values.count == 2 {
    V = values[0]
    E = values[1]
}

var graph = [[Int]](repeating: [], count: V + 1) // 그래프를 선언
// 크기가 노드의 개수 + 1인 이유: 0번째 인덱스는 더미로 둘 것이기 때문.

visited = [Bool](repeating: false, count: V + 1) // dfs를 위한 방문 여부 확인 bool 리스트

order = [Int](repeating: -1, count: V + 1) // 순회를 체크하기 위한 배열 선언, -1로 초기화

for _ in 0..<E {
    print("간선의 양 끝 점을 입력해 주세요 : ", terminator: "")
    if let input = readLine(),
       let values = input.split(separator: " ").compactMap({ Int($0) }),
       values.count == 2 {
        let A = values[0]
        let B = values[1]
        graph[A].append(B)
        graph[B].append(A)
    }
}

var bridge = [[Int]]()

dfs(1, nil)

for i in 0..<bridge.count {
    bridge[i].sort()
}


