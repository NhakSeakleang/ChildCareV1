//
//  DetailVC.swift
//  Child Care Center
//
//  Created by GIS on 8/8/19.
//  Copyright © 2019 GIS. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var detailView: DetailView!
    let descriptions: String = "From young kids in our Drop-in Daycare project, through to young adults living in transitional homes while they study at university, we provide high quality care and support to children in need.\n\nCCF supports children who live in “absolute poverty”, as defined by the World Bank. Living around the former garbage dump, the children are at constant risk of abuse, alcoholism and hunger. Providing the long-term care and education these children so badly need and deserve requires the involvement of the family.\n\nVery often, a child attending school means one less income for a struggling family, or no-one to care for younger siblings. The long-term benefits of education are well researched. However for a mother who lives for each day, where next week or next month have little meaning, the decision is simply whether to send your child to school or have food for the family that night.\n\nFrom young kids in our Drop-in Daycare project, through to young adults living in transitional homes while they study at university, we provide high quality care and support to children in need.\n\nCCF supports children who live in “absolute poverty”, as defined by the World Bank. Living around the former garbage dump, the children are at constant risk of abuse, alcoholism and hunger. Providing the long-term care and education these children so badly need and deserve requires the involvement of the family.\n\nVery often, a child attending school means one less income for a struggling family, or no-one to care for younger siblings. The long-term benefits of education are well researched. However for a mother who lives for each day, where next week or next month have little meaning, the decision is simply whether to send your child to school or have food for the family that night."

    override func viewDidLoad() {
        super.viewDidLoad()

        setUp()
    }
    
    func setUp() {
        title = "Detail"
//        detailView = DetailView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        detailView = DetailView()
        detailView.setData(image: #imageLiteral(resourceName: "MarkerPreview"), title: "Title", time: "7:00 AM - 5:00 PM", description: descriptions)
        view = detailView
    }
    
//    override func viewDidLayoutSubviews() {
//        detailView.setData(image: #imageLiteral(resourceName: "MarkerPreview"), title: "Title", time: "7:00 AM - 5:00 PM", description: "Descriptions")
//    }

}
