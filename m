Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9722AF328
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 15:11:02 +0100 (CET)
Received: from [::1] (port=48430 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcqpr-0001cR-TM; Wed, 11 Nov 2020 09:10:55 -0500
Received: from mailserver1a.caci.com ([204.194.77.24]:12051)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <prvs=5779b1060=william.brophy@caci.com>)
 id 1kcqpn-0001XK-BT
 for usrp-users@lists.ettus.com; Wed, 11 Nov 2020 09:10:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=caci.com; i=@caci.com; q=dns/txt; s=caci;
 t=1605103851; x=1636639851;
 h=from:to:subject:date:message-id:mime-version;
 bh=Onr5oU3ksOSqdz/RdCiBbaMTQScS7g24OAtHwhnJtRY=;
 b=q0LbcqbQPQNES6gODzoT/Xu01IDTn7npPQu/uNTGnW6fXPLuWU+KVsOw
 NiNxJbUrzk14q0O73YyWiNVphhJm0IyR71lP7ZKjVBPN7hQALuiPLrEd5
 tXzmPzXDAZAHvyanHfJCqv14lFXir/CeJqbOdwwTSN9k2KFHX+FeS6rrn
 IeudliFftcp2ASeP3ozb6Usoc9W7ZQnnz7o7bENROoIABe3CxSPtI68zj
 nhDYMPx8utBduGLG7fWColUW/SAmAylwPRygf4lIqnd76wuvZDuih5roC
 4aT7EyAZZ6lcXT+VFAoqHF+0te5flIfkmstJjD1j0G5O94h2znsTCnpwP A==;
IronPort-SDR: 90+UUpHlVrlx1WVZ2ntPmzf0mv1uNi3HMYZvRnTzjtzU2/hJiMs46qCnUa0TdZRSZVwLPVlALk
 9QUSurVja5dQ==
X-IronPort-AV: E=Sophos;i="5.77,469,1596513600"; d="scan'208,217";a="3001235"
Received: from cisexcasmb03-1a.caci.com ([10.201.50.155])
 by mailserver1a.caci.com with ESMTP/TLS/ECDHE-RSA-AES128-SHA256;
 11 Nov 2020 09:10:10 -0500
Received: from CISEXCASMB03-2A.caci.com (10.201.50.156) by
 CISEXCASMB03-1a.caci.com (10.201.50.155) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 11 Nov 2020 09:10:10 -0500
Received: from USG02-CY1-obe.outbound.protection.office365.us (10.201.136.40)
 by CISEXCASMB03-2A.caci.com (10.201.50.156) with Microsoft SMTP
 Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 11 Nov 2020 09:10:10 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=jtKzbpcIU8GTNORJdcsNfxeMM0GKHfO/hiuTEEXF0QYrhMzyxf7DRznJKdDBOkUBAHaQ72O1O9IXMoxRsP8AxtJIVPtYS5XlxoN9CavJP77TIDVONK69IJcXiDaX1K/HzDOK01nI5TPn6cWrpdfNa8HtifHYC7lbcaIaVMqHacYFhU2tcr78e7sOBv+4Dq+281u+nDKov/qOUcgS2WyZ5FXC+zVxtZG6fY8lIUPgpXZpPu1VdIRrOszl1uA+IXHGhhcP8XIoMrx8um1iN9ziwOhSM3xPQGcdeEF/PUtAUqCb4gOYLpDZqqsF7R0kXb6+aEvuyc6rwAyd15zvSYMwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Onr5oU3ksOSqdz/RdCiBbaMTQScS7g24OAtHwhnJtRY=;
 b=x5zy1+e/bZQOZ1tgz2Yi0v4OW8WgUSXFxlEmv0bJ9YKH4YsgB5pJfyEiT0l6husWD/bsJ45O/anf0A4gWRRnFoOZkVY2QL95s3bbghrpHDIvhlC9XZP5VtfiGq5/PsMEQAmG38SkcZ3lZrytB53qKpG9IW6bWUPUq+sxsIMX0lX5SDnFtRxLhbOr4EDzNF5e7pWrqCuuqFgPDukZVPiIDsKkrZPKXgT9ZUXcAY20mLDVnaTA9ySjUdJLsvDPbgQMIwPsruj0APHJvttzkaeYWmfd1M6+bLXBndXOuUouC/in7+cgo43vXwqOiEDIZgP/jJftY6sV3VbOToKftIIS8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caci.com; dmarc=pass action=none header.from=caci.com;
 dkim=pass header.d=caci.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caci.onmicrosoft.com; 
 s=selector1-caci-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Onr5oU3ksOSqdz/RdCiBbaMTQScS7g24OAtHwhnJtRY=;
 b=Oh7Yjfqq10WJSrGZvWe8kdXZzyoS9bo9GB3j+Xlz+gUrbeiMHJC0OmskwwRayK5Jg4re6znUgM47QOeN0SrPbFkwehlvvQ+R55ozCjimfFhhBi3LAW1gZ32HxWB9YYZRVKopuP+Pwx279ow37s69o3Nz5/wUq7Rjo4NaR/qfAiY=
