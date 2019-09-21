//
//  ConsumerExtension.swift
//  Bread Consumer
//
//  Created by Prasanth Podalakur on 22/05/19.
//

import Foundation
import UIKit
import LocalAuthentication







/*extension UITextField {
    func isError(baseColor: CGColor, numberOfShakes shakes: Float, revert: Bool) {
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "shadowColor")
        animation.fromValue = baseColor
        animation.toValue = UIColor.clear.cgColor
        animation.duration = 0.4
        if revert { animation.autoreverses = true } else { animation.autoreverses = false }
        self.layer.add(animation, forKey: "")
        
        let shake: CABasicAnimation = CABasicAnimation(keyPath: "position")
        shake.duration = 0.07
        shake.repeatCount = shakes
        if revert { shake.autoreverses = true  } else { shake.autoreverses = false }
        shake.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        shake.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        self.layer.add(shake, forKey: "position")
    }
}

//MARK:- dainamic UIFont
extension UILabel {
    override open func awakeFromNib() {
        super.awakeFromNib()
        
        if self.font.monospacedDigitsFont() == .regular {
            self.setRegularFont()
        }else if  self.font.monospacedDigitsFont() == .medium {
            self.setMediumFont()
        }else if self.font.monospacedDigitsFont() == .light {
            self.setLightFont()
        }else if self.font.monospacedDigitsFont() == .bold {
            self.setBoldFont()
        }
    }
    func setRegularFont(){
        self.font =  UIFont(name:FONT_REGULAR, size: self.font.pointSize-1)
    }
    func setMediumFont(){
        self.font =  UIFont(name: FONT_MEDIUM, size: self.font.pointSize-1)
    }
    func setLightFont(){
        self.font =  UIFont(name: FONT_LIGHT, size: self.font.pointSize-1)
    }
    func setBoldFont(){
        self.font =  UIFont(name: FONT_BOLD, size: self.font.pointSize-1)
    }
    func setMontserratItalic(){
        self.font =  UIFont(name:  FONT_ITALIC, size: self.font.pointSize-1)
    }
}
extension UITextField{
    override open func awakeFromNib() {
        super.awakeFromNib()
        
        if self.font?.monospacedDigitsFont() == .regular {
            self.setRegularFont()
        }else if  self.font?.monospacedDigitsFont() == .medium {
            self.setMediumFont()
        }else if self.font?.monospacedDigitsFont() == .light {
            self.setLightFont()
        }else if self.font?.monospacedDigitsFont() == .bold {
            self.setBoldFont()
        }
    }
    func setRegularFont(){
        self.font =  UIFont(name:FONT_REGULAR, size:(self.font?.pointSize ?? 1)-1)
    }
    func setMediumFont(){
        self.font =  UIFont(name: FONT_MEDIUM, size: (self.font?.pointSize ?? 1)-1)
    }
    func setLightFont(){
        self.font =  UIFont(name:FONT_LIGHT, size: (self.font?.pointSize ?? 1)-1)
    }
    func setBoldFont(){
        self.font =  UIFont(name: FONT_BOLD, size: (self.font?.pointSize ?? 1)-1)
    }
    func setMontserratItalic(){
        self.font =  UIFont(name:  FONT_ITALIC, size: (self.font?.pointSize ?? 1)-1)
    }
}
extension UITextView{
    override open func awakeFromNib() {
        super.awakeFromNib()
        
        if self.font?.monospacedDigitsFont() == .regular {
            self.setRegularFont()
        }else if  self.font?.monospacedDigitsFont() == .medium {
            self.setMediumFont()
        }else if self.font?.monospacedDigitsFont() == .light {
            self.setLightFont()
        }else if self.font?.monospacedDigitsFont() == .bold {
            self.setBoldFont()
        }
    }
    func setRegularFont(){
        self.font =  UIFont(name:FONT_REGULAR, size:(self.font?.pointSize ?? 1)-1)
    }
    func setMediumFont(){
        self.font =  UIFont(name: FONT_MEDIUM, size: (self.font?.pointSize ?? 1)-1)
    }
    func setLightFont(){
        self.font =  UIFont(name: FONT_LIGHT, size: (self.font?.pointSize ?? 1)-1)
    }
    func setBoldFont(){
        self.font =  UIFont(name: FONT_BOLD, size: (self.font?.pointSize ?? 1)-1)
    }
    func setMontserratItalic(){
        self.font =  UIFont(name:  FONT_ITALIC, size: (self.font?.pointSize ?? 1)-1)
    }
}
extension UIButton {
    //    myButton.titleLabel?.font =  UIFont(name: YourfontName, size: 20)
    override open func awakeFromNib() {
        super.awakeFromNib()
        if self.titleLabel?.font.monospacedDigitsFont() == .regular {
            self.setRegularFont()
        }else if  self.titleLabel?.font.monospacedDigitsFont() == .medium {
            self.setMediumFont()
        }else if self.titleLabel?.font.monospacedDigitsFont() == .light {
            self.setLightFont()
        }else if self.titleLabel?.font.monospacedDigitsFont() == .bold {
            self.setBoldFont()
        }
        
    }
    
    func setRegularFont(){
        self.titleLabel?.font =  UIFont(name:FONT_REGULAR, size: (self.titleLabel?.font.pointSize ?? 1) - 1)
    }
    func setMediumFont(){
        self.titleLabel?.font =  UIFont(name: FONT_MEDIUM, size: (self.titleLabel?.font.pointSize ?? 1) - 1)
    }
    func setLightFont(){
        self.titleLabel?.font =  UIFont(name: FONT_LIGHT, size: (self.titleLabel?.font.pointSize ?? 1)-1)
    }
    func setBoldFont(){
        self.titleLabel?.font =  UIFont(name: FONT_BOLD, size: (self.titleLabel?.font.pointSize ?? 0)-1)
    }
    func setMontserratItalic(){
        self.titleLabel?.font =  UIFont(name:  FONT_ITALIC, size: (self.titleLabel?.font.pointSize ?? 1)-1)
    }
} */
extension UIFont {
    
