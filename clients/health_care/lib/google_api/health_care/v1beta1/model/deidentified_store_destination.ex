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

defmodule GoogleApi.HealthCare.V1beta1.Model.DeidentifiedStoreDestination do
  @moduledoc """
  Contains configuration for streaming de-identified FHIR export.

  ## Attributes

  *   `config` (*type:* `GoogleApi.HealthCare.V1beta1.Model.DeidentifyConfig.t`, *default:* `nil`) - The configuration to use when de-identifying resources that are added to this store.
  *   `store` (*type:* `String.t`, *default:* `nil`) - The full resource name of a Cloud Healthcare FHIR store, for example, `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.HealthCare.V1beta1.Model.DeidentifyConfig.t() | nil,
          :store => String.t() | nil
        }

  field(:config, as: GoogleApi.HealthCare.V1beta1.Model.DeidentifyConfig)
  field(:store)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.DeidentifiedStoreDestination do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.DeidentifiedStoreDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.DeidentifiedStoreDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end