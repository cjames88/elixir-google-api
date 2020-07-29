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

defmodule GoogleApi.Dataproc.V1.Model.SoftwareConfig do
  @moduledoc """
  Specifies the selection and config of software inside the cluster.

  ## Attributes

  *   `imageVersion` (*type:* `String.t`, *default:* `nil`) - Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  *   `optionalComponents` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The set of components to activate on the cluster.
  *   `properties` (*type:* `map()`, *default:* `nil`) - Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageVersion => String.t(),
          :optionalComponents => list(String.t()),
          :properties => map()
        }

  field(:imageVersion)
  field(:optionalComponents, type: :list)
  field(:properties, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.SoftwareConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.SoftwareConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.SoftwareConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
