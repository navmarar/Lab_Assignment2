//
//  ProdcutModel+CoreDataProperties.swift
//  A2_FA_iOS_navjot_C0811657
//
//  Created by Navjot on 24/05/21.
//
//

import Foundation
import CoreData


extension ProdcutModel {

    @nonobjc public class func fetchCoreRequest() -> NSFetchRequest<ProdcutModel> {
        return NSFetchRequest<ProdcutModel>(entityName: "ProdcutModel")
    }

    @NSManaged public var productDescription: String?
    @NSManaged public var productId: String?
    @NSManaged public var productName: String?
    @NSManaged public var productPrice: Double
    @NSManaged public var productProvider: String?

}

extension ProdcutModel : Identifiable {

}
