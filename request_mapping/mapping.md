### account
name | method | http | root | mapping
---|---|---|---|---
AvatarDataTransferController | index | GET | / | /index
AvatarDataTransferController | checkTransferStatus | POST | / | /checkTransfer
AvatarDataTransferController | forceStopThread | POST | / | /forceStop
AvatarDataTransferController | doTransfer | POST | / | /doTransfer
AvatarDataTransferController | cancelTransfer | POST | / | /cancelTransfer
AvatarDataTransferController | failedReTransfer | POST | / | /failedReTransfer
AvatarDataTransferController | showWorkStatus | POST | / | /showWorkStatus
AvatarDataTransferController | reTransfer | POST | / | /reTransfer
AvatarDataTransferController | statTransferData | POST | / | /statTransfer
AvatarDataTransferController | cleanTransferDataLog | POST | / | /cancelLog
AvatarDataTransferController | showResultUserid | POST | / | /showResultUserid
AvatarDataTransferController | extractHaveAvatarUserid | GET | / | /extractAvatarUserid
AvatarDataTransferController | specificFileTransfer | GET | / | /specificFileTransfer
AvatarDataTransferController | specificDateTransfer | GET | / | /specificDateTransfer
UserBindController | sendEmail | POST | /bind | /sendEmail
UserBindController | sendSms |  | /bind | /sendSms
UserBindController | validateEmail |  | /bind | /validateEmail
UserBindController | validateSms |  | /bind | /validateSms
UserInfoController | checkIdentity | GET | / | /checkIdentity
UserInfoController | activate | GET | / | /signup
UserInfoController | signup | POST | / | /signup
UserInfoController | userDetail |  | / | /userDetail
UserInfoController | getUser | GET | / | /getUser
UserInfoController | updateUser | POST | / | /updateUser
UserLoginController | login | GET |  | /login
UserLoginController | codeLogin |  |  | /codeLogin
UserPasswordController | passwordRecoveryView |  | / | /forgetInit
UserPasswordController | checkIdentity | POST | / | /passwordRecovery
UserPasswordController | ForgetSendGetRequest | GET | / | /forgetSend
UserPasswordController | forgetSend | POST | / | /forgetSend
UserPasswordController | forgetSendEmail |  | / | /forgetSendEmail
UserPasswordController | forgetSendSms |  | / | /forgetSendSms
UserPasswordController | forgetValidateEmail |  | / | /forgetValidateEmail
UserPasswordController | forgetValidateEmailForTip |  | / | /forgetValidateEmailForTip
UserPasswordController | forgetValidateSms |  | / | /forgetValidateSms
UserPasswordController | forgetReset |  | / | /forgetReset
UserPasswordController | forgetComplete |  | / | /forgetComplete
UserPasswordController | forgetResetPassword |  | / | /forgetResetPassword
UserPasswordController | resetPassword |  | / | /resetPassword
UserProfileController | entireUser |  | /profile | /{userId}
UserSmsVerificationController | sendVerificationCode |  | / | /sendVerificationCode
UserSmsVerificationController | verifyCode |  | / | /verifyCode
UserStatusController | activateView |  | / | /activate
UserStatusController | activateCheck | POST | / | /activate_check
UserStatusController | sendActivateEmail |  | / | /sendActivateEmail
UserStatusController | validateActivateEmail |  | / | /validateActivateEmail
UserStatusController | validateActivateSms |  | / | /validateActivateSms
UserUnbindController | unbindMobile | POST | /unbind | /mobile
UserUnbindController | unbind | POST | /unbind | /thirdparty
OAuthController | getAccessTokens | GET |  | /getAccessTokens
OAuthController | getOAuth2Tokens | GET |  | /oauth2/getAccessTokens
OAuthController | cancelAuthorization | POST |  | /cancelAuthorization
OAuthController | updateScope | POST |  | /updateScope
ThirdPartyIntegrationController | bind | GET |  | /3rd/bind
ThirdPartyIntegrationController | bind | POST |  | /3rd/bind/confirm
ThirdPartyIntegrationController | verify | GET |  | /3rd/bind/verify
ThirdPartyIntegrationController | bind | POST |  | /3rd/bind/original
ThirdPartyIntegrationController | bindMock | GET |  | /3rd/bind/mock
UKeyBindController | bindCheck | POST | / | /bind/check
UKeyBindController | getUKeyList | GET | / | /bind/ukey/list
UKeyBindController | bind | POST | / | /bind/ukey
UKeyBindController | unbind | POST | / | /unbind/ukey
UKeyBindController | verify | GET | / | /bind/ukey/verify
UKeyLoginController | nonce | GET | / | /nonce
UKeyLoginController | ukeyLoginPage | GET | / | /login/ukey
UKeyLoginController | ukeyLogin | POST | / | /login/ukey
UserTicketController | getUserTicket | GET |  | /user_ticket
UserTicketController | getTicket | GET |  | /ticket
AboutController | base | GET | / | /about
AboutController | about | GET | / | /contact
AboutController | agreement | GET | / | /agreement
AboutController | feedback | GET | / | /feedback
AboutController | privacy | GET | / | /privacy
AccountAddressController | list | GET | /address | 
AccountAddressController | setDefault | PUT | /address | /setdefault
AccountAddressController | add | POST | /address | 
AccountAddressController | update | PUT | /address | 
AccountAddressController | remove | DELETE | /address | 
AccountAvatarController | upload | POST | /avatar | /upload
AccountAvatarController | cut | POST | /avatar | /cut
AccountAvatarController | preview | GET | /avatar | /preview
AccountAvatarController | get | GET | /avatar | /show/{userId}/{size}
AccountContactController | add | POST | /contact | /add
AccountContactController | update | PUT | /contact | /update
AccountContactController | move | POST | /contact | /move
AccountContactController | remove | POST | /contact | /remove
AccountContactController | list | GET | /contact | /list
AccountContactGroupController | add | POST | /contact/group | /add
AccountContactGroupController | update | PUT | /contact/group | /update
AccountContactGroupController | listContact | GET | /contact/group | /list
AccountContactGroupController | remove | POST | /contact/group | /remove
AccountInvitationController | validateEmail |  | /invitation | /validateEmail
AccountInvitationController | validateSms |  | /invitation | /{token}
AccountPageController | proxy | GET | / | /proxy
AccountPageController | unsportedBrowser | GET | / | /unsupportedBrowser
AccountPageController | infoBase | GET | / | /info
AccountPageController | infoThirdparty | GET | / | /info/third
AccountPageController | infoPersonal | GET | / | /info/detail
AccountPageController | infoAvatar | GET | / | /info/avatar
AccountPageController | infoAddress | GET | / | /info/address
AccountPageController | secureCenter | GET | / | /security
AccountPageController | secureEmailBind | GET | / | /security/emailbind
AccountPageController | secureMobileBind | GET | / | /security/mobilebind
AccountPageController | securePwdModify | GET | / | /security/pwdmodify
AccountPageController | securePayPwd | GET | / | /security/paypwd
AccountPageController | securePayPwdFind | GET | / | /security/paypwdfind
AccountPageController | secureLogs | GET | / | /security/logs
AccountPageController | secureUkey | GET | / | /security/ukey
AccountPageController | securePrivacy | GET | / | /security/privacy
AccountPageController | appstoreAuth | GET | / | /security/auth
AccountPageController | contactPersonal | GET | / | /contact/personal
AccountPageController | appstoreMyapp | GET | / | /appstore/app
AccountPageController | appstoreOrder | GET | / | /appstore/order
AccountPageController | message | GET | / | /message/center
AccountPageController | appstoreBalance | GET | / | /appstore/balance
AccountPageController | appstorePaypwd | GET | / | /appstore/paypwd
AccountTraceController | listTrace | GET | /trace | /info
AccountTraceController | reload | GET | /trace | /reload
CaptchaController | captcha | GET | / | /captcha
CaptchaController | verify | POST | / | /captcha/verify
CasController | logout | GET | /cas | /serviceLogout
HomeController | root | GET | / | /
HomeController | guidePath | GET | / | /guide/{path}
HomeController | index | GET | / | /index
HomeController | shtower | GET | / | /shtower
HomeController | ti117 | GET | / | /tj117
HomeController | education | GET | / | /gbim
HomeController | bjMTR | GET | / | /bjmtr
HomeController | lzlg | GET | / | /lzlg
HomeController | cqlfs | GET | / | /cqlfs
HomeController | contact | GET | / | /contactus
HomeController | agree | GET | / | /agree
HomeController | register | GET | / | /register
HomeController | mobileRegister | GET | / | /register/mobile
HomeController | register | GET | / | /enterprise/register
HomeController | accessDenied | GET | / | /accessDenied
HomeController | accessConfirm | GET | / | /authorize
HomeController | getMessagePage | GET | / | /message
HomeController | getErrorPage |  | / | /error
HomeController | switchUser |  | / | /switchUser
HomeController | tokenExpired | GET | / | /tokenExpired
HomeController | go | GET, HEAD | / | /go
LanguageController | setLanguage | GET | /language | /{locale}
PaasClientController | Reload | GET | /config | /reload
PaasClientController | setSecurityCheckThreshold | GET | /config | /security/threshold
PaasClientController | setNoCheckPattern | GET | /config | /security/nocheck
RPCProxyController | getWorkspace | GET | / | /workspace
RPCProxyController | getPayPasswordStrength | GET | / | /trade

