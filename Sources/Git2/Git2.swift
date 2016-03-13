//
//  Git2.swift
//  Git2
//
//  Created by Dr. Kibitz on 3/13/16.
//  Copyright © 2016 Dr. Kibitz <info@drkibitz.com>, Inc. All rights reserved.
//

import CGit2

final public class Git2 {

	public static let sharedInstance = Git2()
	public let version: String

	init() {
		git_libgit2_init()

		var major: Int32 = 0
		var minor: Int32 = 0
		var rev: Int32 = 0
		git_libgit2_version(&major, &minor, &rev)
		version = "\(major).\(minor).\(rev)"
	}

	deinit {
		git_libgit2_shutdown()
	}
}