    func monospacedDigitsFont() -> UIFont.Weight {
        
        if #available(iOS 9, *) {
            
            //            guard self.fontName.hasPrefix(".SFUI") else {
            //                return self
            //            }
            
            guard self.fontName.components(separatedBy: "-").count == 2,
                let weightSuffix = self.fontName.components(separatedBy: "-").last else {
                    
                    return UIFont.Weight.regular  //return UIFont.monospacedDigitSystemFont(ofSize: self.pointSize, weight: UIFont.Weight.regular)
            }
            
            let fontWeight: CGFloat
            switch weightSuffix {
            case "Ultralight":
                fontWeight = UIFont.Weight.ultraLight.rawValue
            case "Light":
                fontWeight = UIFont.Weight.light.rawValue
            case "Thin":
                fontWeight = UIFont.Weight.thin.rawValue
            case "Regular":
                fontWeight = UIFont.Weight.regular.rawValue
            case "Medium":
                fontWeight = UIFont.Weight.medium.rawValue
            case "Semibold":
                fontWeight = UIFont.Weight.semibold.rawValue
            case "Bold":
                fontWeight = UIFont.Weight.bold.rawValue
            case "Heavy":
                fontWeight = UIFont.Weight.heavy.rawValue
            case "Black":
                fontWeight = UIFont.Weight.black.rawValue
            default:
                fontWeight = UIFont.Weight.ultraLight.rawValue
            }
            
            return UIFont.Weight(rawValue: fontWeight)//UIFont.monospacedDigitSystemFont(ofSize: self.pointSize, weight: UIFont.Weight(rawValue: fontWeight))
        }
        
        return UIFont.Weight.regular//self
    }
    
}
//MARK:- UIViewController


//MARK:- UIVIEW

extension UIView{
    func roundCornersforPerticularSide(_ corners:UIRectCorner,_ cormerMask:CACornerMask, radius: CGFloat) {
        if #available(iOS 11.0, *){
            self.clipsToBounds = false
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = cormerMask
        }else{
            let rectShape = CAShapeLayer()
            rectShape.bounds = self.frame
            rectShape.position = self.center
            rectShape.path = UIBezierPath(roundedRect: self.bounds,    byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius)).cgPath
            self.layer.mask = rectShape
        }
        
    }
    
    
   
}

/*extension UIScrollView {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.next?.touchesBegan(touches, with: event)
        for touch in touches {
            touch.view?.isUserInteractionEnabled = true
        }
    }
} */

extension UIDevice {
    
    var iPhoneX: Bool {
        return UIScreen.main.nativeBounds.height == 2436
    }
    
    var iPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    enum ScreenType: String {
        case iPhones_4_4S = "IPHONE_4OR_4S"
        case iPhones_5_5s_5c_SE = "IPHONE_5, IPHONE_5S, IPHONE_5C_OR_IPHONE_SE"
        case iPhones_6_6s_7_8 = "IPHONE_6, IPHONE_6S, IPHONE 7 OR IPHONE 8"
        case iPhones_6Plus_6sPlus_7Plus_8Plus = "IPHONE 6 PLUS, IPHONE 6S PLUS, IPHONE 7 PLUS OR IPHONE 8 PLUS"
        case iPhones_X_XS = "IPHONE X OR IPHONE XS"
        case iPhone_XR = "IPHONE XR"
        case iPhone_XSMax = "IPHONE XS MAX"
        case iPad_X = "IPAD X SERIES"
        case unknown
    }
    
    var screenType: ScreenType {
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhones_4_4S
        case 1136:
            return .iPhones_5_5s_5c_SE
        case 1334:
            return .iPhones_6_6s_7_8
        case 1792:
            return .iPhone_XR
        case 1920, 2208:
            return .iPhones_6Plus_6sPlus_7Plus_8Plus
        case 2436:
            return .iPhones_X_XS
        case 2688:
            return .iPhone_XSMax
        case 2732.0:
            return .iPhone_XSMax
        default:
            return .unknown
        }
    }
}
//MARK:- extension Date

