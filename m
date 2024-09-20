Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC6B97D7DB
	for <lists+usrp-users@lfdr.de>; Fri, 20 Sep 2024 17:49:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 78228385944
	for <lists+usrp-users@lfdr.de>; Fri, 20 Sep 2024 11:49:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1726847340; bh=4oo5czStlERBrb04Vt8CNEQ4fIPrHXFPXi8kDH9Ar4o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ynu+7v9RLD7tZO4txkCwz6J3KL0YeuhuELXMQCKUn6Ie1yw3oBse+HHi1eia40Aye
	 XvEYALEIyLKUHf4sUL3Nq+VpW+yqwp/Ii7cnZwmFgUzima5waodMMoss8yiXThEyOG
	 X8DJB/T7235BJqGsU4O/u3zchl/Y/9xDe4N8X6yu7zIrMMvy1nzhrM/2XQ2madQ4E2
	 jiuvdU+aQoJfPLZA02dIH3ssnUDl1U5hTMfnReBr3On9dobl5wwSC55u9gYm8cqpmy
	 v+pDqlRJRS/aCbW2OerdEPqk/36Yr6Zbk5mdQ5gCK4ZOxiOTDjb3z3GCYKPs5ldndD
	 y3dYx7MVdouCA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 8F4C5385880
	for <usrp-users@lists.ettus.com>; Fri, 20 Sep 2024 11:47:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="o6apiR6H";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="Aw98a5n1";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1726847276; x=1758383276;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=Axk4+daEvF2dp6CCEhPfH9JF2Sy3aVHySjHD+/NkGDQ=;
  b=o6apiR6HE48pr954pOzBKSlFNk4vb5I0u8o7yvrpiYx4yFtFEi0AtAhh
   XxgsgJEDkPDvWsJOiHBjcvwjgtIdcbJkv71IZDc1LPjqqbZNn42Jg4X0e
   fUSUJPg8qxSfRZOTkcQm5UiSXvzbDmO4PJVMty6K6gnw+xKIH9h3uZiV+
   A=;
X-CSE-ConnectionGUID: TbrYYz9pSbuBYorlBXpO2Q==
X-CSE-MsgGUID: rmIAuXq6RoSwN7JLSwt4vA==
x-SBRS: 5.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="5802353"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600";
   d="scan'208,217";a="5802353"
X-IPAS-Result: =?us-ascii?q?A2EKAQChmO1mmB8UXShaHgE8DA4LCYFPgUEBWih7gWaWS?=
 =?us-ascii?q?Jc/hlaBJQNKDA8BAQEBAQEBAQEHAi4BFQQBAQMEhQACigQnNQgOAQIEAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQEBBgEBAQUBAQEBAQcEAQICEAEBAQEBAQEBNwUOO4V1DYQIg?=
 =?us-ascii?q?SYBAQEBAQEBAQEBAQEdAjVVAQEBAQMBPwEBOA8CAQgEDQQBAS8nCh0IAgQTC?=
 =?us-ascii?q?IJ5gh0NBwMxr2h4gTSBAYIMAQEGBATbHRhhgWMJgUiDe4RQASqBMokBNoFVR?=
 =?us-ascii?q?IFXR4FwGRg+hCUghBOCL5F/DodkhAolTYcUgXaHfIkHUnUiAyYzIRMBVRMXC?=
 =?us-ascii?q?wkFZIhUCoMcgW4mhBaBM4NygWcJYYhJgQ2BPoFZAYM4SoNSggAFOEmCUWtOP?=
 =?us-ascii?q?AINAjeCKoERglqFLx1AAwttPTUUGwUEgTUFqjsECwOCBUeCEIJFgXOiNo5Ul?=
 =?us-ascii?q?Fo0B4QagV0GDJdZiCkXqkWYdqMqhUkCBAIEBQIPCIFoAWaBLjMaMIMqUhkPj?=
 =?us-ascii?q?jqBFQEIgkPHFHg7AgcLAQEDCY0+AQE?=
