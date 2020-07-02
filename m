Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F46A212CB9
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jul 2020 21:02:46 +0200 (CEST)
Received: from [::1] (port=36772 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jr4Tp-0005uo-Nh; Thu, 02 Jul 2020 15:02:41 -0400
Received: from smtpvbsrv1.mitre.org ([198.49.146.234]:48708)
 by mm2.emwd.com with esmtps  (TLS1.2) tls TLS_ECDH_anon_WITH_AES_256_CBC_SHA
 (Exim 4.93) (envelope-from <lelentukh@mitre.org>) id 1jr4Tm-0005kV-2t
 for usrp-users@lists.ettus.com; Thu, 02 Jul 2020 15:02:38 -0400
Received: from smtpvbsrv1.mitre.org (localhost.localdomain [127.0.0.1])
 by localhost (Postfix) with SMTP id 83439332951
 for <usrp-users@lists.ettus.com>; Thu,  2 Jul 2020 15:01:57 -0400 (EDT)
Received: from smtprhbv1.mitre.org (unknown [129.83.19.196])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by smtpvbsrv1.mitre.org (Postfix) with ESMTPS id 492C2332958
 for <usrp-users@lists.ettus.com>; Thu,  2 Jul 2020 15:01:57 -0400 (EDT)
Received: from mbfesmtp-mgt.mitre.org (unknown [198.49.146.235])
 by smtprhbv1.mitre.org (Postfix) with ESMTP id 3B93780C0C0
 for <usrp-users@lists.ettus.com>; Thu,  2 Jul 2020 15:01:57 -0400 (EDT)
Received: by mbfesmtp-mgt.mitre.org (Postfix, from userid 600)
 id 49ySBK5Lqvz3D4CR; Thu,  2 Jul 2020 18:59:33 +0000 (UTC)
Received: from GCC02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3gcc02lp2103.outbound.protection.outlook.com [104.47.65.103])
 by mbfesmtp-mgt.mitre.org (Postfix) with ESMTPS id 49yS7m1MWDzmGT
 for <usrp-users@lists.ettus.com>; Thu,  2 Jul 2020 18:59:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AzG1zr3db5J4UmmXgq5J2qDLNqJhxNnpqBC6DW7qEHPX4LhXToQE4JzA+c34+3GptRbEnyO0JDFN2ouaCO8qRuEt6emTR6Cdi9qOl/LY58WUyx8+hIiAnEsfN1IvMhRZeznSeQsBz1d490R+hOnjIL6V/IoiIF2vMV2x/OyGa685Aqb6bEe4MZ/AkVjF46DFsqUbJDE5Nj5xhkTuhKCPMaA2+/hoSqIU76Cob3VrJrbi7wtMMOrfFGYi+MBfcIfNDEV4JBQQ1LDe89qOofZV4n0+CgpYUK/SjywWrkkOLMlX4Js6m7GqysXZ1mV4x6fnyQfP0rRwOxmigEzWr9Uf0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RWiszx1Ks0k2JyMyVm8YX4phu05h7uOJXEtMF8xYduM=;
 b=oGi7v6dp9aHkwjNQ47Fr8eS9/eE4FlptSMBNUdTrsFkm8+yf9HtTsxSGn403H/s6D7LeDZfWvxM+NTTuVh0uXwHm3y7LI4XkvjWal1ZbC+GmC7dwbLK9bhUzm2c96t6O4rNL/vejCXBTHGc/yoDRwIcrjvK/4nMpl+MWGn6w3J6lHplQdS3IR9pcBZpovHzmhSN0mR596Vf1cIwyapzSI3ZlASckbf2CXqUPF8fwtMdyTJx3GPqbluUjJejTIiTo/M2vrGAYCuyQKipQ3gogD/tQCm60StmEfPY1jn3b0R0S8jaqP+/QmOzxxQm2rhcvY3Z8QMYdaZgSph2LCtX7+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mitre.org; dmarc=pass action=none header.from=mitre.org;
 dkim=pass header.d=mitre.org; arc=none
