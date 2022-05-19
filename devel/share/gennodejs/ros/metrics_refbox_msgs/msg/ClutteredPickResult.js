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

class ClutteredPickResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.object_name = null;
      this.action_completed = null;
      this.num_objects_picked = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('action_completed')) {
        this.action_completed = initObj.action_completed
      }
      else {
        this.action_completed = 0;
      }
      if (initObj.hasOwnProperty('num_objects_picked')) {
        this.num_objects_picked = initObj.num_objects_picked
      }
      else {
        this.num_objects_picked = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClutteredPickResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [action_completed]
    bufferOffset = _serializer.uint8(obj.action_completed, buffer, bufferOffset);
    // Serialize message field [num_objects_picked]
    bufferOffset = _serializer.uint8(obj.num_objects_picked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClutteredPickResult
    let len;
    let data = new ClutteredPickResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_completed]
    data.action_completed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_objects_picked]
    data.num_objects_picked = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_name);
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/ClutteredPickResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87f9e733679ff877ef0bd36192d0de48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    # feedback
    uint8 PICKED=1
    uint8 PLACED=2
    
    string object_name
    uint8 action_completed
    
    
    # result
    uint8 num_objects_picked
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClutteredPickResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.action_completed !== undefined) {
      resolved.action_completed = msg.action_completed;
    }
    else {
      resolved.action_completed = 0
    }

    if (msg.num_objects_picked !== undefined) {
      resolved.num_objects_picked = msg.num_objects_picked;
    }
    else {
      resolved.num_objects_picked = 0
    }

    return resolved;
    }
};

// Constants for message
ClutteredPickResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
  PICKED: 1,
  PLACED: 2,
}

module.exports = ClutteredPickResult;
