//
//  GoproSetResponseArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Response from a GOPRO_COMMAND set request
public struct GoproSetResponse {

	/// Command ID
	public let cmdId: GoproCommand

	/// Status
	public let status: GoproRequestStatus
}

extension GoproSetResponse: Message {
    public static let id = UInt8(219)
    public static var typeName = "GOPRO_SET_RESPONSE"
    public static var typeDescription = "Response from a GOPRO_COMMAND set request"
    public static var fieldDefinitions: [FieldDefinition] = [("cmdId", 0, "GoproCommand", 0, "Command ID"), ("status", 1, "GoproRequestStatus", 0, "Status")]

    public init(data: Data) throws {
		cmdId = try data.enumeration(at: 0)
		status = try data.enumeration(at: 1)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 2)
		try payload.set(cmdId, at: 0)
		try payload.set(status, at: 1)
        return payload
    }
}
