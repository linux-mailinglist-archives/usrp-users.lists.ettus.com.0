Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aGvuLj84p2mofwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 20:36:31 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBEB1F6225
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 20:36:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1A7B7386534
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2026 14:36:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772566590; bh=ZLeEU4YGCZY98YWk7Y6Oq6wcqsXLDtB+eMbAywiMSbI=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=qT0Vz4FmAapZQ4eFRBtw1piGVOlrc5ik1UtpNzjm0N+zUin+1wJJw2aC574MgEpTv
	 aclgpqF2z7eShkHvYP+UXTXmFeBBaXULQU5bPuqY6nR5Cn6URaVV8Q0H6jPpOPpizx
	 iuYQEiIpIPv2v6mkBnGmDxkvRrAwvw0DD42ACwyzN/KZcZQnX8qk1s8p8Jv+rMzBSK
	 vF9ZAUxoGPL/eQ1qvj6glAw7Pp9OokXZS72kP5myj8AwEhHpvwHyVAmJdlg3WXHMtu
	 MsA1ngNKb+SiX3aefnMNzb0EwT6hvkRBe2+7Td8o7UyA9IPLVnIyQGSwwZTRC/beiP
	 uAVnnbkq8y+xA==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id E4E16386122
	for <usrp-users@lists.ettus.com>; Tue,  3 Mar 2026 14:36:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="ItZEt30x";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="cEsJ5laj";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772566575; x=1804102575;
  h=from:to:subject:date:message-id:mime-version;
  bh=6lnr0z+iSu2Eli0Iuex5zeR9YkbiO7WU2lsR3NDN6ro=;
  b=ItZEt30x/WtgytUTyE7mHa6hxkvKwXZNocYJxaCLEvdalZQ8RCATxxOe
   octVzQXlbp8V7EIFItHPKOQV0ium1H6w70/1H54pxusnydipRYKIk2uP7
   gNF6UxzaoTtcAtRnYn0u7Fbg035RctdOf1EGbZIT8yxlhe/+XlvZyVOb1
   4=;
X-CSE-ConnectionGUID: zG5j+WkwQUKCmLDY+8GAgA==
X-CSE-MsgGUID: r5DWXsJzSE6kNjEVJGr40w==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="8637007"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800";
   d="scan'208,217";a="8637007"
X-IPAS-Result: =?us-ascii?q?A2FqAQDRNqdpjhQOXShXA4EJgVCBPYEEQQFDgWyuEoZXF?=
 =?us-ascii?q?IERA1cPAQEBAQEBAQEBBwJRBAEBAwSFAAKNISc2Bw4BAgQBAQEBAwIDAQEBA?=
 =?us-ascii?q?QEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBAQEBAQEBA?=
 =?us-ascii?q?QEBAQEdAjWBAxkBASoKBBEBfycEG4J6gh4HBAsHAzaqGYEBM4EBggwBAQYEB?=
 =?us-ascii?q?NsnGGOBZwmBTYN9gXKCZQEqgTUBhBSFMIFVRIFXgjAHhRkbHyaDToIvgiZ6F?=
 =?us-ascii?q?B2BKIYhhDCGdoFEIgMmMywBVRMXCwcFXoEIA4EGbjIdgSM+FzNYGwcFhVwPi?=
 =?us-ascii?q?leBE4I7AwttPTcUGwMEgTUFjQgHVT+Dc3akPYF8oUY0B4QfgV4GDKAeF6pri?=
 =?us-ascii?q?AORA6N8hRoCBAIEBQIQCIFvBoIJMxowgypSGQ+OOoNnxCV4PAIHCwEBAwmTa?=
 =?us-ascii?q?QEB?=
IronPort-PHdr: A9a23:DDsB1h14sCbUZjNNsmDPrFBlVkEcU/3cMg0U788hjLRDOuSm8o/5N
 UPSrfNqkBfSXIrd5v4F7oies63pVWEap5rUtncEfc9AUhYfgpAQmAotSMeOFUz8KqvsaCo3V
 MRPXVNo5Te1K09QTc/zfVqUpWe9vlYv