Received: from CY1P110MB0424.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:402::17)
 by CY1P110MB0534.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:404::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Wed, 11 Nov
 2020 14:10:08 +0000
Received: from CY1P110MB0424.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8173:ceb9:773:5888]) by CY1P110MB0424.NAMP110.PROD.OUTLOOK.COM
 ([fe80::8173:ceb9:773:5888%10]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 14:10:08 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Networking performance in CentOs7 Docker container on Windows
Thread-Index: AQHWuDQqx8WQRc4KfUyGqOz/+y7/lw==
Date: Wed, 11 Nov 2020 14:10:08 +0000
Message-ID: <CY1P110MB042489AD323AC667E19D7341F6E80@CY1P110MB0424.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=caci.com;
x-originating-ip: [184.75.234.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 075c9c28-4c9d-4767-95ba-08d8864b7f03
x-ms-traffictypediagnostic: CY1P110MB0534:
x-microsoft-antispam-prvs: <CY1P110MB053427EA9CFB344840422A58F6E80@CY1P110MB0534.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY1P110MB0424.NAMP110.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(366004)(6916009)(8676002)(26005)(2906002)(33656002)(7696005)(6506007)(498600001)(4744005)(55016002)(186003)(86362001)(52536014)(5660300002)(19627405001)(66556008)(64756008)(66446008)(83380400001)(9686003)(76116006)(71200400001)(8936002)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY1P110MB0424.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 075c9c28-4c9d-4767-95ba-08d8864b7f03
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2020 14:10:08.2826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 74cf14f4-38e0-460b-9d96-c0a51cb4a55c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1P110MB0534
X-OriginatorOrg: caci.com
Subject: [USRP-users] Networking performance in CentOs7 Docker container on
 Windows
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
From: "Brophy, William A. - US via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Brophy, William A. - US" <william.brophy@caci.com>
Content-Type: multipart/mixed; boundary="===============8848045017497708577=="
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

--===============8848045017497708577==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P110MB042489AD323AC667E19D7341F6E80CY1P110MB0424NAMP_"

--_000_CY1P110MB042489AD323AC667E19D7341F6E80CY1P110MB0424NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am working on deploying software that uses the USRP N210 in a centos7 doc=
ker container on windows. However we are seeing poor networking performance=
, even with iperf. Does anyone have any experience with adjusting the netwo=
rking configuration options for the container and windows so that we can se=
e higher/better performance?

Thanks in advance
Will

________________________________

This electronic message contains information from CACI International Inc or=
 subsidiary companies, which may be company sensitive, proprietary, privile=
ged or otherwise protected from disclosure. The information is intended to =
be used solely by the recipient(s) named above. If you are not an intended =
recipient, be aware that any review, disclosure, copying, distribution or u=
se of this transmission or its contents is prohibited. If you have received=
 this transmission in error, please notify the sender immediately.

--_000_CY1P110MB042489AD323AC667E19D7341F6E80CY1P110MB0424NAMP_
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
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am working on deploying software that uses the USRP N210 in a centos7 doc=
ker container on windows. However we are seeing poor networking performance=
, even with iperf. Does anyone have any experience with adjusting the netwo=
rking configuration options for
 the container and windows so that we can see higher/better performance?</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks in advance</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Will<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
This electronic message contains information from CACI International Inc or=
 subsidiary companies, which may be company sensitive, proprietary, privile=
ged or otherwise protected from disclosure. The information is intended to =
be used solely by the recipient(s)
 named above. If you are not an intended recipient, be aware that any revie=
w, disclosure, copying, distribution or use of this transmission or its con=
tents is prohibited. If you have received this transmission in error, pleas=
e notify the sender immediately.<br>
</font>
</body>
</html>

--_000_CY1P110MB042489AD323AC667E19D7341F6E80CY1P110MB0424NAMP_--


--===============8848045017497708577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8848045017497708577==--

