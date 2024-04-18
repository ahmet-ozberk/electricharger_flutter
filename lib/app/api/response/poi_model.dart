
class PoiModel {
    DataProvider? dataProvider;
    OperatorInfo? operatorInfo;
    UsageType? usageType;
    StatusType? statusType;
    SubmissionStatus? submissionStatus;
    bool? isRecentlyVerified;
    String? dateLastVerified;
    int? id;
    String? uuid;
    int? dataProviderId;
    int? operatorId;
    int? usageTypeId;
    AddressInfo? addressInfo;
    List<Connections>? connections;
    int? numberOfPoints;
    int? statusTypeId;
    String? dateLastStatusUpdate;
    int? dataQualityLevel;
    String? dateCreated;
    int? submissionStatusTypeId;
    String? generalComments;
    List<MediaItems>? mediaItems;
    String? usageCost;
    List<UserComments>? userComments;

    PoiModel({this.dataProvider, this.operatorInfo, this.usageType, this.statusType, this.submissionStatus, this.isRecentlyVerified, this.dateLastVerified, this.id, this.uuid, this.dataProviderId, this.operatorId, this.usageTypeId, this.addressInfo, this.connections, this.numberOfPoints, this.statusTypeId, this.dateLastStatusUpdate, this.dataQualityLevel, this.dateCreated, this.submissionStatusTypeId, this.generalComments, this.mediaItems, this.usageCost, this.userComments});

    PoiModel.fromJson(Map<String, dynamic> json) {
        dataProvider = json["DataProvider"] == null ? null : DataProvider.fromJson(json["DataProvider"]);
        operatorInfo = json["OperatorInfo"] == null ? null : OperatorInfo.fromJson(json["OperatorInfo"]);
        usageType = json["UsageType"] == null ? null : UsageType.fromJson(json["UsageType"]);
        statusType = json["StatusType"] == null ? null : StatusType.fromJson(json["StatusType"]);
        submissionStatus = json["SubmissionStatus"] == null ? null : SubmissionStatus.fromJson(json["SubmissionStatus"]);
        isRecentlyVerified = json["IsRecentlyVerified"];
        dateLastVerified = json["DateLastVerified"];
        id = json["ID"];
        uuid = json["UUID"];
        dataProviderId = json["DataProviderID"];
        operatorId = json["OperatorID"];
        usageTypeId = json["UsageTypeID"];
        addressInfo = json["AddressInfo"] == null ? null : AddressInfo.fromJson(json["AddressInfo"]);
        connections = json["Connections"] == null ? null : (json["Connections"] as List).map((e) => Connections.fromJson(e)).toList();
        numberOfPoints = json["NumberOfPoints"];
        statusTypeId = json["StatusTypeID"];
        dateLastStatusUpdate = json["DateLastStatusUpdate"];
        dataQualityLevel = json["DataQualityLevel"];
        dateCreated = json["DateCreated"];
        submissionStatusTypeId = json["SubmissionStatusTypeID"];
        generalComments = json["GeneralComments"];
        mediaItems = json["MediaItems"] == null ? null : (json["MediaItems"] as List).map((e) => MediaItems.fromJson(e)).toList();
        usageCost = json["UsageCost"];
        userComments = json["UserComments"] == null ? null : (json["UserComments"] as List).map((e) => UserComments.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        if(dataProvider != null) {
            _data["DataProvider"] = dataProvider?.toJson();
        }
        if(operatorInfo != null) {
            _data["OperatorInfo"] = operatorInfo?.toJson();
        }
        if(usageType != null) {
            _data["UsageType"] = usageType?.toJson();
        }
        if(statusType != null) {
            _data["StatusType"] = statusType?.toJson();
        }
        if(submissionStatus != null) {
            _data["SubmissionStatus"] = submissionStatus?.toJson();
        }
        _data["IsRecentlyVerified"] = isRecentlyVerified;
        _data["DateLastVerified"] = dateLastVerified;
        _data["ID"] = id;
        _data["UUID"] = uuid;
        _data["DataProviderID"] = dataProviderId;
        _data["OperatorID"] = operatorId;
        _data["UsageTypeID"] = usageTypeId;
        if(addressInfo != null) {
            _data["AddressInfo"] = addressInfo?.toJson();
        }
        if(connections != null) {
            _data["Connections"] = connections?.map((e) => e.toJson()).toList();
        }
        _data["NumberOfPoints"] = numberOfPoints;
        _data["StatusTypeID"] = statusTypeId;
        _data["DateLastStatusUpdate"] = dateLastStatusUpdate;
        _data["DataQualityLevel"] = dataQualityLevel;
        _data["DateCreated"] = dateCreated;
        _data["SubmissionStatusTypeID"] = submissionStatusTypeId;
        _data["GeneralComments"] = generalComments;
        if(mediaItems != null) {
            _data["MediaItems"] = mediaItems?.map((e) => e.toJson()).toList();
        }
        _data["UsageCost"] = usageCost;
        if(userComments != null) {
            _data["UserComments"] = userComments?.map((e) => e.toJson()).toList();
        }
        return _data;
    }

    PoiModel copyWith({
        DataProvider? dataProvider,
        OperatorInfo? operatorInfo,
        UsageType? usageType,
        StatusType? statusType,
        SubmissionStatus? submissionStatus,
        bool? isRecentlyVerified,
        String? dateLastVerified,
        int? id,
        String? uuid,
        int? dataProviderId,
        int? operatorId,
        int? usageTypeId,
        AddressInfo? addressInfo,
        List<Connections>? connections,
        int? numberOfPoints,
        int? statusTypeId,
        String? dateLastStatusUpdate,
        int? dataQualityLevel,
        String? dateCreated,
        int? submissionStatusTypeId,
        String? generalComments,
        List<MediaItems>? mediaItems,
        String? usageCost,
        List<UserComments>? userComments,
    }) => PoiModel(
        dataProvider: dataProvider ?? this.dataProvider,
        operatorInfo: operatorInfo ?? this.operatorInfo,
        usageType: usageType ?? this.usageType,
        statusType: statusType ?? this.statusType,
        submissionStatus: submissionStatus ?? this.submissionStatus,
        isRecentlyVerified: isRecentlyVerified ?? this.isRecentlyVerified,
        dateLastVerified: dateLastVerified ?? this.dateLastVerified,
        id: id ?? this.id,
        uuid: uuid ?? this.uuid,
        dataProviderId: dataProviderId ?? this.dataProviderId,
        operatorId: operatorId ?? this.operatorId,
        usageTypeId: usageTypeId ?? this.usageTypeId,
        addressInfo: addressInfo ?? this.addressInfo,
        connections: connections ?? this.connections,
        numberOfPoints: numberOfPoints ?? this.numberOfPoints,
        statusTypeId: statusTypeId ?? this.statusTypeId,
        dateLastStatusUpdate: dateLastStatusUpdate ?? this.dateLastStatusUpdate,
        dataQualityLevel: dataQualityLevel ?? this.dataQualityLevel,
        dateCreated: dateCreated ?? this.dateCreated,
        submissionStatusTypeId: submissionStatusTypeId ?? this.submissionStatusTypeId,
        generalComments: generalComments ?? this.generalComments,
        mediaItems: mediaItems ?? this.mediaItems,
        usageCost: usageCost ?? this.usageCost,
        userComments: userComments ?? this.userComments,
    );
}

class UserComments {
    int? id;
    int? chargePointId;
    int? commentTypeId;
    CommentType? commentType;
    String? userName;
    dynamic comment;
    int? rating;
    String? relatedUrl;
    String? dateCreated;
    User1? user;
    int? checkinStatusTypeId;
    CheckinStatusType? checkinStatusType;
    bool? isActionedByEditor;

