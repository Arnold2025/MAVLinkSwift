//
//  HilSensorCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The IMU readings in SI units in NED body frame
public struct HilSensor {

	/// Timestamp (microseconds, synced to UNIX time or since system boot)
	public let timeUsec: UInt64

	/// X acceleration (m/s^2)
	public let xacc: Float

	/// Y acceleration (m/s^2)
	public let yacc: Float

	/// Z acceleration (m/s^2)
	public let zacc: Float

	/// Angular speed around X axis in body frame (rad / sec)
	public let xgyro: Float

	/// Angular speed around Y axis in body frame (rad / sec)
	public let ygyro: Float

	/// Angular speed around Z axis in body frame (rad / sec)
	public let zgyro: Float

	/// X Magnetic field (Gauss)
	public let xmag: Float

	/// Y Magnetic field (Gauss)
	public let ymag: Float

	/// Z Magnetic field (Gauss)
	public let zmag: Float

	/// Absolute pressure in millibar
	public let absPressure: Float

	/// Differential pressure (airspeed) in millibar
	public let diffPressure: Float

	/// Altitude calculated from pressure
	public let pressureAlt: Float

	/// Temperature in degrees celsius
	public let temperature: Float

	/// Bitmask for fields that have updated since last message, bit 0 = xacc, bit 12: temperature, bit 31: full reset of attitude/position/velocities/etc was performed in sim.
	public let fieldsUpdated: UInt32
}

extension HilSensor: Message {
    public static let id = UInt8(107)
    public static var typeName = "HIL_SENSOR"
    public static var typeDescription = "The IMU readings in SI units in NED body frame"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds, synced to UNIX time or since system boot)"), ("xacc", 8, "Float", 0, "X acceleration (m/s^2)"), ("yacc", 12, "Float", 0, "Y acceleration (m/s^2)"), ("zacc", 16, "Float", 0, "Z acceleration (m/s^2)"), ("xgyro", 20, "Float", 0, "Angular speed around X axis in body frame (rad / sec)"), ("ygyro", 24, "Float", 0, "Angular speed around Y axis in body frame (rad / sec)"), ("zgyro", 28, "Float", 0, "Angular speed around Z axis in body frame (rad / sec)"), ("xmag", 32, "Float", 0, "X Magnetic field (Gauss)"), ("ymag", 36, "Float", 0, "Y Magnetic field (Gauss)"), ("zmag", 40, "Float", 0, "Z Magnetic field (Gauss)"), ("absPressure", 44, "Float", 0, "Absolute pressure in millibar"), ("diffPressure", 48, "Float", 0, "Differential pressure (airspeed) in millibar"), ("pressureAlt", 52, "Float", 0, "Altitude calculated from pressure"), ("temperature", 56, "Float", 0, "Temperature in degrees celsius"), ("fieldsUpdated", 60, "UInt32", 0, "Bitmask for fields that have updated since last message, bit 0 = xacc, bit 12: temperature, bit 31: full reset of attitude/position/velocities/etc was performed in sim.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		xacc = try data.number(at: 8)
		yacc = try data.number(at: 12)
		zacc = try data.number(at: 16)
		xgyro = try data.number(at: 20)
		ygyro = try data.number(at: 24)
		zgyro = try data.number(at: 28)
		xmag = try data.number(at: 32)
		ymag = try data.number(at: 36)
		zmag = try data.number(at: 40)
		absPressure = try data.number(at: 44)
		diffPressure = try data.number(at: 48)
		pressureAlt = try data.number(at: 52)
		temperature = try data.number(at: 56)
		fieldsUpdated = try data.number(at: 60)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 64)
		try payload.set(timeUsec, at: 0)
		try payload.set(xacc, at: 8)
		try payload.set(yacc, at: 12)
		try payload.set(zacc, at: 16)
		try payload.set(xgyro, at: 20)
		try payload.set(ygyro, at: 24)
		try payload.set(zgyro, at: 28)
		try payload.set(xmag, at: 32)
		try payload.set(ymag, at: 36)
		try payload.set(zmag, at: 40)
		try payload.set(absPressure, at: 44)
		try payload.set(diffPressure, at: 48)
		try payload.set(pressureAlt, at: 52)
		try payload.set(temperature, at: 56)
		try payload.set(fieldsUpdated, at: 60)
        return payload
    }
}