IronPort-Data: A9a23:tqemfa+rr/CbB+8pH+OzDrUDnn6TJUtcMsCJ2f8bNWPcYEJGY0x3y
 mQWCDrTOvuLNGLxLY0iaYSw/EoEuJbRn98yTwFkrCExFiIbosfsO4+Ufxz6V8+wwmwvb67GA
 +E2MISowBUcFyeEzvuLGuax9SEUOYagH+OjUb6s1hhZHFIiEGF4z0o4w4bVu6Yw6fChGQSBp
 NjulMPWPV6hylZcP3kdg065gEsHUM/a5nVC5zTSWdgR5AWAzyJNV8pGTU2MByKQrrd8T7bSq
 9nrkenRElPxp38FFt6jm7DnRUwGKpa60d+m1xK684D76vRzjnRaPpQTbZLwWm8O49m9pO2d/
 f0W3XCGYVpwZPWUwIzxZDEDe812FfUuFLYquhFTu+TLp6HNWyOEL/mDkCjalGDXkwp6KTgmy
 BAWFNwCRgKs2uD1/7Gkc9RPrcEHAPiobKw2tVg1mFk1Dd5+KXzCa57jtOdihGYbu5gWR7DZe
 tYTbidpYFLYeRpTN1wLCZU42uC1mn34dD4eo1WQzUY1yzSLil0qluGxdoCNEjCJbZw9ckKwq
 3/J8mL0RB4APc2BxCCt+3+2ganIhyyTtIc6ROPjqaYy3zV/wEQJVTEpZUCZs8KU1E2YWf9hC
 WMOpnIx+P1aGEuDFYKnA0LQTGS/lgMHQcIVDvY38hqlzqvP/x3fC3QYUyUHY9sj3PLaXhQv3
 16N2sjuGCBvu7CTVWiU8qqPpCG2IXFKdTZaPXVcCwwY/9PkvYc/yArVScpuG7K0iduzHizsx
 zeNr241gLB7YdM3O7uT73+agXGTpYfwcy0e4yH7byH1wSp2TdvwD2C30mQ3+8qsO2pwc7Vsl
 H0Nmszb9+cTEZGGmSqRWuwJAaqg9fKdaWKE2AY3RcFn8Cmx8Xm+e4wW+Ct5OEpiLscDf3nuf
 VPXvgRSopRUORNGjJObgaruUKzGLoC5T7wJs8w4iPIVMvCdkyfcoklTiba4hTyFraTVufhX1
 W2nnTmQ4YYyUv89kGXeqxY11L4g3Cclwm3PDZv81QzP7IdykEW9EO9fWHPXN7hRxPrd/G39r
 YwDX+PUkE83eLOlPUHqHXs7cQpiwY4TWcqu85Q/my/qClYOJVzN/NeKnON4INU+xf0L/goKl
 1nkMnJlJJPErSWvAW23hrpLMtsDgb4XQaoHABER
IronPort-HdrOrdr: A9a23:KmZg66OYCrZHB8BcTyP155DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jzjSWE7gr5K0tQ4OxoWZPwN080kKQY3WB/B8bHYOCLggqVxeJZnMLfKl/bakrDH4dmvM
 8OHZSWY+eAbmSS+PyKhTVQZOxQouVvnprJuc7ui1NWCS16YaBp6Al0TiyBFFdteQVADZ0lUL
 KB+8tuvVObCD8qR/X+IkNAc/nIptXNmp6jSwUBHQQb5A6Hii7twKLmEiKfwgwVX1p0sP0fGC
 n+4kHED5eYwr6GIyznpiHuBqFt6ZfcI5V4dY2xY4MuW03RY06TFf9csvu5zXgISaiUmSsXeN
 WgmWZbA+1jr3zWZW27uh3rxk3p1ysv8WbrzRuCjWLkutGRfkNONyNtv/MrTvLi0TtTgPhslK
 ZQm26JvZteCh3N2Cz7+tjTThlv0k65u2Arn+Ifh2FWFdJ2Us4nkaUPuEdOVJsQFiPz744qVO
 FoEcHH/f5TNVeXdWrQsGVjyMGlGn4zAhCFSE4fvdH96UkjoFlpi08DgMAPlHYJ85wwD5FC+u
 TfK6xt0KpDS8cHBJgNdNvpgfHHe1AlbSi8Tl56e26XaJ3vE0i91KLK3A==
