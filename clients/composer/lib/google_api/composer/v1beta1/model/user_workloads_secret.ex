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

defmodule GoogleApi.Composer.V1beta1.Model.UserWorkloadsSecret do
  @moduledoc """
  User workloads Secret used by Airflow tasks that run with Kubernetes executor or KubernetesPodOperator.

  ## Attributes

  *   `data` (*type:* `map()`, *default:* `nil`) - Optional. The "data" field of Kubernetes Secret, organized in key-value pairs, which can contain sensitive values such as a password, a token, or a key. The values for all keys have to be base64-encoded strings. For details see: https://kubernetes.io/docs/concepts/configuration/secret/ Example: { "example": "ZXhhbXBsZV92YWx1ZQ==", "another-example": "YW5vdGhlcl9leGFtcGxlX3ZhbHVl" }
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The resource name of the Secret, in the form: "projects/{projectId}/locations/{locationId}/environments/{environmentId}/userWorkloadsSecrets/{userWorkloadsSecretId}"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => map() | nil,
          :name => String.t() | nil
        }

  field(:data, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.UserWorkloadsSecret do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.UserWorkloadsSecret.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.UserWorkloadsSecret do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
