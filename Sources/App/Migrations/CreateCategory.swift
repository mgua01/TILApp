//
//  File.swift
//  
//
//  Created by Ahmed Mgua on 19/09/2021.
//

import Fluent

struct CreateCategory: Migration	{
	func prepare(on database: Database) -> EventLoopFuture<Void> {
		database.schema("categories")
			.id()
			.field("name", .string, .required)
			.create()
	}
	
	func revert(on database: Database) -> EventLoopFuture<Void> {
		database.schema("categories")
			.delete()ç
	}
}
