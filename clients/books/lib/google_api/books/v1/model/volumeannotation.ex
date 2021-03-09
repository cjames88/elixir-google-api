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

defmodule GoogleApi.Books.V1.Model.Volumeannotation do
  @moduledoc """


  ## Attributes

  *   `annotationDataId` (*type:* `String.t`, *default:* `nil`) - The annotation data id for this volume annotation.
  *   `annotationDataLink` (*type:* `String.t`, *default:* `nil`) - Link to get data for this annotation.
  *   `annotationType` (*type:* `String.t`, *default:* `nil`) - The type of annotation this is.
  *   `contentRanges` (*type:* `GoogleApi.Books.V1.Model.VolumeannotationContentRanges.t`, *default:* `nil`) - The content ranges to identify the selected text.
  *   `data` (*type:* `String.t`, *default:* `nil`) - Data for this annotation.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Indicates that this annotation is deleted.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique id of this volume annotation.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Resource Type
  *   `layerId` (*type:* `String.t`, *default:* `nil`) - The Layer this annotation is for.
  *   `pageIds` (*type:* `list(String.t)`, *default:* `nil`) - Pages the annotation spans.
  *   `selectedText` (*type:* `String.t`, *default:* `nil`) - Excerpt from the volume.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - URL to this resource.
  *   `updated` (*type:* `String.t`, *default:* `nil`) - Timestamp for the last time this anntoation was updated. (RFC 3339 UTC date-time format).
  *   `volumeId` (*type:* `String.t`, *default:* `nil`) - The Volume this annotation is for.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationDataId => String.t() | nil,
          :annotationDataLink => String.t() | nil,
          :annotationType => String.t() | nil,
          :contentRanges => GoogleApi.Books.V1.Model.VolumeannotationContentRanges.t() | nil,
          :data => String.t() | nil,
          :deleted => boolean() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :layerId => String.t() | nil,
          :pageIds => list(String.t()) | nil,
          :selectedText => String.t() | nil,
          :selfLink => String.t() | nil,
          :updated => String.t() | nil,
          :volumeId => String.t() | nil
        }

  field(:annotationDataId)
  field(:annotationDataLink)
  field(:annotationType)
  field(:contentRanges, as: GoogleApi.Books.V1.Model.VolumeannotationContentRanges)
  field(:data)
  field(:deleted)
  field(:id)
  field(:kind)
  field(:layerId)
  field(:pageIds, type: :list)
  field(:selectedText)
  field(:selfLink)
  field(:updated)
  field(:volumeId)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Volumeannotation do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Volumeannotation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Volumeannotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
