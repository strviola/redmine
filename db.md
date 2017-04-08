# Tables

## Attachment

- attachments
  - id
  - container\_id
  - container\_type
  - filename
  - disk\_filename
  - filesize
  - content\_type
  - digest
  - downloads
  - author\_id
  - created\_on
  - description
  - disk\_directory

## AuthSource

- auth\_sources
  - id
  - type
  - name
  - host
  - port
  - account
  - account\_password
  - base\_dn
  - attr\_login
  - attr\_firstname
  - attr\_lastname
  - attr\_mail
  - onthefly\_register
  - tls
  - filter
  - timeout

## Board

- boards
  - id
  - project\_id
  - name
  - description
  - position
  - topics\_count
  - messages\_count
  - last\_message\_id
  - parent\_id

## Change

- changes
  - id
  - changeset\_id
  - action
  - path
  - from\_path
  - from\_revision
  - revision
  - branch

## Changeset

- changesets
  - id
  - repository\_id
  - revision
  - committer
  - committed\_on
  - comments
  - commit\_date
  - scmid
  - user\_id

## Comment

- comments
  - id
  - commented\_type
  - commented\_id
  - author\_id
  - comments
  - created\_on
  - updated\_on

## CustomFieldEnumeration

- custom\_field\_enumerations
  - id
  - custom\_field\_id
  - name
  - active
  - position

## CustomField

- custom\_fields
  - id
  - type
  - name
  - field\_format
  - possible\_values
  - regexp
  - min\_length
  - max\_length
  - is\_required
  - is\_for\_all
  - is\_filter
  - position
  - searchable
  - default\_value
  - editable
  - visible
  - multiple
  - format\_store
  - description

## CustomValue

- custom\_values
  - id
  - customized\_type
  - customized\_id
  - custom\_field\_id
  - value

## Document

- documents
  - id
  - project\_id
  - category\_id
  - title
  - description
  - created\_on

## EmailAddress

- email\_addresses
  - id
  - user\_id
  - address
  - is\_default
  - notify
  - created\_on
  - updated\_on

## EnabledModule

- enabled\_modules
  - id
  - project\_id
  - name

## Enumeration

- enumerations
  - id
  - name
  - position
  - is\_default
  - type
  - active
  - project\_id
  - parent\_id
  - position\_name

## ImportItem

- import\_items
  - id
  - import\_id
  - position
  - obj\_id
  - message

## Import

- imports
  - id
  - type
  - user\_id
  - filename
  - settings
  - total\_items
  - finished
  - created\_at
  - updated\_at

## IssueCategory

- issue\_categories
  - id
  - project\_id
  - name
  - assigned\_to\_id

## IssueRelation

- issue\_relations
  - id
  - issue\_from\_id
  - issue\_to\_id
  - relation\_type
  - delay

## IssueStatus

- issue\_statuses
  - id
  - name
  - is\_closed
  - position
  - default\_done\_ratio

## Issue

- issues
  - id
  - tracker\_id
  - project\_id
  - subject
  - description
  - due\_date
  - category\_id
  - status\_id
  - assigned\_to\_id
  - priority\_id
  - fixed\_version\_id
  - author\_id
  - lock\_version
  - created\_on
  - updated\_on
  - start\_date
  - done\_ratio
  - estimated\_hours
  - parent\_id
  - root\_id
  - lft
  - rgt
  - is\_private
  - closed\_on

## JournalDetail

- journal\_details
  - id
  - journal\_id
  - property
  - prop\_key
  - old\_value
  - value

## Journal

- journals
  - id
  - journalized\_id
  - journalized\_type
  - user\_id
  - notes
  - created\_on
  - private\_notes

## MemberRole

- member\_roles
  - id
  - member\_id
  - role\_id
  - inherited\_from

## Member

- members
  - id
  - user\_id
  - project\_id
  - created\_on
  - mail\_notification

## Message

- messages
  - id
  - board\_id
  - parent\_id
  - subject
  - content
  - author\_id
  - replies\_count
  - last\_reply\_id
  - created\_on
  - updated\_on
  - locked
  - sticky

## News

- news
  - id
  - project\_id
  - title
  - summary
  - description
  - author\_id
  - created\_on
  - comments\_count

## Project

- projects
  - id
  - name
  - description
  - homepage
  - is\_public
  - parent\_id
  - created\_on
  - updated\_on
  - identifier
  - status
  - lft
  - rgt
  - inherit\_members
  - default\_version\_id

## Query

- queries
  - id
  - project\_id
  - name
  - filters
  - user\_id
  - column\_names
  - sort\_criteria
  - group\_by
  - type
  - visibility
  - options

## Repository

- repositories
  - id
  - project\_id
  - url
  - login
  - password
  - root\_url
  - type
  - path\_encoding
  - log\_encoding
  - extra\_info
  - identifier
  - is\_default
  - created\_on

## Role

- roles
  - id
  - name
  - position
  - assignable
  - builtin
  - permissions
  - issues\_visibility
  - users\_visibility
  - time\_entries\_visibility
  - all\_roles\_managed

## Setting

- settings
  - id
  - name
  - value
  - updated\_on

## TimeEntry

- time\_entries
  - id
  - project\_id
  - user\_id
  - issue\_id
  - hours
  - comments
  - activity\_id
  - spent\_on
  - tyear
  - tmonth
  - tweek
  - created\_on
  - updated\_on

## Token

- tokens
  - id
  - user\_id
  - action
  - value
  - created\_on
  - updated\_on

## Tracker

- trackers
  - id
  - name
  - is\_in\_chlog
  - position
  - is\_in\_roadmap
  - fields\_bits
  - default\_status\_id

## UserPreference

- user\_preferences
  - id
  - user\_id
  - others
  - hide\_mail
  - time\_zone

## User

- users
  - id
  - login
  - hashed\_password
  - firstname
  - lastname
  - admin
  - status
  - last\_login\_on
  - language
  - auth\_source\_id
  - created\_on
  - updated\_on
  - type
  - identity\_url
  - mail\_notification
  - salt
  - must\_change\_passwd
  - passwd\_changed\_on

## Version

- versions
  - id
  - project\_id
  - name
  - description
  - effective\_date
  - created\_on
  - updated\_on
  - wiki\_page\_title
  - status
  - sharing

## Watcher

- watchers
  - id
  - watchable\_type
  - watchable\_id
  - user\_id

## WikiContent

- wiki\_contents
  - id
  - page\_id
  - author\_id
  - text
  - comments
  - updated\_on
  - version

## WikiPage

- wiki\_pages
  - id
  - wiki\_id
  - title
  - created\_on
  - protected
  - parent\_id

## WikiRedirect

- wiki\_redirects
  - id
  - wiki\_id
  - title
  - redirects\_to
  - created\_on
  - redirects\_to\_wiki\_id

## Wiki

- wikis
  - id
  - project\_id
  - start\_page
  - status

