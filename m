Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A7048E03E
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 23:25:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 43ADB384E3A
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jan 2022 17:25:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="HCBVbfUG";
	dkim-atps=neutral
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2064.outbound.protection.outlook.com [40.107.236.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D73E3848AA
	for <usrp-users@lists.ettus.com>; Thu, 13 Jan 2022 17:24:44 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZjsIrk0qlEuXogQriBZUsWKZddZeifdoCyDIdvRObGiMtHmkCx8l7S71Dn7IKrsZ18J8bth2lgO9q5zJo2xwHJ9yNvSabzGwQGiylMvOWK5ZSqqfy/8tyjXCHSjGs1i6hXkhH4AigCBYgk7EoMnG63s0Wd4Mn7JHG65L+c5Bm9aCTaVos/INKuOEeOVkCQ0mjjRADb2NInJcwX2g9SHhkpGhzv5Aoq5PaVLvkqJ+9kG6x0lbRuCNnkhWRy98V+/MVK+AdKd83YmgBRBSqtuOtbPrQnmYqpikQA8QRSS1kxMKkTOiqG84oyR+HZWA7TtRmwrOdCymB4ehQlz/M46x3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fkyLvwx65eUWOnf/+zOBZFF5Tkq6U1FV4UAI0RalfgU=;
 b=HY47C8sLtmk5HiylPS8J11wKQSCBVN3Y+kcRcJMmDnmDaS2k8QgP5sPD/Ag/ldqUr6x5pQ2joWHW2tfVxfJn7GHcrzF2kIqXGUngLfO8qAe6lIGW1NFfMcxyIP7+yuf1tRo73VujD6xbk5VA1oBCsrUzrvylm2zrhT0O5mJOXHWtxaB2OHTSUl2ODq/DXpXi1VG2M90uyzSWKGGvn0au3HiEtuG6VsdwJQ1l97JjSx5STO3N4ySTvu+eER1jFRsr2cjCl7otG2eH+T7ktAbdi0aGBF/It+K9vQZh2Qu+e1zrR3D7awgelhuWzGKU7o6q4Swz7gEq3ydc8Qn7qarolg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fkyLvwx65eUWOnf/+zOBZFF5Tkq6U1FV4UAI0RalfgU=;
 b=HCBVbfUGRAJmU0wDyeSKTpdm9hAJ5lkY79is+Pw2gCMkEYaM5Jz4KdQXl9dDPhD3e5HyG3SFRNoyAHJyTHEx4wUUCc/QQb4LueJGuzAU8TfOnWzdbzHq74wjrE746rE0aQySgvzGlmoECZzo+P4puPJrKxNiep7uqJod7tPvAKA=
Received: from BL3PR16MB4476.namprd16.prod.outlook.com (2603:10b6:208:347::22)
 by DM6PR16MB2427.namprd16.prod.outlook.com (2603:10b6:5:67::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Thu, 13 Jan
 2022 22:24:41 +0000
Received: from BL3PR16MB4476.namprd16.prod.outlook.com
 ([fe80::39fb:38b8:22a5:ad73]) by BL3PR16MB4476.namprd16.prod.outlook.com
 ([fe80::39fb:38b8:22a5:ad73%9]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 22:24:41 +0000
From: Michael Bassi <mbassi@srcaus.com>
To: USRP list <usrp-users@lists.ettus.com>
Thread-Topic: Retrieve USRP time
Thread-Index: AQHYCMlOI7t1FoYho0qCcekpu8miXQ==
Date: Thu, 13 Jan 2022 22:24:41 +0000
Message-ID: 
 <BL3PR16MB4476E7A5D8EFD323A338B19AB7539@BL3PR16MB4476.namprd16.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 44a262a7-d928-8353-a5f8-cd7513115b0f
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a49471c8-cb37-4038-c6e4-08d9d6e37e50
x-ms-traffictypediagnostic: DM6PR16MB2427:EE_
x-microsoft-antispam-prvs: 
 <DM6PR16MB2427328B03009F83F4024D90B7539@DM6PR16MB2427.namprd16.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mVsfpHGvhcsb1mwx2Cb7AMLusrN/SRSytgFcB4K2prQcvAZQ94ZPQEzt9mqBn7kyQberM/pwMz/Y6oo+2wk8aCHlm+NBai9cKike62PEnRUHXFJqzpwAjW9alsZTcMusz7bAtTjYEeWgDYd8sp65IjNeg6axle70ETSakYF9kEsA8hd0Vyx9mXWvUkBE0OdcfdZr8lWOxsXfp5opY7kf0aEsrcZS76wMZ8DDtu+u2I/YgS+um4jaTQwmRpOf6F04VezAi3FbQsUIRdR7BbFi4R/HmCf+ADgX8JLMtwPxcKRwpTVfsRuGHz9LUEiCz28IDXY1ND6m1WgD8dFrBpn/2T59njfdNUIeJRhHyyfG1hG8BZjQU0ksscPtrPSMe0X1cgGDBn/TJZmb4BAztU6cpGGm3uhhMenER7zCI3K3i/0eMC96krx6+1v2olGTsJH1kVpcwH3a+KuFsMsNRyT7Idxm6oLbS1LVbX8DHEKss/tUO1VJLUtz+bXrKRSBxZ+6rs/A20rfU/6N+ZCl1m5f9mDMYKgoKCGLVjzu0WZuHewYxrWn/g5y2ZTgHppGTxD6duq1hj4/xdKg2P+hs5cCHxbwTdXAG8KiyR9ALUvERIxmr4UiK62wSfDyOzP8aTUTZClgTm9xNBKfShwRz2nFcfGLHGo688zNiiPxoR1JDrVLh1WAF0dVf4WDDfKgsAbl+9pesY6E4IQhTdPuOwBoXlM31Tpeo2YYVRVWPCPiiCM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR16MB4476.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(346002)(366004)(376002)(136003)(396003)(66946007)(6506007)(8676002)(66476007)(66446008)(33656002)(76116006)(91956017)(64756008)(66556008)(9686003)(71200400001)(186003)(52536014)(7696005)(19627405001)(7116003)(5660300002)(26005)(3480700007)(55016003)(122000001)(83380400001)(86362001)(2906002)(508600001)(6916009)(316002)(8936002)(38100700002)(38070700005)(21314003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?x1jKNRbFPzl+KDH+M7lmqVo7gDxQ0bS+y9cD6QH3ES6XWoYVYq+I4WFFuG?=
 =?iso-8859-1?Q?u0vnBikB4b3LFIp6HYRpvWkTIhcE/+0PZ7/jBjmuZRfYuh4PfGFbL386qo?=
 =?iso-8859-1?Q?SWM4Ge/DsySy8+2xsq2/DqU5HnE18ARWTc+0yNz0WP3xrdat0jJIG+9eka?=
 =?iso-8859-1?Q?c+ZpSAR7HP1bHsOvvYUVZ8a1CVFtfQfw5vJA8WkArsy37YFrhmkjnmRuB9?=
 =?iso-8859-1?Q?Ksq+Qll4Krq+gBfvqQyOnFMDVw6KMWzNHps/oKyIGxCyTVBS1nQcsF7EZm?=
 =?iso-8859-1?Q?Urz8u2E7j+499sQjv4VDIzfTnRIuwXSnwKFCuldWgctkb2pjQk1tdQfA49?=
 =?iso-8859-1?Q?m1qKZq1CkqCVsvuy8hFNI95bY2U/QCUqbcAMaosEVF278fO7Bm9958frM3?=
 =?iso-8859-1?Q?GK5d7oYJGFpB0IIYRVbrdRQ4pnhqY15aQg4gthchQyGle6IEMILBTeXvHF?=
 =?iso-8859-1?Q?EO8rCIy//fuXcDSedHl8kDhZ7jw/arHEMx+SfPwXZqjkUKLzF52ZqpS05s?=
 =?iso-8859-1?Q?xGuTxG2mXMU7W6NS5J0FuTsd70gv/Di37qIkgWn/breH1tHQ+owMgepI6n?=
 =?iso-8859-1?Q?kVnfipiPBxhcPr/BQ3/7qcecikFPpYjD0HZfHNdZkkJ2U3/iC52JXxdh3A?=
 =?iso-8859-1?Q?iMc67ximLqh/M2gGG3pCV39oozbqaRz5r8QX5aW1TmD3QLSgQzXhlTxTTi?=
 =?iso-8859-1?Q?qy0//XbTMuGh33BOlJD+1QC1pa01b1+3J1qeinAyjZWhyM9JF0bM1E8f3t?=
 =?iso-8859-1?Q?VS7CqaNY31Q99EJ2zwmoAydaaJ4oE9XNuUTpQxgp1jMkRkoAKumlu7SKCd?=
 =?iso-8859-1?Q?Qyp/pNsBizXV9bQo4pt0iZouwyruyBymCIkZZEf2B2vyfx+5PjR6CRNbq2?=
 =?iso-8859-1?Q?rdfUOdZX5duIHicWSkuYS1P0z8esjUW4j6sUaKDL4fH3h6ns1jOweH5U2+?=
 =?iso-8859-1?Q?d9P5ng3rmbPczSdXR89iQDK6RXNOTYOG36bb8fIbKHU4edaPNrfcmlMcOD?=
 =?iso-8859-1?Q?BI8MpMh6DVG57nrQb+3kdfKGH7EkfX+BD/ZghC5LgFI/v8A26h1bZlG7CD?=
 =?iso-8859-1?Q?ddZmx3pcHM8i/P5eyGGkSuYsvzPmtqQaja21WY9/xbg5koGQMCGNAl96FZ?=
 =?iso-8859-1?Q?b716YDe19WYked9sls1wYlF7gjGYOfLvIvOOszSf6TQWtrf7qaT7aczn2p?=
 =?iso-8859-1?Q?ZHIKX+T0mqztMJOGLv5f7p9y5oh2/n0r4axFdWBVhLPZJzZ6KETVldI7uj?=
 =?iso-8859-1?Q?0A7reTM3cyul77liubfUOoVz6fy3KBrNmVKRjboz3KHcME6HQqvnYU1BKQ?=
 =?iso-8859-1?Q?FpUssQ9IDx2TngnEOvM1ePyGLt2KFX4WseJmQyYN36zhhZm+4NygyaQmye?=
 =?iso-8859-1?Q?8VuJWDd1vPm2xWCAbzCe3bqJG4xTcFIXty5RSg8YLoilFQXgMWOksxv8YA?=
 =?iso-8859-1?Q?rUOtkyOQB4lwmGr890mlaUfODOtkZxcouHDxDlffb3gYox3FIxtQcYHVIO?=
 =?iso-8859-1?Q?pXFUgvAIk+UrZH+dKEHpVZU4YzcEXz2eavo1jx3iL+kMsYBcpYLRR8Ho0L?=
 =?iso-8859-1?Q?hYURF0OlX1JqxRzinlUDdHzC8BUvkKsY6RmgiJLlPRwqePA5O5SvcUSwNg?=
 =?iso-8859-1?Q?xvkudVY74yJ3YV7h72bMEAl79odfdz+7ugH82HnP6xuOd0AYuVpdgiKA?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4476.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a49471c8-cb37-4038-c6e4-08d9d6e37e50
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2022 22:24:41.3060
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wUxumo5Q/oOM853mcG5Vko/QekSptST+gJa0H12OUWYBNLuebKCiiavSePGY8wIagNfU0ZEfdR9I1xPDumKTOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR16MB2427
Message-ID-Hash: RARNBGSOVJA6HHMKXZBYS3RFXAQTRUXT
X-Message-ID-Hash: RARNBGSOVJA6HHMKXZBYS3RFXAQTRUXT
X-MailFrom: mbassi@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Retrieve USRP time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y4HSGSKTJQ5CMWHFMKXJD6QGTVQX4ZGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6693457075097942690=="

--===============6693457075097942690==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_BL3PR16MB4476E7A5D8EFD323A338B19AB7539BL3PR16MB4476namp_"

--_000_BL3PR16MB4476E7A5D8EFD323A338B19AB7539BL3PR16MB4476namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm using GR3.9 with UHD4.1.0.1.
I have a flowgraph containing a UHD_USRP Source block, with Sync property s=
et to "PC Clock on Next PPS" so that the device time is synced to PC system=
 time on the next PPS.

I want to then, somewhat frequently, access the usrp time from within downs=
tream custom C++ blocks.

Options that I've considered:
1. From the custom c++ block - make another UHD USRP device instance (thoug=
h I don't think this is possible, as the device has already been allocated =
to the source block):
    uhd::device_addr_t deviceAddress("");
    uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(device=
Address);

2. From the custom c++ block - Just retrieve clock info from the device a b=
it like this (but it's too slow):
    uhd::device_addr_t dev;
    dev["addr"] =3D "192.168.XXX.XXX";
    uhd::usrp_clock::multi_usrp_clock::sptr clock =3D uhd::usrp_clock::mult=
i_usrp_clock::make(dev);
    std::cout << clock->get_time()

3. From the custom c++ block - Somehow access the already discovered usrp d=
evice from the UHD_USRP source block (not sure how to do this)

4. Copy and modify the usrp source code to send time as a stream tag along =
with each packet (seems like a lot of work!)
a. perhaps this could be achieved using the UHD_USRP Source block stream ar=
gs property - though would require mods to the .yml?

Thanks for your help!
Mike

--_000_BL3PR16MB4476E7A5D8EFD323A338B19AB7539BL3PR16MB4476namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
Hi all, <br>
<br>
I'm using GR3.9 with UHD4.1.0.1.<br>
I have a flowgraph containing a UHD_USRP Source block, with Sync property s=
et to &quot;PC Clock on Next PPS&quot; so that the device time is synced to=
 PC system time on the next PPS.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
I want to then, somewhat frequently, access the usrp time from within downs=
tream custom C++ blocks.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
Options that I've considered:<br>
1. From the custom c++ block - make another UHD USRP device instance (thoug=
h I don't think this is possible, as the device has already been allocated =
to the source block):<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
&nbsp;&nbsp;&nbsp; uhd::device_addr_t deviceAddress(&quot;&quot;);<br>
&nbsp; &nbsp; uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::m=
ake(deviceAddress);</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
2. From the custom c++ block - Just retrieve clock info from the device a b=
it like this (but it's too slow):
<br>
&nbsp; &nbsp; uhd::device_addr_t dev;
<div>&nbsp; &nbsp; dev[&quot;addr&quot;] =3D &quot;192.168.XXX.XXX&quot;;</=
div>
<div>&nbsp; &nbsp; uhd::usrp_clock::multi_usrp_clock::sptr clock =3D uhd::u=
srp_clock::multi_usrp_clock::make(dev);</div>
&nbsp; &nbsp; std::cout &lt;&lt; clock-&gt;get_time()</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
3. From the custom c++ block - Somehow access the already discovered usrp d=
evice from the UHD_USRP source block (not sure how to do this)</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
4. Copy and modify the usrp source code to send time as a stream tag along =
with each packet (seems like a lot of work!)</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
a. perhaps this could be achieved using the UHD_USRP Source block stream ar=
gs property - though would require mods to the .yml?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 11pt;=
 color: rgb(0, 0, 0);">
Thanks for your help!<br>
Mike<br>
</div>
</body>
</html>

--_000_BL3PR16MB4476E7A5D8EFD323A338B19AB7539BL3PR16MB4476namp_--

--===============6693457075097942690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6693457075097942690==--
