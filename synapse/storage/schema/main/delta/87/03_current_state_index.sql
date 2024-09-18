--
-- This file is licensed under the Affero General Public License (AGPL) version 3.
--
-- Copyright (C) 2024 New Vector, Ltd
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
--
-- See the GNU Affero General Public License for more details:
-- <https://www.gnu.org/licenses/agpl-3.0.html>.


-- Add a background updates to add a new index:
-- `current_state_events(room_id, membership) WHERE type = 'm.room.member'
-- This makes counting membership in rooms (for syncs) much faster
INSERT INTO background_updates (ordering, update_name, progress_json) VALUES
  (8701, 'current_state_events_members_room_index', '{}');