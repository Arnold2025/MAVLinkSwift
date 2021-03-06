//
//  MAVRemoteLogDataBlockStatusesArdupilotmegaEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Possible remote log data block statuses
public enum MAVRemoteLogDataBlockStatuses: UInt8 {

	/// This block has NOT been received
	case mavRemoteLogDataBlockNack = 0

	/// This block has been received
	case mavRemoteLogDataBlockAck = 1
}

extension MAVRemoteLogDataBlockStatuses: Enumeration {
    public static var typeName = "MAV_REMOTE_LOG_DATA_BLOCK_STATUSES"
    public static var typeDescription = "Possible remote log data block statuses"
    public static var allMembers = [mavRemoteLogDataBlockNack, mavRemoteLogDataBlockAck]
    public static var membersDescriptions = [("MAV_REMOTE_LOG_DATA_BLOCK_NACK", "This block has NOT been received"), ("MAV_REMOTE_LOG_DATA_BLOCK_ACK", "This block has been received")]
    public static var enumEnd = UInt(2)
}
