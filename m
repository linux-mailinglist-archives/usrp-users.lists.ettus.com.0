Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0103B3E3
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2019 13:18:18 +0200 (CEST)
Received: from [::1] (port=51962 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haIJa-0003ai-Lx; Mon, 10 Jun 2019 07:18:14 -0400
Received: from otransport-16.outbound.emailsrv.net ([18.232.37.98]:34687)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1haIJW-0003Sn-Qv
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 07:18:10 -0400
Received: from ogate-2.outbound.emailservice.io (ip-10-4-2-5.ec2.internal
 [10.4.2.5])
 by otransport-16.outbound.emailsrv.net (Postfix) with ESMTPS id 50E1B61272;
 Mon, 10 Jun 2019 11:17:30 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam03lp2056.outbound.protection.outlook.com [104.47.41.56])
 by ogate-2.outbound.emailservice.io (Postfix) with ESMTPS id 06E3B1E0002;
 Mon, 10 Jun 2019 11:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector1-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=svqvG8SR62pqPb8G/g03UwlmtlknMbrCyy69UIhEihA=;
 b=oXRWMDi2x9UYaJMffS9utP9mlpBROlSQ3BcYC7r8NIgcbF4gF/O+J7MzQm2YnsDsSV/U8QyRTPH8tUICr6L2KaC7thvoILUaxdAoz6at5vg8V1tnMxEZokbABN7vyNfHyWipsBGypQEqFlY8NfKsXP5JIvMXKzzJaXM7CUFQETA=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.10.158) by
 BL0SPR01MB03.namprd12.prod.outlook.com (52.132.24.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 11:17:26 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::dc23:15da:4ad9:4ca0%4]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 11:17:26 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] E320 hogging the network
Thread-Index: AQHVHSVQvR0MNdahwUyWSEU1EgcN/qaQS+aAgAALXZaAAAMIAIAAAXc7gAAC34CAAABakIAABWsAgAAAWPaAACe7MYAAKumAgAQIp1c=
Date: Mon, 10 Jun 2019 11:17:26 +0000
Message-ID: <BL0PR12MB234057AA40194AD79592AB33AF130@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>,
 <BL0PR12MB2340EF121686FC31593EC856AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <BL0PR12MB23408E4536DA1297A3D96350AF100@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <5CFAD87B.209@gmail.com>
In-Reply-To: <5CFAD87B.209@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3b9ca97-62e8-4888-101e-08d6ed9537d7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0SPR01MB03; 
x-ms-traffictypediagnostic: BL0SPR01MB03:
x-microsoft-antispam-prvs: <BL0SPR01MB030504C2F0343A73BDD9C2AF130@BL0SPR01MB03.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(376002)(366004)(39830400003)(396003)(189003)(199004)(4326008)(86362001)(11346002)(476003)(71200400001)(71190400001)(229853002)(74316002)(53546011)(6506007)(8676002)(508600001)(99286004)(446003)(76176011)(7696005)(486006)(14454004)(81166006)(9686003)(8936002)(54896002)(53936002)(26005)(6246003)(52536014)(25786009)(5660300002)(256004)(102836004)(81156014)(55016002)(68736007)(2906002)(7736002)(6436002)(186003)(33656002)(66066001)(19627405001)(316002)(6916009)(64756008)(3846002)(6116002)(66446008)(66556008)(1411001)(6606003)(73956011)(66946007)(66476007)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0SPR01MB03;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4CoN0pGHPTaUx9yS5HSBuIsSChbqEEBe/o02rnWm8C48nFKTYUXpsg2ZE7o7UVUxdtbHBPmxuWz986Dtg3XEwKsonWCbGzukFveWB5E86hBEiEi1UTaK9GwRXxmAXxG2W9DfWccG1mBpUQJBZauzc0Zy+cl5OmoNGw3CKOw9SYsVgwsdQ+9hX7D73cveZYCrjX2R+3ttQHJwWc5sTgGWZG39sl6cfUN1bTpZf2ktqjIP99QPE/JXaogsfXYsac+g34GUIUeOqqA7WyiB0/jP2IFo0crCEQcSP2xQjyhnV0HM8VjdlWMKIa+CkKCV6D0v4KbbEk2RYx9n8PeUWNeAhH0YSgfKFHAarSsuZ/pcjJzCgNx8nqt2LlpkZCCDdDaHyjdHzKBdPVLc8J3VQ6iTGoXQK5a5rklnp4yl61l/w6w=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3b9ca97-62e8-4888-101e-08d6ed9537d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 11:17:26.1105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jason@gardettoengineering.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0SPR01MB03
X-Mailprotector-Decision: deliver
X-Mailprotector-Connection: TLSv1.2|mail-dm3nam03lp2056.outbound.protection.outlook.com|104.47.41.56|NAM03-DM3-obe.outbound.protection.outlook.com|0.0|0.0|0|||0|0|0|0
X-Mailprotector-Results: clean
X-Mailprotector-Score: 0
X-Mailprotector-IP-Analysis: 0, 104.47.41.56, Ugly c=0 p=0 Source New
X-Mailprotector-Scan-Diagnostics: 0-0-0-12787-c
X-Mailprotector-ID: 90925476-db2d-4a00-b398-b69d6a327f21
Subject: Re: [USRP-users] E320 hogging the network
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1288201365376866924=="
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

