// Auto-generated. Do not edit!

// (in-package metrics_refbox_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox2D = require('./BoundingBox2D.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ItemDeliveryResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.phase = null;
      this.image = null;
      this.box2d = null;
      this.human_pose = null;
      this.human_reach_out_result = null;
      this.grasp_result = null;
      this.post_grasp_result = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('phase')) {
        this.phase = initObj.phase
      }
      else {
        this.phase = 0;
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('box2d')) {
        this.box2d = initObj.box2d
      }
      else {
        this.box2d = new BoundingBox2D();
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
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ItemDeliveryResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [phase]
    bufferOffset = _serializer.uint8(obj.phase, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [box2d]
    bufferOffset = BoundingBox2D.serialize(obj.box2d, buffer, bufferOffset);
    // Serialize message field [human_pose]
    bufferOffset = _serializer.uint8(obj.human_pose, buffer, bufferOffset);
    // Serialize message field [human_reach_out_result]
    bufferOffset = _serializer.uint8(obj.human_reach_out_result, buffer, bufferOffset);
    // Serialize message field [grasp_result]
    bufferOffset = _serializer.uint8(obj.grasp_result, buffer, bufferOffset);
    // Serialize message field [post_grasp_result]
    bufferOffset = _serializer.uint8(obj.post_grasp_result, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ItemDeliveryResult
    let len;
    let data = new ItemDeliveryResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [phase]
    data.phase = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [box2d]
    data.box2d = BoundingBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [human_pose]
    data.human_pose = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [human_reach_out_result]
    data.human_reach_out_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [grasp_result]
    data.grasp_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [post_grasp_result]
    data.post_grasp_result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/ItemDeliveryResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f5b116dba66c515bfcf0a99c9bb4b7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    # feedback when each phase is complete
    uint8 PHASE_NAV_TO_OBJECT=1
    uint8 PHASE_OBJECT_DETECTION=2
    uint8 PHASE_OBJECT_PICK=3
    uint8 PHASE_NAV_TO_PERSON=4
    uint8 PHASE_PERSON_DETECTION=5
    uint8 PHASE_HANDOVER=6
    
    uint8 phase
    
    
    # for phase_object_detection and phase_person_detection
    sensor_msgs/Image image
    BoundingBox2D box2d
    
    
    # for phase_handover
    
    # enums for human_pose
    uint8 HUMAN_POSE_LAYING=1
    uint8 HUMAN_POSE_STANDING=2
    uint8 HUMAN_POSE_SITTING=3
    
    uint8 human_pose
    
    # enums for human_reach_out_result
    uint8 HUMAN_REACHED_OUT=1
    uint8 HUMAN_DID_NOT_REACH_OUT=2
    
    uint8 human_reach_out_result
    
    # enums for grasp result
    uint8 GRASP_SUCCESSFUL=1
    uint8 GRASP_UNSUCCESSFUL=2
    
    uint8 grasp_result
    
    
    # enums for post_grasp_result
    uint8 OBJECT_DROPPED_AFTER_GRASP=1
    uint8 OBJECT_NOT_DROPPED_AFTER_GRASP=2
    
    uint8 post_grasp_result
    
    
    ## Result
    uint8 RESULT_SUCCESS=1
    uint8 RESULT_FAILURE=2
    uint8 result
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: metrics_refbox_msgs/BoundingBox2D
    uint32 min_x
    uint32 min_y
    uint32 max_x
    uint32 max_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ItemDeliveryResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.phase !== undefined) {
      resolved.phase = msg.phase;
    }
    else {
      resolved.phase = 0
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.box2d !== undefined) {
      resolved.box2d = BoundingBox2D.Resolve(msg.box2d)
    }
    else {
      resolved.box2d = new BoundingBox2D()
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

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    return resolved;
    }
};

// Constants for message
ItemDeliveryResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
  PHASE_NAV_TO_OBJECT: 1,
  PHASE_OBJECT_DETECTION: 2,
  PHASE_OBJECT_PICK: 3,
  PHASE_NAV_TO_PERSON: 4,
  PHASE_PERSON_DETECTION: 5,
  PHASE_HANDOVER: 6,
  HUMAN_POSE_LAYING: 1,
  HUMAN_POSE_STANDING: 2,
  HUMAN_POSE_SITTING: 3,
  HUMAN_REACHED_OUT: 1,
  HUMAN_DID_NOT_REACH_OUT: 2,
  GRASP_SUCCESSFUL: 1,
  GRASP_UNSUCCESSFUL: 2,
  OBJECT_DROPPED_AFTER_GRASP: 1,
  OBJECT_NOT_DROPPED_AFTER_GRASP: 2,
  RESULT_SUCCESS: 1,
  RESULT_FAILURE: 2,
}

module.exports = ItemDeliveryResult;
