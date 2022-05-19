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
let BoundingBox3D = require('./BoundingBox3D.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ObjectDetectionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_type = null;
      this.result_type = null;
      this.object_found = null;
      this.box2d = null;
      this.box3d = null;
      this.image = null;
      this.pointcloud = null;
    }
    else {
      if (initObj.hasOwnProperty('message_type')) {
        this.message_type = initObj.message_type
      }
      else {
        this.message_type = 0;
      }
      if (initObj.hasOwnProperty('result_type')) {
        this.result_type = initObj.result_type
      }
      else {
        this.result_type = 0;
      }
      if (initObj.hasOwnProperty('object_found')) {
        this.object_found = initObj.object_found
      }
      else {
        this.object_found = false;
      }
      if (initObj.hasOwnProperty('box2d')) {
        this.box2d = initObj.box2d
      }
      else {
        this.box2d = new BoundingBox2D();
      }
      if (initObj.hasOwnProperty('box3d')) {
        this.box3d = initObj.box3d
      }
      else {
        this.box3d = new BoundingBox3D();
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('pointcloud')) {
        this.pointcloud = initObj.pointcloud
      }
      else {
        this.pointcloud = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectDetectionResult
    // Serialize message field [message_type]
    bufferOffset = _serializer.uint8(obj.message_type, buffer, bufferOffset);
    // Serialize message field [result_type]
    bufferOffset = _serializer.uint8(obj.result_type, buffer, bufferOffset);
    // Serialize message field [object_found]
    bufferOffset = _serializer.bool(obj.object_found, buffer, bufferOffset);
    // Serialize message field [box2d]
    bufferOffset = BoundingBox2D.serialize(obj.box2d, buffer, bufferOffset);
    // Serialize message field [box3d]
    bufferOffset = BoundingBox3D.serialize(obj.box3d, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    // Serialize message field [pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pointcloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectDetectionResult
    let len;
    let data = new ObjectDetectionResult(null);
    // Deserialize message field [message_type]
    data.message_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [result_type]
    data.result_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_found]
    data.object_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [box2d]
    data.box2d = BoundingBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [box3d]
    data.box3d = BoundingBox3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointcloud]
    data.pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BoundingBox3D.getMessageSize(object.box3d);
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pointcloud);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'metrics_refbox_msgs/ObjectDetectionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9b748919c575e5d4c866ee9421fa93f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FEEDBACK=1
    uint8 RESULT=2
    uint8 message_type
    
    uint8 BOUNDING_BOX_2D=1
    uint8 BOUNDING_BOX_3D=2
    
    # set to either BOUNDING_BOX_2D or BOUNDING_BOX_3D
    uint8 result_type
    
    # set to true if target object has been found
    bool object_found
    
    # if result_type is BOUNDING_BOX_2D, box2d needs to be filled
    BoundingBox2D box2d
    
    # if result_type is BOUNDING_BOX_3D, box2d needs to be filled
    BoundingBox3D box3d
    
    # if result_type is BOUNDING_BOX_2D, image needs to be provided
    sensor_msgs/Image image
    # if result_type is BOUNDING_BOX_3D, pointcloud needs to be provided
    sensor_msgs/PointCloud2 pointcloud
    
    ================================================================================
    MSG: metrics_refbox_msgs/BoundingBox2D
    uint32 min_x
    uint32 min_y
    uint32 max_x
    uint32 max_y
    
    ================================================================================
    MSG: metrics_refbox_msgs/BoundingBox3D
    # Geometrical center
    geometry_msgs/Point center
    # Dimensions
    geometry_msgs/Vector3 dimensions
    # List of vertices; first bottom, then top, in clockwise direction
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
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
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectDetectionResult(null);
    if (msg.message_type !== undefined) {
      resolved.message_type = msg.message_type;
    }
    else {
      resolved.message_type = 0
    }

    if (msg.result_type !== undefined) {
      resolved.result_type = msg.result_type;
    }
    else {
      resolved.result_type = 0
    }

    if (msg.object_found !== undefined) {
      resolved.object_found = msg.object_found;
    }
    else {
      resolved.object_found = false
    }

    if (msg.box2d !== undefined) {
      resolved.box2d = BoundingBox2D.Resolve(msg.box2d)
    }
    else {
      resolved.box2d = new BoundingBox2D()
    }

    if (msg.box3d !== undefined) {
      resolved.box3d = BoundingBox3D.Resolve(msg.box3d)
    }
    else {
      resolved.box3d = new BoundingBox3D()
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    if (msg.pointcloud !== undefined) {
      resolved.pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.pointcloud)
    }
    else {
      resolved.pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

// Constants for message
ObjectDetectionResult.Constants = {
  FEEDBACK: 1,
  RESULT: 2,
  BOUNDING_BOX_2D: 1,
  BOUNDING_BOX_3D: 2,
}

module.exports = ObjectDetectionResult;
