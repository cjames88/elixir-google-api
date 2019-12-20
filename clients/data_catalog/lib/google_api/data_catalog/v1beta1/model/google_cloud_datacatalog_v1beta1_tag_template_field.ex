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

defmodule GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1TagTemplateField do
  @moduledoc """
  The template for an individual field within a tag template.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name for this field. Defaults to an empty string.
  *   `isRequired` (*type:* `boolean()`, *default:* `nil`) - Whether this is a required field. Defaults to false.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the tag template field in URL format. Example:

      * projects/{project_id}/locations/{location}/tagTemplates/{tag_template}/fields/{field}

      Note that this TagTemplateField may not actually be stored in the location
      in this name.
  *   `type` (*type:* `GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1FieldType.t`, *default:* `nil`) - Required. The type of value this tag field can contain.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :isRequired => boolean(),
          :name => String.t(),
          :type => GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1FieldType.t()
        }

  field(:displayName)
  field(:isRequired)
  field(:name)
  field(:type, as: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1FieldType)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1TagTemplateField do
  def decode(value, options) do
    GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1TagTemplateField.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataCatalog.V1beta1.Model.GoogleCloudDatacatalogV1beta1TagTemplateField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
