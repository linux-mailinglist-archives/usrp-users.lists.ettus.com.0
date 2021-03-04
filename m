Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5E532DB8E
	for <lists+usrp-users@lfdr.de>; Thu,  4 Mar 2021 22:09:30 +0100 (CET)
Received: from [::1] (port=39468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lHvDq-0001oW-Vp; Thu, 04 Mar 2021 16:09:26 -0500
Received: from mail-co1nam11olkn2025.outbound.protection.outlook.com
 ([40.92.18.25]:2401 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1lHvDn-0001hd-Ml
 for usrp-users@lists.ettus.com; Thu, 04 Mar 2021 16:09:23 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODbRQe06ff/lF3FYK03vsIXn0HcWi16PKTVAZSAJ5dAjXtnOuC8OjX7fcGLN7ife+9o8dj2tQwlPTMPcSx4l0bw0mA87QhdgN7FszogpG7JV4A+JV/i646coupz32Uusq4S1Xsxkp7e8MWiZB3ZGcm5/kOqpGmzxTfELRP4Zo7RSAqz0ZB6e5mRMVYpV/IhzLsC6/Qz6GdUJaIxeMy9FeBAOqGPLXyhp8aTmO4909p/c6Lenc1dIBaLGkdAfWF/kZ8Cv32c8RfDwxnQz9hJBseH7SeNj4c8UkRnJNhSmS/CVN/TwCM3XRtxXIRs9WRTIXlv26/rkZ9qyv4JLauOudA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UI8d04wBr43WosbfBJbBU8gk4lF4Hg9k3bxfMn4KocM=;
 b=GEMj79052uj4M/3KpMf0yMefEO779/8JzOPTjCpSUS1e8We6+rc04dcaHsdKUdeqAhYElGeCqzoTPJDF3fR6mrk0/GKfxU+O482N21P7/rXZKxDeuqjgUPwxsFwtzndm1BayiKX1L4PRhbmlXRqe+jwDWEN8TRKIfSneQHbKTCKADu4qcSvwxMuoWDf0/ygUh/YOQgdXLwDUt337PeaJF1dunKrvbbEqvxfHjMc/bST1ovUdjgMeFc2fDRDclFk3voT5kzG6KczP6oByj1xatRSOJkMlTOt9+60Az0lOQ8ka5OIawkhF3MYwhaG1+Z/0BCplo7z7sf1sNcGKz/UyeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UI8d04wBr43WosbfBJbBU8gk4lF4Hg9k3bxfMn4KocM=;
 b=ndcYp3zMT4NGFuYCp5cIdhKkVUhZmu6OUq4fq2etmmOSIMPp4FVBoMW6tNXhlA64whVycIgVmb7fYjTaQfY+evF5JBnRb3mSLxeQFBEYlJ5FU93gRCVjcxp/pN0UvcxzqXWpBdR5YwgI26OQaZCQRd04qbU5DLD7P46iG/gEfT/YaXtQkdm36eHrG5ph7Vu8XfaE27fdKzT+qbcReONK/N15VjQwD3X3IF2OGBjbegGYPzSDqNzXRa/WY9I1q8sSnlTIZ5qyPvLTyid/EpOdtuVN6RLv8gx1V32oMN0s4D8gBbDJd3US42kTcQ+1OnTMQNgfwQqM6L0m7GV1kJnRAA==
Received: from DM6NAM11FT049.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::47) by
 DM6NAM11HT004.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::415)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Thu, 4 Mar
 2021 21:08:42 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 (2a01:111:e400:fc4d::4b) by DM6NAM11FT049.mail.protection.outlook.com
 (2a01:111:e400:fc4d::188) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend
 Transport; Thu, 4 Mar 2021 21:08:42 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::2da4:eb7e:cc30:8f3f]) by SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::2da4:eb7e:cc30:8f3f%6]) with mapi id 15.20.3890.029; Thu, 4 Mar 2021
 21:08:41 +0000
To: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Thread-Topic: Current Recommended UHD RFNoC Versions?
Thread-Index: AQHXETlhxzHljkG1xEq4YYuaEkdWBg==
Date: Thu, 4 Mar 2021 21:08:41 +0000
Message-ID: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F3BA6CDD82BD8CC604BE488FA082D844A4D118FF44DD29B2FC46D1611C58820B;
 UpperCasedChecksum:BA6587485CC6480E234B91507305BD9D2C8BE8F8A5D853206427223A07ADC209;
 SizeAsReceived:6655; Count:41
x-tmn: [DUPTyhJlodFoQusnF/tj9oCqKePHZ7g9]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b5c8d2fe-3bb9-40ed-ac02-08d8df51b085
x-ms-traffictypediagnostic: DM6NAM11HT004:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +REm/PZazMEQprAjDzy+uzVAJovbm5Bnu79sI60oMbW0U5uYxSLBJ7FooXaNxKteo6m99moGihEFOZ6pe1q3sS0yrTLX3zI39AB87Frr0JyzQ9FhjKzuAknOTnH6c26kZL+qtuZgUIFGsZhEe+OAlvycJQzV9nyqFDblsyr+4EK+SsXuABXKQkm/Ih8QEI2deN0GvSLEHyztfWjlRhQjkDgGP1YooGrj6g3ujVZXSYZx64S3KNAC2QAChr2hAETSNt7WErbVVFst+fJ09xf71WhTd6ebJ4rAW5Sr3Z3fZLIUtVl75xK+2UuM4KvAK86S62hEl9r5iNJbz3qWXbP4sIVEj/+4pqB64QHKjJ//0m8kRY2ioHxAORPKb54dlVKY15QZgFa5E85SvUtGyj0iGQ==
x-ms-exchange-antispam-messagedata: khXZfSZNMNaiXcc1rUQPbY39Tn1eDCbC7GCK/EcbgD1jqGuzG9ZbeSXipPfcRqaFo5di2KPQQra/AvCtDQJzq5CZVga2juZ/bptEVQ64iBR4u//+7w7rElEeEw/2Ovc5c9AeY+LWMMPXpX85pN08rA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT049.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b5c8d2fe-3bb9-40ed-ac02-08d8df51b085
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2021 21:08:41.8771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT004
Subject: [USRP-users] Current Recommended UHD RFNoC Versions?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============6647188841231557354=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6647188841231557354==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979SN6PR1901MB4688_"

--_000_SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979SN6PR1901MB4688_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm getting ready to help someone install code and I'm seeing conflicting t=
hings regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC deve=
lopment.  They are going to use an N310 and I've been using maint-3.7 for q=
uite a while.

Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7 of G=
NURadio, and master for gr-ettus?  Or is there some later, stable recommend=
ations?

Sorry if there was any recent related posts, but I didn't find any.

Thanks,
Jeff

--_000_SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979SN6PR1901MB4688_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'm getting ready to help someone install code and I'm seeing conflicting t=
hings regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC deve=
lopment.&nbsp; They are going to use an N310 and I've been using maint-3.7 =
for quite a while.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7 of G=
NURadio, and master for gr-ettus?&nbsp; Or is there some later, stable reco=
mmendations?<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Sorry if there was any recent related posts, but I didn't find any.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
</body>
</html>

--_000_SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979SN6PR1901MB4688_--


--===============6647188841231557354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6647188841231557354==--

