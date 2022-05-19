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

class ReceiveObjectResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.human_pose = null;
      this.human_reach_out_result = null;
      this.pre_grasp_result = null;
      this.grasp_result = null;
      this.post_grasp_result = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('human_pose')) {
        this.human_pose = initObj.human_pose
      }
      else {
        this.human_pose = 0;
      }
      if (initObj.hasOwnProperty('human_reach_out_result')) {
        this.human_reach_out_result = initObj.human_reach_out_result
      }
      else {
        this.human_reach_out_result = 0;
      }
      if (initObj.hasOwnProperty('pre_grasp_result')) {
        this.pre_grasp_result = initObj.pre_grasp_result
      }
      else {
        this.pre_grasp_result = 0;
      }
      if (initObj.hasOwnProperty('grasp_result')) {
        this.grasp_result = initObj.grasp_result
      }
      else {
        this.grasp_result = 0;
      }
      if (initObj.hasOwnProperty('post_grasp_result')) {
        this.post_grasp_result = initObj.post_grasp_result
      }
      else {
        this.post_grasp_result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReceiveObjectResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [human_pose]
    bufferOffset = _serializer.uint8(obj.human_pose, buffer, bufferOffset);
    // Serialize message field [human_reach_out_result]
    bufferOffset = _serializer.uint8(obj.human_reach_out_result, buffer, bufferOffset);
    // Serialize message field [pre_grasp_result]
    bufferOffset = _serializer.uint8(obj.pre_grasp_result, buffer, bufferOffset);
    // Serialize message field [grasp_result]
    bufferOffset = _serializer.uint8(obj.grasp_result, buffer, bufferOffset);
    // Serialize message field [post_grasp_result]
    bufferOffset = _serializer.uint8(obj.post_grasp_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReceiveObjectResult
    let len;
    let data = new ReceiveObjectResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [human_pose]
    data.human_pose = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [human_reach_out_result]
    data.human_reach_out_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pre_grasp_result]
    data.pre_grasp_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [grasp_result]
    data.grasp_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [post_grasp_result]
    data.post_grasp_result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/ReceiveObjectResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eda82f9b928ca0e6e6c248d42a9d579';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    # enums for human_pose
    uint8 HUMAN_POSE_LAYING=1
    uint8 HUMAN_POSE_STANDING=2
    uint8 HUMAN_POSE_SITTING=3
    
    
    uint8 human_pose
    
    # enums for human_reach_out_result
    uint8 HUMAN_REACHED_OUT=1
    uint8 HUMAN_DID_NOT_REACH_OUT=2
    
    uint8 human_reach_out_result
    
    # enums for pre_grasp_result
    uint8 OBJECT_DROPPED_BEFORE_GRASP=1
    uint8 OBJECT_NOT_DROPPED_BEFORE_GRASP=2
    
    uint8 pre_grasp_result
    
    # enums for grasp_result
    uint8 GRASP_SUCCESSFUL=1
    uint8 GRASP_UNSUCCESSFUL=2
    
    uint8 grasp_result
    
    
    # enums for post_grasp_result
    uint8 OBJECT_RELEASED=1
    uint8 OBJECT_NOT_RELEASED=2
    
    uint8 post_grasp_result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReceiveObjectResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.human_pose !== undefined) {
      resolved.human_pose = msg.human_pose;
    }
    else {
      resolved.human_pose = 0
    }

    if (msg.human_reach_out_result !== undefined) {
      resolved.human_reach_out_result = msg.human_reach_out_result;
    }
    else {
      resolved.human_reach_out_result = 0
    }

    if (msg.pre_grasp_result !== undefined) {
      resolved.pre_grasp_result = msg.pre_grasp_result;
    }
    else {
      resolved.pre_grasp_result = 0
    }

    if (msg.grasp_result !== undefined) {
      resolved.grasp_result = msg.grasp_result;
    }
    else {
      resolved.grasp_result = 0
    }

    if (msg.post_grasp_result !== undefined) {
      resolved.post_grasp_result = msg.post_grasp_result;
    }
    else {
      resolved.post_grasp_result = 0
    }

    return resolved;
    }
};

// Constants for message
ReceiveObjectResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
  HUMAN_POSE_LAYING: 1,
  HUMAN_POSE_STANDING: 2,
  HUMAN_POSE_SITTING: 3,
  HUMAN_REACHED_OUT: 1,
  HUMAN_DID_NOT_REACH_OUT: 2,
  OBJECT_DROPPED_BEFORE_GRASP: 1,
  OBJECT_NOT_DROPPED_BEFORE_GRASP: 2,
  GRASP_SUCCESSFUL: 1,
  GRASP_UNSUCCESSFUL: 2,
  OBJECT_RELEASED: 1,
  OBJECT_NOT_RELEASED: 2,
}

module.exports = ReceiveObjectResult;
