# Tables

## Attachment

- attachments
  - id, INTEGER, NOT NULL
  - container\_id, integer
  - container\_type, varchar(30)
  - filename, varchar, NOT NULL
  - disk\_filename, varchar, NOT NULL
  - filesize, integer(8), NOT NULL
  - content\_type, varchar
  - digest, varchar(40), NOT NULL
  - downloads, integer, NOT NULL
  - author\_id, integer, NOT NULL
  - created\_on, datetime
  - description, varchar
  - disk\_directory, varchar

## AuthSource

- auth\_sources
  - id, INTEGER, NOT NULL
  - type, varchar(30), NOT NULL
  - name, varchar(60), NOT NULL
  - host, varchar(60)
  - port, integer
  - account, varchar
  - account\_password, varchar
  - base\_dn, varchar(255)
  - attr\_login, varchar(30)
  - attr\_firstname, varchar(30)
  - attr\_lastname, varchar(30)
  - attr\_mail, varchar(30)
  - onthefly\_register, boolean, NOT NULL
  - tls, boolean, NOT NULL
  - filter, text
  - timeout, integer

## Board

- boards
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - name, varchar, NOT NULL
  - description, varchar
  - position, integer
  - topics\_count, integer, NOT NULL
  - messages\_count, integer, NOT NULL
  - last\_message\_id, integer
  - parent\_id, integer

## Change

- changes
  - id, INTEGER, NOT NULL
  - changeset\_id, integer, NOT NULL
  - action, varchar(1), NOT NULL
  - path, text, NOT NULL
  - from\_path, text
  - from\_revision, varchar
  - revision, varchar
  - branch, varchar

## Changeset

- changesets
  - id, INTEGER, NOT NULL
  - repository\_id, integer, NOT NULL
  - revision, varchar, NOT NULL
  - committer, varchar
  - committed\_on, datetime, NOT NULL
  - comments, text
  - commit\_date, date
  - scmid, varchar
  - user\_id, integer

## Comment

- comments
  - id, INTEGER, NOT NULL
  - commented\_type, varchar(30), NOT NULL
  - commented\_id, integer, NOT NULL
  - author\_id, integer, NOT NULL
  - comments, text
  - created\_on, datetime, NOT NULL
  - updated\_on, datetime, NOT NULL

## CustomFieldEnumeration

- custom\_field\_enumerations
  - id, INTEGER, NOT NULL
  - custom\_field\_id, integer, NOT NULL
  - name, varchar, NOT NULL
  - active, boolean, NOT NULL
  - position, integer, NOT NULL

## CustomField

- custom\_fields
  - id, INTEGER, NOT NULL
  - type, varchar(30), NOT NULL
  - name, varchar(30), NOT NULL
  - field\_format, varchar(30), NOT NULL
  - possible\_values, text
  - regexp, varchar
  - min\_length, integer
  - max\_length, integer
  - is\_required, boolean, NOT NULL
  - is\_for\_all, boolean, NOT NULL
  - is\_filter, boolean, NOT NULL
  - position, integer
  - searchable, boolean
  - default\_value, text
  - editable, boolean
  - visible, boolean, NOT NULL
  - multiple, boolean
  - format\_store, text
  - description, text

## CustomValue

- custom\_values
  - id, INTEGER, NOT NULL
  - customized\_type, varchar(30), NOT NULL
  - customized\_id, integer, NOT NULL
  - custom\_field\_id, integer, NOT NULL
  - value, text

## Document

- documents
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - category\_id, integer, NOT NULL
  - title, varchar, NOT NULL
  - description, text
  - created\_on, datetime

## EmailAddress

- email\_addresses
  - id, INTEGER, NOT NULL
  - user\_id, integer, NOT NULL
  - address, varchar, NOT NULL
  - is\_default, boolean, NOT NULL
  - notify, boolean, NOT NULL
  - created\_on, datetime, NOT NULL
  - updated\_on, datetime, NOT NULL

## EnabledModule

- enabled\_modules
  - id, INTEGER, NOT NULL
  - project\_id, integer
  - name, varchar, NOT NULL

## Enumeration

- enumerations
  - id, INTEGER, NOT NULL
  - name, varchar(30), NOT NULL
  - position, integer
  - is\_default, boolean, NOT NULL
  - type, varchar
  - active, boolean, NOT NULL
  - project\_id, integer
  - parent\_id, integer
  - position\_name, varchar(30)

## ImportItem

