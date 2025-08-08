Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC44B1EE7D
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 20:49:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E160A38654F
	for <lists+usrp-users@lfdr.de>; Fri,  8 Aug 2025 14:49:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1754678990; bh=Wyz64oZaS4tHLMW2LqlqRAnx7EN6+6OmPLONn6q727M=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rbvpmhR5lcXcsCmFTbEzBYvKEP2dP5b2xbfkmxKXMr4TRcSYaxmuk/JRXQK99vYBv
	 0mANkpJTyKt2La2c3ayL1gSqONxV+SjvAlMaeE1Z3XWwfBun69vloEEgAQ4snHcgY6
	 XnYwVd8wURs30IfXIzWtvgDePdjQGOSWPQBNEI2TcSOIei+CwUGjs+H8qbvd8PWTpa
	 JfbohuW431W+K0oeyPrXYhVj03ANDudC4gS0KDlD+ZV6yXIvd+H1iK7/YddJv0ziW4
	 50rRIDm0Yv/NO0vFluQihwKJFn78/+Wsv/KStOYcscrau/PPyqPJVPfRpkb+sK5YSt
	 ujusoNeVuqxsQ==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id D3AE83860DD
	for <usrp-users@lists.ettus.com>; Fri,  8 Aug 2025 14:49:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="DO2l3iRE";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="mHwb8zvI";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1754678961; x=1786214961;
  h=from:to:subject:date:message-id:mime-version;
  bh=ytdCac3u3Qw6kBOcCxXLsPen9TR+CjodFwXHtsbklkQ=;
  b=DO2l3iREl3Dul8EC2O1OQmXrJhggcp60Iy//rodwcBn1AuFT5JL/JJL2
   NUXGkKjC0cxbRcwH1B5rWsVzEyV1BoOz7+7a++tSOXOMLvWLyE5FLlwJY
   ed1ja3wEDdpzxnDWN5q8nid+9Z58NXRsf/HJjyY7CpyzrygXHSuS3UZFC
   g=;
X-CSE-ConnectionGUID: L4A9ws71TounXtr0kCrG5A==
X-CSE-MsgGUID: xEx0HeULShCz0MkFneQJ6g==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11515"; a="8068815"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400";
   d="scan'208,217";a="8068815"
X-IPAS-Result: =?us-ascii?q?A2HJBQAoRZZojggBXShXAxwBAQE8AQEEBAEBAgEBBwEBF?=
 =?us-ascii?q?YFTAoE/gQM/PYFnrgqHegNWDwEBAQEBAQEBAQcCFBMqBAEBAwSFAAKMIyc3B?=
 =?us-ascii?q?g4BAgQBAQEBAwIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO?=
 =?us-ascii?q?4V7DYQHgSYBAQEBAQEBAQEBAQEdAjWBHAEBKgoEEQEMcycEG4J6gh0GBAoHA?=
 =?us-ascii?q?zK1YYE0gQGCDAEBBgQE2yEYYYFlCYFJAYN8gXCCYwEqgTOED4UtgVVEgVeHS?=
 =?us-ascii?q?yBFg06CL4ImRD4UHZAZBwMgCIkfgUQiAyYzLAFVExcLBwVbgQgDgQ9uMh2BJ?=
 =?us-ascii?q?4UYhCgrT4UQgRmDUxISbQ8GgRWDc2tAAwttPTcUGwUEgTUFkh0HEEKELaVhj?=
 =?us-ascii?q?lyUYTQHhB6BXgYMoBgXqmCZA6kMAgQCBAUCEAiBflKBLjMaMIMqUhkPjjqDZ?=
 =?us-ascii?q?7YYeDwCBwsBAQMJkgkBAQ?=
IronPort-PHdr: A9a23:wwKeaB/fMKkI2/9uWCboyV9kXcBvk7n3PwtA7J0hhvoOd6m45J3tM
 QTZ4ukll17GW4jXqpcmw+rbuqztQyoMtJCGtn1RfJlFTRRQj8IQkkQpC9KEDkuuKvnsYmQ6E
 c1OWUUj8Wu8NB1cFdz5IVrIrS7a0A==
