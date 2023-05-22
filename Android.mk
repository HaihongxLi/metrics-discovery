# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# Define the platform which you want to compile
# BXT or SKL or KBL

LOCAL_SRC_FILES +=  instrumentation/utils/common/iu_debug.c \
					instrumentation/utils/linux/iu_std.cpp \
					instrumentation/utils/linux/iu_os.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_EHL.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ICL.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ACM_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_SKL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_KBL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_XEHP_SDV_GT1_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_XEHP_SDV_GT1_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_EHL.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ACM_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_BDW.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ACM_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_CFL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_BDW.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_BXT.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_MTL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_TGL_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_SKL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_HSW.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_SKL_GT4.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_GLK.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_XEHP_SDV_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_XEHP_SDV_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ACM_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_SKL_GT4.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_DG1.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_MTL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_HSW.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_KBL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_SKL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_CFL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_RKL.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_TGL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_PVC_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ADLP.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_DG1.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ACM_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_MTL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ADLN.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_GLK.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_CFL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_PVC_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_XEHP_SDV_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_ADLS.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_RKL.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_BXT.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_TGL_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_MTL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_PVC_GT1.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_PVC_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_TGL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ACM_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_SKL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metrics_XEHP_SDV_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_CFL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ADLS.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_KBL_GT3.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ADLP.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_common.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_KBL_GT2.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ICL.cpp \
					instrumentation/metrics_discovery/codegen/md_metric_sets_ADLN.cpp \
					instrumentation/metrics_discovery/linux/md_sub_devices_linux.cpp \
					instrumentation/metrics_discovery/linux/md_driver_ifc_linux_perf.cpp \
					instrumentation/metrics_discovery/common/md_utils.cpp \
					instrumentation/metrics_discovery/common/md_main.cpp \
					instrumentation/metrics_discovery/common/md_calculation.cpp \
					instrumentation/metrics_discovery/common/internal/md_metric_set.cpp \
					instrumentation/metrics_discovery/common/internal/md_common.cpp \
					instrumentation/metrics_discovery/common/internal/md_override.cpp \
					instrumentation/metrics_discovery/common/internal/md_metric.cpp \
					instrumentation/metrics_discovery/common/internal/md_adapter_group.cpp \
					instrumentation/metrics_discovery/common/internal/md_register_set.cpp \
					instrumentation/metrics_discovery/common/internal/concurrent_groups/md_oa_concurrent_group.cpp \
					instrumentation/metrics_discovery/common/internal/concurrent_groups/md_concurrent_group.cpp \
					instrumentation/metrics_discovery/common/internal/concurrent_groups/md_oam_concurrent_group.cpp \
					instrumentation/metrics_discovery/common/internal/md_metrics_device.cpp \
					instrumentation/metrics_discovery/common/internal/md_information.cpp \
					instrumentation/metrics_discovery/common/internal/md_symbol_set.cpp \
					instrumentation/metrics_discovery/common/internal/md_equation.cpp \
					instrumentation/metrics_discovery/common/internal/md_adapter.cpp \

LOCAL_CPPFLAGS := -DNDEBUG \
				  -DINCLUDE_ALL_METRICS \
				  -O2 -D_FORTIFY_SOURCE=2 -Wformat \
				  -fdiagnostics-color=auto  \
				  -fstack-protector \
				  -Wno-unused \
				  -Werror \
				  -Wno-strict-aliasing \
				  -Wno-unknown-pragmas \
				  -Wno-comment \
				  -msse \
				  -Wformat-security \
				  -DMD_USE_PERF \
				  -DMETRICS_DISCOVERY \
				  -fno-inline \
				  -Wall \
				  -Wno-reorder \
				  -Wno-unused-variable \
				  -Wno-unused-parameter \
				  -std=c++17 \
				  -Wno-extern-c-compat \
				  -Wno-ignored-qualifiers \
				  -Wno-missing-field-initializers \
				  -Wno-unused-value \
				  -Wno-implicit-fallthrough \
				  -Wno-unused-private-field \
				  -Wno-return-type \

LOCAL_LDFLAGS :=  -Wl,--no-undefined \
				  -Wl,-z,defs \
				  -Wl,-z,noexecstack \
				  -Wl,-z,relro \
				  -Wl,-z,now

LOCAL_C_INCLUDES := \
					$(LOCAL_PATH)/instrumentation/metrics_discovery/common/inc/internal/concurrent_groups \
					$(LOCAL_PATH)/instrumentation/metrics_discovery/common/inc/internal \
					$(LOCAL_PATH)/instrumentation/metrics_discovery/linux/inc \
					$(LOCAL_PATH)/instrumentation/metrics_discovery/common/inc \
					$(LOCAL_PATH)/instrumentation/utils/common/inc \
					$(LOCAL_PATH)/instrumentation/utils/linux/inc \
					$(LOCAL_PATH)/inc/common \
					$(LOCAL_PATH)/inc/common/instrumentation \
					$(LOCAL_PATH)/inc/common/instrumentation/api \
					$(LOCAL_PATH)/../mesa3d-intel/src \
					$(LOCAL_PATH)/../mesa3d-intel/include \
					$(LOCAL_PATH)/../mesa3d-intel/src/intel/common \
					$(LOCAL_PATH)/../mesa3d-intel/src/intel/dev \
					$(LOCAL_PATH)/external/drm \

LOCAL_SHARED_LIBRARIES :=  libcutils \
						   libdrm \
						   liblog

LOCAL_MODULE := libmd
LOCAL_PROPRIETARY_MODULE := true
#LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