--===============1288201365376866924==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234057AA40194AD79592AB33AF130BL0PR12MB2340namp_"

--_000_BL0PR12MB234057AA40194AD79592AB33AF130BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Bingo, thanks.  One note though, the type is e3x0 (not e300).


Doesn't the e310 understand an IP address of 127.0.0.1 though?  I would thi=
nk that something like that would be a perfect use-case for the localhost.



________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, June 7, 2019 5:34 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] E320 hogging the network

On 06/07/2019 03:05 PM, Jason Matusiak via USRP-users wrote:

OK, this is actually an E310 problem.  The E310 always looks off device fir=
st.  A coworker reminded me that we spent a couple days years back trying t=
o figure out why the device was asking like it was working, but we weren't =
seeing any results.  It was because it was actually talking to an N2xx on t=
he network even with the IP address arg.


We never found a solution (using both the 127 and 192 address as an argumen=
t still causes issues).  So, it would be nice to clean this up on the E310 =
at some point, but for now I will try not to mix the E310 and E320 on the s=
ame subnet.

For the case of running E310 apps *on* the E310, just use "type=3De300", ra=
dio hardware on the E310 itself doesn't *have* an IP address, so using
  addr=3D will simply cause UHD to go down the wrong device path when you'r=
e running it ON the E31x itself.



--_000_BL0PR12MB234057AA40194AD79592AB33AF130BL0PR12MB2340namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Bingo, thanks.&nbsp; One note tho=
ugh, the type is e3x0 (not e300).</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Doesn't the e310 understand an IP=
 address of 127.0.0.1 though?&nbsp; I would think that something like that =
would be a perfect use-case for the localhost.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 5:34 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 06/07/2019 03:05 PM, Jason Matusiak via=
 USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">OK, this is actually an E310 pro=
blem.&nbsp; The E310 always looks off device first.&nbsp; A&nbsp;coworker r=
eminded me that we spent a couple days years back&nbsp;trying to figure out=
 why the device was asking like it was working, but we
 weren't seeing any results.&nbsp; It was because it was actually talking t=
o an N2xx on the network even with the IP address arg.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">We never found a solution (using=
 both the 127 and 192 address as an argument still causes issues).&nbsp;&nb=
sp;<span style=3D"font-size:12pt">So, it would be nice to clean this up on =
the E310 at some point, but for now I will try
</span><span style=3D"font-size:12pt">not to mix the E310 and E320 on the s=
ame subnet.</span></p>
<br>
</div>
</blockquote>
For the case of running E310 apps *on* the E310, just use &quot;type=3De300=
&quot;, radio hardware on the E310 itself doesn't *have* an IP address, so =
using<br>
&nbsp; addr=3D will simply cause UHD to go down the wrong device path when =
you're running it ON the E31x itself.<br>
<br>
<br>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB234057AA40194AD79592AB33AF130BL0PR12MB2340namp_--


--===============1288201365376866924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1288201365376866924==--

