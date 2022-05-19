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

class GestureRecognitionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.gestures = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('gestures')) {
        this.gestures = initObj.gestures
      }
      else {
        this.gestures = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GestureRecognitionResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [gestures]
    bufferOffset = _arraySerializer.string(obj.gestures, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GestureRecognitionResult
    let len;
    let data = new GestureRecognitionResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gestures]
    data.gestures = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.gestures.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/GestureRecognitionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0534e12d393a2b3abfb6b552d909c2e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    # list of gestures ordered from most probable to least probable.
    # Up to a maximum of 2 gestures will be considered for evaluation
    string[] gestures
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GestureRecognitionResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.gestures !== undefined) {
      resolved.gestures = msg.gestures;
    }
    else {
      resolved.gestures = []
    }

    return resolved;
    }
};

// Constants for message
GestureRecognitionResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
}

module.exports = GestureRecognitionResult;