    UserComments({this.id, this.chargePointId, this.commentTypeId, this.commentType, this.userName, this.comment, this.rating, this.relatedUrl, this.dateCreated, this.user, this.checkinStatusTypeId, this.checkinStatusType, this.isActionedByEditor});

    UserComments.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        chargePointId = json["ChargePointID"];
        commentTypeId = json["CommentTypeID"];
        commentType = json["CommentType"] == null ? null : CommentType.fromJson(json["CommentType"]);
        userName = json["UserName"];
        comment = json["Comment"];
        rating = json["Rating"];
        relatedUrl = json["RelatedURL"];
        dateCreated = json["DateCreated"];
        user = json["User"] == null ? null : User1.fromJson(json["User"]);
        checkinStatusTypeId = json["CheckinStatusTypeID"];
        checkinStatusType = json["CheckinStatusType"] == null ? null : CheckinStatusType.fromJson(json["CheckinStatusType"]);
        isActionedByEditor = json["IsActionedByEditor"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["ChargePointID"] = chargePointId;
        _data["CommentTypeID"] = commentTypeId;
        if(commentType != null) {
            _data["CommentType"] = commentType?.toJson();
        }
        _data["UserName"] = userName;
        _data["Comment"] = comment;
        _data["Rating"] = rating;
        _data["RelatedURL"] = relatedUrl;
        _data["DateCreated"] = dateCreated;
        if(user != null) {
            _data["User"] = user?.toJson();
        }
        _data["CheckinStatusTypeID"] = checkinStatusTypeId;
        if(checkinStatusType != null) {
            _data["CheckinStatusType"] = checkinStatusType?.toJson();
        }
        _data["IsActionedByEditor"] = isActionedByEditor;
        return _data;
    }

    UserComments copyWith({
        int? id,
        int? chargePointId,
        int? commentTypeId,
        CommentType? commentType,
        String? userName,
        dynamic comment,
        int? rating,
        String? relatedUrl,
        String? dateCreated,
        User1? user,
        int? checkinStatusTypeId,
        CheckinStatusType? checkinStatusType,
        bool? isActionedByEditor,
    }) => UserComments(
        id: id ?? this.id,
        chargePointId: chargePointId ?? this.chargePointId,
        commentTypeId: commentTypeId ?? this.commentTypeId,
        commentType: commentType ?? this.commentType,
        userName: userName ?? this.userName,
        comment: comment ?? this.comment,
        rating: rating ?? this.rating,
        relatedUrl: relatedUrl ?? this.relatedUrl,
        dateCreated: dateCreated ?? this.dateCreated,
        user: user ?? this.user,
        checkinStatusTypeId: checkinStatusTypeId ?? this.checkinStatusTypeId,
        checkinStatusType: checkinStatusType ?? this.checkinStatusType,
        isActionedByEditor: isActionedByEditor ?? this.isActionedByEditor,
    );
}

class CheckinStatusType {
    bool? isPositive;
    bool? isAutomatedCheckin;
    int? id;
    String? title;

    CheckinStatusType({this.isPositive, this.isAutomatedCheckin, this.id, this.title});

