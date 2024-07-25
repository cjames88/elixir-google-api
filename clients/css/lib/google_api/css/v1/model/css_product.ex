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

defmodule GoogleApi.CSS.V1.Model.CssProduct do
  @moduledoc """
  The processed CSS Product(a.k.a Aggregate Offer internally).

  ## Attributes

  *   `attributes` (*type:* `GoogleApi.CSS.V1.Model.Attributes.t`, *default:* `nil`) - Output only. A list of product attributes.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Output only. The two-letter [ISO 639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code for the product.
  *   `cssProductStatus` (*type:* `GoogleApi.CSS.V1.Model.CssProductStatus.t`, *default:* `nil`) - Output only. The status of a product, data validation issues, that is, information about a product computed asynchronously.
  *   `customAttributes` (*type:* `list(GoogleApi.CSS.V1.Model.CustomAttribute.t)`, *default:* `nil`) - Output only. A list of custom (CSS-provided) attributes. It can also be used to submit any attribute of the feed specification in its generic form (for example, `{ "name": "size type", "value": "regular" }`). This is useful for submitting attributes not explicitly exposed by the API, such as additional attributes used for Buy on Google.
  *   `feedLabel` (*type:* `String.t`, *default:* `nil`) - Output only. The feed label for the product.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the CSS Product. Format: `"accounts/{account}/cssProducts/{css_product}"`
  *   `rawProvidedId` (*type:* `String.t`, *default:* `nil`) - Output only. Your unique raw identifier for the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => GoogleApi.CSS.V1.Model.Attributes.t() | nil,
          :contentLanguage => String.t() | nil,
          :cssProductStatus => GoogleApi.CSS.V1.Model.CssProductStatus.t() | nil,
          :customAttributes => list(GoogleApi.CSS.V1.Model.CustomAttribute.t()) | nil,
          :feedLabel => String.t() | nil,
          :name => String.t() | nil,
          :rawProvidedId => String.t() | nil
        }

  field(:attributes, as: GoogleApi.CSS.V1.Model.Attributes)
  field(:contentLanguage)
  field(:cssProductStatus, as: GoogleApi.CSS.V1.Model.CssProductStatus)
  field(:customAttributes, as: GoogleApi.CSS.V1.Model.CustomAttribute, type: :list)
  field(:feedLabel)
  field(:name)
  field(:rawProvidedId)
end

defimpl Poison.Decoder, for: GoogleApi.CSS.V1.Model.CssProduct do
  def decode(value, options) do
    GoogleApi.CSS.V1.Model.CssProduct.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CSS.V1.Model.CssProduct do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
