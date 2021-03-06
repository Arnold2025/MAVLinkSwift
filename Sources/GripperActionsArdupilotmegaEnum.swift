//
//  GripperActionsArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Gripper actions.
public enum GripperActions: Int {

	/// gripper release of cargo
	case gripperActionRelease = 0

	/// gripper grabs onto cargo
	case gripperActionGrab = 1
}

extension GripperActions: Enumeration {
    public static var typeName = "GRIPPER_ACTIONS"
    public static var typeDescription = "Gripper actions."
    public static var allMembers = [gripperActionRelease, gripperActionGrab]
    public static var membersDescriptions = [("GRIPPER_ACTION_RELEASE", "gripper release of cargo"), ("GRIPPER_ACTION_GRAB", "gripper grabs onto cargo")]
    public static var enumEnd = UInt(2)
}