X-Talos-CUID: =?us-ascii?q?9a23=3Af4+5iWuZurJo5vrRp04KLfvt6Is3XSDfj0jTPHa?=
 =?us-ascii?q?FKk1sbJGkCg+/0axNxp8=3D?=
X-Talos-MUID: =?us-ascii?q?9a23=3AL0oldAz8emt758+/OJ4tUBCgWACaqL7zJH89irc?=
 =?us-ascii?q?UgOTaNgpyFgm/oy7rGpByfw=3D=3D?=
Received: from mail-southcentralusazlp17010020.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.20])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2026 11:36:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A8zzev6oqnINeu1PRo7DhwnLjOS+ROuF1zUyN/9B/KB0OOB/O6ObgYAN4+7EWJGfbZJ6eOL1qHsQS7GnHImAhD/32l+IulnxpDaY+UdiEFeyLWYKJV9j+Suk9D+4xXd9uYar8yiezynrNzAYZrK5nuRJopRPMCvy8p7yHf0TGtcIy5ANg4Pm87sjMBgkJ4i7MGV6Cgwo4jbDgjNLMIZ6StLKtv0hMce1W8g+7jYxlHrTg7biil8Vv3/svoPOCTZ8e7P9RthuPcF1+NZ51WA+frQBFCHqfYOTndJzGkSrazCcufuSbV2ubp+vEiC7yZzCTVAknTF/DluDHNKsT6tkXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zTuMEwc+oN6/JGf1RncNc8ajdgapqctmW4+sUOyqCJU=;
 b=VADFVX2sG4xTQe3TpUH+Y7A+rMjhYxyl2y0wBw5Fnzg2Ve+QRVZDGcOwNxoc77EZl6S50pqMHManUDvj27w2CPjDBXbH9lv8dMN+btl5gcvSTrfRhq2HiYvNuVfzxPuJ7n/f6Ql+ztuITUNE2mK74IV8tqa0TnOY0p3XNmH9zqaW86WgRMoUqZVGwKe0cJOTt4aUl/KtYvDnLMi5Fur+AGvfIkBM9/5VGyAj3gYsS8bCv6LRzlKr9X4Bu6u+wAgYO8bffCSXsx6zN6wFh/VBjg3KeDDRB3vxccAZW5AOztgQfy2W5nrOEEikwye4UiV6mpaZwVvjpVFikJsb4DZNPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zTuMEwc+oN6/JGf1RncNc8ajdgapqctmW4+sUOyqCJU=;
 b=cEsJ5lajGBVgmPe8PtB0gYeUPLCb8fKJE//RB4d/9a1fv+TkAmyPAuNmyr0O38G02+Fvd5wUWDdJivOXHyPWYd/4kTTf3Gh/HvNJ2oft4rviQvGBdzjw8a5Q5nBdH231P27wD5wPS0o/RpeRTUFEw0tIJUNCeuEZI2pDpiGjMTU=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by SA1PR09MB10444.namprd09.prod.outlook.com (2603:10b6:806:36e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Tue, 3 Mar
 2026 19:36:10 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 19:36:10 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 - Phase alignment between two USRPs
Thread-Index: AQHcq0PA+NVuGtyXv0OXF+mkoqm4Sw==
Date: Tue, 3 Mar 2026 19:36:10 +0000
Message-ID: 
 <SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|SA1PR09MB10444:EE_