Received: from DM6PR09MB4629.namprd09.prod.outlook.com (2603:10b6:5:273::9) by
 DM5PR09MB3670.namprd09.prod.outlook.com (2603:10b6:4:a0::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.21; Thu, 2 Jul 2020 18:59:29 +0000
Received: from DM6PR09MB4629.namprd09.prod.outlook.com
 ([fe80::d959:5a75:e2a5:2fc1]) by DM6PR09MB4629.namprd09.prod.outlook.com
 ([fe80::d959:5a75:e2a5:2fc1%6]) with mapi id 15.20.3153.027; Thu, 2 Jul 2020
 18:59:29 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: x300 Timeout errors on receiving continuous stream (w/ Redhawk
 SDR)
Thread-Index: AdZQopDzVTFgoa51TUSii99D7Z7dOg==
Date: Thu, 2 Jul 2020 18:59:29 +0000
Message-ID: <DM6PR09MB4629191EB6B4BE961E5805AAA56D0@DM6PR09MB4629.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=mitre.org;
x-originating-ip: [192.80.55.89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 33a86e00-e4c2-43fa-3394-08d81eba0c95
x-ms-traffictypediagnostic: DM5PR09MB3670:
x-microsoft-antispam-prvs: <DM5PR09MB367092AE8BC6D6A8AD5ADF43A56D0@DM5PR09MB3670.namprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0452022BE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 85xe3mL1Wp9qb01x4KSLFzWpDoJTGgn+Z2w3PZmsB/zQQWSAT+F46O8rr7+OecrexytDANTCUOoV9AOgMOTgQoEPKpJGOUqJn2WYMsnPBZAY05QmWIyKKC4dw/14STP08462Vre0ePVoz/Z7b7pMP+bbJ08uqYSjLVJWMLEa3+0o+M5/ZI6EDux0tvhC0Y6f+Z+vs3FCUZTBAC4CqnucYbnTt2jXU5EYoz6HZvMJ034pm+ep7GDWMqvjaGzCRndR9C39PM02NaId201X9GKL3wKETM+hxCgCZclkolRNBPFCIxnJbPP76ZqfeWOnOWjeGNU1xRD63ZANGU2lTr/jGWitMRmktv841gpFksggKhSYhuIwRyIW4NM1Jd3E1D0S4Ssp02jUEWoWFzFsPmw7Bw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR09MB4629.namprd09.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39850400004)(376002)(366004)(136003)(396003)(6506007)(186003)(166002)(9326002)(55016002)(8676002)(8936002)(86362001)(478600001)(33656002)(316002)(966005)(9686003)(6916009)(7696005)(2906002)(26005)(71200400001)(64756008)(76116006)(66446008)(5660300002)(66556008)(66476007)(52536014)(66946007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: GcnySuxzgGRFCjEsMYw5q9LoEtm1s6iH/YD3wiRQC6TBz7Uzbdmm2gOaqF9eaXmEPE0Zbk7KOgb9SPFx49b1UWYVKSs43jYN0d/A8f8E9ufvrJIKRDV3xRoLEf+8N7XYSxf9OelpW6P/QdyCbJYSLJy5UrxXd9yYEX148/7pD1v+HNyfXvG3RxNf/ZxJhan4c6TC0gPlJOq2nbhWlY5s24ck/+Tw5/N+fTJvExJCc6avNf2IDxsbuBzPHdB8sJyvpK0sG2ijJCMxB0L/CXpS9aD4rdpyg5nbLtoci1u053ao4GOzu+I/djll5ugt9HQdu7LvXKyZRWskPY1blWXfzG4Zvq47fnWcycEfJI8+ILWmevMBiQHahQ1oCDTUz4WuTsF8wgjABx4aCGQO2fPZucPYRcaSaEKzSrMm6TO0GKAZvXO00ouBIh6Op0Fsrq3qGVuPTh4E2OMJ/mLykvnFa0u05ar8frskqsAl45/beoQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mitre.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR09MB4629.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33a86e00-e4c2-43fa-3394-08d81eba0c95
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2020 18:59:29.5187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c620dc48-1d50-4952-8b39-df4d54d74d82
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OWB8Kk6y533jmzbmuZjRexBpCWhv9mA5Xbvvwqd9mdnASDm5qu6g3CZRGRlEYICfeZI0oFD8vWmkEmRPtS9jCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR09MB3670
X-MITRE: 8GQsMWxq66rxk57w
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mitre.org;
 h=from:to:subject:date:message-id:content-type:mime-version; s=selector1;
 bh=RWiszx1Ks0k2JyMyVm8YX4phu05h7uOJXEtMF8xYduM=;
 b=PDRD7gfGcjx4/dVf6ZusqE0X50Y4J1D9DgfJVlaOwGs57wf5BfCl8Xqr2jskSL4C6OL3bCUWlmA9dgpQEp8hhDgOYRiIQ1eMjne1DcZTZFoWWPcjXCiSfPFikQjVZBC4QPFkyRIf38+VfLgK5sYEXVq2BSgOZK9ZPM3AL8+79YU=
Subject: [USRP-users] x300 Timeout errors on receiving continuous stream (w/
 Redhawk SDR)
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
From: Lawrence L Elentukh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lawrence L Elentukh <lelentukh@mitre.org>
Content-Type: multipart/mixed; boundary="===============8763257020051046653=="
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

--===============8763257020051046653==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR09MB4629191EB6B4BE961E5805AAA56D0DM6PR09MB4629namp_"

--_000_DM6PR09MB4629191EB6B4BE961E5805AAA56D0DM6PR09MB4629namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am experiencing issues where the uhd::recv() function returns a series of=
 unrecoverable timeout errors, I have seen similar questions on the mailing=
 list but none that have been resolved or whose resolution helped me. The f=
ront end interfacing with the USRP connects to the device and runs using ST=
REAM_MODE_START_CONTINUOUS, continually receiving samples. Then our codebas=
e connects to it via redhawk's waveform connections and the redhawk usrp_uh=
d front-end pushes the samples received downstream to our receiver. The iss=
ue is that after a few runs of our code (which doesn't start or stop the st=
ream from the redhawk frontend), I end up getting time-out errors from the =
uhd::recv() return code, and all subsequent attempts to receive samples see=
 this error. Information about the system is as follows:

USRP: x310
Interface: 10GigE, with appropriate MTU and network memory configurations
Sampling Rate: 200e6/6 (33.33MHz)
Single channel Rx
UHD Version: 3.15.LTS

I am using the Redhawk SDR as a platform, with our own code base as a recei=
ver, and am attempting to make changes to both my local copy of the redhawk=
-usrp_uhd front-end tuner component and our own code to resolve this issue,=
 however all interactions with UHD are through the redhawk component (which=
 can be found here: https://github.com/RedhawkSDR/USRP_UHD/blob/master/cpp/=
USRP_UHD.cpp#L1582)

Things I have tried:
* Starting/Stopping stream between receiver runs
* Increasing receive timeout (up to 1 sec)
* Resetting metadata between receives
* Clearing buffers (dropping samples) when not running receiver

Note: I am able to run the receiver without issue on the first few runs (fo=
r durations up to 20 minutes), however after 3-5 runs, all further runs end=
 up reporting timeout errors.

Any further suggestions would be greatly appreciated

Thanks,
Lawrence

--_000_DM6PR09MB4629191EB6B4BE961E5805AAA56D0DM6PR09MB4629namp_
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
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ve=
rdana&quot;,sans-serif;color:black;background:white">Hello,</span><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:bla=
ck"><br>
<span style=3D"background:white">&nbsp;</span><br>
<span style=3D"background:white">I am experiencing issues where the uhd::re=
cv() function returns a series of unrecoverable timeout errors, I have seen=
 similar questions on the mailing list but none that have been resolved or =
whose resolution helped me. The front
 end interfacing with the USRP connects to the device and runs using STREAM=
_MODE_START_CONTINUOUS, continually receiving samples. Then our codebase co=
nnects to it via redhawk's waveform connections and the redhawk usrp_uhd fr=
ont-end pushes&nbsp;the samples received
 downstream to our receiver. The issue is that after a few runs of our code=
 (which doesn't start or stop the stream from the redhawk frontend), I end =
up getting time-out errors from the uhd::recv() return code, and all subseq=
uent attempts to receive samples
 see this error. Information about the system is as follows:</span><br>
<br>
<span style=3D"background:white">USRP: x310</span><br>
<span style=3D"background:white">Interface: 10GigE, with appropriate MTU an=
d network memory configurations</span><br>
<span style=3D"background:white">Sampling Rate: 200e6/6 (33.33MHz)</span><b=
r>
<span style=3D"background:white">Single channel Rx<br>
UHD Version: 3.15.LTS</span><br>
<br>
<span style=3D"background:white">I am using the Redhawk SDR as a platform, =
with our own code base as a receiver, and am attempting to make changes to =
both my local copy of the redhawk-usrp_uhd front-end tuner component and ou=
r own code to resolve this issue,
 however all interactions with UHD are through the redhawk component (which=
 can be found here:&nbsp;</span></span><a href=3D"https://github.com/Redhaw=
kSDR/USRP_UHD/blob/master/cpp/USRP_UHD.cpp#L1582" target=3D"_top"><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;color:#55=
1A8B;background:white">https://github.com/RedhawkSDR/USRP_UHD/blob/master/c=
pp/USRP_UHD.cpp#L1582</span></a><span style=3D"font-size:10.0pt;font-family=
:&quot;Verdana&quot;,sans-serif;color:black;background:white">)</span><span=
 style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,sans-serif;color=
:black"><br>
<br>
<span style=3D"background:white">Things I have tried:</span><br>
<span style=3D"background:white">* Starting/Stopping stream between receive=
r runs</span><br>
<span style=3D"background:white">* Increasing receive timeout (up to 1 sec)=
</span><br>
<span style=3D"background:white">* Resetting metadata between receives</spa=
n><br>
<span style=3D"background:white">* Clearing buffers (dropping samples) when=
 not running receiver</span><br>
<span style=3D"background:white">&nbsp;</span><br>
<span style=3D"background:white">Note: I am able to run the receiver withou=
t issue on the first few runs (for durations up to 20 minutes), however aft=
er 3-5 runs, all further runs end up reporting timeout errors.</span><br>
<span style=3D"background:white">&nbsp;</span><br>
<span style=3D"background:white">Any further suggestions would be greatly a=
ppreciated</span></span><o:p></o:p></p>
<p class=3D"MsoNormal"><br>
Thanks,<br>
Lawrence<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM6PR09MB4629191EB6B4BE961E5805AAA56D0DM6PR09MB4629namp_--


--===============8763257020051046653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8763257020051046653==--

