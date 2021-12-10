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

defmodule GoogleApi.Keep.V1.Model.Note do
  @moduledoc """
  A single note.

  ## Attributes

  *   `attachments` (*type:* `list(GoogleApi.Keep.V1.Model.Attachment.t)`, *default:* `nil`) - Output only. The attachments attached to this note.
  *   `body` (*type:* `GoogleApi.Keep.V1.Model.Section.t`, *default:* `nil`) - The body of the note.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When this note was created.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of this note. See general note on identifiers in KeepService.
  *   `permissions` (*type:* `list(GoogleApi.Keep.V1.Model.Permission.t)`, *default:* `nil`) - Output only. The list of permissions set on the note. Contains at least one entry for the note owner.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the note. Length must be less than 1,000 characters.
  *   `trashTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When this note was trashed. If `trashed`, the note is eventually deleted. If the note is not trashed, this field is not set (and the trashed field is `false`).
  *   `trashed` (*type:* `boolean()`, *default:* `nil`) - Output only. `true` if this note has been trashed. If trashed, the note is eventually deleted.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. When this note was last modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachments => list(GoogleApi.Keep.V1.Model.Attachment.t()) | nil,
          :body => GoogleApi.Keep.V1.Model.Section.t() | nil,
          :createTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :permissions => list(GoogleApi.Keep.V1.Model.Permission.t()) | nil,
          :title => String.t() | nil,
          :trashTime => DateTime.t() | nil,
          :trashed => boolean() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:attachments, as: GoogleApi.Keep.V1.Model.Attachment, type: :list)
  field(:body, as: GoogleApi.Keep.V1.Model.Section)
  field(:createTime, as: DateTime)
  field(:name)
  field(:permissions, as: GoogleApi.Keep.V1.Model.Permission, type: :list)
  field(:title)
  field(:trashTime, as: DateTime)
  field(:trashed)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Keep.V1.Model.Note do
  def decode(value, options) do
    GoogleApi.Keep.V1.Model.Note.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Keep.V1.Model.Note do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
