
 mobile_vision.detection_1_int8_1x
data
	conv3_0_w
	conv3_0_bconv3_0 "Conv*

kernel*
exhaustive_search *
pad*
order"NCHW*

stride2 : 0
conv3_0
conv3_0_bn "Relu*
order"NCHW2 : S

conv3_0_bnpool_0 "MaxPool*

kernel*
order"NCHW*
pad*

stride2 : "
pool_0pool_0_NHWC "	NCHW2NHWC[
pool_0_NHWCpool_0_int8 "Int8Quantize*
Y_scale)	�=*
Y_zero_point *
order"NHWC�
pool_0_int8
gconv1_0_w_int8
gconv1_0_bn_b_int8gconv1_0_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale뮷<*
Y_zero_point 2 : �
gconv1_0_bn_int8shuffle_0_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale뮷<*
Y_zero_point *
order"NHWC2 : �
shuffle_0_int8
gconv3_0_w_int8
gconv3_0_bn_b_int8gconv3_0_int8 "Int8Conv*

kernel*
pad*	
group,*
order"NHWC*

stride*
Y_scale<��=*
Y_zero_point2 :DEPTHWISE_3x3�
gconv3_0_int8
gconv1_1_w_int8
gconv1_1_bn_b_int8gconv1_1_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale)	�=*
Y_zero_point 2 : �
pool_0_int8pool_1_int8 "Int8AveragePool*

kernel*
order"NHWC*
pad*

stride*
Y_scale)	�=*
Y_zero_point 2 : l
gconv1_1_int8
pool_1_int8block0_int8 "
Int8Concat*
order"NHWC*
Y_scale)	�=*
Y_zero_point 2 : ^
block0_int8block0_v1_int8 "Int8Relu*
order"NHWC*
Y_scale)	�=*
Y_zero_point 2 : �
block0_v1_int8
gconv1_2_w_int8
gconv1_2_bn_b_int8gconv1_2_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale8�=*
Y_zero_point 2 : �
gconv1_2_bn_int8shuffle_1_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale8�=*
Y_zero_point *
order"NHWC2 : �
shuffle_1_int8
gconv3_1_w_int8
gconv3_1_bn_b_int8gconv3_1_int8 "Int8Conv*

kernel*
pad*	
groupD*
order"NHWC*

stride*
Y_scale��7>*
Y_zero_point|2 :DEPTHWISE_3x3�
gconv3_1_int8
gconv1_3_w_int8
gconv1_3_bn_b_int8gconv1_3_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�i5>*
Y_zero_pointY2 : l
gconv1_3_int8
block0_v1_int8block1_int8 "Int8Sum*
order"NHWC*
Y_scale�t>*
Y_zero_point 2 : ^
block1_int8block1_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�t>*
Y_zero_point 2 : �
block1_v1_int8
gconv1_4_w_int8
gconv1_4_bn_b_int8gconv1_4_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale��.=*
Y_zero_point 2 : �
gconv1_4_bn_int8shuffle_2_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale��.=*
Y_zero_point *
order"NHWC2 : �
shuffle_2_int8
gconv3_2_w_int8
gconv3_2_bn_b_int8gconv3_2_int8 "Int8Conv*

kernel*
pad*	
groupD*
order"NHWC*

stride*
Y_scale>*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_2_int8
gconv1_5_w_int8
gconv1_5_bn_b_int8gconv1_5_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale3�V>*
Y_zero_pointn2 : l
gconv1_5_int8
block1_v1_int8block2_int8 "Int8Sum*
order"NHWC*
Y_scale�f>*
Y_zero_point 2 : ^
block2_int8block2_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�f>*
Y_zero_point 2 : �
block2_v1_int8
gconv1_6_w_int8
gconv1_6_bn_b_int8gconv1_6_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale
�#=*
Y_zero_point 2 : �
gconv1_6_bn_int8shuffle_3_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale
�#=*
Y_zero_point *
order"NHWC2 : �
shuffle_3_int8
gconv3_3_w_int8
gconv3_3_bn_b_int8gconv3_3_int8 "Int8Conv*

kernel*
pad*	
groupD*
order"NHWC*

