# Tables

## Attachment

- attachments
  - id
  - container_id
  - container_type
  - filename
  - disk_filename
  - filesize
  - content_type
  - digest
  - downloads
  - author_id
  - created_on
  - description
  - disk_directory

## AuthSource

- auth_sources
  - id
  - type
  - name
  - host
  - port
  - account
  - account_password
  - base_dn
  - attr_login
  - attr_firstname
  - attr_lastname
  - attr_mail
  - onthefly_register
  - tls
  - filter
  - timeout

## Board

- boards
  - id
  - project_id
  - name
  - description
  - position
  - topics_count
  - messages_count
  - last_message_id
  - parent_id

## Change

- changes
  - id
  - changeset_id
  - action
  - path
  - from_path
  - from_revision
  - revision
  - branch

## Changeset

- changesets
  - id
  - repository_id
  - revision
  - committer
  - committed_on
  - comments
  - commit_date
  - scmid
  - user_id

## Comment

- comments
  - id
  - commented_type
  - commented_id
  - author_id
  - comments
  - created_on
  - updated_on

## CustomFieldEnumeration

- custom_field_enumerations
  - id
  - custom_field_id
  - name
  - active
  - position

## CustomField

- custom_fields
  - id
  - type
  - name
  - field_format
  - possible_values
  - regexp
  - min_length
  - max_length
  - is_required
  - is_for_all
  - is_filter
  - position
  - searchable
  - default_value
  - editable
  - visible
  - multiple
  - format_store
  - description

## CustomValue

- custom_values
  - id
  - customized_type
  - customized_id
  - custom_field_id
  - value

## Document

- documents
  - id
  - project_id
  - category_id
  - title
  - description
  - created_on

## EmailAddress

- email_addresses
  - id
  - user_id
  - address
  - is_default
  - notify
  - created_on
  - updated_on

## EnabledModule

- enabled_modules
  - id
  - project_id
  - name

## Enumeration

- enumerations
  - id
  - name
  - position
  - is_default
  - type
  - active
  - project_id
  - parent_id
  - position_name

## ImportItem

- import_items
  - id
  - import_id
  - position
  - obj_id
  - message

## Import

- imports
  - id
  - type
  - user_id
  - filename
  - settings
  - total_items
  - finished
  - created_at
  - updated_at

## IssueCategory

- issue_categories
  - id
  - project_id
  - name
  - assigned_to_id

## IssueRelation

- issue_relations
  - id
  - issue_from_id
  - issue_to_id
  - relation_type
  - delay

## IssueStatus

- issue_statuses
  - id
  - name
  - is_closed
  - position
  - default_done_ratio

## Issue

- issues
  - id
  - tracker_id
  - project_id
  - subject
  - description
  - due_date
  - category_id
  - status_id
  - assigned_to_id
  - priority_id
  - fixed_version_id
  - author_id
  - lock_version
  - created_on
  - updated_on
  - start_date
  - done_ratio
  - estimated_hours
  - parent_id
  - root_id
  - lft
  - rgt
  - is_private
  - closed_on

## JournalDetail

- journal_details
  - id
  - journal_id
  - property
  - prop_key
  - old_value
  - value

## Journal

- journals
  - id
  - journalized_id
  - journalized_type
  - user_id
  - notes
  - created_on
  - private_notes

## MemberRole

- member_roles
  - id
  - member_id
  - role_id
  - inherited_from

## Member

- members
  - id
  - user_id
  - project_id
  - created_on
  - mail_notification

## Message

- messages
  - id
  - board_id
  - parent_id
  - subject
  - content
  - author_id
  - replies_count
  - last_reply_id
  - created_on
  - updated_on
  - locked
  - sticky

## News

- news
  - id
  - project_id
  - title
  - summary
  - description
  - author_id
  - created_on
  - comments_count

## Project

- projects
  - id
  - name
  - description
  - homepage
  - is_public
  - parent_id
  - created_on
  - updated_on
  - identifier
  - status
  - lft
  - rgt
  - inherit_members
  - default_version_id

## Query

- queries
  - id
  - project_id
  - name
  - filters
  - user_id
  - column_names
  - sort_criteria
  - group_by
  - type
  - visibility
  - options

## Repository

- repositories
  - id
  - project_id
  - url
  - login
  - password
  - root_url
  - type
  - path_encoding
  - log_encoding
  - extra_info
  - identifier
  - is_default
  - created_on

## Role

- roles
  - id
  - name
  - position
  - assignable
  - builtin
  - permissions
  - issues_visibility
  - users_visibility
  - time_entries_visibility
  - all_roles_managed

## Setting

- settings
  - id
  - name
  - value
  - updated_on

## TimeEntry

- time_entries
  - id
  - project_id
  - user_id
  - issue_id
  - hours
  - comments
  - activity_id
  - spent_on
  - tyear
  - tmonth
  - tweek
  - created_on
  - updated_on

## Token

- tokens
  - id
  - user_id
  - action
  - value
  - created_on
  - updated_on

## Tracker

- trackers
  - id
  - name
  - is_in_chlog
  - position
  - is_in_roadmap
  - fields_bits
  - default_status_id

## UserPreference

- user_preferences
  - id
  - user_id
  - others
  - hide_mail
  - time_zone

## User

- users
  - id
  - login
  - hashed_password
  - firstname
  - lastname
  - admin
  - status
  - last_login_on
  - language
  - auth_source_id
  - created_on
  - updated_on
  - type
  - identity_url
  - mail_notification
  - salt
  - must_change_passwd
  - passwd_changed_on

## Version

- versions
  - id
  - project_id
  - name
  - description
  - effective_date
  - created_on
  - updated_on
  - wiki_page_title
  - status
  - sharing

## Watcher

- watchers
  - id
  - watchable_type
  - watchable_id
  - user_id

## WikiContent

- wiki_contents
  - id
  - page_id
  - author_id
  - text
  - comments
  - updated_on
  - version

## WikiPage

- wiki_pages
  - id
  - wiki_id
  - title
  - created_on
  - protected
  - parent_id

## WikiRedirect

- wiki_redirects
  - id
  - wiki_id
  - title
  - redirects_to
  - created_on
  - redirects_to_wiki_id

## Wiki

- wikis
  - id
  - project_id
  - start_page
  - status