IronPort-PHdr: A9a23:PjCqlhAJpVG15NZPStD9UyQVaxdPi9zP1kY95pkmjudIdaKut9TnM
 VfE7PpgxFnOQc3A6v1ChuaX1sKoWWEJ7Zub9nxXdptKWkwJjMwMlFkmB8iIQUTwMP/taXk8G
 8JPHF9o9n22Kw5bAsH7MlTfuHr06iQdSX3C
IronPort-Data: A9a23:IKRlAqtYOyKbXUBdaVqvAFgVCefnVMNeMUV32f8akzHdYApBsoF/q
 tZmKWqPafmDZ2Lyf99+Pd7j9EgDv8fdnNNkSQc//C8yQ3sT9ZOVVN+UB3mrMnLJJKUvbq7GA
 +byyzXkBJppJpMJjk71atANi1EiivnQLlbbILedYHgoLeNcYH58z0olwqhh2dYAbeGRW2ulo
 cn1r9DUJGir0jt1NnN8w6+YoXuDhtyq0N8jlgJ4PKgjUGP2zSFPUMpOf/npdhMUf6ENdgKEb
 7ebpF2G1j6Bl/sdIovNuqr2dEQMXonTMWCm4paBc/XKbrBq/0Te445jXBYuQR4/Zwahxrid/
 O5wWamYEm/FCIWRwb5FC0Ew/xZWZsWq8JefSZS2XFf6I0fuKxMAyN02ZK060BFxFk+azgii+
 NRBQA3hYCxviMqKyqiKe/s9nv8pMePaO5kbkEF46mvgWKNOrZDrG80m5Pdz/G4IvJgfNsuGP
 5NfbidzZhPdZREJIk0QFJ81gOavgD/4biFcr1WW46Ew5gA/ziQtiP68a5yPIprRHK25nW7Bz
 o7C12nkDRwcOZqQ0zOU7H+2rubChyS9X5gdfFG93qM62AfImzd75Bs+T16aiOSJkxCEXOlAD
 RM23hExsfQs3Rn+JjX6d0bj+iLb1vIGYPJNCPcirRyWx7DPywKYHXQfCDNddME98sQxQFQXO
 kShmtroAXlpt6eJSXmQ8KuOpDevIiEHKXdbOnddFFNeup/kvZ05iQ/JQpB7Cqmpg9bpGDb2h
 TeXsCw5gLZVhskOv0mmwbzZqw6mvKn4XF8t3Q/KdFOi9AdTVJaCPbX9vDA38s18BIqeS1CAu
 l0NlM6f8P0CAPmxeMqlEb1l8FaBt6ftDdHMvWODCaXN4NhExpJOVYVZ4TU7IkBzLsYPdDn1e
 kbXpBhY9ptLZSTyNPYvONv3DNk2x6/9E9ijTurTctdFfpl2ckmA4T1qYkmTmWvqlSDAcJ3T2
 7/GIK5A7l5DUsyLKQZaoc9BjdfHIQhimQvuqWjTlUjP7FZnTCf9pU05GFWPdPsly6iPvR/Y9
 d1SX+PTlE8BD7KmPHmNr99KRbzvEZTdLcGuwyCwXr7SSjeK5El/WqeIqV/cU9A7wPgOxr+Yl
 p1DchYCkAGm2C2vxfq2hoBLM+i1AckXQYMTOC0nJ1Gz3HY/KY2o9r93SnfEVehPyQCX9tYtF
 6NtU5zZWpxnE22bkxxDN8WVhNI5LnyD21nRVxdJlRBiJfaMsSSTpI+9FuYunQFTZheKWTwW+
 eb5j12KHcZZF2yPzq/+MZqS8r94hlBF8MoaYqcCCoU7lJnEmGSyFxHMsw==
