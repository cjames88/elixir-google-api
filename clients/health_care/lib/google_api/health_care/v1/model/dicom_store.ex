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

defmodule GoogleApi.HealthCare.V1.Model.DicomStore do
  @moduledoc """
  Represents a DICOM store.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - User-supplied key-value pairs used to organize DICOM stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name of the DICOM store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  *   `notificationConfig` (*type:* `GoogleApi.HealthCare.V1.Model.NotificationConfig.t`, *default:* `nil`) - Optional. Notification destination for new DICOM instances. Supplied by the client.
  *   `streamConfigs` (*type:* `list(GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomStreamConfig.t)`, *default:* `nil`) - Optional. A list of streaming configs used to configure the destination of streaming exports for every DICOM instance insertion in this DICOM store. After a new config is added to `stream_configs`, DICOM instance insertions are streamed to the new destination. When a config is removed from `stream_configs`, the server stops streaming to that destination. Each config must contain a unique destination.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map() | nil,
          :name => String.t() | nil,
          :notificationConfig => GoogleApi.HealthCare.V1.Model.NotificationConfig.t() | nil,
          :streamConfigs =>
            list(GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomStreamConfig.t()) | nil
        }

  field(:labels, type: :map)
  field(:name)
  field(:notificationConfig, as: GoogleApi.HealthCare.V1.Model.NotificationConfig)

  field(:streamConfigs,
    as: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1DicomStreamConfig,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.DicomStore do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.DicomStore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.DicomStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
