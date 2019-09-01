Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F52A49C9
	for <lists+usrp-users@lfdr.de>; Sun,  1 Sep 2019 16:22:55 +0200 (CEST)
Received: from [::1] (port=36408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i4Qkn-0003qd-I7; Sun, 01 Sep 2019 10:22:53 -0400
Received: from mail-oln040092010051.outbound.protection.outlook.com
 ([40.92.10.51]:6181 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1i4Qkj-0003ZC-Pk
 for usrp-users@lists.ettus.com; Sun, 01 Sep 2019 10:22:49 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OSvn8bJvBn8ueUfLk7eXqimwT25r67wvgEWxXCLfZfWcrfvg0mY/7cWPVZAB+RVlDVTG6Suh4zBZjchyLBeNIH1d0JEiUz/GtaOiZBv0Gu0Ho6QtiYLOvIxTClvPmL8M2ef/AblqjGHPw883XhuuLU8SFvbBbxeOrNYcUHvI4+cDU7Xvwl+pLFezgHy6VxjoXSm9GnA0Pvi3OXLjgGDEcZkI1RmiWR4R9lLpwqFl4kjgTEmsmPDfKex8Ob1xcYNMQvcGBz3dC5nhC7a7nCLvZX+ZRZtcovco0qm9UTSwRxDQ9NJ5io9zIwHg24Cfoak7tyTrrVQ3fIohmi97nHee8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VaUGLjobPTyZFY4VHTwWNVxrvbyhrQIrC/Vy1DdBqe8=;
 b=fKffz2RXiuL+mD0BBGM7huUAM6aTtr5Z526WfeMJ72r8l0R55YjRHeCMD8hcsMzecMw2F4F3DkzSxi4Jhwh1BuhL69DiVV4O72s1uxqWZkmV5bTmahAhW9skvj1o6tB3erZXLi2dAxdb61/mDFW++cOJ82e+XWnzyB7SEKx6m13RDp5067y5/jRJ9YSTeDbNQ8PhnYrtyg80CzRGejdfHzy1wx6avUZFe4j/sRudjaDTb64DcF54wVP2a+sj8DdgKo0jD7CfVyXrWIGjIy8s6tefEurakckpIEIejqP7hL4kmHnXPI4MffxMjok37XRw59vR7xdMthA4aBupdGPdEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VaUGLjobPTyZFY4VHTwWNVxrvbyhrQIrC/Vy1DdBqe8=;
 b=vF/D6cCe8+3GkvYu1qzEZUcO3e91Fic/OcNQWfqPWRamuQxjhjy+EskPAn0B0ZPqyPx9rxhZLFMGDtPhbK+g4iyR75aZtu9fhMctnfssd+CbpUqk5KOsMk4UZovSR528fb2yi1x+EKIsMI0KTWNciueH5zbl7qVZUrLDLjqiOKFRR7/eqtAOiamKkH6iKxA4nfblqxvqzgGToui4UBvpWkjUec74sbvc48V0BObqzrpM1+uWf68XCIk88sxJ1eixaxelBRdaE6HN5EERIyiG4S1MDsDKujMKYb9hcmmFYmyr3RgLWd2Og/37X5zowA9E5IIDLJxjVpG173uxM6PG6w==
Received: from CO1NAM04FT022.eop-NAM04.prod.protection.outlook.com
 (10.152.90.57) by CO1NAM04HT146.eop-NAM04.prod.protection.outlook.com
 (10.152.91.206) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 14:22:08 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com (10.152.90.51) by
 CO1NAM04FT022.mail.protection.outlook.com (10.152.90.167) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 14:22:08 +0000
Received: from CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::9d70:67e8:a886:46a1]) by CY4PR19MB0984.namprd19.prod.outlook.com
 ([fe80::9d70:67e8:a886:46a1%8]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 14:22:07 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Starting from Scratch with a E310
Thread-Index: AQHVYM5UlqYiVHrV506Ksu/yOSgRFQ==
Date: Sun, 1 Sep 2019 14:22:07 +0000
Message-ID: <CY4PR19MB0984A7F994845D4D0CE3B042A4BF0@CY4PR19MB0984.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C346FB233BDB98DC2E7E8A40CEF93B1645BAF977DC6A961946EA6542EA676A67;
 UpperCasedChecksum:E2CD7DC41D1BED1A02FC3A54879155C55385B615C5402618A19B29CC61D1F608;
 SizeAsReceived:6637; Count:40
x-tmn: [9eyT4nefu9pMtS0Wb00fXyoLs66ime1knCEj4jfvgq9xTjddLIMVUKuwGyeOUspE]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:CO1NAM04HT146; 
x-ms-traffictypediagnostic: CO1NAM04HT146:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: KTzyaUsFGJh47ZI+z7IfSONxdd6Pru2L7CCEgxZn4bvaELbwPTDJoFacNJSvBv76ScAwVpSL42nCSEK5afYbNPFcWUFBgKLrKuvST6jWOdScix4PBPTkqe+OB+q7L9GygYo3hra4ViHfemBR1uj7a+Ecl4dFVlq78YsHSUrSSVyPb34t+9iegDJrr8ZeJclB
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 046045c7-d7f4-45a1-0ce0-08d72ee7c560
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 14:22:07.9084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM04HT146
Subject: [USRP-users] Starting from Scratch with a E310
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============7843598029629764314=="
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

--===============7843598029629764314==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB0984A7F994845D4D0CE3B042A4BF0CY4PR19MB0984namp_"

--_000_CY4PR19MB0984A7F994845D4D0CE3B042A4BF0CY4PR19MB0984namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Has anyone recently started from scratch trying to install the E310 SDK on =
a new install of Ubuntu 16.04 LTS and 18.04 LTS?  I started with 18.04 and =
had some issues so I made a clean install of 16.04 and then followed the di=
rections based on Application Number AN-311, located at:


https://kb.ettus.com/Software_Development_on_the_E310_and_E312#Compiling_an=
d_installing_UHD

I had to add an install of python-pip and git-core before going through the=
 pybombs commands, but when I get to the cmake command, I get the following=
:
cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_cross.cmake =
-DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..
CMake Error at CMakeLists.txt:13 (cmake_minimum_required):
CMake 3.5.1 or higher is required.  You are running version 2.8.12.2
That was the same error when I started with Ubuntu 18.04, so it seems like =
it has something to do when it installs cmake as part of the E310 SDK and s=
ets a path to use the cmake installed with that.  Unfortunately, the CMakeL=
ists.txt file seem to want a newer version.  The person who originally did =
some of the development for the E310 is no longer available, and I'd like t=
o document a repeatable process for getting our development back up and run=
ning so we can use the E310s we have.  Any suggestions for a novice, or is =
there other information I can provide to make it more clear of what I'm doi=
ng?  The only thing I changed going through AN-311 was to have "prefix" nam=
ed "e310" (maybe that's the problem?), although I called it "prefix" when u=
sing 18.04.

The E310 seems to work as I can use the serial port and ssh to it and run a=
 sample program.  I'm really just trying to get a development environment w=
orking with it.

Regards,
Jeff

--_000_CY4PR19MB0984A7F994845D4D0CE3B042A4BF0CY4PR19MB0984namp_
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
Has anyone recently started from scratch trying to install the E310 SDK on =
a new install of Ubuntu 16.04 LTS and 18.04 LTS?&nbsp; I started with 18.04=
 and had some issues so I made a clean install of 16.04 and then followed t=
he directions based on Application Number
<b>AN-311</b>, located at:
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<div style=3D"margin-top:0; margin-bottom:0"><a href=3D"https://kb.ettus.co=
m/Software_Development_on_the_E310_and_E312#Compiling_and_installing_UHD" i=
d=3D"LPlnk156374">https://kb.ettus.com/Software_Development_on_the_E310_and=
_E312#Compiling_and_installing_UHD</a><br>
</div>
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I had to add an install of python-pip and git-core before going through the=
 pybombs commands, but when I get to the cmake command, I get the following=
:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div>
<blockquote>cmake -DCMAKE_TOOLCHAIN_FILE=3D../host/cmake/Toolchains/oe-sdk_=
cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DENABLE_E300=3DON ..<br>
</blockquote>
<blockquote>CMake Error at CMakeLists.txt:13 (cmake_minimum_required):<br>
</blockquote>
<blockquote>CMake 3.5.1 or higher is required.&nbsp; You are running versio=
n 2.8.12.2</blockquote>
</div>
That was the same error when I started with Ubuntu 18.04, so it seems like =
it has something to do when it installs cmake as part of the E310 SDK and s=
ets a path to use the cmake installed with that.&nbsp; Unfortunately, the C=
MakeLists.txt file seem to want a newer
 version.&nbsp; The person who originally did some of the development for t=
he E310 is no longer available, and I'd like to document a repeatable proce=
ss for getting our development back up and running so we can use the E310s =
we have.&nbsp; Any suggestions for a novice,
 or is there other information I can provide to make it more clear of what =
I'm doing?&nbsp; The only thing I changed going through AN-311 was to have =
&quot;prefix&quot; named &quot;e310&quot; (maybe that's the problem?), alth=
ough I called it &quot;prefix&quot; when using 18.04.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The E310 seems to work as I can use the serial port and ssh to it and run a=
 sample program.&nbsp; I'm really just trying to get a development environm=
ent working with it.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards,<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
</body>
</html>

--_000_CY4PR19MB0984A7F994845D4D0CE3B042A4BF0CY4PR19MB0984namp_--


--===============7843598029629764314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7843598029629764314==--

