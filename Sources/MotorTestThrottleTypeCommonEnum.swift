//
//  MotorTestThrottleTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

public enum MotorTestThrottleType: Int {

	/// throttle as a percentage from 0 ~ 100
	case motorTestThrottlePercent = 0

	/// throttle as an absolute PWM value (normally in range of 1000~2000)
	case motorTestThrottlePwm = 1

	/// throttle pass-through from pilot's transmitter
	case motorTestThrottlePilot = 2
}

extension MotorTestThrottleType: Enumeration {
    public static var typeName = "MOTOR_TEST_THROTTLE_TYPE"
    public static var typeDescription = ""
    public static var allMembers = [motorTestThrottlePercent, motorTestThrottlePwm, motorTestThrottlePilot]
    public static var membersDescriptions = [("MOTOR_TEST_THROTTLE_PERCENT", "throttle as a percentage from 0 ~ 100"), ("MOTOR_TEST_THROTTLE_PWM", "throttle as an absolute PWM value (normally in range of 1000~2000)"), ("MOTOR_TEST_THROTTLE_PILOT", "throttle pass-through from pilot's transmitter")]
    public static var enumEnd = UInt(3)
}
