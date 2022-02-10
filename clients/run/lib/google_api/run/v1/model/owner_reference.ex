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

defmodule GoogleApi.Run.V1.Model.OwnerReference do
  @moduledoc """
  OwnerReference contains enough information to let you identify an owning object. Currently, an owning object must be in the same namespace, so there is no namespace field.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - API version of the referent.
  *   `blockOwnerDeletion` (*type:* `boolean()`, *default:* `nil`) - If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned. +optional
  *   `controller` (*type:* `boolean()`, *default:* `nil`) - If true, this reference points to the managing controller. +optional
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the referent. More info: https://kubernetes.io/docs/user-guide/identifiers#names
  *   `uid` (*type:* `String.t`, *default:* `nil`) - UID of the referent. More info: https://kubernetes.io/docs/user-guide/identifiers#uids
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t() | nil,
          :blockOwnerDeletion => boolean() | nil,
          :controller => boolean() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :uid => String.t() | nil
        }

  field(:apiVersion)
  field(:blockOwnerDeletion)
  field(:controller)
  field(:kind)
  field(:name)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.OwnerReference do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.OwnerReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.OwnerReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
