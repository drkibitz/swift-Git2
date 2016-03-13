//
//  main.swift
//  swift-git
//
//  Created by Dr. Kibitz on 3/13/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com>, Inc. All rights reserved.
//

import Git2

let version = Git2.sharedInstance.version

print("Hello, world!")
print("libgit2 version: \(version)")