x-ms-office365-filtering-correlation-id: 9a1bb372-fe7e-4899-7961-08de795c1fab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|41320700013|1800799024|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 G/ivcOy8d6nupwahqG7nzaDDDuTqlVtM6GjMP+FZxHv3yfUPy8tCNYWm6YvpHsTcNXtVUJbIaTraxfgAZmZ4721i23HC4NFIMa/DVtxWTCIgUQX1S6dfrZC2op7HZ4sn8oKJNrzJklLcUf9slMFRIKCXIVVbQjHVCtATE9jeHOkcCprNXSC+O+zJGEwZY2SjYhPG+zQJvjZFwEICqBSvLeanVlVHWvH3tNFwMYeHIcLAszJwaGkCbaY21FmcVmrV3QUcO1KK1o7baY2mQkz9cMoBFA2OGrCj1Y/tyPG+Yl5z1XeJm0bk3tL9v0E72QNlG3RVDv73wAH479MVCxmbc7yVHpR3xOTnpgycesjJIKo7pZGGxH6WZDVeJay2whgzUB2KkLG/luCpWYexQMOZpiRGT967Hs0zzkFpEG92/BSSKHbEAIg8XO6Nv3GlTGuqGf1i3HFXAHX9W/s+lY34LguOX2GWlqqu0dXgOE2xlYmAabs1dPAjitbqw9MxNu9wnpQWFM5nYJH5UUes47oYnkhBOCCD9bwh4csHfmQboRXtLuhp+3MEP9OkLBiSCWksw6moWCBAYSEp4Q9svT5sfEvAzkI6kRUNhJyQhyC7cn1O2/oLd9lnuzfZsx9idckS2U6mwVGQEcPoKiDIUJT1xgavewHv7Da1gMOcva20Fo/NzbL+6MlgbJVoG9ISRqKgRpNdlPjV1g9F6qQO2sSGhizPWeMUwG8fRRhIMZXuv3Q7Hne3XetlrPRzGM44UkswdtT0zHisQ43aQqTfProYdACdPQ1vllvc+tqYJi8Jduc=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(41320700013)(1800799024)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GWqqr4In2mBmmr/2LaRVJ4/LeooKxspID3b0kYTlNs1U6BF21IFOR2btTo?=
 =?iso-8859-1?Q?JA8R7zZ0xL1/bmwS8Tg+Xmv1NdpGjx+7+XjuKTI8mF275U7bdu/hWjhTdG?=
 =?iso-8859-1?Q?7/F/EWV6vROaMC6LAFX6wTfwkTbTcOTNMSIARaJcYPQggZC2vYffrbZ7no?=
 =?iso-8859-1?Q?HpvCDaZUvORnmjb3hLbo2xZeXjZE+u31aX+VdFRkImhYJRdw4xnHoCJbIK?=
 =?iso-8859-1?Q?wUa8roQ2oFMWEydlPEuRJEUpq87XFFIZPMWk9gcRZbG8u99Xna/jptj5HY?=
 =?iso-8859-1?Q?wXlkABFKzcD7a2Z4K/vYo0u8E5Uorftl+pKokScPnuvIKZDB0jOVWAaFa3?=
 =?iso-8859-1?Q?7UB347MiqNWqKkXNT3NGurI+L3jZoWE2//YwVrDs/JVyyaZCklM5QAwjLA?=
 =?iso-8859-1?Q?G/C8ls4hhrWHUdm7GY674jguEH0b2tDKXTmMbLFhNXemHZ6hc0QneGRTVJ?=
 =?iso-8859-1?Q?otF4C+9bomf7AJdW6TblxmGbP3DE2gGhGWeOQQZx8LS1o6YfU77UeRxScw?=
 =?iso-8859-1?Q?0bdecJSUOIKswqTXE5RWOIapvzm9Qs2lGXxmHfaG2L5RlQQbYbbXS4yKTE?=
 =?iso-8859-1?Q?O4b+0NYjPL2SpgEMpLWLE7nm0MATT2BzLMQTO0SLyXfWR+zb/+1rl8Dbop?=
 =?iso-8859-1?Q?brB7fKoHnIxpJs3PRW/BsoZTf0bOneKN7BYSJ4a084vJelE41qQDykucN0?=
 =?iso-8859-1?Q?MzACaRqB/W1dyB67312Bl8W+ypOqh/mDl7h4jXcnH5daBYze2A6W1vCfu5?=
 =?iso-8859-1?Q?ebfLY1ZGSt49bFWVKFrUb/WeUSOQrdyF44UA6v0hekzqnnhiDaoA4niSy7?=
 =?iso-8859-1?Q?3ZQiLXoDm1UmI9ego7TBN/cJLEYfNPxzNhOdubtZZq8xWcqmmiXaLy6Nt+?=
 =?iso-8859-1?Q?p2WBLyUlt9wUb8t/wS9bzrKy4hmdPZUJsdZZDIfCpAmYjUie+TkA7wQA2P?=
 =?iso-8859-1?Q?MfUloiRwvFRnbyRzz6XhtOsOe7DICQ6U0ro7omj8VApWmipre3sJe3Xo7s?=
 =?iso-8859-1?Q?XjWlbJfEcpeE6nfps59p7hO+3Y7V/KacA3+v4+DxxUmGp8tUgWSoAtd3a3?=
 =?iso-8859-1?Q?NcNA2vEJisJNpe0QGAIdULYhfuPX5/kkrfm8lDhbzl4U8mzGicN/Ck4GLd?=
 =?iso-8859-1?Q?KO24LnV1HgYMeZ15tAoTIRJTJ2UXpU+KqlsfAKsja6gewDaJB+Ma3dJBk/?=
 =?iso-8859-1?Q?jUsagvL9oUP8M7X2jTtiZRO8lhUEhYtlkRfnN+45hYteuCaOpl8jepHpMC?=
 =?iso-8859-1?Q?Hk+o76q86rz1E4sVweC2v+CeLZGIYu3sUSz3m2w+Fmsxm8B/CTeGh89u4n?=
 =?iso-8859-1?Q?F96qyXyMxQvxQs74woJNpXsbtbvZ7ogliKuehbnIyNcLzA2eZxagi6qYpk?=
 =?iso-8859-1?Q?oucWfO4OtxmmsEfm0PfvLlE0C3RuiBMYyMScFltZz5ZqGZ3lfUjQiCHIzg?=
 =?iso-8859-1?Q?5YILrXbrMCALuvUaA5YejgebB3xWwyOrI663KGKCNnAAv3NiW4paxyzavo?=
 =?iso-8859-1?Q?ktGavK9ZLtxD7Vbs9aQSWMYWPc7YYA1EiKY1D0z42NJSaEBEkyQkvbslvW?=
 =?iso-8859-1?Q?BP0VkRKo5IFwrER2KWTzQMRU706La8AAJvxJAtCjyVqOUN8GI6N91gzblg?=
 =?iso-8859-1?Q?2+W/3IhemFx97BRQ27M4Igw8tnG09cGMJFS8d63Murg2eAUaS6fLWFSam2?=
 =?iso-8859-1?Q?ej2RCxNF7n7t5ycDRx8MxMXgnwrYzR2ciTTNZa6CYd1wU2KBQ3AvY78j3/?=
 =?iso-8859-1?Q?NlsPahSIp+FDZMxzgr0pKLf8G0FJFenYqhc2U91kQDdXau?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a1bb372-fe7e-4899-7961-08de795c1fab
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 19:36:10.8277
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB10444
Message-ID-Hash: MQ2HZ2CTVNV6YFCW2P6BXATAFSKHUIFA
X-Message-ID-Hash: MQ2HZ2CTVNV6YFCW2P6BXATAFSKHUIFA
X-MailFrom: prvs=5153118e6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 - Phase alignment between two USRPs
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TGREXT4B6BC34DLETBHQH5JFH4DP6XVJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8062935080937475023=="
X-Rspamd-Queue-Id: 4EBEB1F6225
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,SJ0PR09MB9126.namprd09.prod.outlook.com:mid]
X-Rspamd-Action: no action

