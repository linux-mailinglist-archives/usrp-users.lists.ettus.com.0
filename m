Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BE919003D
	for <lists+usrp-users@lfdr.de>; Mon, 23 Mar 2020 22:27:19 +0100 (CET)
Received: from [::1] (port=34764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGUbJ-0006oz-Vx; Mon, 23 Mar 2020 17:27:13 -0400
Received: from smtpvbsrv1.mitre.org ([198.49.146.234]:38436)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <jplong@mitre.org>) id 1jGUbG-0006jW-MG
 for usrp-users@lists.ettus.com; Mon, 23 Mar 2020 17:27:10 -0400
Received: from smtpvbsrv1.mitre.org (localhost.localdomain [127.0.0.1])
 by localhost (Postfix) with SMTP id 44802332010
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 17:26:30 -0400 (EDT)
Received: from smtprhbv1.mitre.org (unknown [129.83.19.196])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by smtpvbsrv1.mitre.org (Postfix) with ESMTPS id 3B15633200B
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 17:26:30 -0400 (EDT)
Received: from mbfesmtp-mgt.mitre.org (unknown [198.49.146.235])
 by smtprhbv1.mitre.org (Postfix) with ESMTP id 2EE1293646D
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 17:26:30 -0400 (EDT)
Received: by mbfesmtp-mgt.mitre.org (Postfix, from userid 600)
 id 48mS9y1DRhzlbL; Mon, 23 Mar 2020 21:25:53 +0000 (UTC)
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
 (mail-bl2gcc02lp2103.outbound.protection.outlook.com [104.47.64.103])
 by mbfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 48mS9B1pwFzlYj
 for <usrp-users@lists.ettus.com>; Mon, 23 Mar 2020 21:25:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kaCvu6zVgsMVOdWT5Q2X5SG/2tJPV/cz6t+tiherZ2KjQcQvaT0mJ4nciz4UevLLvaovNaHl7rBmk4zxmTVzH71rfsqdQxvk+ah4J1/8PFYDeNwC3S4BtiYz0yD4p3X4s2AD7akmPVGc7f8Z5svruGJvKMYthWLclJFehgiwRTRQb9D6faS/A2aEpMJSIpqHheRvdqVhHPdJumHe7HwYURmFB5UVWOqlFQKfyE0ztFzremutD4uIN4ZfrB/cux/89UJrm82EP8PvvzLhgPr6xJL1tNqa3ANYw59bS6wx/1VKBmIm8FOgcYCkeZsC4+z4oK3RPCg1+tW1eJG1VdBXPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UIaA2KsLn4g0qgr8zyha1N0NkQ0rj1EPb3dAs7tT7RQ=;
 b=HyuZgPTzqbHGr8JFcDGYAk0Qw+dxrNOa1Vtx8ui6g+ArEp1fN0KTf+V0QeEpLmmrBDfOk0qPsQlfsewuuTm3BCuCkx31KrJi0Ubh4EKIhUGvoli6S7T8v2NWO2oPZox+OpkMXbIhQzLSuwrjEvMA0kAqY39MTHGATvPvAbBv9u8nSBnt4YSPuBhYyEZ4yzEe2b3afMKx6mgdqxvjWD6PH2VKyjWsyR2MKDFO+qMyVtWBLE3kZAuNGS9sZbX9rZPGbCjGcNuhx5NwSn3AfKM3QRU+xZWOpnRqerLZW2o6AANQuiMFni/uhSliYFq6VMBy/r+OEe8NPh/QPvgrd8whzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from MN2PR09MB4077.namprd09.prod.outlook.com (2603:10b6:208:1b8::12)
 by MN2PR09MB4763.namprd09.prod.outlook.com (2603:10b6:208:216::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Mon, 23 Mar
 2020 21:25:49 +0000
Received: from MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::d011:291a:11f9:82df]) by MN2PR09MB4077.namprd09.prod.outlook.com
 ([fe80::d011:291a:11f9:82df%5]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 21:25:49 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320 GPS staying locked?
Thread-Index: AdYBWZ8OlJa3/75sRXGkEZMnb+p9og==
Date: Mon, 23 Mar 2020 21:25:49 +0000
Message-ID: <MN2PR09MB407777596E9014B53CBEC704D9F00@MN2PR09MB4077.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jplong@mitre.org; 
x-originating-ip: [192.160.51.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c686db39-3e18-4e17-51e2-08d7cf70c231
x-ms-traffictypediagnostic: MN2PR09MB4763:
x-microsoft-antispam-prvs: <MN2PR09MB4763F722B97B085819FCF725D9F00@MN2PR09MB4763.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(366004)(346002)(39860400002)(7696005)(5660300002)(6506007)(2906002)(4744005)(316002)(52536014)(81166006)(81156014)(8676002)(6916009)(478600001)(8936002)(71200400001)(26005)(9686003)(186003)(86362001)(55016002)(33656002)(64756008)(66476007)(76116006)(66946007)(66446008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR09MB4763;
 H:MN2PR09MB4077.namprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: mitre.org does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kZ2F/2kfQ8V7xwrYQtpg+O+rcUQQUdpZ9/NYcGjdRdQTks4crjqV6ZC7fgsDhKIeGic3bDCkFl0WJHGw94j7aeQlJA+80cx1UrvIcb57N49PzNJs0FaZlKMVKldnPOyeLxpPbtRl3U51c0mGXQZfjNbOiVWVAoAtt6TDCGGP9raBIlCdwWkABVuHEGD8KuW6eUdSR/3hFQua2kwRNjsAVqvvBr083jBg3xOxaNMnRYEtIvKqcI6EJl6DoleTENB+c5NT4IgGjP2SP6vpBCJ6FtOzW29tc7Z4CmtplfvKRzv6CXtjZqgAa0wmYwLA+Bs3QBBrSl3Li8f3qIZeIj52wQ0WXyOFs89MpvKpzWakUIFEqEeiURRX3tch1gOF0GJce7zJqpsZnnDlo5ArmrHVe2qqt9LQlr6Pa7ZyX7bev26aAwZytwGV6dzLpqojT2g5
x-ms-exchange-antispam-messagedata: nwKLS4/Mb7jAhAhvW5IWcjjz9yIr0sinkPm0VQcY5qaxwxKOCwECRv9I8prms7vnMVKgIp8IeWJch3bSfiXMLkRDbvQZ8NmjiaG7Cmj3tPnrrK+u1sZRprfKuNLf3ZJCI6b0vbjJMNH/GAxG4KlCUA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-Network-Message-Id: c686db39-3e18-4e17-51e2-08d7cf70c231
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 21:25:49.5474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DBfU7gXA/eu6WTQq1a/WgZCNte6OcMa8Jqk5KkZHi9U0I9CaNqx8xQzvkW6uNonuvmHJgufXBQdabc6NrFh+Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4763
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org;
 h=from:to:subject:date:message-id:content-type:mime-version; s=selector1;
 bh=UIaA2KsLn4g0qgr8zyha1N0NkQ0rj1EPb3dAs7tT7RQ=;
 b=fDJ39eXU2P6R3CW9hIDibzeaNjnHVUWY5DIZwWHJHx10klVElFsxMZXxz0m9j+lhp2eFo+E17Jtz3W+CFLhet8zSRGtOcpsc3gD+RahjAlyW5HgGZSs1XZbKM3lj+JGZeN2Pki2g7/pqIK2uiv9KmhAuZRdHKiY1wwKuPZgSk3Q=
Subject: [USRP-users] E320 GPS staying locked?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Long, Jeffrey P. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Long, Jeffrey P." <jplong@mitre.org>
Content-Type: multipart/mixed; boundary="===============5549708766449449539=="
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

--===============5549708766449449539==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR09MB407777596E9014B53CBEC704D9F00MN2PR09MB4077namp_"

--_000_MN2PR09MB407777596E9014B53CBEC704D9F00MN2PR09MB4077namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Has anyone had issues with the E320 GPS locking or staying locked? I have a=
 LabSat GNSS simulator that I am reliably able to get a E310, X310, and eve=
n a N310 to lock to however the E320 I just got will occasionally lock and =
then fall out almost immediately. I used mender to up it to 3.15LTS and eve=
rything else works pretty well. I run the e320bist on the gpsdo and it repo=
rts it mostly being unlocked but occasionally it will lock for a minute or =
so. When it does lock I can run the query gpsdo immediately after and it wi=
ll report locked but again it only lasts for a min or so.

Thanks
Jeff

--_000_MN2PR09MB407777596E9014B53CBEC704D9F00MN2PR09MB4077namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Has anyone had issues with the E320 GPS locking or s=
taying locked? I have a LabSat GNSS simulator that I am reliably able to ge=
t a E310, X310, and even a N310 to lock to however the E320 I just got will=
 occasionally lock and then fall out
 almost immediately. I used mender to up it to 3.15LTS and everything else =
works pretty well. I run the e320bist on the gpsdo and it reports it mostly=
 being unlocked but occasionally it will lock for a minute or so. When it d=
oes lock I can run the query gpsdo
 immediately after and it will report locked but again it only lasts for a =
min or so.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Jeff<o:p></o:p></p>
</div>
</body>
</html>

--_000_MN2PR09MB407777596E9014B53CBEC704D9F00MN2PR09MB4077namp_--


--===============5549708766449449539==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5549708766449449539==--