### notification
name | method | http | root | mapping
---|---|---|---|---
HomeController | index | GET | / | /system
HomeController | mini | GET | / | , /mini
HomeController | message | GET | / | /getmessage
HomeController | home | GET | / | home
HomeController | notify | GET | / | notify
HomeController | go | GET | / | go
MessageController | query | GET | /message | 
MessageController | deleteMessages | DELETE | /message | 
MessageController | testMessage | GET | /message | /testMessage
MessageController | handleMessage | POST, PUT | /message | /exampleHandleMessage
MessageController | handleMessage | POST | /message | /handler
MessageController | statisticMessage | GET | /message | /statistic
MessageOauthController | statisticMessage | GET | /api/oauth/message | /statistic
PushSystemController | connectDevice | PUT | /api/oauth/pushSys | /device/{deviceId}
VersionController | whoami |  |  | /hello

### social
name | method | http | root | mapping
---|---|---|---|---
ActivityApiController | getAllDefinition | GET | /activity | /definition/list
ActivityApiController | publishActivity | POST | /activity | 
ActivityApiController | query | GET | /activity | list
CommentApiController | createComment | POST | /comment | 
CommentApiController | queryComment | GET | /comment | 
CommentApiController | queryCommentById | GET | /comment | /{commentId}
CommentApiController | queryCommentPage | GET | /comment | /page
CommentApiController | createReply | POST | /comment | /reply
CommentApiController | queryReply | GET | /comment | /reply
CommentApiController | getReplyById | GET | /comment | /reply/{replyId}
CommentApiController | getSubjectInfo | GET | /comment | /subjectInfo
ActivityController | index | GET | activity | home
ActivityController | query | GET | activity | 
ActivityController | queryAtAdmin | GET | activity | list
ActivityController | queryPage | GET | activity | listPage
ActivityController | deleteActivity | DELETE | activity | 
ActivityController | deleteActivityForId | GET | activity | /delete
ActivityController | queryActivityDefinition | GET | activity | /definitions
ActivityController | test | GET | activity | /test
ActivityController | saveUserCriteria | POST | activity | criteria
ActivityController | getUserCriteria | GET | activity | criteria
AdminController | listApp | GET | admin | apps, 
AdminController | appManagerEdit | GET | admin | appEdit
AdminController | saveApp | POST | admin | app
AdminController | activityDefinition | GET | admin | activityDefinition
AdminController | activityDefinitionEdit | GET | admin | activityDefinitionEdit
AdminController | saveActivityDefinition | POST | admin | /activityDefinition
AdminController | generateExampleActivity | POST | admin | /generateExampleActivity
AdminController | move1to2 | GET | admin | /move1to2
CommentController | demoIndex | GET | /comment | demo
CommentController | demoList | GET | /comment | demoList
CommentController | subjectInfo | GET | /comment | /subjectInfo
CommentController | queryComment | GET | /comment | 
CommentController | createComment | POST | /comment | 
CommentController | createReply | POST | /comment | reply
CommentController | queryReply | GET | /comment | reply
HomeController | defaultPage | GET | / | , index, home
HomeController | page404 | GET | / | 404
HomeController | page405 | GET | / | 405
HomeController | page500 | GET | / | 500
HomeController | exception | GET | / | exception
HomeController | availableCheck | GET | / | /go
VersionController | whoami |  |  | /hello