IronPort-Data: A9a23:oXCYHK17S2P89gP1KPbD5Shxkn2cJEfYwER7XKvMYLTBsI5bp2cBm
 2FJCGzQbKrYYWCgKdp0aIW390oHv5HXn9U2TlRpqSg9HnlHgPSeCIXCJC8cHc8zwu4v7a5Dx
 59DAjUVBJlsFhcwgD/zYuC5xZVb/fjRG+OiYAL8EnksA1ciEWF50koLd9cR2uZAmcK+Dx6Gp
 eT8qsjePE7N8zNvOwr40YrbwP9UlKq04WxwUmAWP6gR4QeOzyZNVfrzGInoR5fGatgMdgKFb
 7ubpF2J1jux1wsgDNqjjoH6fiUiKlIFFVXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw60c+VZk
 72hg7TtEF1xZvWkdNM1CHG0GwkmVUFPFSSuzXKX6aR/xGWeG5fgLmkH4Ojb8uT0984uaVyi+
 8D0JxgpMjnSmPnpmY68V+9cmt57L+LxE9427yQIITHxVZ7KQLjpcvjy34cJ9wpo3pkIGuvCb
 c0EbzYpdA7HfxBEJlYQDtQ5gfusgX78NTZfrTp5p4Jruy6Cl0ooluiF3Nn9I7RmQe1Yg0mVo
 G+A8H7wEw8XLvSWxCCCtHW2iYcjmAurANxCROTlnhJsqE2+1jQzBSAybluQs6GciWC4Vut9d
 UNBr0LCqoBprxb3EbERRSaQvWWeplsBQNdKCMU+6RqR0ezZ/xqEHS4PSTspVTA9nMo/RDhvy
 VKSg87yDC5rqOTKESvEru/E6zSvJSISMGkOIzceShcI6MXip4d1iQ/TStFkE+i+idid9SzML
 y6iiHQX1qoI0pc30Li9zUzd2zGHvLeUZ1tgjunIZV6N4gR8bY+jQoWn71nH8PpNRLp1qHHR7
 BDofODOs4gz4YGxqcCbfAka8FiUCxutNTTdhRtwEoI96i+k6Xq7JN8IuWgmfBcvNdsYczj0Z
 kOVoRlW+JJYIHqta+lwfp61DMMpi6PnELwJt8w4jPIROPCdlyfepkmCgHJ8OUi2ySDAdolkY
 v+mnT6EVypyNEie5GPeqx0h+bEq3Dsi4mjYWIr2yR+quZLHOyPJFOZcbQPUMLxhhE9hnOkz2
 4YPXydt40UPONASngGLr9FMRbz3BSRlWs2u95ILHgJ9ClM7SDl8W5c9Po/Ni6Q+xP4JyY8kD
 1m4W0RCz0H4i2GPIgKQchhehEDHDP5CQYYAFXV0Zz6AgiF7Ca72tft3X8VtIdEPqrc5pdYqF
 KZtRil1KqgVItgx02hHNcGlxGGjHTz37T+z092NOWlhL8YwF1SUqrcJvGLHrUEzM8Z+juNmy
 5XI6+8RacNrq9hKZCoOVM+S8g==
