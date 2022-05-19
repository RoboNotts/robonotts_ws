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

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task = null;
      this.command = null;
      this.task_config = null;
      this.uid = null;
    }
    else {
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = 0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('task_config')) {
        this.task_config = initObj.task_config
      }
      else {
        this.task_config = '';
      }
      if (initObj.hasOwnProperty('uid')) {
        this.uid = initObj.uid
      }
      else {
        this.uid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [task]
    bufferOffset = _serializer.uint8(obj.task, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [task_config]
    bufferOffset = _serializer.string(obj.task_config, buffer, bufferOffset);
    // Serialize message field [uid]
    bufferOffset = _serializer.string(obj.uid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [task]
    data.task = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [task_config]
    data.task_config = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uid]
    data.uid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.task_config);
    length += _getByteLength(object.uid);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f0442d04a8cefd06266d146bdcdb55f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # task ENUMS
    uint8 OBJECT_DETECTION=1
    uint8 PERSON_DETECTION=2
    uint8 ACTIVITY_RECOGNITION=3
    uint8 GESTURE_RECOGNITION=4
    uint8 TASK_ORIENTED_GRASPING=5
    uint8 HANDOVER_OBJECT=6
    uint8 RECEIVE_OBJECT=7
    uint8 ASSESS_ACTIVITY_STATE=8
    uint8 ITEM_DELIVERY=9
    
    
    # command ENUMS
    uint8 START=1
    uint8 STOP=2
    
    
    uint8 task
    uint8 command
    
    # json string with additional info for specific benchmarks
    string task_config
    
    # unique identifier for this message
    string uid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = 0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.task_config !== undefined) {
      resolved.task_config = msg.task_config;
    }
    else {
      resolved.task_config = ''
    }

    if (msg.uid !== undefined) {
      resolved.uid = msg.uid;
    }
    else {
      resolved.uid = ''
    }

    return resolved;
    }
};

// Constants for message
Command.Constants = {
  OBJECT_DETECTION: 1,
  PERSON_DETECTION: 2,
  ACTIVITY_RECOGNITION: 3,
  GESTURE_RECOGNITION: 4,
  TASK_ORIENTED_GRASPING: 5,
  HANDOVER_OBJECT: 6,
  RECEIVE_OBJECT: 7,
  ASSESS_ACTIVITY_STATE: 8,
  ITEM_DELIVERY: 9,
  START: 1,
  STOP: 2,
}

module.exports = Command;