### gworkspace
name | method | http | root | mapping
---|---|---|---|---
DepartmentController | getDepartmentsByParent | GET | /{workspaceId}/department | 
DepartmentController | getDepartment | GET | /{workspaceId}/department | /{departmentId}
DepartmentController | create | POST | /{workspaceId}/department | 
DepartmentController | update | PUT | /{workspaceId}/department | /{departmentId}
DepartmentController | updateDepartmentPosition | POST | /{workspaceId}/department | /{departmentId}/order
DepartmentController | delete | DELETE | /{workspaceId}/department | /{departmentId}
GroupController | getGroups | GET | /{workspaceId}/group | 
GroupController | getGroup | GET | /{workspaceId}/group | /{groupId}
GroupController | create | POST | /{workspaceId}/group | 
GroupController | update | PUT | /{workspaceId}/group | /{groupId}
GroupController | delete | DELETE | /{workspaceId}/group | /{groupId}
GroupController | batchAddMember | POST | /{workspaceId}/group | /{groupId}/member
GroupController | deleteMember | DELETE | /{workspaceId}/group | /{groupId}/member
MemberController | getGroup | GET | /{workspaceId}/member | /{userId}
MemberController | invite | POST | /{workspaceId}/member | /invite
MemberController | accept | POST | /{workspaceId}/member | /accept
MemberController | setMemberRole | PUT | /{workspaceId}/member | /role
MemberController | setMemberDepartment | PUT | /{workspaceId}/member | /department
MemberController | quit | POST | /{workspaceId}/member | /quit
MemberController | modifyMemberCard | PUT | /{workspaceId}/member | /card
MemberController | getMembers | GET | /{workspaceId}/member | 
MemberController | removeMember | DELETE | /{workspaceId}/member | 
MemberController | applyJoinWorkspace | POST | /{workspaceId}/member | /apply
MemberController | approve | POST | /{workspaceId}/member | /approve
WorkspaceController | getWorkspaces | GET |  | 
WorkspaceController | getWorkspace | GET |  | /{workspaceId}/meta
WorkspaceController | create | POST |  | 
WorkspaceController | updateWorkspace | PUT |  | /{workspaceId}/meta
WorkspaceController | uploadWorkspaceLogo | POST |  | /{workspaceId}/logo
WorkspaceController | getWorkspaceLogo | GET |  | /{workspaceId}/logo
WorkspaceController | getWorkspaceInfo | GET |  | /{workspaceId}/info
WorkspaceController | authorize | POST |  | /{workspaceId}/auth
WorkspaceController | deleteWorkspace | DELETE |  | /{workspaceId}
WorkspaceController | getWorkspaceQuota | GET |  | /{workspaceId}/quota
WorkspaceController | getWorkspaceQuotas | GET |  | /quota

### gdoc
name | method | http | root | mapping
---|---|---|---|---
CommentController | getComments | GET |  | /{wsId}/file/comment
CommentController | addComment | POST |  | /{wsId}/file/comment
CommentController | deleteComments | DELETE |  | /{wsId}/file/comment
FavoriteController | getFavoriteFiles | GET | /{wsId}/favorite | 
FavoriteController | addFavorite | POST | /{wsId}/favorite | 
FavoriteController | deleteFavorite | DELETE | /{wsId}/favorite | 
FileController | createFolder | POST | /{wsId}/file, /{wsId}/appdata | 
FileController | getFileMeta | GET | /{wsId}/file, /{wsId}/appdata | /meta
FileController | getFilePath | GET | /{wsId}/file, /{wsId}/appdata | /meta/filePath
FileController | deleteFile | DELETE | /{wsId}/file, /{wsId}/appdata | 
FileController | getFileThumbnail | GET | /{wsId}/file, /{wsId}/appdata | /thumbnail
FileController | getChildFiles | GET | /{wsId}/file, /{wsId}/appdata | /children
FileController | uploadFile | POST | /{wsId}/file, /{wsId}/appdata | /data
FileController | downloadFile | GET | /{wsId}/file, /{wsId}/appdata | /data
FileController | copyFile | POST | /{wsId}/file, /{wsId}/appdata | /copy
FileController | renameFile | POST | /{wsId}/file, /{wsId}/appdata | /rename
FileController | moveFile | POST | /{wsId}/file, /{wsId}/appdata | /move
FileController | queryFile | POST | /{wsId}/file, /{wsId}/appdata | /query
FileController | getFileProgress | GET | /{wsId}/file, /{wsId}/appdata | /progress
FileModelController | getFileModel | GET | /{wsId}/model | 
FileWorkspaceController | getFileWorkspaceId | GET | /file | /workspace
PrivilegeController | listPrivileges | GET | /{wsid}/file/privilege | /all
PrivilegeController | deletePrivileges | DELETE | /{wsid}/file/privilege | 
PrivilegeController | grantPrivilege | POST | /{wsid}/file/privilege | 
PrivilegeController | getPrivileges | GET | /{wsid}/file/privilege | 
PrivilegeController | getChildPrivileges | GET | /{wsid}/file/privilege | 
PropertyController | listProperties | GET | /{wsid}/file/property, /{wsid}/appdata/property | 
PropertyController | listPropertiesByPath | GET | /{wsid}/file/property, /{wsid}/appdata/property | 
PropertyController | setProperties | POST | /{wsid}/file/property, /{wsid}/appdata/property | 
PropertyController | setPropertiesByPath | POST | /{wsid}/file/property, /{wsid}/appdata/property | 
PropertyController | deleteProperty | DELETE | /{wsid}/file/property, /{wsid}/appdata/property | 
PropertyController | deletePropertyByPath | DELETE | /{wsid}/file/property, /{wsid}/appdata/property | 
QuotaController | getQuotas | GET | /{wsId}/quota | 
RevisionController | getRevisionsByFileId | GET | /{wsId}/file/revision, /{wsId}/appdata/revision | 
RevisionController | getRevisionsByFilePath | GET | /{wsId}/file/revision, /{wsId}/appdata/revision | 
RevisionController | getRevision | GET | /{wsId}/file/revision, /{wsId}/appdata/revision | /meta
RevisionController | deleteById | DELETE | /{wsId}/file/revision, /{wsId}/appdata/revision | 
RevisionController | updateAlias | PUT | /{wsId}/file/revision, /{wsId}/appdata/revision | /alias
RevisionController | getRevisionThumbnail | GET | /{wsId}/file/revision, /{wsId}/appdata/revision | /thumbnail
RevisionController | downloadRevision | GET | /{wsId}/file/revision, /{wsId}/appdata/revision | /data
ShareController | createShare | POST |  | /{wsId}/share
ShareController | updateShare | PUT |  | /{wsId}/share
ShareController | getShareList | GET |  | /{wsId}/share
ShareController | deleteShare | DELETE |  | /{wsId}/share
ShareController | getShareMeta | GET |  | /share/meta
ShareController | getShareContent | GET |  | /share/file
ShareController | getShareFileMeta | GET |  | /share/file
ShareController | downloadShareFile | GET |  | /share/data
ShareController | tranferFile | POST |  | /share/transfer
ShareController | getModelInfo | GET |  | /share/model
ShareController | getThumbnail | GET |  | /share/thumbnail
StorageController | getStorage | GET | /{wsId}/file/storage, /{wsId}/appdata/storage | 
ThumbnailController | hasLocalPreview | GET | /{wsId}/thumbnail | 
TrashController | listFile | GET | {wsid}/trash | 
TrashController | restoreFile | POST | {wsid}/trash | /recovery
TrashController | purgeTrash | DELETE | {wsid}/trash | 
ViewCodeController | applyViewCode | POST |  | /{wsId}/viewer
ViewCodeController | getViewCodeInfo | GET |  | /viewer, /{wsId}/viewer
ViewCodeController | downloadFile | GET |  | /{wsId}/viewer/data
ViewCodeController | getThumbnail | GET |  | /{wsId}/viewer/thumbnail
AppFolderController | uploadByPath | POST | /internal/store/file/data | 
AppFolderController | downloadByPath | GET | /internal/store/file/data | 
AppFolderController | deleteByPath | DELETE | /internal/store/file/data | 
InternalFileController | downloadById | GET | /internal/{wsId}/file/data | 
InternalFileController | downloadByPath | GET | /internal/{wsId}/file/data | 