- import\_items
  - id, INTEGER, NOT NULL
  - import\_id, integer, NOT NULL
  - position, integer, NOT NULL
  - obj\_id, integer
  - message, text

## Import

- imports
  - id, INTEGER, NOT NULL
  - type, varchar
  - user\_id, integer, NOT NULL
  - filename, varchar
  - settings, text
  - total\_items, integer
  - finished, boolean, NOT NULL
  - created\_at, datetime, NOT NULL
  - updated\_at, datetime, NOT NULL

## IssueCategory

- issue\_categories
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - name, varchar(60), NOT NULL
  - assigned\_to\_id, integer

## IssueRelation

- issue\_relations
  - id, INTEGER, NOT NULL
  - issue\_from\_id, integer, NOT NULL
  - issue\_to\_id, integer, NOT NULL
  - relation\_type, varchar, NOT NULL
  - delay, integer

## IssueStatus

- issue\_statuses
  - id, INTEGER, NOT NULL
  - name, varchar(30), NOT NULL
  - is\_closed, boolean, NOT NULL
  - position, integer
  - default\_done\_ratio, integer

## Issue

- issues
  - id, INTEGER, NOT NULL
  - tracker\_id, integer, NOT NULL
  - project\_id, integer, NOT NULL
  - subject, varchar, NOT NULL
  - description, text
  - due\_date, date
  - category\_id, integer
  - status\_id, integer, NOT NULL
  - assigned\_to\_id, integer
  - priority\_id, integer, NOT NULL
  - fixed\_version\_id, integer
  - author\_id, integer, NOT NULL
  - lock\_version, integer, NOT NULL
  - created\_on, datetime
  - updated\_on, datetime
  - start\_date, date
  - done\_ratio, integer, NOT NULL
  - estimated\_hours, float
  - parent\_id, integer
  - root\_id, integer
  - lft, integer
  - rgt, integer
  - is\_private, boolean, NOT NULL
  - closed\_on, datetime

## JournalDetail

- journal\_details
  - id, INTEGER, NOT NULL
  - journal\_id, integer, NOT NULL
  - property, varchar(30), NOT NULL
  - prop\_key, varchar(30), NOT NULL
  - old\_value, text
  - value, text

## Journal

- journals
  - id, INTEGER, NOT NULL
  - journalized\_id, integer, NOT NULL
  - journalized\_type, varchar(30), NOT NULL
  - user\_id, integer, NOT NULL
  - notes, text
  - created\_on, datetime, NOT NULL
  - private\_notes, boolean, NOT NULL

## MemberRole

- member\_roles
  - id, INTEGER, NOT NULL
  - member\_id, integer, NOT NULL
  - role\_id, integer, NOT NULL
  - inherited\_from, integer

## Member

- members
  - id, INTEGER, NOT NULL
  - user\_id, integer, NOT NULL
  - project\_id, integer, NOT NULL
  - created\_on, datetime
  - mail\_notification, boolean, NOT NULL

## Message

- messages
  - id, INTEGER, NOT NULL
  - board\_id, integer, NOT NULL
  - parent\_id, integer
  - subject, varchar, NOT NULL
  - content, text
  - author\_id, integer
  - replies\_count, integer, NOT NULL
  - last\_reply\_id, integer
  - created\_on, datetime, NOT NULL
  - updated\_on, datetime, NOT NULL
  - locked, boolean
  - sticky, integer

## News

- news
  - id, INTEGER, NOT NULL
  - project\_id, integer
  - title, varchar(60), NOT NULL
  - summary, varchar(255)
  - description, text
  - author\_id, integer, NOT NULL
  - created\_on, datetime
  - comments\_count, integer, NOT NULL

## Project

- projects
  - id, INTEGER, NOT NULL
  - name, varchar, NOT NULL
  - description, text
  - homepage, varchar
  - is\_public, boolean, NOT NULL
  - parent\_id, integer
  - created\_on, datetime
  - updated\_on, datetime
  - identifier, varchar
  - status, integer, NOT NULL
  - lft, integer
  - rgt, integer
  - inherit\_members, boolean, NOT NULL
  - default\_version\_id, integer

## Query

- queries
  - id, INTEGER, NOT NULL
  - project\_id, integer
  - name, varchar, NOT NULL
  - filters, text
  - user\_id, integer, NOT NULL
  - column\_names, text
  - sort\_criteria, text
  - group\_by, varchar
  - type, varchar
  - visibility, integer
  - options, text

## Repository

