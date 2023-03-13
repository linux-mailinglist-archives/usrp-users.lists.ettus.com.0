Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 879E16B7B13
	for <lists+usrp-users@lfdr.de>; Mon, 13 Mar 2023 15:52:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E446B384516
	for <lists+usrp-users@lfdr.de>; Mon, 13 Mar 2023 10:52:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678719156; bh=I/wFVYN+Z9BqxR3MjXefNbg6Q5dKYDFuha7aHKSPfXQ=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=LeM7X0SRsfzCOjG7rIt6bj2+1e1CtgKqdUAYWXOH5WDmldoxRMuZV/u1rKInT5dbs
	 vH/Qo4oUpszpBJPLGnDNnEBMjz/ZXhPLWzaF/few4RrmxXTay859P32ings+qN/8ez
	 xr4O/kiRvCtIHHobA1PKbP0xGAHbKs2pP2FYLjUr+ykdFotM2mTTZu1mByd3mj5Mmb
	 +bzWvjZsh/KI4JwyFZyo0HpwZqBkTfCLvuP57enBCH+nOrD7lVyJzQ0QwfGywR4bO0
	 GYtz9+lL8NU2iaHAmNJuMBy/P4RKWAPZnYWEAhwYJKOjNSHOCLa3kw3LLeiwmdWIsj
	 JivA6eKF3v+Ug==
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2041.outbound.protection.outlook.com [40.107.92.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 63D16380BB2
	for <usrp-users@lists.ettus.com>; Mon, 13 Mar 2023 10:51:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=msu.edu header.i=@msu.edu header.b="omssa0YQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDjtOm6ijVENHGgwVsMueP62Y429SZcBDxwpZsnAF3QCy76iVJ6UG7VUo/xUEMc/OhyezztsHGhEftG98qlUGPkTzEREJOLUV21hiFbFS0GcJI4vMecsMxpBXCQq5fgl0XjJbRCXgs6cR6k2O47FmkU3skIFBL5monm64KX8thB2Sv7XJL46apvWqQ7bd/UIKSqnNYrxOWNW1KchLIssJuKH8LZUTHEsXHXgpkvVMKk9leuOZR5delvxBOJYxZZmLa8xWB68tG+wbg7zR5LTmnAENG2ujCvj/q6aljgaphbmG2d3+cvJXJoSPz6knWG/bkqoVQshyb5N9Z/QxjVAcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dc19O+EBR5yURHqQGmlJQ2o/rRookX1tOFmnjZz2eZM=;
 b=EJic4N92+EkUJw8vzIL5MytPR9dH6yq82E4B1Ontgw0JCfqpLltdBK7PqDTQ6RPdT6Ps5GtuUjhi7Rh0LpVnhJ7oq5cDfVDe+NNUp4cY9tndCDGuPJ2VjjopCVNbdY+Eot0umKA2Es52CmMh9ZJAFIJVw7n7DtlbdGlyNidkljxPdVlq/IG1c7UM/DjKPk4HDPHyEoE57QBBfPJg6UrcH7MDSykNebk4C19HxDA9YVr+KDAWuYvoxVmJ12ksjzzYjZswq4gHmhJcNxBsykGixnUnJA9dsSsWVpbGnUXwJALcBdL4/q3V16+A5WfcbAuxW4vB/FIoXMBJyR5pdMthIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=msu.edu; dmarc=pass action=none header.from=msu.edu; dkim=pass
 header.d=msu.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msu.edu; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dc19O+EBR5yURHqQGmlJQ2o/rRookX1tOFmnjZz2eZM=;
 b=omssa0YQv4tagIBNIZDu4B19QRGaTgvL9F5Pe5cOKWJk3tv7lTRN+yOGopHOaDOlee5uGz/R/0jNZGe9xTDiUTh2EaSNxFW0NXo5b4kKYQz8/YXj3lblcly9nC8DgZ3ePrJyyOL/02wjtNBn2EE9mrBYIwvajcLZ985+EO+thbQ=
Received: from CH0PR12MB5370.namprd12.prod.outlook.com (2603:10b6:610:d5::15)
 by BL3PR12MB6451.namprd12.prod.outlook.com (2603:10b6:208:3ba::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.26; Mon, 13 Mar
 2023 14:51:46 +0000
Received: from CH0PR12MB5370.namprd12.prod.outlook.com
 ([fe80::6555:1b2d:350a:e76c]) by CH0PR12MB5370.namprd12.prod.outlook.com
 ([fe80::6555:1b2d:350a:e76c%9]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 14:51:46 +0000
From: "Wolff, Marcus" <wolffma1@msu.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: TX Channel Out of Range
Thread-Index: AQHZVbsA5nl77KJzFUmXlWMoeE+Kcg==
Date: Mon, 13 Mar 2023 14:51:46 +0000
Message-ID: 
 <CH0PR12MB53704F6625BA863EEFF0953782B99@CH0PR12MB5370.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=msu.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR12MB5370:EE_|BL3PR12MB6451:EE_
x-ms-office365-filtering-correlation-id: b4794701-c502-48ab-3e82-08db23d277eb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 r/sM65JleXz6U3qTX/ezWi2oCOKWQXimpJIUJrzlMxuzeQ1K3N9/RtiloiD2dgYUWNfTzmrcBeKziR5zADp1BUyiP3CWQW8giWUmnELCB1Wi8Utiq/n/7ivmecBvo8JrMKVjN9hPT+YeGB/5dolE9ndnvARkRtPV96L7jAuUeZjudGiMS+oNSD2QT5TYF6VQGMGm2vtv4P1n3ZnzlorRngHm2L6yKjV9Y7JT+ND8WdlY8s/N//vz8xMXczgh9anGCNE1XKBkDRY/Dz+uUcp3Sc5fb7cHmhPkEbhEDRHh53/QGsFzmqJn4JAZHxL261NYtetshTKAp+3K6TceyszVK+EZqwz2svgQuRWhT8NmIPKFQg3XLzvnr5Gm24dD83gLPvr9fHiPLVpSfFb5qNfTTOejFWlDo+7NFqUYT7UNB55kI0On6ZF3efq7JoPtn/ikY87K8nKOmWWQkFu4IKjrZ8yfB+L7fm26+ze+rOqz01xwzZMGCb9ttT2Th5UVeIyQbal0TyfR2jBXUy4cMNeck7pbeUD1wyYhrIxP8BBTjJ76zMQ4KqVusEZiQzfqXHgIpnLrSXYT/lfdw+eCUPJVmWcvSuQbhR7YcWQcJxgyumpatWDwOabWTfapzADKthztKW1nLG2zX5w0qZBcqvneRAXDMFpDd4wdGGUHHvxzuIUcspv4LT1ix9W1mlY+7uqdJbAq6jphBDDrUXuw/V6ewA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR12MB5370.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199018)(19627405001)(8936002)(52536014)(66476007)(66446008)(76116006)(5660300002)(64756008)(66946007)(2906002)(6916009)(41300700001)(8676002)(316002)(478600001)(7696005)(786003)(71200400001)(66556008)(6506007)(75432002)(26005)(55016003)(86362001)(122000001)(38100700002)(38070700005)(33656002)(558084003)(186003)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?h3zv0+0MfCAEYGk/jhC5fhM4k0hAon1GtCK+O+5O8a0rk2ACSg/tZZM9xo?=
 =?iso-8859-1?Q?m8gi3DV5gsGdMtRomsmmAvXMKObKLk/p4+44+Qydb+Q849BDIjnxIexLSH?=
 =?iso-8859-1?Q?kZ0f1Snqwm17mod9hS1OOTIDeFFzGuvI9x/kCbp5U23oHNhIJIRlg0RFqD?=
 =?iso-8859-1?Q?gB8rJUtCKpWiJic9Oj/7drbrFL6oQYxO64vCWtFdcQcWxWX6YyRQxHdp7o?=
 =?iso-8859-1?Q?s+/zCBxPV7GY6Kx0icCgViHo4QRnY5K9Ch5yzNl51SINWlrqvU4BfUa6oz?=
 =?iso-8859-1?Q?euN4lHl+x6iY5M+Ffw9z4YI5rzWJOeXRm15ldTqmD9kfLcwBXGswK0wR1a?=
 =?iso-8859-1?Q?CbWghzMPf6Cs5DmKWujFYSXRu0ITCy0ADqUjV41y4GfMGSqsItOlN2tVB5?=
 =?iso-8859-1?Q?b/95+4NAZDu5tUOljRKAXZp0VJS3z8JXjeTr/tH444Vr3jNzvCVQVDkN2q?=
 =?iso-8859-1?Q?JIw4KEwa3Q9b1PtPDymzFAnvDCmpL4MZNsd7k5mPpBZkQvI5uGpfTucfu9?=
 =?iso-8859-1?Q?QTDdd9ScgjLHWVACY/wmY7zoQ7CKwHk5bdt9N1p2sKSzK61ghwa0M0A4eD?=
 =?iso-8859-1?Q?7aIzn1uLHx6m+qSZcNGz8xOnTaJtNtUjKnl5rW3nTIm/2F7gt+BtZvWG+X?=
 =?iso-8859-1?Q?7TYsoLBS+DcqUPQ5I0qpB3ivSZIj8Juag7OBc4d9oWuJH/R7apuG7Aj6Sm?=
 =?iso-8859-1?Q?phsnqpUCFzoJT2S89eLzbuaZAS0iy5BcTyrlY4f2hDBfQMFE5tnnWewgXS?=
 =?iso-8859-1?Q?7+PUKto/TmEg7ANWrdpHvu3SoqjiDJmBBA7nnlCBXuQ5fnzU3AnRxupjvH?=
 =?iso-8859-1?Q?vTnxpvI5RiA0hmvP9oUXj6n8ZdP99t7XH/y3UWUcQw5Y/ssp9IvOSV/OWX?=
 =?iso-8859-1?Q?qCyBStkIqsOKAn3tNbNMi+HW0Huf+LykZKYVzufC+sNXaE/1LaHvlcw8ct?=
 =?iso-8859-1?Q?OIRdzLWfcHQEISuRMIom/QjThS6Tw/WWvkP2gN/wKffQNadMlpRcaG5brX?=
 =?iso-8859-1?Q?3+OqZeWrJAgFhyxmGVECdI6NcCOt4kgIXYJjLn8mNL+aQmzeEsmm6c/Yfv?=
 =?iso-8859-1?Q?iWUMyfj6ixx/IYg9Vg81jhNA2JkCe1A/alKb6UfpJ1tZ8gAbZiRCBx4ZAz?=
 =?iso-8859-1?Q?nG7ELHxc5IVPkn13Nr+gDvHXFjckbnGsUAtiO9XljdvVM8hLHk3+7Qzapd?=
 =?iso-8859-1?Q?z+pBL6SBQYFQDzjZzq/osXwiJ5ez/iMRjch/a2k2+3VLKcmmuQkpXnwoq5?=
 =?iso-8859-1?Q?ZlSMXHbMzjUa/wGfsj41SvQEfXqqhKLBRtcP39RJ+jCXMwIf3Xoxuizj9H?=
 =?iso-8859-1?Q?w6WVux9AW6PfDNKoHf1gnYwzffCt9UrwAjRuK1C82VhMq4Fz3Jur/Z0YOS?=
 =?iso-8859-1?Q?WY1JMU/bCzCYuFCVKRJYBeaUucuoUVsa96CPYzwSaGhbmu7SFioYBWHJkX?=
 =?iso-8859-1?Q?mya2XiHtIR5ae0M2MncaNsZxxBaii7WzqnyzozQEzLHdmCqstHGGeBSG1E?=
 =?iso-8859-1?Q?xjN4pTjWLOT1hbUtOQ8owHEopysoB/5TIEylmYcVer4vqkS0PKpaZVFWO0?=
 =?iso-8859-1?Q?61MI+psLn3Sh5s5Zh4yMwN3x+RWYu+Ajqe9poCWXQODLElA1rOQDxeEvzi?=
 =?iso-8859-1?Q?OWnPcDstAV6+I=3D?=
MIME-Version: 1.0
X-OriginatorOrg: msu.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR12MB5370.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4794701-c502-48ab-3e82-08db23d277eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 14:51:46.4754
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22177130-642f-41d9-9211-74237ad5687d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2KXlrrk91ctU2bsDL5sfTIeRSnD3N5SZ35xtMzJRxZ1cC+AdETy4uxDjoN+yfNLRu1cw1SqupqLTtpBRxSjZzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6451
Message-ID-Hash: FYYV7W5OC3MOWQG7VM65365F7XFYRDRK
X-Message-ID-Hash: FYYV7W5OC3MOWQG7VM65365F7XFYRDRK
X-MailFrom: wolffma1@msu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TX Channel Out of Range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5BDHE3EAATUHR75MY3BAEI25ZY7KXG3L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1808058672221953558=="

--===============1808058672221953558==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR12MB53704F6625BA863EEFF0953782B99CH0PR12MB5370namp_"

--_000_CH0PR12MB53704F6625BA863EEFF0953782B99CH0PR12MB5370namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We are trying to run a test Python script generated from GNU Radio using B2=
10s, but am facing the following error:

"TX channel 2 our of range for configured TX frontends"

If anyone can provide some insight into this error, it would be appreciated=
. Thank you!

Best,
Marcus


--_000_CH0PR12MB53704F6625BA863EEFF0953782B99CH0PR12MB5370namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
We are trying to run a test Python script generated from GNU Radio using B2=
10s, but am facing the following error:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<i><br>
</i></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<i>&quot;TX channel 2 our of range for configured TX frontends&quot;</i></d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
If anyone can provide some insight into this error, it would be appreciated=
. Thank you!</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
Best,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb=
(255, 255, 255);">
Marcus<br>
</div>
<div class=3D"elementToProof">
<div id=3D"Signature">
<div>
<div class=3D"WordSection1" style=3D"page: WordSection1;">
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
&quot;Calibri&quot;, sans-serif;">
<o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR12MB53704F6625BA863EEFF0953782B99CH0PR12MB5370namp_--

--===============1808058672221953558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1808058672221953558==--
