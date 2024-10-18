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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswer do
  @moduledoc """
  An answer to a QaQuestion.

  ## Attributes

  *   `answerSources` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource.t)`, *default:* `nil`) - List of all individual answers given to the question.
  *   `answerValue` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue.t`, *default:* `nil`) - The main answer value, incorporating any manual edits if they exist.
  *   `conversation` (*type:* `String.t`, *default:* `nil`) - The conversation the answer applies to.
  *   `potentialScore` (*type:* `float()`, *default:* `nil`) - The maximum potential score of the question. If the question was answered using `na_value`, this field will be zero.
  *   `qaQuestion` (*type:* `String.t`, *default:* `nil`) - The QaQuestion answered by this answer.
  *   `questionBody` (*type:* `String.t`, *default:* `nil`) - Question text. E.g., "Did the agent greet the customer?"
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - User-defined list of arbitrary tags. Matches the value from QaScorecard.ScorecardQuestion.tags. Used for grouping/organization and for weighting the score of each answer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerSources =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource.t()
            )
            | nil,
          :answerValue =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue.t()
            | nil,
          :conversation => String.t() | nil,
          :potentialScore => float() | nil,
          :qaQuestion => String.t() | nil,
          :questionBody => String.t() | nil,
          :tags => list(String.t()) | nil
        }

  field(:answerSources,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource,
    type: :list
  )

  field(:answerValue,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue
  )

  field(:conversation)
  field(:potentialScore)
  field(:qaQuestion)
  field(:questionBody)
  field(:tags, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswer do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1QaAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
