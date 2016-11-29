//
//  RadioArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status generated by radio
public struct Radio {

	/// local signal strength
	public let rssi: UInt8

	/// remote signal strength
	public let remrssi: UInt8

	/// how full the tx buffer is as a percentage
	public let txbuf: UInt8

	/// background noise level
	public let noise: UInt8

	/// remote background noise level
	public let remnoise: UInt8

	/// receive errors
	public let rxerrors: UInt16

	/// count of error corrected packets
	public let fixed: UInt16
}

extension Radio: Message {
    public static let id = UInt8(166)
    public static var typeName = "RADIO"
    public static var typeDescription = "Status generated by radio"
    public static var fieldDefinitions: [FieldDefinition] = [("rssi", 4, "UInt8", 0, "local signal strength"), ("remrssi", 5, "UInt8", 0, "remote signal strength"), ("txbuf", 6, "UInt8", 0, "how full the tx buffer is as a percentage"), ("noise", 7, "UInt8", 0, "background noise level"), ("remnoise", 8, "UInt8", 0, "remote background noise level"), ("rxerrors", 0, "UInt16", 0, "receive errors"), ("fixed", 2, "UInt16", 0, "count of error corrected packets")]

    public init(data: Data) throws {
		rxerrors = try data.number(at: 0)
		fixed = try data.number(at: 2)
		rssi = try data.number(at: 4)
		remrssi = try data.number(at: 5)
		txbuf = try data.number(at: 6)
		noise = try data.number(at: 7)
		remnoise = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 9)
		try payload.set(rxerrors, at: 0)
		try payload.set(fixed, at: 2)
		try payload.set(rssi, at: 4)
		try payload.set(remrssi, at: 5)
		try payload.set(txbuf, at: 6)
		try payload.set(noise, at: 7)
		try payload.set(remnoise, at: 8)
        return payload
    }
}