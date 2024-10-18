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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination do
  @moduledoc """
  Google Cloud Storage Object details to write the feedback labels to.

  ## Attributes

  *   `addWhitespace` (*type:* `boolean()`, *default:* `nil`) - Optional. Add whitespace to the JSON file. Makes easier to read, but increases file size. Only applicable for JSON format.
  *   `alwaysPrintEmptyFields` (*type:* `boolean()`, *default:* `nil`) - Optional. Always print fields with no presence. This is useful for printing fields that are not set, like implicit 0 value or empty lists/maps. Only applicable for JSON format.
  *   `format` (*type:* `String.t`, *default:* `nil`) - Required. File format in which the labels will be exported.
  *   `objectUri` (*type:* `String.t`, *default:* `nil`) - Required. The Google Cloud Storage URI to write the feedback labels to. The file name will be used as a prefix for the files written to the bucket if the output needs to be split across multiple files, otherwise it will be used as is. The file extension will be appended to the file name based on the format selected. E.g. `gs://bucket_name/object_uri_prefix`
  *   `recordsPerFileCount` (*type:* `String.t`, *default:* `nil`) - Optional. The number of records per file. Applicable for either format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addWhitespace => boolean() | nil,
          :alwaysPrintEmptyFields => boolean() | nil,
          :format => String.t() | nil,
          :objectUri => String.t() | nil,
          :recordsPerFileCount => String.t() | nil
        }

  field(:addWhitespace)
  field(:alwaysPrintEmptyFields)
  field(:format)
  field(:objectUri)
  field(:recordsPerFileCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
