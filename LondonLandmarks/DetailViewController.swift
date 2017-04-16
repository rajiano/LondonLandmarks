//
//  detailViewController.swift
//  LondonLandmarks
//
//  Created by Oludemilade Raji on 4/16/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import MapKit

class detailViewController: UIViewController {

    @IBOutlet var detailImageView: UIImageView!
    @IBOutlet var detailTitle: UILabel!
    @IBOutlet var detailDescription: UILabel!
    @IBOutlet var detailText: UITextView!
    @IBOutlet var detailMap: MKMapView!
    @IBOutlet var button: UIButton!
    
    //These has Data from all the tableView COntroller
    var sendData1:String!
    var sendData2:String!
    var sendData3:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        detailTitle.textColor = UIColor(red: 35/255, green: 90/255, blue: 141/255, alpha: 1.0)
        button.backgroundColor = UIColor(red: 35/255, green: 90/255, blue: 141/255, alpha: 1.0)

        button.layer.cornerRadius = 4
        detailMap.layer.cornerRadius = 4
        
        detailTitle.text = sendData1
        detailDescription.text = sendData2
        detailImageView.image = UIImage(named: sendData3)
        
        self.navigationItem.title = sendData1
       
        if detailTitle.text == "Big Ben"{
            detailText.text = "Big Ben is the nickname for the Great Bell of the clock at the north end of the Palace of Westminster in London and is usually extended to refer to both the clock and the clock tower as well.The tower is officially known as Elizabeth Tower, renamed to celebrate the Diamond Jubilee of Elizabeth II in 2012; previously, it was known simply as the Clock Tower. \n\nWhen completed in 1859, it was, says clockmaker Ian Westworth, \"the prince of timekeepers: the biggest, most accurate four-faced striking and chiming clock in the world.\" The tower had its 150th anniversary on 31 May 2009, during which celebratory events took place."
        }
        else if detailTitle.text == "Buckingham Palace"{
            detailText.text = "Buckingham Palace (UK /ˈbʌkɪŋəm ˈpælɪs/) is the London residence and administrative headquarters of the reigning monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning. \n\n Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House. During the 19th century it was enlarged, principally by architects John Nash and Edward Blore, who constructed three wings around a central courtyard. Buckingham Palace became the London residence of the British monarch on the accession of Queen Victoria in 1837."
        }
        else if detailTitle.text == "London Eye"{
            detailText.text = "The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London. Also known as the Millennium Wheel, it has also been called by its owners the British Airways London Eye, the Merlin Entertainments London Eye, the EDF Energy London Eye and, as of mid-January 2015, the Coca-Cola London Eye.\n\nThe structure is 443 feet (135 m) tall and the wheel has a diameter of 394 feet (120 m). When erected in 1999 it was the world's tallest Ferris wheel. Its height was surpassed by the 520 feet (158 m) tall Star of Nanchang in 2006, the 541 feet (165 m) tall Singapore Flyer in 2008, and the 550 feet (168 m) High Roller (Las Vegas) in 2014. Supported by an A-frame on one side only, unlike the taller Nanchang and Singapore wheels, the Eye is described by its operators as \"the world's tallest cantilevered observation wheel\"."
        }
        else if detailTitle.text == "St Paul's Cathedral"{
            detailText.text = "St Paul's Cathedral, London, is an Anglican cathedral, the seat of the Bishop of London and the mother church of the Diocese of London. It sits on Ludgate Hill at the highest point of the City of London and is a Grade 1 listed building. Its dedication to Paul the Apostle dates back to the original church on this site, founded in AD 604. The present church, dating from the late 17th century, was designed in the English Baroque style by Sir Christopher Wren. Its construction, completed in Wren's lifetime, was part of a major rebuilding programme in the City after the Great Fire of London."
        }
        else if detailTitle.text == "Tower Bridge"{
            detailText.text = "Tower Bridge is a combined bascule and suspension bridge in London built in 1886–1894. The bridge crosses the River Thames close to the Tower of London and has become an iconic symbol of London. Tower Bridge is one of five London bridges now owned and maintained by the Bridge House Estates, a charitable trust overseen by the City of London Corporation. It is the only one of the Trust's bridges not to connect the City of London directly to the Southwark bank, as its northern landfall is in Tower Hamlets. \n\nThe bridge consists of two bridge towers tied together at the upper level by two horizontal walkways, designed to withstand the horizontal tension forces exerted by the suspended sections of the bridge on the landward sides of the towers. The vertical components of the forces in the suspended sections and the vertical reactions of the two walkways are carried by the two robust towers. The bascule pivots and operating machinery are housed in the base of each tower. Before its restoration in the 2010s, the bridge's colour scheme dated from 1977, when it was painted red, white and blue for Queen Elizabeth II's Silver Jubilee. Its colours were subsequently restored to blue and white."
        }
        else{
            detailText.text = "Westminster Abbey, formally titled the Collegiate Church of St Peter at Westminster, is a large, mainly Gothic abbey church in the City of Westminster, London, just to the west of the Palace of Westminster. It is one of the United Kingdom's most notable religious buildings and the traditional place of coronation and burial site for English and, later, British monarchs. Between 1540 and 1556, the abbey had the status of a cathedral. Since 1560, however, the building is no longer an abbey nor a cathedral, having instead the status of a Church of England \"Royal Peculiar\"—a church responsible directly to the sovereign. The building itself is the original abbey church."
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Direction(_ sender: Any) {
    }

}
