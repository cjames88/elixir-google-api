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

defmodule GoogleApi.TextToSpeech.V1beta1.Model.CustomPronunciationParams do
  @moduledoc """
  Pronunciation customization for a phrase.

  ## Attributes

  *   `phoneticEncoding` (*type:* `String.t`, *default:* `nil`) - The phonetic encoding of the phrase.
  *   `phrase` (*type:* `String.t`, *default:* `nil`) - The phrase to which the customization will be applied. The phrase can be multiple words (in the case of proper nouns etc), but should not span to a whole sentence.
  *   `pronunciation` (*type:* `String.t`, *default:* `nil`) - The pronunciation of the phrase. This must be in the phonetic encoding specified above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :phoneticEncoding => String.t() | nil,
          :phrase => String.t() | nil,
          :pronunciation => String.t() | nil
        }

  field(:phoneticEncoding)
  field(:phrase)
  field(:pronunciation)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1beta1.Model.CustomPronunciationParams do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1beta1.Model.CustomPronunciationParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1beta1.Model.CustomPronunciationParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