IronPort-HdrOrdr: A9a23:y1tnc61alzPzJe85X0sR+AqjBVByeYIsimQD101hICG9Lfb0qy
 n+pp4mPEHP4wr5AEtQ/+xoS5PwOE80lKQFl7X5WI3PYOCIghrNEGgP1+rfKl7bamTDH4xmpM
 BdmsFFYbWeY2SS5vyKgzVQZuxQpeVvh5rY59s2oU0McShaL4VbqytpAAeSFUN7ACNcA4AiKZ
 aa7s1b4xK9ZHU+dK2AdzI4dtmGg+eOuIPtYBYACRJiwhKJlymU5LnzFAXd9gsCUglI3awp/Q
 H+4kbED+SYwryGIy3npiDuBqdt6ZXcI+54dYCxY4YuW3TRY02TFfxcsvW5zUsISaeUmR4XeZ
 D30mod18gf0QKqQkil5RTqwAXuyzAo9jvrzkKZm2LqpYjjSCs9ENcpv/MtTvL10TtSgDhH6t
 M440uJ855MSR/QliX04NbFExlsi0qvuHIn1eoelWZWX4cSYKJY6dV3xjIjLL4QWCbhrIw3Gu
 hnC8/RoP5QbFOBdnjc+m1i2salUHg/FgqPBkICpsuW2T5Lm20R9Tpt+OUP2nMbsJ4tQZhN4O
 rJdqxuibFVV8cTKblwAe8QKPHHelAlgSi8QV56DW6Xap3vYUi916IfyI9Fm92XRA==
X-Talos-CUID: 9a23:hn6hT2Nb0eUyHu5DfHVOpVEPRZkZdWDb/GvKe0yTE0k0YejA
X-Talos-MUID: 9a23:Xfsy4QYOXoAFTeBTpxL83BFvCeNT44+8UGUOv5MLguvaOnkl
Received: from mail-westusazlp17011008.outbound.protection.outlook.com (HELO BY5PR09CU001.outbound.protection.outlook.com) ([40.93.1.8])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Aug 2025 11:49:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y89bzvoxggr6z/vyFOSV/dz6XGtTVwya0tJA1vFpM8EavqFG0HNitbdTL7LNWp01fsliPfu82Uzcx/xFQeDHe86H865DsMurz0AEUkrQuoC78+px+S1zGESbfTDEOD3F48vhMqWIBCxLalglsGdjtE6nuZPdvnKzcbIlVV+HcdmNf8Gnj5JbmPjdH5cgwOl1odU3DG+hJkDHOiNOg5KmlpN3vHCzHckI/1n0piy6lCpVcuWZGG9ixyGaEugzGXhjGkp22fhPPjAePB1djvO/RV/98H3KnoVOUShc8ZCL8UCATxPwkF+FukV+bkL07YS0gjzm1bPT78jolZgGGiRBCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x1Xe1S1KHLsqeQJE92BpA09Uxti83B8KoUn2q7tpjow=;
 b=VU5HEKwBR/9py5rbHRuAvB1CWuQo5+yX0P5Ns0zsYk1qOWjdyC0XVvlNrGtBuDP7V6oMnck+oUfDBDltSzuUAJ62zZixlXrEs5663fjlwpOK695WTdW0M2+rDoHwbEGT+zO0U3Yo3AvNesq6X42k/KP3AYIsO3Y53kxcijmRiWB/dPZXbIX0wjwiSbDPjAcieyHH5cno7mcwe8+gU2StJQv4iYTkYtrysAFHmKCf0WDXasOLVqCJixPyMECjwpIJH5vQgsC2JFEIahBM/GOyhPvu6J9P/R//D7wojfUA5bKUL844i/wSwQuwR8/nnj3az8qDBrFw393UhiAdEPSiOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x1Xe1S1KHLsqeQJE92BpA09Uxti83B8KoUn2q7tpjow=;
 b=mHwb8zvIaJeTsfpuBLUQc9HpFE9wAY68q7JSqTOgc1LPunIlZpPeAH+YzWktpcKJcT8EXN+JkGi3v/FmKLgf8yXWV6fh747lJFZ6WrBg7SjRoN0XmGvm3jFJ3iCS1yqACNPZwHNvm4gzS9CjU4BRjxh84JB6dQk93meixprNyWY=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SJ0PR09MB11014.namprd09.prod.outlook.com (2603:10b6:a03:506::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Fri, 8 Aug
 2025 18:49:17 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%4]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 18:49:17 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: N321 output power too low