### portal
name | method | http | root | mapping
---|---|---|---|---
HomeController | login | GET |  | /loginstatus
HomeController | availableCheck | GET |  | /go

### workspace
name | method | http | root | mapping
---|---|---|---|---
HomeController | root | GET |  | /
HomeController | list | GET |  | /list
HomeController | getWorkspace | GET |  | /{workspaceId}
HomeController | member2 | GET |  | /m/{workspaceId}, /m/{workspaceId}/admin
HomeController | member3 | GET |  | /m/{workspaceId}/{path}
HomeController | setting2 | GET |  | /s/{workspaceId}
HomeController | setting3 | GET |  | /s/{workspaceId}/{path}
HomeController | join | GET |  | /join/{workspaceId}
HomeController | UpdateGuide | POST |  | /updateguide
HomeController | brief2 | GET |  | /b/{id}
WorkspaceApplyController | getApplyPage | GET | / | /apply
WorkspaceApplyController | getApplyMobile | GET | / | /apply/mobile
WorkspaceApplyController | getWorkspaceApply | POST | / | /apply
WorkspaceApplyController | ImageCaptcha | GET | / | /captcha
WorkspaceApplyH5Controller | getApplyPage | GET | /h5 | /apply
WorkspaceController | getWorkspaces | GET | / | /workspaces
WorkspaceController | validateWorkspace | GET | / | /{workspaceId}/validateworkspace
WorkspaceController | updateDefaultWorkspace | POST | / | /{workspaceId}/default
WorkspaceController | getStatusInMyWorkspace | GET | / | /{id}/status
WorkspaceController | getWorkspaceQuota | GET | / | /{workspaceId}/quota
WorkspaceController | uploadLogo | POST | / | /{id}/logo
WorkspaceController | previewLogo | GET | / | /{id}/logo/preview
WorkspaceController | cutLogo | POST | / | /{id}/logo/cut
WorkspaceController | getWorkspaceLogo | GET | / | /show/logo/{id}
WorkspaceController | update | PUT | / | /{id}
WorkspaceController | delete | DELETE | / | /{id}
WorkspaceController | toJoinWorkspace | GET | / | /{id}/join
WorkspaceController | joinWorkspace | POST | / | /{id}/join
WorkspaceController | batchInvite | POST | / | /{id}/members
WorkspaceController | getPackages | GET | / | /packages
WorkspaceController | buy_process | GET | / | /process/, /process/process_type/{p_type}, /process/process_type/{p_type}/ws_type/{w_type}
WorkspaceController | create | POST | / | /project
WorkspaceController | getInfoByInvitationCode | GET | / | /checkInvitationCode
WorkspaceController | paycallback | GET | / | /{id}/paycallback
WorkspaceGroupController | getRootGroups | GET | /{workspaceId} | /groups
WorkspaceGroupController | getChildrenGroups | GET | /{workspaceId} | /group/{groupId}
WorkspaceGroupController | create | POST | /{workspaceId} | /group
WorkspaceGroupController | update | PUT | /{workspaceId} | /group/{id}
WorkspaceGroupController | delete | DELETE | /{workspaceId} | /group/{id}
WorkspaceGroupMemberController | listMembersRecursive | GET | /{workspaceId}/group/member | /list
WorkspaceGroupMemberController | getMemberInfo | GET | /{workspaceId}/group/member | /{memberId}
WorkspaceGroupMemberController | moveMembers | PUT | /{workspaceId}/group/member | /{memberId}/change
WorkspaceGroupMemberController | batchUpdate | PUT | /{workspaceId}/group/member | /batchUpdate
WorkspaceMemberController | member | GET | /{workspaceId}/member | 
WorkspaceMemberController | joinWorkspace | POST | /{workspaceId}/member | /join
WorkspaceMemberController | approve | PUT | /{workspaceId}/member | /approve
WorkspaceMemberController | process | GET | /{workspaceId}/member | /{memberId}/{method}
WorkspaceMemberController | processForMessage | POST | /{workspaceId}/member | /{memberId}/{method}
WorkspaceMemberController | put | PUT | /{workspaceId}/member | , /card
WorkspaceMemberController | search | GET | /{workspaceId}/member | /search
WorkspaceMemberController | delete | DELETE | /{workspaceId}/member | /{memberIds}
WorkspaceMemberInfoController | updateMemberInfo | PUT | /{workspaceId}/memberinfo | 
WorkspaceMemberInfoController | getGroupsOfMember |  | /{workspaceId}/memberinfo | /{memberId}/group
WorkspaceMemberInfoController | HideOrShowSpecialInfo |  | /{workspaceId}/memberinfo | 
WorkspaceOauthAPIController | create | POST | /oauth | 
WorkspaceOauthAPIController | getWorkspace | GET | /oauth | /{workspaceId}
WorkspaceOauthAPIController | getWorkspaces | GET | /oauth | 
WorkspaceOauthAPIController | getWorkspaceQuota | GET | /oauth | /{workspaceId}/quota
WorkspaceOauthAPIController | update | PUT | /oauth | /{id}
WorkspaceOauthAPIController | deleteWorkspace | DELETE | /oauth | /{id}
WorkspaceOauthAPIController | getGroup | GET | /oauth | /{workspaceId}/group/{groupId}
WorkspaceOauthAPIController | getRootGroups | GET | /oauth | /{workspaceId}/group
WorkspaceOauthAPIController | create | POST | /oauth | /{workspaceId}/group
WorkspaceOauthAPIController | renameOrMoveGroup | PUT | /oauth | /{workspaceId}/group/{id}
WorkspaceOauthAPIController | delete | DELETE | /oauth | /{workspaceId}/group/{id}
WorkspaceOauthAPIController | listMembersRecursive | GET | /oauth | /{workspaceId}/group/{groupId}/member
WorkspaceOauthAPIController | moveMembers | PUT | /oauth | /{workspaceId}/group/{groupId}/member/{memberIds}
WorkspaceOauthAPIController | invite | POST | /oauth | /{workspaceId}/group/{groupId}/member
WorkspaceOauthAPIController | getMemberInfo | GET | /oauth | /{workspaceId}/member/{memberId}
WorkspaceOauthAPIController | put | PUT | /oauth | /{workspaceId}/member/{memberId}
WorkspaceOauthAPIController | deleteMember | DELETE | /oauth | /{workspaceId}/member/{memberIds}

