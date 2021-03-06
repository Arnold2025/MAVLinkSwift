//
//  GoproProtuneSharpnessArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum GoproProtuneSharpness: Int {

	/// Low Sharpness
	case low = 0

	/// Medium Sharpness
	case medium = 1

	/// High Sharpness
	case high = 2
}

extension GoproProtuneSharpness: Enumeration {
    public static var typeName = "GOPRO_PROTUNE_SHARPNESS"
    public static var typeDescription = ""
    public static var allMembers = [low, medium, high]
    public static var membersDescriptions = [("GOPRO_PROTUNE_SHARPNESS_LOW", "Low Sharpness"), ("GOPRO_PROTUNE_SHARPNESS_MEDIUM", "Medium Sharpness"), ("GOPRO_PROTUNE_SHARPNESS_HIGH", "High Sharpness")]
    public static var enumEnd = UInt(3)
}