Thread-Index: AQHcCJTSI/mJeVFcVU+Je0vbvgQ8UA==
Date: Fri, 8 Aug 2025 18:49:16 +0000
Message-ID: 
 <SJ0PR09MB9126FFB633AD2FB006E19AACEC2FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SJ0PR09MB11014:EE_
x-ms-office365-filtering-correlation-id: e60326f0-29a7-46d6-04ea-08ddd6ac46f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|41320700013|366016|8096899003|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?zN8p9h5T/zF56ggNQIVrXTO2885vK9VcaW9QhVkfhzxmjEuRySReijjw?=
 =?Windows-1252?Q?u2HJW7gl/kPfk7QvizEns5dvkefPkvNE4MuZwwhQ+CfnxmfrjUruJ9i2?=
 =?Windows-1252?Q?eheC3KIsLHRPqIUa+32CJRb3BDVFjPB801xcYZwsOwSGhBN6Z0Fjp3GR?=
 =?Windows-1252?Q?MZtFc/Tf0MGGgPgWTOQXmYmvZRm0U4hF+wQ6JXjyKLRlSlrQAUSpM6cH?=
 =?Windows-1252?Q?HhPRIfe845az2CkON3tXIdS6iVVl20Js169vZvKYZK/i4JMAGG5nQ+Ze?=
 =?Windows-1252?Q?Q8fbFB7UTe4bBdfyIbzXVcW5yjCUIDyNA0m266Y/t2wAX5LpL4Ye9mb5?=
 =?Windows-1252?Q?2Vbz4xk/KqTRDzIQuX5T9Gv2oQyv2ya1kWFsaljmX3Su284k98c0mZi8?=
 =?Windows-1252?Q?GKsb3kTbCEJJWzg/rkSRTq25FdbTS6u2xPZGNSe1H0V9aYgrqhjGgpc8?=
 =?Windows-1252?Q?w1+Er/oWfJwABVVh5XVoeIhUdOpl/bgKYqMVrTD50H/jGA6M/Q0kxGO6?=
 =?Windows-1252?Q?KzebCVcD8eEF01ZJ95jF4659xSSTd+AIiSb2SFZGjstGHAkh5fsBjv6Z?=
 =?Windows-1252?Q?b5eE0lYi4vZ7CErxXJueniWcptFimLNSRpKex0ux6ybp9Gld5LZfAUa+?=
 =?Windows-1252?Q?0tuh7rqXybHwn9fxzbBIeSmivWgRRUPU+oZvN5Ve+3D44N0qg1anZ1K/?=
 =?Windows-1252?Q?Nw6UCc/v/VnRwb3Av3mCTVoMF6Dw8mqk5qPTMxLMCEmrhltpB/O9jxU8?=
 =?Windows-1252?Q?flcHNzWH0KundxtKD4RQITSw9TvF9ZFPqCZ2IPe3BxBPrmx9xFvRXxfK?=
 =?Windows-1252?Q?mzxXSzW+IcBrHPGwBRDjUn4cXiw9swwmQSHjI+lAYC6VUNGkQT+I/37W?=
 =?Windows-1252?Q?Kt3qBMgNKPd8Ih+mqbegi7bcm4SazSuOUYbw31MY/c55cVtATCJSa4yZ?=
 =?Windows-1252?Q?n+71vKCevb3BaTQ0DwH+Q4cB7AqWjcRT9n5npP/Mvd35XOoKDZCQvpZ4?=
 =?Windows-1252?Q?rik+0arXrzHWLfb9q5znOmSXcMwi9UKExZwMQBivFCymHHxDAV0EWlx5?=
 =?Windows-1252?Q?YE9DhtTq/RmLBA4IMdOZtRfgm6PaWtplGBNBexjqf8wQ9Qrczft3ru8m?=
 =?Windows-1252?Q?ZxpAetZPGBFttEWvl/gwgG5Duc9Vre8MLY9WeAQENnc1Oj1RmnYIcZpT?=
 =?Windows-1252?Q?gMVr05joXZJb8ncoTEZRAVGcoYA9vzXs7UKy7KY7kgr6dr54B/B78cMM?=
 =?Windows-1252?Q?ozZ0zWL6f3SYuEFEEL6BNcwMwG1cV7lYnEHXwYI7seS77iFuTTUSops9?=
 =?Windows-1252?Q?szz/+7HX19mt/HopKF55XsEH+H9cpTGBAldKXO72mhrhsniKNn0NF3K8?=
 =?Windows-1252?Q?LqicHT0aXkyQxKe1bcS6vzXqlwdK+WYnPKCCftOuXjqXiMp0NGgk8z19?=
 =?Windows-1252?Q?wTgmkc9ZKa8uC0WKH3lz0dnT4wp+rLLl8ok0aWMk4ftrpk4OWz5QJckJ?=
 =?Windows-1252?Q?SyuOGLlBaRMlj5YLUcBVFCRs1+kC6aB1KdmOPdK0BZK2tvFE7M5myywa?=
 =?Windows-1252?Q?BiWeae6nNR0rXSSxMvXmn2y7+lplRpA1Cn6oXA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?vYlQXlPBlfYR7fU7rypjCcKfOFhKJbodL+7iVxzNvj34smvtiusNUuuL?=
 =?Windows-1252?Q?BOxs+CPRJkM0Slj7nI+PEuxs11K/2UqKpeQ+s3JsdLQL5L93liC89qO3?=
 =?Windows-1252?Q?Kw6+T9xHugSKHnHu11GZfTDUjXw7TtOo5MgXj6uLy4rEzWI1cpvep7dS?=
 =?Windows-1252?Q?fI7LU/65gSK163OjHA1+/ILEXd6gUbyWPRo3ybmfdxAy96XryCpTaJUv?=
 =?Windows-1252?Q?caK2ObeUNHZZL/1l3Fg0S3YBWuUhNFqvl5ZXtt8LNY26ddLjrtwtrDP3?=
 =?Windows-1252?Q?HsZneUvWTOFlnw4/lVtSou+MvnDgZKCSAd1DxnJcIeNHMG4v6BrTxAbX?=
 =?Windows-1252?Q?hOG14hKwYST8s6fKvs7IxH5PSzcZvKQs8D7qvGN6DmpPDIMEn3KMpUue?=
 =?Windows-1252?Q?pZKNFmK+Uo9BRxEXgdeHjd73pE5zGmhKGVLyA3osgSnFE9MXg+sUX3Ji?=
 =?Windows-1252?Q?ENxTUWp8GrAoG/a361XoI6+VH5Qd6iY2cJkD2MRTqZd4Yf1f9+oOZSom?=
 =?Windows-1252?Q?EVzGi9yYc2bxbS8kzGGPrHKhErUBtqsotI0zho6DzR9vSNuiZkZpOXMQ?=
 =?Windows-1252?Q?Xmj8GXE8KSNuaumnD1U7Q68hPeh3l2+qp7SL4G1mMh/56y5LO/DBjd1p?=
 =?Windows-1252?Q?yPF4yZ3pcV8yrSn7EMXPjYagksY5TVMFkQ9Nr0cz1yvxtxk0U8djFGEm?=
 =?Windows-1252?Q?n5yaiIfPgDklq7k/QLcFjiIZUo5HMtGBCpShAF4SR8d0S5IKqzl9Q95G?=
 =?Windows-1252?Q?zbyvfjlt0FAzB8m8p9IPjD8PmFRzFSL5EuM4c+x3JkU60thLKy36OmAu?=
 =?Windows-1252?Q?7w2x19Gq37sge1iQrAUhbWwxuSCN0ZXzBeoUx/2owUYSlexRyXiWeOZY?=
 =?Windows-1252?Q?puWAPgBxTdU62iUCMnmZI6rQYQqOZrn8VKxdppLZro04duBG1DK3+T3v?=
 =?Windows-1252?Q?VuKdVZJR+9rxEXT5blTcSBSgbizxizWhCOPrzlsaa5iScm1IKeOcePtS?=
 =?Windows-1252?Q?U5l9zCJSI5nMIrPrqBq+l+7YVUm4K6kR4apqY9x5aJ9oPsm3iqpQiFhU?=
 =?Windows-1252?Q?3beyuJaOhHFGqyKLCzktakqmvrfo5K1jdW98Z44VtymH80CY98YO7FLs?=
 =?Windows-1252?Q?3ulx1GCWsRKRkxNIn1yPdAEGJB8xCU9Sa2TDbQMCaYkP+w0hLEqI7XHq?=
 =?Windows-1252?Q?qDcsNbFJk6RbVTMfi106dplJITZCBLygndpa5TK46afRj93NjiOf2mJa?=
 =?Windows-1252?Q?XjVU1S6qek7uu56LQ22uLAE9DmFWNC0qDRSed/O9XIcURdLjPshC3JAN?=
 =?Windows-1252?Q?OaHwGxb885ldg/8eE9suQqLBoFnZlZUOXiUH8KF7qFCDgPeXSnXml2fR?=
 =?Windows-1252?Q?jlP3nz/+Mft9fNJ7qLBcmGyOM19n+sYca3NGncoH1dV5aKiwMEBnqImg?=
 =?Windows-1252?Q?N0C589nBV273zKiBIO95zV0vwEfCbND7Mx5JSlOoeOggroN7KJ3iyhfc?=
 =?Windows-1252?Q?VfnLHOWmx569rLXp5BIJKWw/Evm8oAxQwVDzygVQpf5tQlLpALkeK6Bs?=
 =?Windows-1252?Q?4XJWo7mA6llAhZ9B5yq/7thy3lFA3d51/NUJ9tGGKq0MtSrlNq2lSuVR?=
 =?Windows-1252?Q?50xzeEzE6XhYBII26zZYp1ISuShy7EICqFa513aWnso12+aMUZcQD3+l?=
 =?Windows-1252?Q?2TZcTvaCDjM=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e60326f0-29a7-46d6-04ea-08ddd6ac46f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 18:49:16.9355
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR09MB11014
Message-ID-Hash: J4C5NAIB7IWOTB5W2XYIDNQ7VNVA3PBV
X-Message-ID-Hash: J4C5NAIB7IWOTB5W2XYIDNQ7VNVA3PBV
X-MailFrom: prvs=308b19047=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N321 output power too low
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y2BZJJEVMGOSAOZRR6IVHLVBKF4IHQDU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6986598032819633013=="

--===============6986598032819633013==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126FFB633AD2FB006E19AACEC2FASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126FFB633AD2FB006E19AACEC2FASJ0PR09MB9126namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a bunch of N320/N321s.  All but one are working OK.  One has an outp=
ut power that's ~20 dB lower than expected.  Testing with tx_waveforms --ga=
in 60 generates a tone at around 1 dBm, instead of the expected ~20 dBm.  T=
he USRPs get rather warm =97 could this be a heat-related failure?  But if =
so, why just one?

Any ideas?

Thanks.

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126FFB633AD2FB006E19AACEC2FASJ0PR09MB9126namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I have a bunch of N320/N321s.&nbsp; All but one are working OK.&nbsp; One h=
as an output power that's ~20 dB lower than expected.&nbsp; Testing with tx=
_waveforms --gain 60 generates a tone at around 1 dBm, instead of the expec=
ted ~20 dBm.&nbsp; The USRPs get rather warm =97 could
 this be a heat-related failure?&nbsp; But if so, why just one?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Any ideas?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thanks.</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB9126FFB633AD2FB006E19AACEC2FASJ0PR09MB9126namp_--

--===============6986598032819633013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6986598032819633013==--