extension Date
{
    func dateTostringConvetion() -> String{
        
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date / server String
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: self) // string purpose I add here
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        
        print(myStringafd)
        return myStringafd
        
    }
    
    func isBetween(startDate:Date, endDate:Date)->Bool
    {
        return (startDate.compare(self) == .orderedAscending) && (endDate.compare(self) == .orderedDescending)
    }
    func getSelectedFromCalendar(n: Int) -> Date {
        let cal = NSCalendar.current
        let pastDate = cal.date(byAdding: .day, value: n, to: self)!
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let myString = formatter.string(from: pastDate)
        let yourDate = formatter.date(from: myString)
        formatter.dateFormat = "MM dd yyyy"
        let selectedDateSTR = formatter.string(from: yourDate!)
        let selectedDate = formatter.date(from: selectedDateSTR)
        return selectedDate!
    }
    
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    func asString(style: DateFormatter.Style) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = style
        return dateFormatter.string(from: self)
    }
    
    //*********************************************************************//
    ////get weeks end///
    static func today() -> Date {
        return Date()
    }
    
    func next(_ weekday: Weekday, considerToday: Bool = false) -> Date {
        return get(.Next,
                   weekday,
                   considerToday: considerToday)
    }
    
    func previous(_ weekday: Weekday, considerToday: Bool = false) -> Date {
        return get(.Previous,
                   weekday,
                   considerToday: considerToday)
    }
    
    func get(_ direction: SearchDirection,
             _ weekDay: Weekday,
             considerToday consider: Bool = false) -> Date {
        
        let dayName = weekDay.rawValue
        
        let weekdaysName = getWeekDaysInEnglish().map { $0.lowercased() }
        
        assert(weekdaysName.contains(dayName), "weekday symbol should be in form \(weekdaysName)")
        
        let searchWeekdayIndex = weekdaysName.index(of: dayName)! + 1
        
        let calendar = Calendar(identifier: .gregorian)
        
        if consider && calendar.component(.weekday, from: self) == searchWeekdayIndex {
            return self
        }
        
        var nextDateComponent = DateComponents()
        nextDateComponent.weekday = searchWeekdayIndex
        
        let date = calendar.nextDate(after: self,
                                     matching: nextDateComponent,
                                     matchingPolicy: .nextTime,
                                     direction: direction.calendarSearchDirection)
        
        return date!
    }
    
    ////get weeks end///
    
    func before3days() -> Date?{
        return Calendar.current.date(byAdding: .day, value: -3, to: Date())!
    }
    
    func getThisMonthStart() -> Date? {
        let components = Calendar.current.dateComponents([.year, .month], from: self)
        return Calendar.current.date(from: components)!
    }
    
    func getThisMonthEnd() -> Date? {
        let components:NSDateComponents = Calendar.current.dateComponents([.year, .month], from: self) as NSDateComponents
        components.month += 1
        components.day = 1
        components.day -= 1
        return Calendar.current.date(from: components as DateComponents)!
    }
    
    func getWeekDaysInEnglish() -> [String] {
        var calendar = Calendar(identifier: .gregorian)
        calendar.locale = Locale(identifier: "en_US_POSIX")
        return calendar.weekdaySymbols
    }
    
    enum Weekday: String {
        case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    }
    
    enum SearchDirection {
        case Next
        case Previous
        
        var calendarSearchDirection: Calendar.SearchDirection {
            switch self {
            case .Next:
                return .forward
            case .Previous:
                return .backward
            }
        }
    }
}

extension String {

    //MARK:- formatting text for currency textField
    func currencyInputFormatting() -> String {
        var number: NSNumber!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = ""
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.positivePrefix =  formatter.positivePrefix.trimmingCharacters(in: .whitespaces)
        formatter.negativePrefix =  formatter.negativePrefix.trimmingCharacters(in: .whitespaces)
        var amountWithPrefix = self
        // remove from String: "$", ".", ","
        let regex = try! NSRegularExpression(pattern: "[^0-9-]", options: .caseInsensitive)
        amountWithPrefix = regex.stringByReplacingMatches(in: amountWithPrefix, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count), withTemplate: "")
        let double = (amountWithPrefix as NSString).doubleValue
        number = NSNumber(value: (double / 100))
        // if first number is 0 or all numbers were deleted
        guard number != 0 as NSNumber else {
            return "0.00 "
        }
        return formatter.string(from: number)!
    }
    
    
    func formatStringCenter(NOOFCharInFirst:Int,NOOFCharInLast:Int) -> String{
        let strArray = Array(self)
        var chars : [Character] = []
        var count :Int = 1
        for c in strArray {
            
            if count > NOOFCharInFirst && count < self.count-NOOFCharInLast+1 {
                chars.append("*")
            }else {
                chars.append(c)
            }
            count = count + 1
        }
        return String(chars)
    }
}

//string extension

extension String{
    
}