IronPort-HdrOrdr: A9a23:ARDjCK573fhAG5bSQwPXwVaBI+orL9Y04lQ7vn2ZFiY5TiXIra
 qTdaogviMc0AxhIE3I6urwQ5VoIEmsvaKdhLN8AV7MZniDhILFFuBfBM7ZskTd8k7Fh6VgPM
 VbAs9D4bTLZDAU4/oSojPIderIq+P3k5xA8N2uqkuFOjsaCZ2IgT0YNi+rVmlNACVWD5swE5
 SRouBdoSC7RHgRZsOnQlEYQunqvbTw5d/bSC9DIyRixBiFjDuu5rK/OQOfxA0iXzRGxqpn2X
 TZkjb++r6ov5iAu1PhPi7onttrcenau5p+7f+3+4gowwDX+0iVjcpaKv6/VXsO0ZuSAR4R4a
 TxSlEbTo5OAjrqDx6ISReB4Xid7B8+r3Dl0lOWmn3lvIjwQy87EdNIgcZDfgLe8FdIhqAK7E
 tn5RPti3NsN2K1oA3to9zTEx16nEu9pnQv1eYVknxESIMbLLtct5YW8k9ZGIoJWHuS0vFvLM
 B+SMXHoPpGe1KTaH7U+mFp3dy3R3w2WhOLWFILtMCZ2yVf2Hp500wbzsoCmWpozuNKd7BUo+
 Dfdqh4nrBHScEbKap7GecaWMOyTnfARBrdWVjiU2gP1Jt3SE4lh6SHkIndvtvaBqDg5KFC6a
 j8bA==
X-Talos-CUID: 9a23:3TiYGG/C4Sa/QstdGYWVv3IeAPEUYCzF933NCX6/E2JDeKWyE2bFrQ==
X-Talos-MUID: 9a23:MssS/wjQ1juNoCi+iWx4mMMpLsJJyrmeER43lq4ZnZamERdvJ2uDpWHi
Received: from mail-northcentralusazlp17011031.outbound.protection.outlook.com (HELO CH1PR09CU001.outbound.protection.outlook.com) ([40.93.20.31])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2024 08:47:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W1pqMSXWDOzFthSCAvuDMJGK5bpNXe1g8J+TYRQzxSAHIBFS8zY9BDVwWP+WCsszhFfd+ZT6NWKonNATLFI4wbEiiyhiKa+px3zJ+HMTiEQDT8NZpS2F6OqkSH5x+CXUqqXweMKO6wSBQYpZ0xId+gjgpkhsWbwkA8AZv35y+ZYnmsUD9oTTkYbQL1cX6IDgOVmUxF1cEjL13LSXwKIZ5FkxCnjwntyIuVRtq4HCeC354R5EBXhxh5KTVHU9iI7edoSi9wLJ9EvpFg/ofo3B/nm+N5tfu4RePkHSoQvCknsefkjhWwgE9l2YIFOhjCyDF1Qdi3hMibC46fFgoMf06Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l1WCwnbW0kFu0GEpOolCj/cQIRsfFH3fxs4ZYnA93ZI=;
 b=lrrlfVtdNmhwzzrynApTGf35FNY1Lek85y4Nv/b5/b7j8ZMDbiaUMCHQGxUg9r7TqmxYXdZv7+QkLj3GcWUVnVrW5PU1J3SVVzLmbcZdvVOig2JMKhwWRbd135qAq9LNNrOeshQcr6qOEBsfkB55dxRfNCXN0KaIkSF03lMwPapXbaLoRq3E1zkrEOkzBSbn2G+r/b/NmDPTs2noUyu4r/o3SZJmf5uJDjcBYNzS5GoOvhbjdgWTKF4VI9HjUGgW8UWVrPd5aycbu6BIQcE/bXcbYUwJfla5O1cPC57YW3NoUQdcO6sc3RFiPkBE8GMuZ1qGWC+gphOMtP2PwQvcwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l1WCwnbW0kFu0GEpOolCj/cQIRsfFH3fxs4ZYnA93ZI=;
 b=Aw98a5n1irR13Algk7lrlKy3vREqES6FOhke4KNsRRTUTVhANtrjZIGjCxurr6EMnbMM7m+lwb2LwkJh5T1Pm0TjpX4v23TeMalXI9g+Vidp5oWD1wJ0Axw4HO8O2B/8rC0EGyuicZsy45QBup+Ali59lxNNmwbZDbCyWS54TPU=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DM6PR09MB4887.namprd09.prod.outlook.com (2603:10b6:5:273::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Fri, 20 Sep
 2024 15:47:12 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::3188:1f4d:693d:60d6%6]) with mapi id 15.20.7982.022; Fri, 20 Sep 2024
 15:47:12 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Automatically power on after power loss
