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

defmodule GoogleApi.ServiceUsage.V1.Model.ExperimentalFeatures do
  @moduledoc """
  Experimental features to be included during client library generation. These fields will be deprecated once the feature graduates and is enabled by default.

  ## Attributes

  *   `protobufPythonicTypesEnabled` (*type:* `boolean()`, *default:* `nil`) - Enables generation of protobuf code using new types that are more Pythonic which are included in `protobuf>=5.29.x`. This feature will be enabled by default 1 month after launching the feature in preview packages.
  *   `restAsyncIoEnabled` (*type:* `boolean()`, *default:* `nil`) - Enables generation of asynchronous REST clients if `rest` transport is enabled. By default, asynchronous REST clients will not be generated. This feature will be enabled by default 1 month after launching the feature in preview packages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :protobufPythonicTypesEnabled => boolean() | nil,
          :restAsyncIoEnabled => boolean() | nil
        }

  field(:protobufPythonicTypesEnabled)
  field(:restAsyncIoEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.ExperimentalFeatures do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.ExperimentalFeatures.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.ExperimentalFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