stride*
Y_scale0	�>*
Y_zero_pointC2 :DEPTHWISE_3x3�
gconv3_3_int8
gconv1_7_w_int8
gconv1_7_bn_b_int8gconv1_7_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scaleh��>*
Y_zero_point<2 : l
gconv1_7_int8
block2_v1_int8block3_int8 "Int8Sum*
order"NHWC*
Y_scale�i>*
Y_zero_point 2 : ^
block3_int8block3_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�i>*
Y_zero_point 2 : �
block3_v1_int8
gconv1_8_w_int8
gconv1_8_bn_b_int8gconv1_8_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�F3=*
Y_zero_point 2 : �
gconv1_8_bn_int8shuffle_4_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale�F3=*
Y_zero_point *
order"NHWC2 : �
shuffle_4_int8
gconv3_4_w_int8
gconv3_4_bn_b_int8gconv3_4_int8 "Int8Conv*

kernel*
pad*	
groupD*
order"NHWC*

stride*
Y_scale���>*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_4_int8
gconv1_9_w_int8
gconv1_9_bn_b_int8gconv1_9_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�i>*
Y_zero_point 2 : �
block3_v1_int8pool_2_int8 "Int8AveragePool*

kernel*
order"NHWC*
pad*

stride*
Y_scale�i>*
Y_zero_point 2 : l
gconv1_9_int8
pool_2_int8block4_int8 "
Int8Concat*
order"NHWC*
Y_scale�i>*
Y_zero_point 2 : ^
block4_int8block4_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�i>*
Y_zero_point 2 : �
block4_v1_int8
gconv1_10_w_int8
gconv1_10_bn_b_int8gconv1_10_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale_��=*
Y_zero_point 2 : �
gconv1_10_bn_int8shuffle_5_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale_��=*
Y_zero_point *
order"NHWC2 : �
shuffle_5_int8
gconv3_5_w_int8
gconv3_5_bn_b_int8gconv3_5_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale�lq>*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_5_int8
gconv1_11_w_int8
gconv1_11_bn_b_int8gconv1_11_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale��?>*
Y_zero_point52 : m
gconv1_11_int8
block4_v1_int8block5_int8 "Int8Sum*
order"NHWC*
Y_scale~>>*
Y_zero_point 2 : ^
block5_int8block5_v1_int8 "Int8Relu*
order"NHWC*
Y_scale~>>*
Y_zero_point 2 : �
block5_v1_int8
gconv1_12_w_int8
gconv1_12_bn_b_int8gconv1_12_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale˒�=*
Y_zero_point 2 : �
gconv1_12_bn_int8shuffle_6_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale˒�=*
Y_zero_point *
order"NHWC2 : �
shuffle_6_int8
gconv3_6_w_int8
gconv3_6_bn_b_int8gconv3_6_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scaleA �>*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_6_int8
gconv1_13_w_int8
gconv1_13_bn_b_int8gconv1_13_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale*tN>*
Y_zero_pointY2 : m
gconv1_13_int8
block5_v1_int8block6_int8 "Int8Sum*
order"NHWC*
Y_scale\>*
Y_zero_point 2 : ^
block6_int8block6_v1_int8 "Int8Relu*
order"NHWC*
Y_scale\>*
Y_zero_point 2 : �
block6_v1_int8
gconv1_14_w_int8
gconv1_14_bn_b_int8gconv1_14_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scalegƉ=*
Y_zero_point 2 : �
gconv1_14_bn_int8shuffle_7_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scalegƉ=*
Y_zero_point *
order"NHWC2 : �
shuffle_7_int8
gconv3_7_w_int8
gconv3_7_bn_b_int8gconv3_7_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale�A�>*
Y_zero_points2 :DEPTHWISE_3x3�
gconv3_7_int8
gconv1_15_w_int8
gconv1_15_bn_b_int8gconv1_15_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale �H>*
Y_zero_pointj2 : m
gconv1_15_int8
block6_v1_int8block7_int8 "Int8Sum*
order"NHWC*
Y_scale���>*
Y_zero_point 2 : ^
block7_int8block7_v1_int8 "Int8Relu*
order"NHWC*
Y_scale���>*
Y_zero_point 2 : �
block7_v1_int8
gconv1_16_w_int8
gconv1_16_bn_b_int8gconv1_16_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�7�=*
Y_zero_point 2 : �
gconv1_16_bn_int8shuffle_8_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale�7�=*
Y_zero_point *
order"NHWC2 : �
shuffle_8_int8
gconv3_8_w_int8
gconv3_8_bn_b_int8gconv3_8_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale�>*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_8_int8
gconv1_17_w_int8
gconv1_17_bn_b_int8gconv1_17_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�$?*
Y_zero_pointF2 : m
gconv1_17_int8
block7_v1_int8block8_int8 "Int8Sum*
order"NHWC*
Y_scale�?*
Y_zero_point 2 : ^
block8_int8block8_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�?*
Y_zero_point 2 : �
block8_v1_int8
gconv1_18_w_int8
gconv1_18_bn_b_int8gconv1_18_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�r�=*
Y_zero_point 2 : �
gconv1_18_bn_int8shuffle_9_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale�r�=*
Y_zero_point *
order"NHWC2 : �
shuffle_9_int8
gconv3_9_w_int8
gconv3_9_bn_b_int8gconv3_9_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale��R?*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_9_int8
gconv1_19_w_int8
gconv1_19_bn_b_int8gconv1_19_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�a?*
Y_zero_point,2 : m
gconv1_19_int8
block8_v1_int8block9_int8 "Int8Sum*
order"NHWC*
Y_scale�A=?*
Y_zero_point 2 : ^
block9_int8block9_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�A=?*
Y_zero_point 2 : �
block9_v1_int8
gconv1_20_w_int8
gconv1_20_bn_b_int8gconv1_20_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale���=*
Y_zero_point 2 : �
gconv1_20_bn_int8shuffle_10_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale���=*
Y_zero_point *
order"NHWC2 : �
shuffle_10_int8
gconv3_10_w_int8
gconv3_10_bn_b_int8gconv3_10_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scaleC�,?*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_10_int8
gconv1_21_w_int8
gconv1_21_bn_b_int8gconv1_21_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale��V?*
Y_zero_pointd2 : n
gconv1_21_int8
block9_v1_int8block10_int8 "Int8Sum*
order"NHWC*
Y_scale5�E?*
Y_zero_point 2 : `
block10_int8block10_v1_int8 "Int8Relu*
order"NHWC*
Y_scale5�E?*
Y_zero_point 2 : �
block10_v1_int8
gconv1_22_w_int8
gconv1_22_bn_b_int8gconv1_22_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale��=*
Y_zero_point 2 : �
gconv1_22_bn_int8shuffle_11_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale��=*
Y_zero_point *
order"NHWC2 : �
shuffle_11_int8
gconv3_11_w_int8
gconv3_11_bn_b_int8gconv3_11_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scaleq?*
Y_zero_pointo2 :DEPTHWISE_3x3�
gconv3_11_int8
gconv1_23_w_int8
gconv1_23_bn_b_int8gconv1_23_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�?*
Y_zero_point�2 : o
gconv1_23_int8
block10_v1_int8block11_int8 "Int8Sum*
order"NHWC*
Y_scale�D<?*
Y_zero_point 2 : `
block11_int8block11_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�D<?*
Y_zero_point 2 : �
block11_v1_int8
conv_rpn_w_int8
conv_rpn_b_int8conv_rpn_v1_int8 "Int8ConvRelu*