### activity
name | method | http | root | mapping
---|---|---|---|---
DynamicController | getAllDynamic |  | /dynamic | 
DynamicController | getModleTypeList | GET | /dynamic | /getModuleTypeList
DynamicController | getDynamicList | GET | /dynamic | /wid/{workspaceId}/getDynamicList
SubscribeController | getAllSubscribe |  | /subscribe | 
SubscribeController | docSubscribe | POST | /subscribe | /wid/{workspaceId}/uid/{userId}/docSubscribe
SubscribeController | getSubscirbeList | GET | /subscribe | /wid/{workspaceId}/uid/{userId}/SubscirbeList
SubscribeController | DeleteSubscribe | DELETE | /subscribe | /wid/{workspaceId}/uid/{userId}/DeleteSubscribe

### coqui
name | method | http | root | mapping
---|---|---|---|---
ActionController | get | GET | /{workspaceId}/action | 
AttachementController | listFiles | GET | /{workspaceId}/attach | 
AttachementController | addAttachement | POST | /{workspaceId}/attach | 
AttachementController | viewAttachement | GET | /{workspaceId}/attach | /{id}/view
AttachementController | downloadAttachement | GET | /{workspaceId}/attach | /{id}/download
CoquiOauthAPIController | getTaskMeta | GET | /oauth/workspace/{workspaceId} | /task/{taskId}
CoquiOauthAPIController | createTask | POST | /oauth/workspace/{workspaceId} | /task
CoquiOauthAPIController | updateTask | PUT | /oauth/workspace/{workspaceId} | /task/{taskId}
CoquiOauthAPIController | getTaskExecutor | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/executor
CoquiOauthAPIController | getTaskObserver | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/observer
CoquiOauthAPIController | getCheckList | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/checklist
CoquiOauthAPIController | getAction | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/action
CoquiOauthAPIController | executeAction | PUT | /oauth/workspace/{workspaceId} | /task/{taskId}/action/{actionOpId}
CoquiOauthAPIController | getActionResult | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/actionResult
CoquiOauthAPIController | updateCheckList | PUT | /oauth/workspace/{workspaceId} | /task/{taskId}/checklist/{checkListId}
CoquiOauthAPIController | deleteCheckList | DELETE | /oauth/workspace/{workspaceId} | /task/{taskId}/checklist/{checkListId}
CoquiOauthAPIController | getTaskResource | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/attachment/{attachmentId}
CoquiOauthAPIController | addResource | POST | /oauth/workspace/{workspaceId} | /task/{taskId}/attachment
CoquiOauthAPIController | addExecutor | POST | /oauth/workspace/{workspaceId} | /task/{taskId}/executor
CoquiOauthAPIController | deleteExecutor | DELETE | /oauth/workspace/{workspaceId} | /task/{taskId}/executor/{userId}
CoquiOauthAPIController | addObserver | POST | /oauth/workspace/{workspaceId} | /task/{taskId}/observer
CoquiOauthAPIController | deleteObserver | DELETE | /oauth/workspace/{workspaceId} | /task/{taskId}/observer/{userId}
CoquiOauthAPIController | getTaskOfMe | GET | /oauth/workspace/{workspaceId} | /task
CoquiOauthAPIController | getActivities | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/activity
CoquiOauthAPIController | getComments | GET | /oauth/workspace/{workspaceId} | /task/{taskId}/comment
CoquiOauthAPIController | publishComment | POST | /oauth/workspace/{workspaceId} | /task/{taskId}/comment
CoquiOauthAPIController | getTasksets | GET | /oauth/workspace/{workspaceId} | /taskset
CoquiOauthAPIController | getTasksetStatistics | GET | /oauth/workspace/{workspaceId} | /taskset/{setId}/statistics
CoquiOauthAPIController | getPhases | GET | /oauth/workspace/{workspaceId} | /taskset/{setId}/phase
CoquiOauthAPIController | getTasks | GET | /oauth/workspace/{workspaceId} | /phase/{phaseId}/task
CoquiOauthAPIController | createTaskSet | POST | /oauth/workspace/{workspaceId} | /taskset
CoquiOauthAPIController | uploadTemplate | POST | /oauth/workspace/{workspaceId} | /template
GroupController | index | GET | /{workspaceId}/group, /{workspaceId}/project | 
GroupController | getTaskOfMeInWorkspace | GET | /{workspaceId}/group, /{workspaceId}/project | /task
GroupController | get | GET | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupIds}
GroupController | getDetail | GET | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/detail
GroupController | downloadAvatar | GET | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/avatar
GroupController | uploadAvatar | POST | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/avatar
GroupController | post | POST | /{workspaceId}/group, /{workspaceId}/project | 
GroupController | put | PUT | /{workspaceId}/group, /{workspaceId}/project | {taskGroupId}
GroupController | delete | DELETE | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupIds}
GroupController | getActivities | GET | /{workspaceId}/group, /{workspaceId}/project | /{projectId}/activities
GroupController | addManager | POST | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/manager
GroupController | deleteManager | DELETE | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/manager/{memberId}
GroupController | listManager | GET | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/manager
GroupController | addCreator | POST | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/member/manager
GroupController | deleteCreator | DELETE | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/member/{memberId}/manager
GroupController | isAdmin | GET | /{workspaceId}/group, /{workspaceId}/project | /{taskGroupId}/status
GroupController | exportTemplate | POST | /{workspaceId}/group, /{workspaceId}/project | /{groupId}/export
GroupController | getTemplates | GET | /{workspaceId}/group, /{workspaceId}/project | /template
GroupController | moveTask | PUT | /{workspaceId}/group, /{workspaceId}/project | /moveTask
GroupController | getGroupOfAdmin | GET | /{workspaceId}/group, /{workspaceId}/project | /groupOfAdmin
HomeController | root1 | GET |  | /
HomeController | getWorkspaces | GET |  | /workspaces
HomeController | getWorkspaceStatus | GET |  | /{workspaceId}/status
HomeController | root2 | GET |  | /{workspaceId}
HomeController | root3 | GET |  | /{workspaceId}/c/{taskId}
HomeController | detail | GET |  | /d/
HomeController | detail1 | GET |  | /d/{workspaceId}/
HomeController | detail2 | GET |  | /d/{workspaceId}/{id}
HomeController | detail3 | GET |  | /d/{workspaceId}/{id}/{path}
HomeController | detail5 | GET |  | /d/c/{workspaceId}/{id}/{path}
HomeController | accountCallBack | GET |  | /invitation/callback
HomeController | availableCheck | GET |  | /go
MobileClientController | getConstructionProblemList | GET | field/{workspaceId} | /problem
MobileClientController | getConstructionProblemDetails | GET | field/{workspaceId} | /problem/{id}
MobileClientController | createConstructionProblem | POST | field/{workspaceId} | /problem
MobileClientController | moveTask | PUT | field/{workspaceId} | /problem/{id}/position
MobileClientController | deleteConstructionProblem | DELETE | field/{workspaceId} | problem/{id}
MobileClientController | deleteResource | DELETE | field/{workspaceId} | problem/{id}/resource/{resourceId}
PhaseActionController | create | POST | /{workspaceId}/group/{groupId}/phase/{phaseId} | /action
PhaseActionController | selectAction | GET | /{workspaceId}/group/{groupId}/phase/{phaseId} | /action
PhaseActionController | delete | DELETE | /{workspaceId}/group/{groupId}/phase/{phaseId} | /action/{actionId}/actionOp/{actionOpId}
PhaseActionController | updateActionOp | PUT | /{workspaceId}/group/{groupId}/phase/{phaseId} | /action/{actionId}/actionOp/{actionOpId}
PhaseActionController | addActionToPhase | POST | /{workspaceId}/group/{groupId}/phase/{phaseId} | /executor
PhaseActionController | updateActionOperator | PUT | /{workspaceId}/group/{groupId}/phase/{phaseId} | /executor/{phaseActionId}
PhaseActionController | getActionsOfPhase | GET | /{workspaceId}/group/{groupId}/phase/{phaseId} | /executor
PhaseActionController | deleteUserFromPhaseAction | DELETE | /{workspaceId}/group/{groupId}/phase/{phaseId} | /executor/{actionUserId}
PhaseController | index | GET | /{workspaceId}/group/{taskGroupId}/phase | 
PhaseController | get | GET | /{workspaceId}/group/{taskGroupId}/phase | /{phaseIds}
PhaseController | post | POST | /{workspaceId}/group/{taskGroupId}/phase | 
PhaseController | put | PUT | /{workspaceId}/group/{taskGroupId}/phase | /{phaseId}
PhaseController | delete | DELETE | /{workspaceId}/group/{taskGroupId}/phase | /{phaseIds}
PhaseController | listTask | GET | /{workspaceId}/group/{taskGroupId}/phase | /{phaseId}/task
PhaseController | addObserver | POST | /{workspaceId}/group/{taskGroupId}/phase | /{phaseId}/observer
PhaseController | listObserver | GET | /{workspaceId}/group/{taskGroupId}/phase | /{phaseId}/observer
PhaseController | deleteObserver | DELETE | /{workspaceId}/group/{taskGroupId}/phase | /{phaseId}/observer/{userId}
PhaseRuleController | addRuleToPhase | POST | /{workspaceId}/group/{groupId}/phase/{phaseId} | /rule
PhaseRuleController | updateRule | PUT | /{workspaceId}/group/{groupId}/phase/{phaseId} | /rule/{phaseRuleId}
PhaseRuleController | updatePriority | PUT | /{workspaceId}/group/{groupId}/phase/{phaseId} | /rule/{phaseRuleId}/move
PhaseRuleController | enableRules | PUT | /{workspaceId}/group/{groupId}/phase/{phaseId} | /enable
PhaseRuleController | getRulesOfPhase | GET | /{workspaceId}/group/{groupId}/phase/{phaseId} | /rule
PhaseRuleController | delete | DELETE | /{workspaceId}/group/{groupId}/phase/{phaseId} | /rule/{phaseRuleId}
ProjectMemberController | getByKeyword | GET | /{workspaceId}/member | 
RuleController | get | GET | /{workspaceId}/rule | 
TaskActionController | excuteAction | PUT | /{workspaceId}/group/{taskGroupId}/task/{taskId}/taskaction | /{taskActionId}
TaskAuditorController | post | POST | /{workspaceId}/project/{projectId}/task/{taskId}/auditor | 
TaskAuditorController | delete | DELETE | /{workspaceId}/project/{projectId}/task/{taskId}/auditor | 
TaskController | post | POST | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | 
TaskController | put | PUT | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{taskId}
TaskController | delete | DELETE | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}
TaskController | get | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}
TaskController | postComment | POST | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/comment
TaskController | updateComment | PUT | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/comment/{commentId}
TaskController | deleteComment | DELETE | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/comment/{commentId}
TaskController | getComment | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/comment
TaskController | assignTask | POST | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/receiver
TaskController | removeReceiver | DELETE | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/receiver/{receiverId}
TaskController | getResources | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/resource
TaskController | addResource | POST | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/resource
TaskController | deleteResource | DELETE | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/resource/{resourceId}
TaskController | getResource | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/resource/{resourceId}
TaskController | addCheckList | POST | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/checklist
TaskController | updateCheckList | PUT | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/checklist/{checkListId}
TaskController | getCheckLists | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/checklist
TaskController | getCheckList | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/checklist/{checkListId}
TaskController | deleteCheckList | DELETE | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/checklist/{checkListId}
TaskController | moveTask | PUT | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/position
TaskController | getActivities | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{id}/activity
TaskController | getMemberOfTask | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{taskId}/members
TaskController | getActionOfCurrentUser | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /{taskId}/actions
TaskController | exportTask | GET | /{workspaceId}/group/{taskGroupId}/task, /{workspaceId}/project/{taskGroupId}/task | /export