Thread-Index: AQHbCtqt48t7DHY6C0mTcuO59+HzALJg0pRi
Date: Fri, 20 Sep 2024 15:47:12 +0000
Message-ID: 
 <SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2@SJ0PR09MB9126.namprd09.prod.outlook.com>
References: 
 <SJ0PR09MB91263DCEEB7645BDCC4BE371EC632@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB91263DCEEB7645BDCC4BE371EC632@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DM6PR09MB4887:EE_
x-ms-office365-filtering-correlation-id: d52fbfa1-29f7-444c-fc6d-08dcd98b7e7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?rZSw5/068bmUvVvWTWC4CFa9JFxBns6Nffyz+zLiO7Yndyg/eRS7yyzr660W?=
 =?us-ascii?Q?hVCSEuN86PMRQ3OMCyr8Gs4QoE+vYjjDZcKv0y9Ls3LW5d2Yp/GpKHonyL3v?=
 =?us-ascii?Q?7CgTjeGRsUWeieo0Q0PzA8xE9phxGuMVQJyeXTA3gv4z8lQolGniW1D6yjrz?=
 =?us-ascii?Q?QPwsHhyfn4gLqigZnmOSbBwQfoYwfK9DgBUFQOBQ8TpGNU735wm2ezCJTJmJ?=
 =?us-ascii?Q?Vk6jnIzx0EqgrpyEFq+bfkGdwyxe1OBOH42BPjwEGA3YEiWa1sl3xtT60tLL?=
 =?us-ascii?Q?bEOvfnzDjX9kb1aalZSguINp7o1BzRydxSIFBVAPNOqihcNN/2dwwPd8qsBL?=
 =?us-ascii?Q?q2MZLJg3ZY/lmS229KhRU5EFqbrarm4v0moFcCsN2oiKXk277gIJtiveU+DM?=
 =?us-ascii?Q?oCecWmGPeYwYnNbU/3C7KdUISkLav0/aLYUCH+ATuoCI2PSloA1zpyL0P4k+?=
 =?us-ascii?Q?S8ZbhNns9wGvatUTpQ1sSLrNT9JQUwqFwQHvYQn3/VkOywvB/VDNsmS2MQ/E?=
 =?us-ascii?Q?RFD5ob4PpTMQLOd2IYBTT2bn3QKo5FXFPJzYxaBvm5/GZey3gwPsEtVtK8Uq?=
 =?us-ascii?Q?1eUS8Lo1sx9mqC+Tli/G51O5Mbadt+WyMOUc8SawIZWEMrM74saOUHCnQT8G?=
 =?us-ascii?Q?VA9b1VCKAJKgTdxkSbhUtUWyvHh1SKj1TYPQFARWJnTvDJMQIQwtr5QlnP1N?=
 =?us-ascii?Q?byAMIh30JDjTKvucF3fLtwNdfXYZjcCUMU58r59pmoukudU601gR2cA/Vg/K?=
 =?us-ascii?Q?IQsBse5d+C37VGVZB0A4ycUBPk3HJVXOMR7y3J8GoGwyTNOjkSAxonyRSB6E?=
 =?us-ascii?Q?h/ZPHxZOjTeQCVaH3ksy5nl/eDd/29PpLvRB7mJw6scQVNkVw0DghBdN5IBq?=
 =?us-ascii?Q?eshhJ8I1BkVs++QCtFvRE7tWdRJ5TTXckBF+fWdj0nezsKvVFZ7AtcEn9Xym?=
 =?us-ascii?Q?mgB04lGzyjoYqDanAeQFGnz3hfL4obEqTTiu/mEL+vNDeqCARUv1qFSmOxtd?=
 =?us-ascii?Q?kXq7HOrIIH+2k+6t21AzjcTNVDFl2J8ATAZh/ixCm2wfwrtbrxbi1+h6HSzI?=
 =?us-ascii?Q?rda5k/mSeey97vKTUXOKblLja8smVGvqdjvMa2CiB2NMCiiEu2RZvZwUoiua?=
 =?us-ascii?Q?D5PHB35KClTt2zbIApKxFINu29wF2Lj30G5j8xyHlgFvzI4rvqqbe9Y1tDNb?=
 =?us-ascii?Q?LQI10qJqNqdTQzCk6ke2BxWKc9Mp8pBMISnmcqCyCslLaVVW5ogVBFYYH0g9?=
 =?us-ascii?Q?dFAtIOsWGw3YN0WakHSCzb/zX5IlS9YB2j2DmUpZu/XTs+Q8zcvDzdFtPBx9?=
 =?us-ascii?Q?5B6F/mnyId1z0KBoJNKp++zlM0tmjlFj8L5kOtq3EHuzLg=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?1XW8BE7qe1TRhWuOEtpC7eNv+QXr6VlUVClte/pvU3EjcA97RN7FX1UvcD1t?=
 =?us-ascii?Q?6DRFZ1nmiL9E5/jmwdQY7x89DHYsxqOItyYXXa2ubLs2Ep1O7C54Z4l6FeSA?=
 =?us-ascii?Q?l1yPYZcCCM3cT6hpXlPk5u0s50XRblU4F3AJlewyPXB3EhJtP9MrLgNax6zB?=
 =?us-ascii?Q?gnIyQ5upkqZz8IdBw6qMywo1Nn3p9+gHHcEM1Lr/T49rJzZ3ofkG8GxtMPUr?=
 =?us-ascii?Q?AFCKphD7JyP6oitR7SjCyhP1vj0Jt/KIpM1AT1tE8135jLv1QJAM6kzf8m7J?=
 =?us-ascii?Q?5hnN7LWSd634lSk+m2ODNKDcUAQ6eCBItSEWYbFdJbS9TPhCbIEhHFtOOz5u?=
 =?us-ascii?Q?ORh0mwm6C8L39HGQ5GQ/5QjDLuBaWspLsBBj9+RB5hGps88W/HNp5f/RUHJP?=
 =?us-ascii?Q?aU9MgnkZuKtLkdP9ZMfvJacqD1ORNopRgQxaufj4IjkBNE2lvMGTEHxYpILF?=
 =?us-ascii?Q?mi4zAZEVXStNIktlSlrVMUoiPygQEtoookRWoq/CA4Rep1SBcQOCdlcEr2tx?=
 =?us-ascii?Q?JbICfug0IJ4EdWxpY6tpkixLH3jqEv1HDqjqUA+GdHk5F9qKsoRF8LYym1hd?=
 =?us-ascii?Q?CyRPaqJP7Qh+oaBUfs1Y1tm2h2XPHbhcNYMKIpFa/aEAZHL1kjy9IdY+7E4x?=
 =?us-ascii?Q?dc3wHm8WEXDLdZGenZhOAwhwameoRULD2v6wA9rzBJVTIbZen55AJWOUd13+?=
 =?us-ascii?Q?g2DyUp/sE9EEOpn5Tghg2m5KICNuK9qJ8Au/DH0kkgaJid3X+R47yf+F/34I?=
 =?us-ascii?Q?Trb5c8lXQRsm6xzH290H0EXTCgX0TWQPnwc2fVVKVSCT23ii5E42v4xmuh7m?=
 =?us-ascii?Q?LblfQN2gcTFMgIUx+ZY1KBC8Czu2zLjDl/CCdMWNhfqXZKXGjL6LsDQtdbnU?=
 =?us-ascii?Q?ve1oXjwbWErnk4pUIq8Z19RLMSIwOUqnA++4Ts2uZ6F/eP0gwq3SWvds+ukf?=
 =?us-ascii?Q?gizX9Xg5vAg4FJciHxVqscX8HmMNr7zmLg+XAxza6KFpSSaVJtp4iZynBoZ6?=
 =?us-ascii?Q?zbBMbzwQRd+d51Y1WuEAckgupZ3+Ao/qFKPNID45KryytJ7Nr0jYr2yvkyq8?=
 =?us-ascii?Q?e0OLejmQOsep+a7UL+9j8OxCjPC1q2Wl7SSAQVaBilTmqWVL+xH4ZB4gOROe?=
 =?us-ascii?Q?B4igYcApfzIDikoAoPVd9ukE8t7jSYJcbmdXb5iXJGcMXHmo5f4u+EsTRA8M?=
 =?us-ascii?Q?5VRtvJlXS8RTCfXOphlCp4AxOfYTM3EAMCQrozdrg6B18AvJI/BKOVHXpgyj?=
 =?us-ascii?Q?A6uq4W5/FWdJetFhWB90Vlc6FzMXaWbPtS0qZcopDGcyGVQG49lDRXwhcpjc?=
 =?us-ascii?Q?PnL6azZHIXlst++MiQgRVlxBiDo1KNn/0tTNeAS9cg5ElQD2tYIMuCl5CPUZ?=
 =?us-ascii?Q?SDSMe8xQLayR4ObitkEe+LwLPq/lttr44SC7c4TSF3g9/txmOXiZWgW0nkZr?=
 =?us-ascii?Q?TQl9Sv6qLe807P2X/RbL1378CUYpAvEp5yeb/vuRrv+b+FZ8TnEcjRaaz4R5?=
 =?us-ascii?Q?HXG0PYI18acRb0TgTe2ASgzjzbMqwQl2nPkW+SuObOKHOdDfcAK8ZhRL5boE?=
 =?us-ascii?Q?S7DBWICwWub+X7bYYHU=3D?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d52fbfa1-29f7-444c-fc6d-08dcd98b7e7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2024 15:47:12.5611
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR09MB4887
Message-ID-Hash: YRZEVZNRFGCWERUXSOMOHR47XI2YTJKS
X-Message-ID-Hash: YRZEVZNRFGCWERUXSOMOHR47XI2YTJKS
X-MailFrom: prvs=986dc8a91=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Automatically power on after power loss
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UD6PVG6W4MD3PIARJFGFZP2EX5JKIRFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2882969953945156346=="

