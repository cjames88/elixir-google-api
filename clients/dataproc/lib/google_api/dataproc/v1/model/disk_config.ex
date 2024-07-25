# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Dataproc.V1.Model.DiskConfig do
  @moduledoc """
  Specifies the config of disk options for a group of VM instances.

  ## Attributes

  *   `bootDiskProvisionedIops` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Note: This field is only supported if boot_disk_type is hyperdisk-balanced.
  *   `bootDiskProvisionedThroughput` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be greater than or equal to 1. Note: This field is only supported if boot_disk_type is hyperdisk-balanced.
  *   `bootDiskSizeGb` (*type:* `integer()`, *default:* `nil`) - Optional. Size in GB of the boot disk (default is 500GB).
  *   `bootDiskType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of the boot disk (default is "pd-standard"). Valid values: "pd-balanced" (Persistent Disk Balanced Solid State Drive), "pd-ssd" (Persistent Disk Solid State Drive), or "pd-standard" (Persistent Disk Hard Disk Drive). See Disk types (https://cloud.google.com/compute/docs/disks#disk-types).
  *   `localSsdInterface` (*type:* `String.t`, *default:* `nil`) - Optional. Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express). See local SSD performance (https://cloud.google.com/compute/docs/disks/local-ssd#performance).
  *   `numLocalSsds` (*type:* `integer()`, *default:* `nil`) - Optional. Number of attached SSDs, from 0 to 8 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and HDFS (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.Note: Local SSD options may vary by machine type and number of vCPUs selected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bootDiskProvisionedIops => String.t() | nil,
          :bootDiskProvisionedThroughput => String.t() | nil,
          :bootDiskSizeGb => integer() | nil,
          :bootDiskType => String.t() | nil,
          :localSsdInterface => String.t() | nil,
          :numLocalSsds => integer() | nil
        }

  field(:bootDiskProvisionedIops)
  field(:bootDiskProvisionedThroughput)
  field(:bootDiskSizeGb)
  field(:bootDiskType)
  field(:localSsdInterface)
  field(:numLocalSsds)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.DiskConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.DiskConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.DiskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