### document
name | method | http | root | mapping
---|---|---|---|---
DocumentController | getWorkspaces | GET |  | /ws/{workspaceId}
DocumentController | getWorkspaceStatus | GET |  | /ws/{workspaceId}/status
DocumentController | getQuota | GET |  | /quota
DocumentController | updateGuideStatus | PUT |  | /guide
DocumentController | getQuota | GET |  | /ws/{wsId}/quota
DocumentController | getWorkspaces | GET |  | /wsList
DocumentPublicInfoController | deletePublicInfo | DELETE | /publicInfo | /{publicTokens}
DocumentPublicInfoController | updatePublicInfo | PUT | /publicInfo | 
ErrorController | error404 | GET | /error | /404
ErrorController | error405 | GET | /error | /405
ErrorController | error500 | GET | /error | /500
FavoriteController | index | GET | /favorites | 
FavoriteController | get | GET | /favorites | /**
FavoriteController | create | POST | /favorites | /**
FavoriteController | update | PUT | /favorites | /**
FavoriteController | delete | DELETE | /favorites | /**
FileCommentController | list | GET | /file/comment | 
FileCommentController | submit | POST | /file/comment | 
FileTraceController | getActivities | GET | /file/trace | /{fileId}
HomeController | root | GET |  | /
HomeController | index | GET |  | /index
HomeController | listDocumentPage | GET |  | /page/document
HomeController | getHomePage | GET |  | /home
HomeController | getMessagePage | GET |  | /message
HomeController | base | GET |  | /{workspaceId}, /{workspaceId}/public, /{workspaceId}/public/{fileId}, /{workspaceId}/favorites, /{workspaceId}/favorites/{fileId}, /{workspaceId}/recycle, /{workspaceId}/{fileId}, /{workspaceId}/{fileId}/selected/{fileId}, /{workspaceId}/search/{searchWord}
HomeController | checkAlive | GET |  | /go
IDFileController | get | GET, HEAD | /id/file/ | **
IDFileController | create | POST | /id/file/ | **
IDFileController | update | PUT | /id/file/ | **
IDFileController | delete | DELETE | /id/file/ | **
InternalAPIController | download | GET |  | /store/**
InternalAPIController | upload | POST |  | /store/**
InternalAPIController | delete | DELETE |  | /store/**
PublicTokenController | qrCode | GET | /token/{token} | 
PublicTokenController | index | GET | /token/{token} | 
PublicTokenController | indexWithSecret | POST | /token/{token} | 
PublicTokenController | get | GET, HEAD | /token/{token} | /file/**
PublicTokenController | collect | PUT | /token/{token} | /file/**
RevisionController | updateComment | PUT | /file/{fileId}/version/{versionId}/comment | 
RouteController | getTokenSession | GET |  | /token/123QWE/route
RouteController | getSession | GET |  | /route
SearchController | searchPersonalFile | GET |  | /search/file
SearchController | searchProjectFile | GET |  | /search/enterprise/file
TaskController | getProjects | GET |  | /ws/{workspaceId}/project
TaskController | createTask | POST |  | /ws/{workspaceId}/task
V1ApiController | get | GET, HEAD | /file | /**
V1ApiController | create | POST | /file | **
V1ApiController | update | PUT | /file | **
V1ApiController | delete | DELETE | /file | **
ViewCodeTokenController | get | GET, HEAD | /viewcode/{token} | /file/**
MobileIdFileController | get | GET, HEAD | /h5/id/file/ | **
MobilePublicTokenController | index | GET | /h5/token/{token} | 
MobilePublicTokenController | login | GET | /h5/token/{token} | 
MobilePublicTokenController | indexWithSecret | POST | /h5/token/{token} | 
MobilePublicTokenController | get | GET, HEAD | /h5/token/{token} | /file/**
MobilePublicTokenController | collect | PUT | /h5/token/{token} | /file/**
OWADocumentController | getMeta | GET, HEAD | /wopi/files/{id}, /wopi/files/{id}/token/{token}, /wopi/files/{id}/viewcode/{viewCode} | 
OWADocumentController | toPreview | GET, HEAD | /wopi/files/{id}, /wopi/files/{id}/token/{token}, /wopi/files/{id}/viewcode/{viewCode} | /discovery
OWADocumentController | getContent | GET, HEAD | /wopi/files/{id}, /wopi/files/{id}/token/{token}, /wopi/files/{id}/viewcode/{viewCode} | /contents
WorkspaceAppDataController | get | GET, HEAD | /workspace/{wsId}/appdata/path, /workspace/{wsId}/appdata/id | **
WorkspaceAppDataController | create | POST | /workspace/{wsId}/appdata/path, /workspace/{wsId}/appdata/id | **
WorkspaceAppDataController | update | PUT | /workspace/{wsId}/appdata/path, /workspace/{wsId}/appdata/id | **
WorkspaceAppDataController | delete | DELETE | /workspace/{wsId}/appdata/path, /workspace/{wsId}/appdata/id | **
WorkspaceFavoriteController | index | GET | /ws/{wsId}/favorites, /workspace/{wsId}/favorites | 
WorkspaceFavoriteController | get | GET | /ws/{wsId}/favorites, /workspace/{wsId}/favorites | /**
WorkspaceFavoriteController | create | POST | /ws/{wsId}/favorites, /workspace/{wsId}/favorites | /**
WorkspaceFavoriteController | delete | DELETE | /ws/{wsId}/favorites, /workspace/{wsId}/favorites | /**
WorkspaceFileController | index | GET, HEAD | /ws/{wsId}/file, /workspace/{wsId}/file/path, /workspace/{wsId}/file/id | 
WorkspaceFileController | get | GET, HEAD | /ws/{wsId}/file, /workspace/{wsId}/file/path, /workspace/{wsId}/file/id | /**
WorkspaceFileController | create | POST | /ws/{wsId}/file, /workspace/{wsId}/file/path, /workspace/{wsId}/file/id | **
WorkspaceFileController | update | PUT | /ws/{wsId}/file, /workspace/{wsId}/file/path, /workspace/{wsId}/file/id | **
WorkspaceFileController | delete | DELETE | /ws/{wsId}/file, /workspace/{wsId}/file/path, /workspace/{wsId}/file/id | **
WorkspaceMemberController | getSelfRole | GET | /ws/{wsId}/member | /selfRole
WorkspaceMemberController | getMembers | GET | /ws/{wsId}/member | 
WorkspaceOrgController | getOrgs | GET | /ws/{wsId}/organization | 
WorkspacePrivilegeController | getPrivilege | GET | /ws/{wsId}/privilege | 
WorkspacePrivilegeController | deletePrivilege | DELETE | /ws/{wsId}/privilege | 
WorkspacePrivilegeController | update | PUT | /ws/{wsId}/privilege | 
WorkspacePrivilegeController | create | POST | /ws/{wsId}/privilege | 
WorkspacePublicController | index | GET | /ws/{wsId}/public, /workspace/{wsId}/public | 
WorkspacePublicController | get | GET | /ws/{wsId}/public, /workspace/{wsId}/public | /**
WorkspacePublicController | publiced | POST | /ws/{wsId}/public, /workspace/{wsId}/public | /**
WorkspacePublicController | update | PUT | /ws/{wsId}/public, /workspace/{wsId}/public | /**
WorkspacePublicController | unpublic | DELETE | /ws/{wsId}/public, /workspace/{wsId}/public | /**
WorkspaceRecycleController | index | GET | /ws/{wsId}/recycle, /workspace/{wsId}/recycle | 
WorkspaceRecycleController | restore | PUT | /ws/{wsId}/recycle, /workspace/{wsId}/recycle | /id/**
WorkspaceRecycleController | clean | DELETE | /ws/{wsId}/recycle, /workspace/{wsId}/recycle | 
WorkspaceSharelinkController | getSharelinkList | GET | /ws/{wsId}/sharelink, /workspace/{wsId}/sharelink | 
WorkspaceSharelinkController | createSharelink | POST | /ws/{wsId}/sharelink, /workspace/{wsId}/sharelink | 
WorkspaceSharelinkController | updateSharelink | PUT | /ws/{wsId}/sharelink, /workspace/{wsId}/sharelink | /{id}
WorkspaceSharelinkController | deletePublicInfo | DELETE | /ws/{wsId}/sharelink, /workspace/{wsId}/sharelink | /{ids}

### databag
name | method | http | root | mapping
---|---|---|---|---
CommentController | create | POST | /comment | 
CommentController | update | PUT | /comment | /{commentId}
CommentController | remove | DELETE | /comment | /{commentId}
CommentController | getCommentByModelIdAndCommentId | GET | /comment | /{commentId}
CommentController | getComments | GET | /comment | /model/{modelId}
CoquiController | queryProjects | GET | /coqui | /{modelId}/project/{workspaceId}
CoquiController | createTask | POST | /coqui | /{modelId}/task/{workspaceId}
DatabagController | getDatabagOrigin | GET | /viewer | /{databagId}/resource
DatabagController | getImagePreview | GET | /viewer | /{databagId}/preview
DatabagController | getResourceByPath | GET | /viewer | /{databagId}/path/**
DatabagController | getAllExport | GET | /viewer | /{databagId}/export
ModelController | getElementProperty | GET | /model | /{modelId}/{elementId}
ModelController | createCustomProperty | POST | /model | /{modelId}/{elementId}
ModelController | getCustomProperty | GET | /model | /{modelId}/{elementId}/custom
ModelController | removeCustomProperty | DELETE | /model | /{modelId}/{elementId}/{propertyId}
ModelController | createComposition | POST | /model | /{modelId}/comp
ModelController | removeComposition | DELETE | /model | /{modelId}/comp/{compositionId}
ModelController | listCompositions | GET | /model | /{modelId}/comp
ModelController | inherit | PUT | /model | /{modelId}/inherit
ModelQueryController | parseQuery | GET | /query | /{modelId}/assist
ModelQueryController | doQuery | GET | /query | /{modelId}
ModelQueryController | queryComp | GET | /query | /{modelId}/comp/{compId}
VersionController | availableCheck | GET |  | /go
ViewerController | viewById | GET | /viewer | /{databagId}
ViewerController | viewByIdAndViewId | GET | /viewer | /{databagId}/comment
ViewerController | viewByMeta | GET | /viewer | /{source}/{localId}/{version}

