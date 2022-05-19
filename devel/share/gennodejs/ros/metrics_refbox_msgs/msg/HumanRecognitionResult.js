// Auto-generated. Do not edit!

// (in-package metrics_refbox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HumanRecognitionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.identities = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('identities')) {
        this.identities = initObj.identities
      }
      else {
        this.identities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanRecognitionResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [identities]
    bufferOffset = _arraySerializer.string(obj.identities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanRecognitionResult
    let len;
    let data = new HumanRecognitionResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [identities]
    data.identities = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.identities.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/HumanRecognitionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7de96a6e70a0c5d5e50d4f423425618';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    # list of recognized persons from most probable to least probable
    string[] identities
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanRecognitionResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.identities !== undefined) {
      resolved.identities = msg.identities;
    }
    else {
      resolved.identities = []
    }

    return resolved;
    }
};

// Constants for message
HumanRecognitionResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
}

module.exports = HumanRecognitionResult;