- repositories
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - url, varchar, NOT NULL
  - login, varchar(60)
  - password, varchar
  - root\_url, varchar(255)
  - type, varchar
  - path\_encoding, varchar(64)
  - log\_encoding, varchar(64)
  - extra\_info, text
  - identifier, varchar
  - is\_default, boolean
  - created\_on, datetime

## Role

- roles
  - id, INTEGER, NOT NULL
  - name, varchar(30), NOT NULL
  - position, integer
  - assignable, boolean
  - builtin, integer, NOT NULL
  - permissions, text
  - issues\_visibility, varchar(30), NOT NULL
  - users\_visibility, varchar(30), NOT NULL
  - time\_entries\_visibility, varchar(30), NOT NULL
  - all\_roles\_managed, boolean, NOT NULL

## Setting

- settings
  - id, INTEGER, NOT NULL
  - name, varchar(255), NOT NULL
  - value, text
  - updated\_on, datetime

## TimeEntry

- time\_entries
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - user\_id, integer, NOT NULL
  - issue\_id, integer
  - hours, float, NOT NULL
  - comments, varchar(1024)
  - activity\_id, integer, NOT NULL
  - spent\_on, date, NOT NULL
  - tyear, integer, NOT NULL
  - tmonth, integer, NOT NULL
  - tweek, integer, NOT NULL
  - created\_on, datetime, NOT NULL
  - updated\_on, datetime, NOT NULL

## Token

- tokens
  - id, INTEGER, NOT NULL
  - user\_id, integer, NOT NULL
  - action, varchar(30), NOT NULL
  - value, varchar(40), NOT NULL
  - created\_on, datetime, NOT NULL
  - updated\_on, datetime

## Tracker

- trackers
  - id, INTEGER, NOT NULL
  - name, varchar(30), NOT NULL
  - is\_in\_chlog, boolean, NOT NULL
  - position, integer
  - is\_in\_roadmap, boolean, NOT NULL
  - fields\_bits, integer
  - default\_status\_id, integer

## UserPreference

- user\_preferences
  - id, INTEGER, NOT NULL
  - user\_id, integer, NOT NULL
  - others, text
  - hide\_mail, boolean
  - time\_zone, varchar

## User

- users
  - id, INTEGER, NOT NULL
  - login, varchar, NOT NULL
  - hashed\_password, varchar(40), NOT NULL
  - firstname, varchar(30), NOT NULL
  - lastname, varchar(255), NOT NULL
  - admin, boolean, NOT NULL
  - status, integer, NOT NULL
  - last\_login\_on, datetime
  - language, varchar(5)
  - auth\_source\_id, integer
  - created\_on, datetime
  - updated\_on, datetime
  - type, varchar
  - identity\_url, varchar
  - mail\_notification, varchar, NOT NULL
  - salt, varchar(64)
  - must\_change\_passwd, boolean, NOT NULL
  - passwd\_changed\_on, datetime

## Version

- versions
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - name, varchar, NOT NULL
  - description, varchar
  - effective\_date, date
  - created\_on, datetime
  - updated\_on, datetime
  - wiki\_page\_title, varchar
  - status, varchar
  - sharing, varchar, NOT NULL

## Watcher

- watchers
  - id, INTEGER, NOT NULL
  - watchable\_type, varchar, NOT NULL
  - watchable\_id, integer, NOT NULL
  - user\_id, integer

## WikiContent

- wiki\_contents
  - id, INTEGER, NOT NULL
  - page\_id, integer, NOT NULL
  - author\_id, integer
  - text, text
  - comments, varchar(1024)
  - updated\_on, datetime, NOT NULL
  - version, integer, NOT NULL

## WikiPage

- wiki\_pages
  - id, INTEGER, NOT NULL
  - wiki\_id, integer, NOT NULL
  - title, varchar(255), NOT NULL
  - created\_on, datetime, NOT NULL
  - protected, boolean, NOT NULL
  - parent\_id, integer

## WikiRedirect

- wiki\_redirects
  - id, INTEGER, NOT NULL
  - wiki\_id, integer, NOT NULL
  - title, varchar
  - redirects\_to, varchar
  - created\_on, datetime, NOT NULL
  - redirects\_to\_wiki\_id, integer, NOT NULL

## Wiki

- wikis
  - id, INTEGER, NOT NULL
  - project\_id, integer, NOT NULL
  - start\_page, varchar(255), NOT NULL
  - status, integer, NOT NULL
