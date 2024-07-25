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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2Revision do
  @moduledoc """
  A Revision is an immutable snapshot of code and configuration. A Revision references a container image. Revisions are only created by updates to its parent Service.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Output only. Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  *   `conditions` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t)`, *default:* `nil`) - Output only. The Condition of this Revision, containing its readiness status, and detailed error information in case it did not reach a serving state.
  *   `containers` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t)`, *default:* `nil`) - Holds the single container that defines the unit of execution for this Revision.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For a deleted resource, the deletion time. It is only populated as a response to a Delete request.
  *   `encryptionKey` (*type:* `String.t`, *default:* `nil`) - A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  *   `encryptionKeyRevocationAction` (*type:* `String.t`, *default:* `nil`) - The action to take if the encryption key is revoked.
  *   `encryptionKeyShutdownDuration` (*type:* `String.t`, *default:* `nil`) - If encryption_key_revocation_action is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  *   `executionEnvironment` (*type:* `String.t`, *default:* `nil`) - The execution environment being used to host this Revision.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. For a deleted resource, the time after which it will be permamently deleted. It is only populated as a response to a Delete request.
  *   `generation` (*type:* `String.t`, *default:* `nil`) - Output only. A number that monotonically increases every time the user modifies the desired state.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Output only. Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - The least stable launch stage needed to create this resource, as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
  *   `logUri` (*type:* `String.t`, *default:* `nil`) - Output only. The Google Console URI to obtain logs for the Revision.
  *   `maxInstanceRequestConcurrency` (*type:* `integer()`, *default:* `nil`) - Sets the maximum number of requests that each serving instance can receive.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique name of this Revision.
  *   `nodeSelector` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2NodeSelector.t`, *default:* `nil`) - The node selector for the revision.
  *   `observedGeneration` (*type:* `String.t`, *default:* `nil`) - Output only. The generation of this Revision currently serving traffic. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether the resource's reconciliation is still in progress. See comments in `Service.reconciling` for additional information on reconciliation process in Cloud Run.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `scaling` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling.t`, *default:* `nil`) - Scaling settings for this revision.
  *   `scalingStatus` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScalingStatus.t`, *default:* `nil`) - Output only. The current effective scaling settings for the revision.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the parent service.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has.
  *   `sessionAffinity` (*type:* `boolean()`, *default:* `nil`) - Enable session affinity.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Max allowed time for an instance to respond to a request.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. Server assigned unique identifier for the Revision. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  *   `volumes` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t)`, *default:* `nil`) - A list of Volumes to make available to containers.
  *   `vpcAccess` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t`, *default:* `nil`) - VPC Access configuration for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :conditions => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition.t()) | nil,
          :containers => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t()) | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :encryptionKey => String.t() | nil,
          :encryptionKeyRevocationAction => String.t() | nil,
          :encryptionKeyShutdownDuration => String.t() | nil,
          :etag => String.t() | nil,
          :executionEnvironment => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :generation => String.t() | nil,
          :labels => map() | nil,
          :launchStage => String.t() | nil,
          :logUri => String.t() | nil,
          :maxInstanceRequestConcurrency => integer() | nil,
          :name => String.t() | nil,
          :nodeSelector => GoogleApi.Run.V2.Model.GoogleCloudRunV2NodeSelector.t() | nil,
          :observedGeneration => String.t() | nil,
          :reconciling => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :scaling => GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling.t() | nil,
          :scalingStatus =>
            GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScalingStatus.t() | nil,
          :service => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :sessionAffinity => boolean() | nil,
          :timeout => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :volumes => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t()) | nil,
          :vpcAccess => GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t() | nil
        }

  field(:annotations, type: :map)
  field(:conditions, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Condition, type: :list)
  field(:containers, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Container, type: :list)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:encryptionKey)
  field(:encryptionKeyRevocationAction)
  field(:encryptionKeyShutdownDuration)
  field(:etag)
  field(:executionEnvironment)
  field(:expireTime, as: DateTime)
  field(:generation)
  field(:labels, type: :map)
  field(:launchStage)
  field(:logUri)
  field(:maxInstanceRequestConcurrency)
  field(:name)
  field(:nodeSelector, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2NodeSelector)
  field(:observedGeneration)
  field(:reconciling)
  field(:satisfiesPzs)
  field(:scaling, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling)
  field(:scalingStatus, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScalingStatus)
  field(:service)
  field(:serviceAccount)
  field(:sessionAffinity)
  field(:timeout)
  field(:uid)
  field(:updateTime, as: DateTime)
  field(:volumes, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume, type: :list)
  field(:vpcAccess, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Revision do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2Revision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2Revision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
