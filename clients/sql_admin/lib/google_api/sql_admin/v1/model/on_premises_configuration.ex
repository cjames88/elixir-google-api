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

defmodule GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration do
  @moduledoc """
  On-premises instance configuration.

  ## Attributes

  *   `caCertificate` (*type:* `String.t`, *default:* `nil`) - PEM representation of the trusted CA's x509 certificate.
  *   `clientCertificate` (*type:* `String.t`, *default:* `nil`) - PEM representation of the replica's x509 certificate.
  *   `clientKey` (*type:* `String.t`, *default:* `nil`) - PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  *   `dumpFilePath` (*type:* `String.t`, *default:* `nil`) - The dump file to create the Cloud SQL replica.
  *   `hostPort` (*type:* `String.t`, *default:* `nil`) - The host and port of the on-premises instance in host:port format
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#onPremisesConfiguration`.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The password for connecting to on-premises instance.
  *   `selectedObjects` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.SelectedObjects.t)`, *default:* `nil`) - Optional. A list of objects that the user selects for replication from an external source instance.
  *   `sourceInstance` (*type:* `GoogleApi.SQLAdmin.V1.Model.InstanceReference.t`, *default:* `nil`) - The reference to Cloud SQL instance if the source is Cloud SQL.
  *   `sslOption` (*type:* `String.t`, *default:* `nil`) - Optional. SSL option for replica connection to the on-premises source.
  *   `username` (*type:* `String.t`, *default:* `nil`) - The username for connecting to on-premises instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caCertificate => String.t() | nil,
          :clientCertificate => String.t() | nil,
          :clientKey => String.t() | nil,
          :dumpFilePath => String.t() | nil,
          :hostPort => String.t() | nil,
          :kind => String.t() | nil,
          :password => String.t() | nil,
          :selectedObjects => list(GoogleApi.SQLAdmin.V1.Model.SelectedObjects.t()) | nil,
          :sourceInstance => GoogleApi.SQLAdmin.V1.Model.InstanceReference.t() | nil,
          :sslOption => String.t() | nil,
          :username => String.t() | nil
        }

  field(:caCertificate)
  field(:clientCertificate)
  field(:clientKey)
  field(:dumpFilePath)
  field(:hostPort)
  field(:kind)
  field(:password)
  field(:selectedObjects, as: GoogleApi.SQLAdmin.V1.Model.SelectedObjects, type: :list)
  field(:sourceInstance, as: GoogleApi.SQLAdmin.V1.Model.InstanceReference)
  field(:sslOption)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.OnPremisesConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
