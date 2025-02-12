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

defmodule GoogleApi.OSLogin.V1alpha.Model.ProvisionPosixAccountRequest do
  @moduledoc """
  A request message for creating a POSIX account entry.

  ## Attributes

  *   `regions` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The regions to wait for a POSIX account to be written to before returning a response. If unspecified, defaults to all regions. Regions are listed at https://cloud.google.com/about/locations#region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :regions => list(String.t()) | nil
        }

  field(:regions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.OSLogin.V1alpha.Model.ProvisionPosixAccountRequest do
  def decode(value, options) do
    GoogleApi.OSLogin.V1alpha.Model.ProvisionPosixAccountRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSLogin.V1alpha.Model.ProvisionPosixAccountRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
