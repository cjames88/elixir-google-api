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

defmodule GoogleApi.Firebase.V1beta1.Model.AndroidApp do
  @moduledoc """
  Details of a Firebase App for Android.

  ## Attributes

  *   `appId` (*type:* `String.t`, *default:* `nil`) - Immutable. The globally unique, Firebase-assigned identifier for the `AndroidApp`. This identifier should be treated as an opaque token, as the data format is not specified.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name for the `AndroidApp`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the AndroidApp, in the format: projects/ PROJECT_IDENTIFIER/androidApps/APP_ID * PROJECT_IDENTIFIER: the parent Project's [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510). Note that the value for PROJECT_IDENTIFIER in any response body will be the `ProjectId`. * APP_ID: the globally unique, Firebase-assigned identifier for the App (see [`appId`](../projects.androidApps#AndroidApp.FIELDS.app_id)).
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - Immutable. The canonical package name of the Android app as would appear in the Google Play Developer Console.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Immutable. A user-assigned unique identifier of the parent FirebaseProject for the `AndroidApp`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appId => String.t(),
          :displayName => String.t(),
          :name => String.t(),
          :packageName => String.t(),
          :projectId => String.t()
        }

  field(:appId)
  field(:displayName)
  field(:name)
  field(:packageName)
  field(:projectId)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.AndroidApp do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.AndroidApp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.AndroidApp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