kernel*
exhaustive_search *
pad*
order"NHWC*

stride*
Y_scale��<>*
Y_zero_point 2 : �
conv_rpn_v1_int8
rpn_cls_logits_w_int8
rpn_cls_logits_b_int8rpn_cls_logits_int8 "Int8Conv*

kernel*
exhaustive_search *
pad *
order"NHWC*

stride*
Y_scaleW�J>*
Y_zero_point�2 : �
conv_rpn_v1_int8
rpn_bbox_pred_w_int8
rpn_bbox_pred_b_int8rpn_bbox_pred_int8 "Int8Conv*

kernel*
exhaustive_search *
pad *
order"NHWC*

stride*
Y_scaler3<*
Y_zero_point}2 : <
rpn_cls_logits_int8rpn_cls_logits_NHWC "Int8Dequantize2
rpn_cls_logits_NHWCrpn_cls_logits "	NHWC2NCHW.
rpn_cls_logitsrpn_cls_probs "Sigmoid2 : :
rpn_bbox_pred_int8rpn_bbox_pred_NHWC "Int8Dequantize0
rpn_bbox_pred_NHWCrpn_bbox_pred "	NHWC2NCHW�
rpn_cls_probs
rpn_bbox_pred
im_info
anchorroisrpn_roi_probs "GenerateProposals*

