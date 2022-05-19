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

class Confirm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uid = null;
      this.data = null;
      this.rosbag_filename = null;
    }
    else {
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = false;
      }
      if (initObj.hasOwnProperty('rosbag_filename')) {
        this.rosbag_filename = initObj.rosbag_filename
      }
      else {
        this.rosbag_filename = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Confirm
    // Serialize message field [uid]
    bufferOffset = _serializer.string(obj.uid, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.bool(obj.data, buffer, bufferOffset);
    // Serialize message field [rosbag_filename]
    bufferOffset = _serializer.string(obj.rosbag_filename, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Confirm
    let len;
    let data = new Confirm(null);
    // Deserialize message field [uid]
    data.uid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rosbag_filename]
    data.rosbag_filename = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uid);
    length += _getByteLength(object.rosbag_filename);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/Confirm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '417835597ece8052d8963da89d333ccd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string uid
    bool data
    string rosbag_filename
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Confirm(null);
    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = false
    }

    if (msg.rosbag_filename !== undefined) {
      resolved.rosbag_filename = msg.rosbag_filename;
    }
    else {
      resolved.rosbag_filename = ''
    }

    return resolved;
    }
};

module.exports = Confirm;