--===============8062935080937475023==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FASJ0PR09MB9126namp_"

--_000_SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I have two X440 w/ X4_200 FPGA image.  I need to get consistent phase betwe=
en channels on USRP1 and USRP2 across multiple runs.  I must be doing somet=
hing wrong because I observe consistent phase between channels on any ONE U=
SRP, but not across two.  The phase appears to be random between the two on=
 each run.

Here's my setup:

  *
Common 10 MHz and 1 PPS
  *
Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_addr0=3D192.168.1.10,=
addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_addr1=3D192.168.1.20,=
time_source=3Dexternal,clock_source=3Dexternal
  *
I modified the 'stock' rx_samples_to_file as follows:
     *
Usrp->set_time_next_pps(uhd::time_spec_t(0.0));
std::this_thread::sleep_for(std::chrono::milliseconds(1000));
     *
usrp->set_command_time(uhd::time_spec_t(COMMAND_START_S, 0));
// Set the rate, freq, gain, etc
std::this_thread::sleep_for(std::chrono::milliseconds(COMMAND_START_S * 100=
0));
usrp->clear_command_time();
     *
Each streamer is created in a separate thread
     *
    stream_cmd.stream_now =3D false;
    // Time was reset to zero before thread was created
    stream_cmd.time_spec  =3D uhd::time_spec_t(STREAM_START_S, 0);
    rx_stream->issue_stream_cmd(stream_cmd);

