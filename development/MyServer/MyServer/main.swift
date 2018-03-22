//
//  main.swift
//  MyServer
//
//  Created by Mijeong Ban on 3/6/18.
//  Copyright © 2018 Mijeong Ban. All rights reserved.
//

import Foundation

print("Hello, World!")

func echoService(client: TCPClient) {
    print("Newclient from:\(client.address)[\(client.port)]")
    var d = client.read(1024*10)
    client.send(data: d!)
    client.close()
}

func testServer() {
    let server = TCPServer(address: "127.0.0.1", port: 8080)
    switch server.listen() {
    case .success:
        while true {
            if var client = server.accept() {
                echoService(client: client)
            } else {
                print("accept error")
            }
        }
    case .failure(let error):
        print(error)
    }
}

var stdinput = FileHandle.standardInput
stdinput.readDataToEndOfFile()