nms_thresh333?*
angle_bound_hi�*
min_size    *
clip_angle_thresh  �?*
spatial_scale  �=*
angle_bound_lo���������*
correct_transform_coords*
angle_bound_on*
post_nms_topN
*
pre_nms_topNd/
block11_v1_int8
block11_v1 "Int8Dequantize�

block11_v1
roisroi_features "RoIAlign*
pooled_h*
sampling_ratio *
spatial_scale  �=*
pooled_w*
order"NHWC2 : b
roi_featuresroi_features_int8 "Int8Quantize*
Y_scale�8?*
Y_zero_point *
order"NHWC�
roi_features_int8
gconv1_24_w_int8
gconv1_24_bn_b_int8gconv1_24_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scaleF�i=*
Y_zero_point 2 : �
gconv1_24_bn_int8shuffle_12_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scaleF�i=*
Y_zero_point *
order"NHWC2 : �
shuffle_12_int8
gconv3_12_w_int8
gconv3_12_bn_b_int8gconv3_12_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale1�?*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_12_int8
gconv1_25_w_int8
gconv1_25_bn_b_int8gconv1_25_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�8?*
Y_zero_point 2 : t
gconv1_25_int8
roi_features_int8block12_int8 "
Int8Concat*
order"NHWC*
Y_scale�8?*
Y_zero_point 2 : `
block12_int8block12_v1_int8 "Int8Relu*
order"NHWC*
Y_scale�8?*
Y_zero_point 2 : �
block12_v1_int8
gconv1_26_w_int8
gconv1_26_bn_b_int8gconv1_26_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale��=*
Y_zero_point 2 : �
gconv1_26_bn_int8shuffle_13_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale��=*
Y_zero_point *
order"NHWC2 : �
shuffle_13_int8
gconv3_13_w_int8
gconv3_13_bn_b_int8gconv3_13_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale��?*
Y_zero_point�2 :DEPTHWISE_3x3�
gconv3_13_int8
gconv1_27_w_int8
gconv1_27_bn_b_int8gconv1_27_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scales1?*
Y_zero_point�2 : o
gconv1_27_int8
block12_v1_int8block13_int8 "Int8Sum*
order"NHWC*
Y_scale��?*
Y_zero_point 2 : `
block13_int8block13_v1_int8 "Int8Relu*
order"NHWC*
Y_scale��?*
Y_zero_point 2 : �
block13_v1_int8
gconv1_28_w_int8
gconv1_28_bn_b_int8gconv1_28_bn_int8 "Int8ConvRelu*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale誝=*
Y_zero_point 2 : �
gconv1_28_bn_int8shuffle_14_int8 "Int8ChannelShuffle*

kernel*	
group*
Y_scale誝=*
Y_zero_point *
order"NHWC2 : �
shuffle_14_int8
gconv3_14_w_int8
gconv3_14_bn_b_int8gconv3_14_int8 "Int8Conv*

kernel*
pad*

group�*
order"NHWC*

stride*
Y_scale8�_?*
Y_zero_point}2 :DEPTHWISE_3x3�
gconv3_14_int8
gconv1_29_w_int8
gconv1_29_bn_b_int8gconv1_29_int8 "Int8Conv*

kernel*	
group*
exhaustive_search *