--===============2882969953945156346==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2SJ0PR09MB9126namp_"

--_000_SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2SJ0PR09MB9126namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for the quick response as usual.  The wiki says the flag is specific=
 to N310.  Does it apply to N3xx (i.e. 320/321) as well?

Thanks.
________________________________
From: Eugene Grayver
Sent: Thursday, September 19, 2024 2:28 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: Automatically power on after power loss

Hi,

The 'soft' button on the N32x does not have an 'on' state.  The X310 has a =
real button that can be pushed in.  I have remote N32x devices that are not=
 (easily) accessible.  How can I make sure they power up after a power outa=
ge?

Thanks.

--_000_SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2SJ0PR09MB9126namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi Marcus,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks for the quick response as usual.&nbsp; The wiki says the flag is spe=
cific to N310.&nbsp; Does it apply to N3xx (i.e. 320/321) as well?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks.</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Eugene Grayver<br>
<b>Sent:</b> Thursday, September 19, 2024 2:28 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Automatically power on after power loss</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
The 'soft' button on the N32x does not have an 'on' state.&nbsp; The X310 h=
as a real button that can be pushed in.&nbsp; I have remote N32x devices th=
at are not (easily) accessible.&nbsp; How can I make sure they power up aft=
er a power outage?</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Aptos,Aptos_EmbeddedFo=
nt,Aptos_MSFontService,Calibri,Helvetica,sans-serif; font-size:12pt; color:=
rgb(0,0,0)">
Thanks.</div>
</div>
</body>
</html>

--_000_SJ0PR09MB91264BA57D0CF1ACE3D75F97EC6C2SJ0PR09MB9126namp_--

--===============2882969953945156346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2882969953945156346==--