What am I missing?  I assume commands apply to both USRPs since I create a =
multi_usrp.  Do I need to explicitly specify the motherboard for some of th=
e commands?


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FASJ0PR09MB9126namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I have two X440 w/ X4_200 FPGA image.&nbsp; I need to get consistent phase =
between channels on USRP1 and USRP2 across multiple runs.&nbsp; I must be d=
oing something wrong because I observe consistent phase between channels on=
 any ONE USRP, but not across two.&nbsp; The phase
 appears to be random between the two on each run.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Here's my setup:</div>
<ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: disc;" d=
ata-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;unorde=
redStyleType&quot;:1}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Common 10 MHz and 1 PPS=
</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation">Addr0=3D192.168.10.2,second_addr0=3D192.168.11.2=
,mgmt_addr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2=
,mgmt_addr1=3D192.168.1.20,time_source=3Dexternal,clock_source=3Dexternal</=
div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">I modified the 'stock' =
rx_samples_to_file as follows:</div>
</li><ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: cir=
cle;" data-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:true}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">
<div style=3D"line-height: 19px;" class=3D"elementToProof">Usrp-&gt;set_tim=
e_next_pps(uhd::time_spec_t(0.0));</div>
<div class=3D"elementToProof">
<div style=3D"line-height: 19px;" class=3D"elementToProof">std::this_thread=
::sleep_for(std::chrono::milliseconds(1000));</div>
</div>
</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">
<div style=3D"line-height: 19px;" class=3D"elementToProof">usrp-&gt;set_com=
mand_time(uhd::time_spec_t(COMMAND_START_S, 0));</div>
<div style=3D"line-height: 19px;" class=3D"elementToProof">// Set the rate,=
 freq, gain, etc</div>
<div class=3D"elementToProof">
<div style=3D"line-height: 19px;" class=3D"elementToProof">std::this_thread=
::sleep_for(std::chrono::milliseconds(COMMAND_START_S * 1000));</div>
<div style=3D"line-height: 19px;" class=3D"elementToProof">usrp-&gt;clear_c=
ommand_time();</div>
</div>
</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Each streamer is create=
d in a separate thread</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">
<div style=3D"line-height: 19px;" class=3D"elementToProof">&nbsp; &nbsp; st=
ream_cmd.stream_now =3D false;</div>
<div style=3D"line-height: 19px;" class=3D"elementToProof">&nbsp; &nbsp; //=
 Time was reset to zero before thread was created</div>
<div style=3D"line-height: 19px;" class=3D"elementToProof">&nbsp; &nbsp; st=
ream_cmd.time_spec&nbsp; =3D uhd::time_spec_t(STREAM_START_S, 0);</div>
<div style=3D"line-height: 19px;" class=3D"elementToProof">&nbsp; &nbsp; rx=
_stream-&gt;issue_stream_cmd(stream_cmd);</div>
</div>
</li></ul>
</ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
What am I missing?&nbsp; I assume commands apply to both USRPs since I crea=
te a multi_usrp.&nbsp; Do I need to explicitly specify the motherboard for =
some of the commands?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div class=3D"elementToProof" id=3D"Signature">
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

--_000_SJ0PR09MB9126F8AA5D78227FFCE1A9CCEC7FASJ0PR09MB9126namp_--

--===============8062935080937475023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8062935080937475023==--