stride*
pad *
order"NHWC*
Y_scale�e?*
Y_zero_point�2 : o
gconv1_29_int8
block13_v1_int8block14_int8 "Int8Sum*
order"NHWC*
Y_scalel"�>*
Y_zero_point 2 : `
block14_int8block14_v1_int8 "Int8Relu*
order"NHWC*
Y_scalel"�>*
Y_zero_point 2 : �
block14_v1_int8final_avg_int8 "Int8AveragePool*

kernel*
order"NHWC*
pad *

stride*
Y_scalel"�>*
Y_zero_point 2 : �
final_avg_int8
cls_score_w_int8
cls_score_b_int8cls_score_int8 "Int8FC*
order"NHWC*
Y_scale�Y�>*
Y_zero_point�2 : c
cls_score_int8cls_prob_int8 "Int8Softmax*
order"NHWC*
Y_scale  �;*
Y_zero_point 2 : �
final_avg_int8
bbox_pred_w_int8
bbox_pred_b_int8bbox_pred_int8 "Int8FC*
order"NHWC*
Y_scale�l=*
Y_zero_pointB2 : -
bbox_pred_int8	bbox_pred "Int8Dequantize�
rois
	bbox_pred
im_info	pred_bbox "BBoxTransform*
angle_bound_hi�*
rotated *
clip_angle_thresh  �?*
weights-   A-   A-  �@-  �@*
angle_bound_lo���������*
correct_transform_coords*
angle_bound_on+
cls_prob_int8cls_prob "Int8Dequantize�
cls_prob
	pred_bbox	score_nmsbbox_nms	class_nms "BoxWithNMSLimit*
score_threshfff?*

nms   ?*
detections_per_im
*
soft_nms_enabled *
soft_nms_method"linear*
soft_nms_sigma   ?*
rotated :data:	conv3_0_w:	conv3_0_b:gconv1_0_w_int8:gconv1_0_bn_b_int8:gconv3_0_w_int8:gconv3_0_bn_b_int8:gconv1_1_w_int8:gconv1_1_bn_b_int8:gconv1_2_w_int8:gconv1_2_bn_b_int8:gconv3_1_w_int8:gconv3_1_bn_b_int8:gconv1_3_w_int8:gconv1_3_bn_b_int8:gconv1_4_w_int8:gconv1_4_bn_b_int8:gconv3_2_w_int8:gconv3_2_bn_b_int8:gconv1_5_w_int8:gconv1_5_bn_b_int8:gconv1_6_w_int8:gconv1_6_bn_b_int8:gconv3_3_w_int8:gconv3_3_bn_b_int8:gconv1_7_w_int8:gconv1_7_bn_b_int8:gconv1_8_w_int8:gconv1_8_bn_b_int8:gconv3_4_w_int8:gconv3_4_bn_b_int8:gconv1_9_w_int8:gconv1_9_bn_b_int8:gconv1_10_w_int8:gconv1_10_bn_b_int8:gconv3_5_w_int8:gconv3_5_bn_b_int8:gconv1_11_w_int8:gconv1_11_bn_b_int8:gconv1_12_w_int8:gconv1_12_bn_b_int8:gconv3_6_w_int8:gconv3_6_bn_b_int8:gconv1_13_w_int8:gconv1_13_bn_b_int8:gconv1_14_w_int8:gconv1_14_bn_b_int8:gconv3_7_w_int8:gconv3_7_bn_b_int8:gconv1_15_w_int8:gconv1_15_bn_b_int8:gconv1_16_w_int8:gconv1_16_bn_b_int8:gconv3_8_w_int8:gconv3_8_bn_b_int8:gconv1_17_w_int8:gconv1_17_bn_b_int8:gconv1_18_w_int8:gconv1_18_bn_b_int8:gconv3_9_w_int8:gconv3_9_bn_b_int8:gconv1_19_w_int8:gconv1_19_bn_b_int8:gconv1_20_w_int8:gconv1_20_bn_b_int8:gconv3_10_w_int8:gconv3_10_bn_b_int8:gconv1_21_w_int8:gconv1_21_bn_b_int8:gconv1_22_w_int8:gconv1_22_bn_b_int8:gconv3_11_w_int8:gconv3_11_bn_b_int8:gconv1_23_w_int8:gconv1_23_bn_b_int8:conv_rpn_w_int8:conv_rpn_b_int8:rpn_cls_logits_w_int8:rpn_cls_logits_b_int8:rpn_bbox_pred_w_int8:rpn_bbox_pred_b_int8:im_info:anchor:gconv1_24_w_int8:gconv1_24_bn_b_int8:gconv3_12_w_int8:gconv3_12_bn_b_int8:gconv1_25_w_int8:gconv1_25_bn_b_int8:gconv1_26_w_int8:gconv1_26_bn_b_int8:gconv3_13_w_int8:gconv3_13_bn_b_int8:gconv1_27_w_int8:gconv1_27_bn_b_int8:gconv1_28_w_int8:gconv1_28_bn_b_int8:gconv3_14_w_int8:gconv3_14_bn_b_int8:gconv1_29_w_int8:gconv1_29_bn_b_int8:cls_score_w_int8:cls_score_b_int8:bbox_pred_w_int8:bbox_pred_b_int8B	score_nmsBbbox_nmsB	class_nms