//
//  StyleKit.swift
//  PaintCodeTests
//
//  Created by Fernando Fernandes on 03.09.18.
//  Copyright © 2018 backslash-f. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class StyleKit : NSObject {

    static var touchedElementID: CGFloat?

    //// Drawing Methods

    @objc dynamic public class func drawClockHand(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 200, height: 200), resizing: ResizingBehavior = .aspectFit, rotation: CGFloat = 377) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 200, height: 200), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 200, y: resizedFrame.height / 200)



        //// Variable Declarations
        let rotationSanitized: CGFloat = rotation > 1 ? fmod(rotation, 360) * -1 : 0
        let touchedElementID: CGFloat = rotationSanitized <= -352 || rotationSanitized >= -8 ? 1 : (rotationSanitized <= -82 && rotationSanitized >= -98 ? 2 : (rotationSanitized <= -172 && rotationSanitized >= -188 ? 3 : (rotationSanitized <= -262 && rotationSanitized >= -278 ? 4 : 0)))

        //// TouchedElementIDPlaceholder Drawing
        context.saveGState()
        context.rotate(by: -1 * CGFloat.pi/180)

        context.saveGState()
        context.setAlpha(touchedElementID)


        context.restoreGState()

        context.restoreGState()

        StyleKit.touchedElementID = touchedElementID

        //// Rectangle4 Drawing
        let rectangle4Path = UIBezierPath(rect: CGRect(x: 0, y: 92, width: 16, height: 16))
        UIColor.blue.setFill()
        rectangle4Path.fill()


        //// Rectangle3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 92, y: 184, width: 16, height: 16))
        UIColor.green.setFill()
        rectangle3Path.fill()


        //// Rectangle2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 184, y: 92, width: 16, height: 16))
        UIColor.black.setFill()
        rectangle2Path.fill()


        //// Rectangle1 Drawing
        let rectangle1Path = UIBezierPath(rect: CGRect(x: 92, y: 0, width: 16, height: 16))
        UIColor.gray.setFill()
        rectangle1Path.fill()


        //// ClockHandRedBezier Drawing
        context.saveGState()
        context.translateBy(x: 100, y: 100)
        context.rotate(by: -rotationSanitized * CGFloat.pi/180)

        let clockHandRedBezierPath = UIBezierPath()
        clockHandRedBezierPath.move(to: CGPoint(x: 0, y: -95))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 0, y: -95))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 0, y: -95))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 0.25, y: -95))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: 4.63, y: -92.21), controlPoint1: CGPoint(x: 2.21, y: -95), controlPoint2: CGPoint(x: 3.96, y: -93.89))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: 5, y: -88.14), controlPoint1: CGPoint(x: 5, y: -91.14), controlPoint2: CGPoint(x: 5, y: -90.14))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 5, y: 0.37))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: 4.67, y: 2.04), controlPoint1: CGPoint(x: 5, y: 0.14), controlPoint2: CGPoint(x: 5, y: 1.14))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 4.63, y: 2.21))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: 0.25, y: 5), controlPoint1: CGPoint(x: 3.96, y: 3.89), controlPoint2: CGPoint(x: 2.21, y: 5))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: 0, y: 5), controlPoint1: CGPoint(x: -0, y: 5), controlPoint2: CGPoint(x: 0, y: 5))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 0, y: 5))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 0, y: 5))
        clockHandRedBezierPath.addLine(to: CGPoint(x: -0.25, y: 5))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: -4.63, y: 2.21), controlPoint1: CGPoint(x: -2.21, y: 5), controlPoint2: CGPoint(x: -3.96, y: 3.89))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: -5, y: -1.86), controlPoint1: CGPoint(x: -5, y: 1.14), controlPoint2: CGPoint(x: -5, y: 0.14))
        clockHandRedBezierPath.addLine(to: CGPoint(x: -5, y: 0.37))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: -4.67, y: -92.04), controlPoint1: CGPoint(x: -5, y: -90.14), controlPoint2: CGPoint(x: -5, y: -91.14))
        clockHandRedBezierPath.addLine(to: CGPoint(x: -4.63, y: -92.21))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: -0.25, y: -95), controlPoint1: CGPoint(x: -3.96, y: -93.89), controlPoint2: CGPoint(x: -2.21, y: -95))
        clockHandRedBezierPath.addCurve(to: CGPoint(x: 0, y: -95), controlPoint1: CGPoint(x: 0, y: -95), controlPoint2: CGPoint(x: 0, y: -95))
        clockHandRedBezierPath.addLine(to: CGPoint(x: 0, y: -95))
        clockHandRedBezierPath.close()
        UIColor.red.setFill()
        clockHandRedBezierPath.fill()

        context.restoreGState()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawTreeIcon(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 44, height: 50), resizing: ResizingBehavior = .aspectFit, red: CGFloat = 0.5, green: CGFloat = 0.5, blue: CGFloat = 0.5, alpha: CGFloat = 0.5) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 44, height: 50), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 44, y: resizedFrame.height / 50)



        //// Variable Declarations
        let colorExpression = UIColor(red: red, green: green, blue: blue, alpha: alpha)

        //// TreeIconBezier Drawing
        let treeIconBezierPath = UIBezierPath()
        treeIconBezierPath.move(to: CGPoint(x: 41.7, y: 15.21))
        treeIconBezierPath.addCurve(to: CGPoint(x: 35.41, y: 8.2), controlPoint1: CGPoint(x: 41.7, y: 11.57), controlPoint2: CGPoint(x: 38.94, y: 8.57))
        treeIconBezierPath.addCurve(to: CGPoint(x: 28.82, y: 3.61), controlPoint1: CGPoint(x: 34.41, y: 5.52), controlPoint2: CGPoint(x: 31.85, y: 3.61))
        treeIconBezierPath.addCurve(to: CGPoint(x: 25.21, y: 4.62), controlPoint1: CGPoint(x: 27.5, y: 3.61), controlPoint2: CGPoint(x: 26.27, y: 3.98))
        treeIconBezierPath.addCurve(to: CGPoint(x: 19.07, y: 1), controlPoint1: CGPoint(x: 24.01, y: 2.46), controlPoint2: CGPoint(x: 21.71, y: 1))
        treeIconBezierPath.addCurve(to: CGPoint(x: 12.15, y: 6.92), controlPoint1: CGPoint(x: 15.58, y: 1), controlPoint2: CGPoint(x: 12.68, y: 3.57))
        treeIconBezierPath.addCurve(to: CGPoint(x: 11.28, y: 6.86), controlPoint1: CGPoint(x: 11.86, y: 6.89), controlPoint2: CGPoint(x: 11.57, y: 6.86))
        treeIconBezierPath.addCurve(to: CGPoint(x: 4.25, y: 13.91), controlPoint1: CGPoint(x: 7.4, y: 6.86), controlPoint2: CGPoint(x: 4.25, y: 10.02))
        treeIconBezierPath.addCurve(to: CGPoint(x: 4.28, y: 14.47), controlPoint1: CGPoint(x: 4.25, y: 14.1), controlPoint2: CGPoint(x: 4.26, y: 14.29))
        treeIconBezierPath.addCurve(to: CGPoint(x: 1, y: 20.42), controlPoint1: CGPoint(x: 2.31, y: 15.72), controlPoint2: CGPoint(x: 1, y: 17.92))
        treeIconBezierPath.addCurve(to: CGPoint(x: 3.62, y: 25.9), controlPoint1: CGPoint(x: 1, y: 22.64), controlPoint2: CGPoint(x: 2.02, y: 24.61))
        treeIconBezierPath.addCurve(to: CGPoint(x: 3.6, y: 26.29), controlPoint1: CGPoint(x: 3.61, y: 26.03), controlPoint2: CGPoint(x: 3.6, y: 26.16))
        treeIconBezierPath.addCurve(to: CGPoint(x: 10.63, y: 33.33), controlPoint1: CGPoint(x: 3.6, y: 30.18), controlPoint2: CGPoint(x: 6.75, y: 33.33))
        treeIconBezierPath.addCurve(to: CGPoint(x: 13.85, y: 32.54), controlPoint1: CGPoint(x: 11.79, y: 33.33), controlPoint2: CGPoint(x: 12.88, y: 33.04))
        treeIconBezierPath.addCurve(to: CGPoint(x: 18.03, y: 34.47), controlPoint1: CGPoint(x: 15.19, y: 33.5), controlPoint2: CGPoint(x: 17.11, y: 34.71))
        treeIconBezierPath.addCurve(to: CGPoint(x: 18.3, y: 41.19), controlPoint1: CGPoint(x: 18.03, y: 34.47), controlPoint2: CGPoint(x: 18.38, y: 39.83))
        treeIconBezierPath.addCurve(to: CGPoint(x: 16.84, y: 49), controlPoint1: CGPoint(x: 18.16, y: 43.78), controlPoint2: CGPoint(x: 17.39, y: 46.67))
        treeIconBezierPath.addLine(to: CGPoint(x: 25.29, y: 49))
        treeIconBezierPath.addCurve(to: CGPoint(x: 23.99, y: 42.06), controlPoint1: CGPoint(x: 25.29, y: 49), controlPoint2: CGPoint(x: 24.05, y: 43.8))
        treeIconBezierPath.addCurve(to: CGPoint(x: 24.53, y: 37.13), controlPoint1: CGPoint(x: 23.94, y: 40.32), controlPoint2: CGPoint(x: 24.53, y: 37.13))
        treeIconBezierPath.addLine(to: CGPoint(x: 27.46, y: 34.09))
        treeIconBezierPath.addCurve(to: CGPoint(x: 31.42, y: 35.3), controlPoint1: CGPoint(x: 28.59, y: 34.86), controlPoint2: CGPoint(x: 29.95, y: 35.3))
        treeIconBezierPath.addCurve(to: CGPoint(x: 38.41, y: 28.98), controlPoint1: CGPoint(x: 35.06, y: 35.3), controlPoint2: CGPoint(x: 38.05, y: 32.53))
        treeIconBezierPath.addCurve(to: CGPoint(x: 43, y: 22.38), controlPoint1: CGPoint(x: 41.09, y: 27.99), controlPoint2: CGPoint(x: 43, y: 25.41))
        treeIconBezierPath.addCurve(to: CGPoint(x: 41.23, y: 17.72), controlPoint1: CGPoint(x: 43, y: 20.59), controlPoint2: CGPoint(x: 42.33, y: 18.96))
        treeIconBezierPath.addCurve(to: CGPoint(x: 41.7, y: 15.21), controlPoint1: CGPoint(x: 41.53, y: 16.94), controlPoint2: CGPoint(x: 41.7, y: 16.09))
        treeIconBezierPath.close()
        treeIconBezierPath.move(to: CGPoint(x: 15.47, y: 31.38))
        treeIconBezierPath.addCurve(to: CGPoint(x: 16.87, y: 29.51), controlPoint1: CGPoint(x: 16.04, y: 30.84), controlPoint2: CGPoint(x: 16.51, y: 30.21))
        treeIconBezierPath.addLine(to: CGPoint(x: 18.25, y: 32.41))
        treeIconBezierPath.addCurve(to: CGPoint(x: 15.47, y: 31.38), controlPoint1: CGPoint(x: 18.25, y: 32.41), controlPoint2: CGPoint(x: 17.5, y: 32.74))
        treeIconBezierPath.close()
        treeIconBezierPath.move(to: CGPoint(x: 20.63, y: 33.17))
        treeIconBezierPath.addCurve(to: CGPoint(x: 17.84, y: 29.3), controlPoint1: CGPoint(x: 19.92, y: 33.3), controlPoint2: CGPoint(x: 18.7, y: 31.09))
        treeIconBezierPath.addCurve(to: CGPoint(x: 21.02, y: 30.07), controlPoint1: CGPoint(x: 18.8, y: 29.79), controlPoint2: CGPoint(x: 19.88, y: 30.07))
        treeIconBezierPath.addCurve(to: CGPoint(x: 21.89, y: 30.01), controlPoint1: CGPoint(x: 21.32, y: 30.07), controlPoint2: CGPoint(x: 21.61, y: 30.05))
        treeIconBezierPath.addCurve(to: CGPoint(x: 20.63, y: 33.17), controlPoint1: CGPoint(x: 21.67, y: 31.45), controlPoint2: CGPoint(x: 21.28, y: 33.05))
        treeIconBezierPath.close()
        treeIconBezierPath.move(to: CGPoint(x: 23.67, y: 34.58))
        treeIconBezierPath.addCurve(to: CGPoint(x: 23.48, y: 29.62), controlPoint1: CGPoint(x: 22.01, y: 35.04), controlPoint2: CGPoint(x: 23, y: 31.61))
        treeIconBezierPath.addCurve(to: CGPoint(x: 24.46, y: 29.17), controlPoint1: CGPoint(x: 23.82, y: 29.5), controlPoint2: CGPoint(x: 24.15, y: 29.35))
        treeIconBezierPath.addCurve(to: CGPoint(x: 26.21, y: 32.95), controlPoint1: CGPoint(x: 24.66, y: 30.61), controlPoint2: CGPoint(x: 25.28, y: 31.92))
        treeIconBezierPath.addCurve(to: CGPoint(x: 23.67, y: 34.58), controlPoint1: CGPoint(x: 25.41, y: 33.67), controlPoint2: CGPoint(x: 24.48, y: 34.35))
        treeIconBezierPath.close()
        colorExpression.setFill()
        treeIconBezierPath.fill()
        
        context.restoreGState()

    }

    @objc dynamic public class func drawTextButton(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 301, height: 120), resizing: ResizingBehavior = .aspectFit, buttonLabelText: String = "Hello, World!") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 301, height: 120), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 301, y: resizedFrame.height / 120)


        //// Color Declarations
        let strokeColor = UIColor(red: 0.137, green: 0.122, blue: 0.125, alpha: 1.000)

        //// ButtonGroup
        //// IconFaceGroup
        //// IconHeadBezier Drawing
        let iconHeadBezierPath = UIBezierPath(ovalIn: CGRect(x: 22, y: 18, width: 84, height: 84))
        strokeColor.setStroke()
        iconHeadBezierPath.lineWidth = 2
        iconHeadBezierPath.stroke()


        //// IconFaceBezier Drawing
        let iconFaceBezierPath = UIBezierPath()
        iconFaceBezierPath.move(to: CGPoint(x: 78, y: 72.44))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 64, y: 89.56), controlPoint1: CGPoint(x: 78, y: 81.89), controlPoint2: CGPoint(x: 71.73, y: 89.56))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 50, y: 72.44), controlPoint1: CGPoint(x: 56.27, y: 89.56), controlPoint2: CGPoint(x: 50, y: 81.89))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 64, y: 55.33), controlPoint1: CGPoint(x: 50, y: 62.99), controlPoint2: CGPoint(x: 56.27, y: 55.33))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 78, y: 72.44), controlPoint1: CGPoint(x: 71.73, y: 55.33), controlPoint2: CGPoint(x: 78, y: 62.99))
        iconFaceBezierPath.close()
        iconFaceBezierPath.move(to: CGPoint(x: 39.11, y: 42.89))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 45.33, y: 49.11), controlPoint1: CGPoint(x: 39.11, y: 46.33), controlPoint2: CGPoint(x: 41.9, y: 49.11))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 51.56, y: 42.89), controlPoint1: CGPoint(x: 48.77, y: 49.11), controlPoint2: CGPoint(x: 51.56, y: 46.33))
        iconFaceBezierPath.move(to: CGPoint(x: 76.44, y: 42.89))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 82.67, y: 49.11), controlPoint1: CGPoint(x: 76.44, y: 46.33), controlPoint2: CGPoint(x: 79.23, y: 49.11))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 88.89, y: 42.89), controlPoint1: CGPoint(x: 86.1, y: 49.11), controlPoint2: CGPoint(x: 88.89, y: 46.33))
        iconFaceBezierPath.move(to: CGPoint(x: 76.46, y: 80.24))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 70.22, y: 77.11), controlPoint1: CGPoint(x: 75.04, y: 78.34), controlPoint2: CGPoint(x: 72.77, y: 77.11))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 63.99, y: 80.23), controlPoint1: CGPoint(x: 67.67, y: 77.11), controlPoint2: CGPoint(x: 65.41, y: 78.34))
        iconFaceBezierPath.addLine(to: CGPoint(x: 64, y: 80.23))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 57.78, y: 77.11), controlPoint1: CGPoint(x: 62.58, y: 78.33), controlPoint2: CGPoint(x: 60.32, y: 77.11))
        iconFaceBezierPath.addCurve(to: CGPoint(x: 51.54, y: 80.25), controlPoint1: CGPoint(x: 55.22, y: 77.11), controlPoint2: CGPoint(x: 52.95, y: 78.34))
        strokeColor.setStroke()
        iconFaceBezierPath.lineWidth = 2
        iconFaceBezierPath.stroke()




        //// ButtonText Drawing
        let buttonTextRect = CGRect(x: 127, y: 21, width: 151, height: 78)
        let buttonTextStyle = NSMutableParagraphStyle()
        buttonTextStyle.alignment = .center
        let buttonTextFontAttributes = [
            .font: UIFont.systemFont(ofSize: 24),
            .foregroundColor: UIColor.black,
            .paragraphStyle: buttonTextStyle,
        ] as [NSAttributedStringKey: Any]

        let buttonTextTextHeight: CGFloat = buttonLabelText.boundingRect(with: CGSize(width: buttonTextRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: buttonTextFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: buttonTextRect)
        buttonLabelText.draw(in: CGRect(x: buttonTextRect.minX, y: buttonTextRect.minY + (buttonTextRect.height - buttonTextTextHeight) / 2, width: buttonTextRect.width, height: buttonTextTextHeight), withAttributes: buttonTextFontAttributes)
        context.restoreGState()
        
        context.restoreGState()

    }




    @objc(StyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
