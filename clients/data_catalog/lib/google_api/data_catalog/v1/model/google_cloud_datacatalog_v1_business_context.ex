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

defmodule GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BusinessContext do
  @moduledoc """
  Business Context of the entry.

  ## Attributes

  *   `contacts` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Contacts.t`, *default:* `nil`) - Contact people for the entry.
  *   `entryOverview` (*type:* `GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryOverview.t`, *default:* `nil`) - Entry overview fields for rich text descriptions of entries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contacts => GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Contacts.t() | nil,
          :entryOverview =>
            GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryOverview.t() | nil
        }

  field(:contacts, as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1Contacts)
  field(:entryOverview, as: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1EntryOverview)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BusinessContext do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BusinessContext.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1.Model.GoogleCloudDatacatalogV1BusinessContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end