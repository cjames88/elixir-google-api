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

defmodule GoogleApi.BigQuery.V2.Model.HparamTuningTrial do
  @moduledoc """
  Training info of a trial in hyperparameter tuning.

  ## Attributes

  *   `endTimeMs` (*type:* `String.t`, *default:* `nil`) - Ending time of the trial.
  *   `errorMessage` (*type:* `String.t`, *default:* `nil`) - Error message for FAILED and INFEASIBLE trial.
  *   `evalLoss` (*type:* `float()`, *default:* `nil`) - Loss computed on the eval data at the end of trial.
  *   `evaluationMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.EvaluationMetrics.t`, *default:* `nil`) - Evaluation metrics of this trial calculated on the test data. Empty in Job API.
  *   `hparamTuningEvaluationMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.EvaluationMetrics.t`, *default:* `nil`) - Hyperparameter tuning evaluation metrics of this trial calculated on the eval data. Unlike evaluation_metrics, only the fields corresponding to the hparam_tuning_objectives are set.
  *   `hparams` (*type:* `GoogleApi.BigQuery.V2.Model.TrainingOptions.t`, *default:* `nil`) - The hyperprameters selected for this trial.
  *   `startTimeMs` (*type:* `String.t`, *default:* `nil`) - Starting time of the trial.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the trial.
  *   `trainingLoss` (*type:* `float()`, *default:* `nil`) - Loss computed on the training data at the end of trial.
  *   `trialId` (*type:* `String.t`, *default:* `nil`) - 1-based index of the trial.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTimeMs => String.t() | nil,
          :errorMessage => String.t() | nil,
          :evalLoss => float() | nil,
          :evaluationMetrics => GoogleApi.BigQuery.V2.Model.EvaluationMetrics.t() | nil,
          :hparamTuningEvaluationMetrics =>
            GoogleApi.BigQuery.V2.Model.EvaluationMetrics.t() | nil,
          :hparams => GoogleApi.BigQuery.V2.Model.TrainingOptions.t() | nil,
          :startTimeMs => String.t() | nil,
          :status => String.t() | nil,
          :trainingLoss => float() | nil,
          :trialId => String.t() | nil
        }

  field(:endTimeMs)
  field(:errorMessage)
  field(:evalLoss)
  field(:evaluationMetrics, as: GoogleApi.BigQuery.V2.Model.EvaluationMetrics)
  field(:hparamTuningEvaluationMetrics, as: GoogleApi.BigQuery.V2.Model.EvaluationMetrics)
  field(:hparams, as: GoogleApi.BigQuery.V2.Model.TrainingOptions)
  field(:startTimeMs)
  field(:status)
  field(:trainingLoss)
  field(:trialId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.HparamTuningTrial do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.HparamTuningTrial.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.HparamTuningTrial do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end