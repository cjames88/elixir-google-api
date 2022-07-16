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

defmodule GoogleApi.AnalyticsHub.V1beta1.Model.Listing do
  @moduledoc """
  A listing is what gets published into a data exchange that a subscriber can subscribe to. It contains a reference to the data source along with descriptive information that will help subscribers find and subscribe the data.

  ## Attributes

  *   `bigqueryDataset` (*type:* `GoogleApi.AnalyticsHub.V1beta1.Model.BigQueryDatasetSource.t`, *default:* `nil`) - Required. Shared dataset i.e. BigQuery dataset source.
  *   `categories` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Categories of the listing. Up to two categories are allowed.
  *   `dataProvider` (*type:* `GoogleApi.AnalyticsHub.V1beta1.Model.DataProvider.t`, *default:* `nil`) - Optional. Details of the data provider who owns the source data.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  *   `documentation` (*type:* `String.t`, *default:* `nil`) - Optional. Documentation describing the listing.
  *   `icon` (*type:* `String.t`, *default:* `nil`) - Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`
  *   `primaryContact` (*type:* `String.t`, *default:* `nil`) - Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.
  *   `publisher` (*type:* `GoogleApi.AnalyticsHub.V1beta1.Model.Publisher.t`, *default:* `nil`) - Optional. Details of the publisher who owns the listing and who can share the source data.
  *   `requestAccess` (*type:* `String.t`, *default:* `nil`) - Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the listing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryDataset =>
            GoogleApi.AnalyticsHub.V1beta1.Model.BigQueryDatasetSource.t() | nil,
          :categories => list(String.t()) | nil,
          :dataProvider => GoogleApi.AnalyticsHub.V1beta1.Model.DataProvider.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :documentation => String.t() | nil,
          :icon => String.t() | nil,
          :name => String.t() | nil,
          :primaryContact => String.t() | nil,
          :publisher => GoogleApi.AnalyticsHub.V1beta1.Model.Publisher.t() | nil,
          :requestAccess => String.t() | nil,
          :state => String.t() | nil
        }

  field(:bigqueryDataset, as: GoogleApi.AnalyticsHub.V1beta1.Model.BigQueryDatasetSource)
  field(:categories, type: :list)
  field(:dataProvider, as: GoogleApi.AnalyticsHub.V1beta1.Model.DataProvider)
  field(:description)
  field(:displayName)
  field(:documentation)
  field(:icon)
  field(:name)
  field(:primaryContact)
  field(:publisher, as: GoogleApi.AnalyticsHub.V1beta1.Model.Publisher)
  field(:requestAccess)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsHub.V1beta1.Model.Listing do
  def decode(value, options) do
    GoogleApi.AnalyticsHub.V1beta1.Model.Listing.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsHub.V1beta1.Model.Listing do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end