    CheckinStatusType.fromJson(Map<String, dynamic> json) {
        isPositive = json["IsPositive"];
        isAutomatedCheckin = json["IsAutomatedCheckin"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["IsPositive"] = isPositive;
        _data["IsAutomatedCheckin"] = isAutomatedCheckin;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    CheckinStatusType copyWith({
        bool? isPositive,
        bool? isAutomatedCheckin,
        int? id,
        String? title,
    }) => CheckinStatusType(
        isPositive: isPositive ?? this.isPositive,
        isAutomatedCheckin: isAutomatedCheckin ?? this.isAutomatedCheckin,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class User1 {
    int? id;
    dynamic identityProvider;
    dynamic identifier;
    dynamic currentSessionToken;
    String? username;
    dynamic profile;
    dynamic location;
    dynamic websiteUrl;
    int? reputationPoints;
    dynamic permissions;
    dynamic permissionsRequested;
    dynamic dateCreated;
    dynamic dateLastLogin;
    dynamic isProfilePublic;
    dynamic isEmergencyChargingProvider;
    dynamic isPublicChargingProvider;
    dynamic latitude;
    dynamic longitude;
    dynamic emailAddress;
    dynamic emailHash;
    String? profileImageUrl;
    dynamic isCurrentSessionTokenValid;
    dynamic apiKey;
    dynamic syncedSettings;

    User1({this.id, this.identityProvider, this.identifier, this.currentSessionToken, this.username, this.profile, this.location, this.websiteUrl, this.reputationPoints, this.permissions, this.permissionsRequested, this.dateCreated, this.dateLastLogin, this.isProfilePublic, this.isEmergencyChargingProvider, this.isPublicChargingProvider, this.latitude, this.longitude, this.emailAddress, this.emailHash, this.profileImageUrl, this.isCurrentSessionTokenValid, this.apiKey, this.syncedSettings});

    User1.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        identityProvider = json["IdentityProvider"];
        identifier = json["Identifier"];
        currentSessionToken = json["CurrentSessionToken"];
        username = json["Username"];
        profile = json["Profile"];
        location = json["Location"];
        websiteUrl = json["WebsiteURL"];
        reputationPoints = json["ReputationPoints"];
        permissions = json["Permissions"];
        permissionsRequested = json["PermissionsRequested"];
        dateCreated = json["DateCreated"];
        dateLastLogin = json["DateLastLogin"];
        isProfilePublic = json["IsProfilePublic"];
        isEmergencyChargingProvider = json["IsEmergencyChargingProvider"];
        isPublicChargingProvider = json["IsPublicChargingProvider"];
        latitude = json["Latitude"];
        longitude = json["Longitude"];
        emailAddress = json["EmailAddress"];
        emailHash = json["EmailHash"];
        profileImageUrl = json["ProfileImageURL"];
        isCurrentSessionTokenValid = json["IsCurrentSessionTokenValid"];
        apiKey = json["APIKey"];
        syncedSettings = json["SyncedSettings"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["IdentityProvider"] = identityProvider;
        _data["Identifier"] = identifier;
        _data["CurrentSessionToken"] = currentSessionToken;
        _data["Username"] = username;
        _data["Profile"] = profile;
        _data["Location"] = location;
        _data["WebsiteURL"] = websiteUrl;
        _data["ReputationPoints"] = reputationPoints;
        _data["Permissions"] = permissions;
        _data["PermissionsRequested"] = permissionsRequested;
        _data["DateCreated"] = dateCreated;
        _data["DateLastLogin"] = dateLastLogin;
        _data["IsProfilePublic"] = isProfilePublic;
        _data["IsEmergencyChargingProvider"] = isEmergencyChargingProvider;
        _data["IsPublicChargingProvider"] = isPublicChargingProvider;
        _data["Latitude"] = latitude;
        _data["Longitude"] = longitude;
        _data["EmailAddress"] = emailAddress;
        _data["EmailHash"] = emailHash;
        _data["ProfileImageURL"] = profileImageUrl;
        _data["IsCurrentSessionTokenValid"] = isCurrentSessionTokenValid;
        _data["APIKey"] = apiKey;
        _data["SyncedSettings"] = syncedSettings;
        return _data;
    }

    User1 copyWith({
        int? id,
        dynamic identityProvider,
        dynamic identifier,
        dynamic currentSessionToken,
        String? username,
        dynamic profile,
        dynamic location,
        dynamic websiteUrl,
        int? reputationPoints,
        dynamic permissions,
        dynamic permissionsRequested,
        dynamic dateCreated,
        dynamic dateLastLogin,
        dynamic isProfilePublic,
        dynamic isEmergencyChargingProvider,
        dynamic isPublicChargingProvider,
        dynamic latitude,
        dynamic longitude,
        dynamic emailAddress,
        dynamic emailHash,
        String? profileImageUrl,
        dynamic isCurrentSessionTokenValid,
        dynamic apiKey,
        dynamic syncedSettings,
    }) => User1(
        id: id ?? this.id,
        identityProvider: identityProvider ?? this.identityProvider,
        identifier: identifier ?? this.identifier,
        currentSessionToken: currentSessionToken ?? this.currentSessionToken,
        username: username ?? this.username,
        profile: profile ?? this.profile,
        location: location ?? this.location,
        websiteUrl: websiteUrl ?? this.websiteUrl,
        reputationPoints: reputationPoints ?? this.reputationPoints,
        permissions: permissions ?? this.permissions,
        permissionsRequested: permissionsRequested ?? this.permissionsRequested,
        dateCreated: dateCreated ?? this.dateCreated,
        dateLastLogin: dateLastLogin ?? this.dateLastLogin,
        isProfilePublic: isProfilePublic ?? this.isProfilePublic,
        isEmergencyChargingProvider: isEmergencyChargingProvider ?? this.isEmergencyChargingProvider,
        isPublicChargingProvider: isPublicChargingProvider ?? this.isPublicChargingProvider,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        emailAddress: emailAddress ?? this.emailAddress,
        emailHash: emailHash ?? this.emailHash,
        profileImageUrl: profileImageUrl ?? this.profileImageUrl,
        isCurrentSessionTokenValid: isCurrentSessionTokenValid ?? this.isCurrentSessionTokenValid,
        apiKey: apiKey ?? this.apiKey,
        syncedSettings: syncedSettings ?? this.syncedSettings,
    );
}

class CommentType {
    int? id;
    String? title;

    CommentType({this.id, this.title});

    CommentType.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    CommentType copyWith({
        int? id,
        String? title,
    }) => CommentType(
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class MediaItems {
    int? id;
    int? chargePointId;
    String? itemUrl;
    String? itemThumbnailUrl;
    String? comment;
    bool? isEnabled;
    bool? isVideo;
    bool? isFeaturedItem;
    bool? isExternalResource;
    dynamic metadataValue;
    User? user;
    String? dateCreated;

    MediaItems({this.id, this.chargePointId, this.itemUrl, this.itemThumbnailUrl, this.comment, this.isEnabled, this.isVideo, this.isFeaturedItem, this.isExternalResource, this.metadataValue, this.user, this.dateCreated});

    MediaItems.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        chargePointId = json["ChargePointID"];
        itemUrl = json["ItemURL"];
        itemThumbnailUrl = json["ItemThumbnailURL"];
        comment = json["Comment"];
        isEnabled = json["IsEnabled"];
        isVideo = json["IsVideo"];
        isFeaturedItem = json["IsFeaturedItem"];
        isExternalResource = json["IsExternalResource"];
        metadataValue = json["MetadataValue"];
        user = json["User"] == null ? null : User.fromJson(json["User"]);
        dateCreated = json["DateCreated"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["ChargePointID"] = chargePointId;
        _data["ItemURL"] = itemUrl;
        _data["ItemThumbnailURL"] = itemThumbnailUrl;
        _data["Comment"] = comment;
        _data["IsEnabled"] = isEnabled;
        _data["IsVideo"] = isVideo;
        _data["IsFeaturedItem"] = isFeaturedItem;
        _data["IsExternalResource"] = isExternalResource;
        _data["MetadataValue"] = metadataValue;
        if(user != null) {
            _data["User"] = user?.toJson();
        }
        _data["DateCreated"] = dateCreated;
        return _data;
    }

    MediaItems copyWith({
        int? id,
        int? chargePointId,
        String? itemUrl,
        String? itemThumbnailUrl,
        String? comment,
        bool? isEnabled,
        bool? isVideo,
        bool? isFeaturedItem,
        bool? isExternalResource,
        dynamic metadataValue,
        User? user,
        String? dateCreated,
    }) => MediaItems(
        id: id ?? this.id,
        chargePointId: chargePointId ?? this.chargePointId,
        itemUrl: itemUrl ?? this.itemUrl,
        itemThumbnailUrl: itemThumbnailUrl ?? this.itemThumbnailUrl,
        comment: comment ?? this.comment,
        isEnabled: isEnabled ?? this.isEnabled,
        isVideo: isVideo ?? this.isVideo,
        isFeaturedItem: isFeaturedItem ?? this.isFeaturedItem,
        isExternalResource: isExternalResource ?? this.isExternalResource,
        metadataValue: metadataValue ?? this.metadataValue,
        user: user ?? this.user,
        dateCreated: dateCreated ?? this.dateCreated,
    );
}

class User {
    int? id;
    dynamic identityProvider;
    dynamic identifier;
    dynamic currentSessionToken;
    String? username;
    dynamic profile;
    dynamic location;
    dynamic websiteUrl;
    int? reputationPoints;
    dynamic permissions;
    dynamic permissionsRequested;
    dynamic dateCreated;
    dynamic dateLastLogin;
    dynamic isProfilePublic;
    dynamic isEmergencyChargingProvider;
    dynamic isPublicChargingProvider;
    dynamic latitude;
    dynamic longitude;
    dynamic emailAddress;
    dynamic emailHash;
    String? profileImageUrl;
    dynamic isCurrentSessionTokenValid;
    dynamic apiKey;
    dynamic syncedSettings;

    User({this.id, this.identityProvider, this.identifier, this.currentSessionToken, this.username, this.profile, this.location, this.websiteUrl, this.reputationPoints, this.permissions, this.permissionsRequested, this.dateCreated, this.dateLastLogin, this.isProfilePublic, this.isEmergencyChargingProvider, this.isPublicChargingProvider, this.latitude, this.longitude, this.emailAddress, this.emailHash, this.profileImageUrl, this.isCurrentSessionTokenValid, this.apiKey, this.syncedSettings});

    User.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        identityProvider = json["IdentityProvider"];
        identifier = json["Identifier"];
        currentSessionToken = json["CurrentSessionToken"];
        username = json["Username"];
        profile = json["Profile"];
        location = json["Location"];
        websiteUrl = json["WebsiteURL"];
        reputationPoints = json["ReputationPoints"];
        permissions = json["Permissions"];
        permissionsRequested = json["PermissionsRequested"];
        dateCreated = json["DateCreated"];
        dateLastLogin = json["DateLastLogin"];
        isProfilePublic = json["IsProfilePublic"];
        isEmergencyChargingProvider = json["IsEmergencyChargingProvider"];
        isPublicChargingProvider = json["IsPublicChargingProvider"];
        latitude = json["Latitude"];
        longitude = json["Longitude"];
        emailAddress = json["EmailAddress"];
        emailHash = json["EmailHash"];
        profileImageUrl = json["ProfileImageURL"];
        isCurrentSessionTokenValid = json["IsCurrentSessionTokenValid"];
        apiKey = json["APIKey"];
        syncedSettings = json["SyncedSettings"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["IdentityProvider"] = identityProvider;
        _data["Identifier"] = identifier;
        _data["CurrentSessionToken"] = currentSessionToken;
        _data["Username"] = username;
        _data["Profile"] = profile;
        _data["Location"] = location;
        _data["WebsiteURL"] = websiteUrl;
        _data["ReputationPoints"] = reputationPoints;
        _data["Permissions"] = permissions;
        _data["PermissionsRequested"] = permissionsRequested;
        _data["DateCreated"] = dateCreated;
        _data["DateLastLogin"] = dateLastLogin;
        _data["IsProfilePublic"] = isProfilePublic;
        _data["IsEmergencyChargingProvider"] = isEmergencyChargingProvider;
        _data["IsPublicChargingProvider"] = isPublicChargingProvider;
        _data["Latitude"] = latitude;
        _data["Longitude"] = longitude;
        _data["EmailAddress"] = emailAddress;
        _data["EmailHash"] = emailHash;
        _data["ProfileImageURL"] = profileImageUrl;
        _data["IsCurrentSessionTokenValid"] = isCurrentSessionTokenValid;
        _data["APIKey"] = apiKey;
        _data["SyncedSettings"] = syncedSettings;
        return _data;
    }

    User copyWith({
        int? id,
        dynamic identityProvider,
        dynamic identifier,
        dynamic currentSessionToken,
        String? username,
        dynamic profile,
        dynamic location,
        dynamic websiteUrl,
        int? reputationPoints,
        dynamic permissions,
        dynamic permissionsRequested,
        dynamic dateCreated,
        dynamic dateLastLogin,
        dynamic isProfilePublic,
        dynamic isEmergencyChargingProvider,
        dynamic isPublicChargingProvider,
        dynamic latitude,
        dynamic longitude,
        dynamic emailAddress,
        dynamic emailHash,
        String? profileImageUrl,
        dynamic isCurrentSessionTokenValid,
        dynamic apiKey,
        dynamic syncedSettings,
    }) => User(
        id: id ?? this.id,
        identityProvider: identityProvider ?? this.identityProvider,
        identifier: identifier ?? this.identifier,
        currentSessionToken: currentSessionToken ?? this.currentSessionToken,
        username: username ?? this.username,
        profile: profile ?? this.profile,
        location: location ?? this.location,
        websiteUrl: websiteUrl ?? this.websiteUrl,
        reputationPoints: reputationPoints ?? this.reputationPoints,
        permissions: permissions ?? this.permissions,
        permissionsRequested: permissionsRequested ?? this.permissionsRequested,
        dateCreated: dateCreated ?? this.dateCreated,
        dateLastLogin: dateLastLogin ?? this.dateLastLogin,
        isProfilePublic: isProfilePublic ?? this.isProfilePublic,
        isEmergencyChargingProvider: isEmergencyChargingProvider ?? this.isEmergencyChargingProvider,
        isPublicChargingProvider: isPublicChargingProvider ?? this.isPublicChargingProvider,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        emailAddress: emailAddress ?? this.emailAddress,
        emailHash: emailHash ?? this.emailHash,
        profileImageUrl: profileImageUrl ?? this.profileImageUrl,
        isCurrentSessionTokenValid: isCurrentSessionTokenValid ?? this.isCurrentSessionTokenValid,
        apiKey: apiKey ?? this.apiKey,
        syncedSettings: syncedSettings ?? this.syncedSettings,
    );
}

class Connections {
    int? id;
    int? connectionTypeId;
    ConnectionType? connectionType;
    dynamic reference;
    int? statusTypeId;
    StatusType1? statusType;
    int? levelId;
    Level? level;
    int? amps;
    int? voltage;
    int? powerKw;
    int? currentTypeId;
    CurrentType? currentType;
    int? quantity;
    dynamic comments;

    Connections({this.id, this.connectionTypeId, this.connectionType, this.reference, this.statusTypeId, this.statusType, this.levelId, this.level, this.amps, this.voltage, this.powerKw, this.currentTypeId, this.currentType, this.quantity, this.comments});

    Connections.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        connectionTypeId = json["ConnectionTypeID"];
        connectionType = json["ConnectionType"] == null ? null : ConnectionType.fromJson(json["ConnectionType"]);
        reference = json["Reference"];
        statusTypeId = json["StatusTypeID"];
        statusType = json["StatusType"] == null ? null : StatusType1.fromJson(json["StatusType"]);
        levelId = json["LevelID"];
        level = json["Level"] == null ? null : Level.fromJson(json["Level"]);
        amps = json["Amps"];
        voltage = json["Voltage"];
        powerKw = json["PowerKW"];
        currentTypeId = json["CurrentTypeID"];
        currentType = json["CurrentType"] == null ? null : CurrentType.fromJson(json["CurrentType"]);
        quantity = json["Quantity"];
        comments = json["Comments"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["ConnectionTypeID"] = connectionTypeId;
        if(connectionType != null) {
            _data["ConnectionType"] = connectionType?.toJson();
        }
        _data["Reference"] = reference;
        _data["StatusTypeID"] = statusTypeId;
        if(statusType != null) {
            _data["StatusType"] = statusType?.toJson();
        }
        _data["LevelID"] = levelId;
        if(level != null) {
            _data["Level"] = level?.toJson();
        }
        _data["Amps"] = amps;
        _data["Voltage"] = voltage;
        _data["PowerKW"] = powerKw;
        _data["CurrentTypeID"] = currentTypeId;
        if(currentType != null) {
            _data["CurrentType"] = currentType?.toJson();
        }
        _data["Quantity"] = quantity;
        _data["Comments"] = comments;
        return _data;
    }

    Connections copyWith({
        int? id,
        int? connectionTypeId,
        ConnectionType? connectionType,
        dynamic reference,
        int? statusTypeId,
        StatusType1? statusType,
        int? levelId,
        Level? level,
        int? amps,
        int? voltage,
        int? powerKw,
        int? currentTypeId,
        CurrentType? currentType,
        int? quantity,
        dynamic comments,
    }) => Connections(
        id: id ?? this.id,
        connectionTypeId: connectionTypeId ?? this.connectionTypeId,
        connectionType: connectionType ?? this.connectionType,
        reference: reference ?? this.reference,
        statusTypeId: statusTypeId ?? this.statusTypeId,
        statusType: statusType ?? this.statusType,
        levelId: levelId ?? this.levelId,
        level: level ?? this.level,
        amps: amps ?? this.amps,
        voltage: voltage ?? this.voltage,
        powerKw: powerKw ?? this.powerKw,
        currentTypeId: currentTypeId ?? this.currentTypeId,
        currentType: currentType ?? this.currentType,
        quantity: quantity ?? this.quantity,
        comments: comments ?? this.comments,
    );
}

class CurrentType {
    String? description;
    int? id;
    String? title;

    CurrentType({this.description, this.id, this.title});

    CurrentType.fromJson(Map<String, dynamic> json) {
        description = json["Description"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["Description"] = description;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    CurrentType copyWith({
        String? description,
        int? id,
        String? title,
    }) => CurrentType(
        description: description ?? this.description,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class Level {
    String? comments;
    bool? isFastChargeCapable;
    int? id;
    String? title;

    Level({this.comments, this.isFastChargeCapable, this.id, this.title});

    Level.fromJson(Map<String, dynamic> json) {
        comments = json["Comments"];
        isFastChargeCapable = json["IsFastChargeCapable"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["Comments"] = comments;
        _data["IsFastChargeCapable"] = isFastChargeCapable;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    Level copyWith({
        String? comments,
        bool? isFastChargeCapable,
        int? id,
        String? title,
    }) => Level(
        comments: comments ?? this.comments,
        isFastChargeCapable: isFastChargeCapable ?? this.isFastChargeCapable,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class StatusType1 {
    bool? isOperational;
    bool? isUserSelectable;
    int? id;
    String? title;

    StatusType1({this.isOperational, this.isUserSelectable, this.id, this.title});

    StatusType1.fromJson(Map<String, dynamic> json) {
        isOperational = json["IsOperational"];
        isUserSelectable = json["IsUserSelectable"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["IsOperational"] = isOperational;
        _data["IsUserSelectable"] = isUserSelectable;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    StatusType1 copyWith({
        bool? isOperational,
        bool? isUserSelectable,
        int? id,
        String? title,
    }) => StatusType1(
        isOperational: isOperational ?? this.isOperational,
        isUserSelectable: isUserSelectable ?? this.isUserSelectable,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class ConnectionType {
    String? formalName;
    bool? isDiscontinued;
    bool? isObsolete;
    int? id;
    String? title;

    ConnectionType({this.formalName, this.isDiscontinued, this.isObsolete, this.id, this.title});

    ConnectionType.fromJson(Map<String, dynamic> json) {
        formalName = json["FormalName"];
        isDiscontinued = json["IsDiscontinued"];
        isObsolete = json["IsObsolete"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["FormalName"] = formalName;
        _data["IsDiscontinued"] = isDiscontinued;
        _data["IsObsolete"] = isObsolete;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    ConnectionType copyWith({
        String? formalName,
        bool? isDiscontinued,
        bool? isObsolete,
        int? id,
        String? title,
    }) => ConnectionType(
        formalName: formalName ?? this.formalName,
        isDiscontinued: isDiscontinued ?? this.isDiscontinued,
        isObsolete: isObsolete ?? this.isObsolete,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class AddressInfo {
    int? id;
    String? title;
    String? addressLine1;
    dynamic addressLine2;
    String? town;
    String? stateOrProvince;
    String? postcode;
    int? countryId;
    Country? country;
    double? latitude;
    double? longitude;
    String? contactTelephone1;
    dynamic contactTelephone2;
    dynamic contactEmail;
    dynamic accessComments;
    String? relatedUrl;
    dynamic distance;
    int? distanceUnit;

    AddressInfo({this.id, this.title, this.addressLine1, this.addressLine2, this.town, this.stateOrProvince, this.postcode, this.countryId, this.country, this.latitude, this.longitude, this.contactTelephone1, this.contactTelephone2, this.contactEmail, this.accessComments, this.relatedUrl, this.distance, this.distanceUnit});

    AddressInfo.fromJson(Map<String, dynamic> json) {
        id = json["ID"];
        title = json["Title"];
        addressLine1 = json["AddressLine1"];
        addressLine2 = json["AddressLine2"];
        town = json["Town"];
        stateOrProvince = json["StateOrProvince"];
        postcode = json["Postcode"];
        countryId = json["CountryID"];
        country = json["Country"] == null ? null : Country.fromJson(json["Country"]);
        latitude = json["Latitude"];
        longitude = json["Longitude"];
        contactTelephone1 = json["ContactTelephone1"];
        contactTelephone2 = json["ContactTelephone2"];
        contactEmail = json["ContactEmail"];
        accessComments = json["AccessComments"];
        relatedUrl = json["RelatedURL"];
        distance = json["Distance"];
        distanceUnit = json["DistanceUnit"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ID"] = id;
        _data["Title"] = title;
        _data["AddressLine1"] = addressLine1;
        _data["AddressLine2"] = addressLine2;
        _data["Town"] = town;
        _data["StateOrProvince"] = stateOrProvince;
        _data["Postcode"] = postcode;
        _data["CountryID"] = countryId;
        if(country != null) {
            _data["Country"] = country?.toJson();
        }
        _data["Latitude"] = latitude;
        _data["Longitude"] = longitude;
        _data["ContactTelephone1"] = contactTelephone1;
        _data["ContactTelephone2"] = contactTelephone2;
        _data["ContactEmail"] = contactEmail;
        _data["AccessComments"] = accessComments;
        _data["RelatedURL"] = relatedUrl;
        _data["Distance"] = distance;
        _data["DistanceUnit"] = distanceUnit;
        return _data;
    }

    AddressInfo copyWith({
        int? id,
        String? title,
        String? addressLine1,
        dynamic addressLine2,
        String? town,
        String? stateOrProvince,
        String? postcode,
        int? countryId,
        Country? country,
        double? latitude,
        double? longitude,
        String? contactTelephone1,
        dynamic contactTelephone2,
        dynamic contactEmail,
        dynamic accessComments,
        String? relatedUrl,
        dynamic distance,
        int? distanceUnit,
    }) => AddressInfo(
        id: id ?? this.id,
        title: title ?? this.title,
        addressLine1: addressLine1 ?? this.addressLine1,
        addressLine2: addressLine2 ?? this.addressLine2,
        town: town ?? this.town,
        stateOrProvince: stateOrProvince ?? this.stateOrProvince,
        postcode: postcode ?? this.postcode,
        countryId: countryId ?? this.countryId,
        country: country ?? this.country,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        contactTelephone1: contactTelephone1 ?? this.contactTelephone1,
        contactTelephone2: contactTelephone2 ?? this.contactTelephone2,
        contactEmail: contactEmail ?? this.contactEmail,
        accessComments: accessComments ?? this.accessComments,
        relatedUrl: relatedUrl ?? this.relatedUrl,
        distance: distance ?? this.distance,
        distanceUnit: distanceUnit ?? this.distanceUnit,
    );
}

class Country {
    String? isoCode;
    String? continentCode;
    int? id;
    String? title;

    Country({this.isoCode, this.continentCode, this.id, this.title});

    Country.fromJson(Map<String, dynamic> json) {
        isoCode = json["ISOCode"];
        continentCode = json["ContinentCode"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["ISOCode"] = isoCode;
        _data["ContinentCode"] = continentCode;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    Country copyWith({
        String? isoCode,
        String? continentCode,
        int? id,
        String? title,
    }) => Country(
        isoCode: isoCode ?? this.isoCode,
        continentCode: continentCode ?? this.continentCode,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class SubmissionStatus {
    bool? isLive;
    int? id;
    String? title;

    SubmissionStatus({this.isLive, this.id, this.title});

    SubmissionStatus.fromJson(Map<String, dynamic> json) {
        isLive = json["IsLive"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["IsLive"] = isLive;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    SubmissionStatus copyWith({
        bool? isLive,
        int? id,
        String? title,
    }) => SubmissionStatus(
        isLive: isLive ?? this.isLive,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class StatusType {
    bool? isOperational;
    bool? isUserSelectable;
    int? id;
    String? title;

    StatusType({this.isOperational, this.isUserSelectable, this.id, this.title});

    StatusType.fromJson(Map<String, dynamic> json) {
        isOperational = json["IsOperational"];
        isUserSelectable = json["IsUserSelectable"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["IsOperational"] = isOperational;
        _data["IsUserSelectable"] = isUserSelectable;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    StatusType copyWith({
        bool? isOperational,
        bool? isUserSelectable,
        int? id,
        String? title,
    }) => StatusType(
        isOperational: isOperational ?? this.isOperational,
        isUserSelectable: isUserSelectable ?? this.isUserSelectable,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class UsageType {
    bool? isPayAtLocation;
    bool? isMembershipRequired;
    bool? isAccessKeyRequired;
    int? id;
    String? title;

    UsageType({this.isPayAtLocation, this.isMembershipRequired, this.isAccessKeyRequired, this.id, this.title});

    UsageType.fromJson(Map<String, dynamic> json) {
        isPayAtLocation = json["IsPayAtLocation"];
        isMembershipRequired = json["IsMembershipRequired"];
        isAccessKeyRequired = json["IsAccessKeyRequired"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["IsPayAtLocation"] = isPayAtLocation;
        _data["IsMembershipRequired"] = isMembershipRequired;
        _data["IsAccessKeyRequired"] = isAccessKeyRequired;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    UsageType copyWith({
        bool? isPayAtLocation,
        bool? isMembershipRequired,
        bool? isAccessKeyRequired,
        int? id,
        String? title,
    }) => UsageType(
        isPayAtLocation: isPayAtLocation ?? this.isPayAtLocation,
        isMembershipRequired: isMembershipRequired ?? this.isMembershipRequired,
        isAccessKeyRequired: isAccessKeyRequired ?? this.isAccessKeyRequired,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class OperatorInfo {
    String? websiteUrl;
    dynamic comments;
    String? phonePrimaryContact;
    dynamic phoneSecondaryContact;
    bool? isPrivateIndividual;
    dynamic addressInfo;
    dynamic bookingUrl;
    dynamic contactEmail;
    dynamic faultReportEmail;
    bool? isRestrictedEdit;
    int? id;
    String? title;

    OperatorInfo({this.websiteUrl, this.comments, this.phonePrimaryContact, this.phoneSecondaryContact, this.isPrivateIndividual, this.addressInfo, this.bookingUrl, this.contactEmail, this.faultReportEmail, this.isRestrictedEdit, this.id, this.title});

    OperatorInfo.fromJson(Map<String, dynamic> json) {
        websiteUrl = json["WebsiteURL"];
        comments = json["Comments"];
        phonePrimaryContact = json["PhonePrimaryContact"];
        phoneSecondaryContact = json["PhoneSecondaryContact"];
        isPrivateIndividual = json["IsPrivateIndividual"];
        addressInfo = json["AddressInfo"];
        bookingUrl = json["BookingURL"];
        contactEmail = json["ContactEmail"];
        faultReportEmail = json["FaultReportEmail"];
        isRestrictedEdit = json["IsRestrictedEdit"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["WebsiteURL"] = websiteUrl;
        _data["Comments"] = comments;
        _data["PhonePrimaryContact"] = phonePrimaryContact;
        _data["PhoneSecondaryContact"] = phoneSecondaryContact;
        _data["IsPrivateIndividual"] = isPrivateIndividual;
        _data["AddressInfo"] = addressInfo;
        _data["BookingURL"] = bookingUrl;
        _data["ContactEmail"] = contactEmail;
        _data["FaultReportEmail"] = faultReportEmail;
        _data["IsRestrictedEdit"] = isRestrictedEdit;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    OperatorInfo copyWith({
        String? websiteUrl,
        dynamic comments,
        String? phonePrimaryContact,
        dynamic phoneSecondaryContact,
        bool? isPrivateIndividual,
        dynamic addressInfo,
        dynamic bookingUrl,
        dynamic contactEmail,
        dynamic faultReportEmail,
        bool? isRestrictedEdit,
        int? id,
        String? title,
    }) => OperatorInfo(
        websiteUrl: websiteUrl ?? this.websiteUrl,
        comments: comments ?? this.comments,
        phonePrimaryContact: phonePrimaryContact ?? this.phonePrimaryContact,
        phoneSecondaryContact: phoneSecondaryContact ?? this.phoneSecondaryContact,
        isPrivateIndividual: isPrivateIndividual ?? this.isPrivateIndividual,
        addressInfo: addressInfo ?? this.addressInfo,
        bookingUrl: bookingUrl ?? this.bookingUrl,
        contactEmail: contactEmail ?? this.contactEmail,
        faultReportEmail: faultReportEmail ?? this.faultReportEmail,
        isRestrictedEdit: isRestrictedEdit ?? this.isRestrictedEdit,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class DataProvider {
    String? websiteUrl;
    dynamic comments;
    DataProviderStatusType? dataProviderStatusType;
    bool? isRestrictedEdit;
    bool? isOpenDataLicensed;
    bool? isApprovedImport;
    String? license;
    dynamic dateLastImported;
    int? id;
    String? title;

    DataProvider({this.websiteUrl, this.comments, this.dataProviderStatusType, this.isRestrictedEdit, this.isOpenDataLicensed, this.isApprovedImport, this.license, this.dateLastImported, this.id, this.title});

    DataProvider.fromJson(Map<String, dynamic> json) {
        websiteUrl = json["WebsiteURL"];
        comments = json["Comments"];
        dataProviderStatusType = json["DataProviderStatusType"] == null ? null : DataProviderStatusType.fromJson(json["DataProviderStatusType"]);
        isRestrictedEdit = json["IsRestrictedEdit"];
        isOpenDataLicensed = json["IsOpenDataLicensed"];
        isApprovedImport = json["IsApprovedImport"];
        license = json["License"];
        dateLastImported = json["DateLastImported"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["WebsiteURL"] = websiteUrl;
        _data["Comments"] = comments;
        if(dataProviderStatusType != null) {
            _data["DataProviderStatusType"] = dataProviderStatusType?.toJson();
        }
        _data["IsRestrictedEdit"] = isRestrictedEdit;
        _data["IsOpenDataLicensed"] = isOpenDataLicensed;
        _data["IsApprovedImport"] = isApprovedImport;
        _data["License"] = license;
        _data["DateLastImported"] = dateLastImported;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    DataProvider copyWith({
        String? websiteUrl,
        dynamic comments,
        DataProviderStatusType? dataProviderStatusType,
        bool? isRestrictedEdit,
        bool? isOpenDataLicensed,
        bool? isApprovedImport,
        String? license,
        dynamic dateLastImported,
        int? id,
        String? title,
    }) => DataProvider(
        websiteUrl: websiteUrl ?? this.websiteUrl,
        comments: comments ?? this.comments,
        dataProviderStatusType: dataProviderStatusType ?? this.dataProviderStatusType,
        isRestrictedEdit: isRestrictedEdit ?? this.isRestrictedEdit,
        isOpenDataLicensed: isOpenDataLicensed ?? this.isOpenDataLicensed,
        isApprovedImport: isApprovedImport ?? this.isApprovedImport,
        license: license ?? this.license,
        dateLastImported: dateLastImported ?? this.dateLastImported,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}

class DataProviderStatusType {
    bool? isProviderEnabled;
    int? id;
    String? title;

    DataProviderStatusType({this.isProviderEnabled, this.id, this.title});

    DataProviderStatusType.fromJson(Map<String, dynamic> json) {
        isProviderEnabled = json["IsProviderEnabled"];
        id = json["ID"];
        title = json["Title"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["IsProviderEnabled"] = isProviderEnabled;
        _data["ID"] = id;
        _data["Title"] = title;
        return _data;
    }

    DataProviderStatusType copyWith({
        bool? isProviderEnabled,
        int? id,
        String? title,
    }) => DataProviderStatusType(
        isProviderEnabled: isProviderEnabled ?? this.isProviderEnabled,
        id: id ?? this.id,
        title: title ?? this.title,
    );
}