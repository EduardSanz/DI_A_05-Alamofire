//
//  PersonajeTableViewCell.swift
//  DI_A_05-Alamofire
//
//  Created by Eduard on 19/01/2023.
//

import UIKit

class PersonajeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSexo: UILabel!
    @IBOutlet weak var imgPersonaje: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
