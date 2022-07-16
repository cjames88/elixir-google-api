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

defmodule GoogleApi.Transcoder.V1.Model.ElementaryStream do
  @moduledoc """
  Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.

  ## Attributes

  *   `audioStream` (*type:* `GoogleApi.Transcoder.V1.Model.AudioStream.t`, *default:* `nil`) - Encoding of an audio stream.
  *   `key` (*type:* `String.t`, *default:* `nil`) - A unique key for this elementary stream.
  *   `textStream` (*type:* `GoogleApi.Transcoder.V1.Model.TextStream.t`, *default:* `nil`) - Encoding of a text stream. For example, closed captions or subtitles.
  *   `videoStream` (*type:* `GoogleApi.Transcoder.V1.Model.VideoStream.t`, *default:* `nil`) - Encoding of a video stream.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioStream => GoogleApi.Transcoder.V1.Model.AudioStream.t() | nil,
          :key => String.t() | nil,
          :textStream => GoogleApi.Transcoder.V1.Model.TextStream.t() | nil,
          :videoStream => GoogleApi.Transcoder.V1.Model.VideoStream.t() | nil
        }

  field(:audioStream, as: GoogleApi.Transcoder.V1.Model.AudioStream)
  field(:key)
  field(:textStream, as: GoogleApi.Transcoder.V1.Model.TextStream)
  field(:videoStream, as: GoogleApi.Transcoder.V1.Model.VideoStream)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.ElementaryStream do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.ElementaryStream.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.ElementaryStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end