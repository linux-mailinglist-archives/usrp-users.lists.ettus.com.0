Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57925C3F1D
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 19:57:31 +0200 (CEST)
Received: from [::1] (port=46038 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFMOw-0001U6-A4; Tue, 01 Oct 2019 13:57:30 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:53186)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iFMOs-0001Jm-A3
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 13:57:26 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 D6A04A62AF
 for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2019 17:56:45 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
 (mail-by2nam05lp2052.outbound.protection.outlook.com [104.47.50.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id D97CC28007E;
 Tue,  1 Oct 2019 17:56:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n28Bt8y6R17aJiPRLBL8ieCblNuHQ+jwalS1Yf0VhzGSwR6GFl3a+wsJIgUkrXNb8iA+wi48fqxaXDqh1hNSFBhN7YINFDiHw7V0xzwFmAfVKrld35PakjmXXehoSySBhufs1d0u+x1BHTYjWbvbf+294Hxo/XovqyRCDw208eoBfgx1/iXkmlnUQwnQFLMj/gMtDI+oPogggp2domWZI8QVJ5Djp6GzHWNblovxXBpMd1MOPtiScLQG+clvy6HEOpdG+1nmd5FQYyTIR3DGUAgXE9ExgAVK9wkhQc+YqR1osQk9pvR86xZXYkmd2fRj1pxgTDFEQQqwI4UT+9sMQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N9Ywh5g98dlDGA76hlTXQFTM77Km9h0ksiBX233cO2o=;
 b=Td4UkmArUFinTw6lBtCNNmi0vZqqRwRGvnqL1zMZSiiHjGA8XtoVWczSkimBhaXyLcGDRDw8ORH6pno/u5r0Cqa1mvOFC3gsFFG7YAkSs3aEGtp/3fMH61s9m9JAcwE6sHdUjFLlT9UWbWPpjdS0g9NwUNXqKZGE/DAX7GHLHxA0YA3r8JEJI55gmprvaZPVZJGVJWt/cWtoDayGSaXpfy6YLsw3bUkL6y8MeK/AHNj3sym+/4gz8sncslucusuRU9yl8UoyL0b8QsklpOajd7RCkp3ntEtxb/66VJeSpblWkrrGE2ryR57dmXdGQyrQX4BgQrYuekVpVPC+iA6MoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N9Ywh5g98dlDGA76hlTXQFTM77Km9h0ksiBX233cO2o=;
 b=pjngSHMT2qtwJSUigWFFeiUWTUo5rkazsWJj1edd9En6VjHYTK1/Lpct8DInOtrosIJzpddIPA1u81UqDzdiE/3nglAWO1IGowxBZgiNVUJFxiA+KyKGLqaAvqMv9iTp4/0NWmEgo72/58rWiFUkj1/LnfVLNVHtuCeY1PrtOms=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2449.namprd12.prod.outlook.com (52.132.28.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Tue, 1 Oct 2019 17:56:19 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.017; Tue, 1 Oct 2019
 17:56:19 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] RFNoC not re-tuning consistently
Thread-Index: AQHVeHbv0cvGx2/8hUGLN6pZi897u6dGEQaAgAAAcKQ=
Date: Tue, 1 Oct 2019 17:56:19 +0000
Message-ID: <BL0PR12MB2340C8A015070746F02D6B82AF9D0@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB23404CB926FD14B0E4FB6B23AF9D0@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <97A84D63-7989-4368-85C3-0894E35B88AC@gmail.com>
In-Reply-To: <97A84D63-7989-4368-85C3-0894E35B88AC@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1637ddd8-06e3-4ce1-7898-08d74698aa00
x-ms-traffictypediagnostic: BL0PR12MB2449:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB2449476E4047B817DD346D9AAF9D0@BL0PR12MB2449.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(396003)(366004)(39830400003)(199004)(189003)(54094003)(14444005)(52536014)(6436002)(33656002)(26005)(25786009)(5024004)(229853002)(105004)(6306002)(6246003)(236005)(9686003)(54896002)(186003)(55016002)(256004)(316002)(8936002)(6916009)(19627405001)(7696005)(99286004)(1411001)(81156014)(102836004)(81166006)(606006)(2906002)(74316002)(8676002)(71190400001)(66066001)(508600001)(5660300002)(14454004)(76176011)(53546011)(86362001)(66574012)(6506007)(966005)(486006)(4326008)(71200400001)(7736002)(446003)(11346002)(476003)(66446008)(6116002)(64756008)(66556008)(66476007)(3846002)(76116006)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2449;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W3sPJJLVBiCWZm0S7P0xu6s4Q/EdLbRkJK6DCEFZAb/GDwqPd5MtmvoJDFYoA9ZzkCDsoNSSvoFrfHpU2CTB74L/L5kbLpJWbevMVQdF5+190kpSlGIDsbNFOTb6QnONPRrR6AFAVI6BXFEILaYjPyAQVFZkCPenVv4O0bbTYXzhpc5MUQ0/AUIk9pP1x/u/gJkZ/bcApjqiU6pYJZgLYnrTuIogJ3jHTnYCGypRnAZuoRuvYhf7lF5efo6dqv+qhaiiEOmPajkutlqVbUvY8TEF11k4j5GduMgCUGo09qbJmio02rpGb063RHEvDMbAk5SQNRVw0YvAcyh8e2EiHnC5gDzpJ+kIcPk//ycJf6zfT2c4KJQS7FvVk9fqQw1wYzr5fm1nCESaQ65Da4vEbTQwFoCPUmQTUAXSzbtNtyXjupVuogHgVtI5hH+Da2jTIGYYDDutmjJqctmE+EOW+w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1637ddd8-06e3-4ce1-7898-08d74698aa00
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 17:56:19.6216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4/COk8BRq+22fe1fTf+hqlm1VO5WLDR9XVcN8gA3XhKLQozBSmFUGzh19vTncB1NYqiGv8OFj0wEUFqC6+u/F8uYs4OvZUbWVpdO0zILn20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2449
X-MDID: 1569952595-1Gh9Q6D5HqHk
Subject: Re: [USRP-users] RFNoC not re-tuning consistently
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6951729595910673490=="
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

--===============6951729595910673490==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340C8A015070746F02D6B82AF9D0BL0PR12MB2340namp_"

--_000_BL0PR12MB2340C8A015070746F02D6B82AF9D0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Marcus,

I am not 100% sure I understand what you mean, but I am not sure why anythi=
ng would need to be done differently (and in the past I feel like I had no =
issues).  They certainly don't talk about anything needed to be modified he=
re:
https://kb.ettus.com/RFNoC#What_is_the_difference_between_USRP_Sink.2FSourc=
e_blocks_and_the_RFNoC:Radio_block.3F

And back to the modifications of the step size, would that still be a poten=
tial avenue to investigate knowing that sometimes things work and other tim=
es it doesn't?

________________________________
From: Marcus D Leech <patchvonbraun@gmail.com>
Sent: Tuesday, October 1, 2019 1:52 PM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC not re-tuning consistently

I wonder if this is just because in RFNoC the DDC is explicitly visible, so=
 you have to program it to account for synthesizer step size?



Sent from my iPhone

On Oct 1, 2019, at 12:52 PM, Jason Matusiak via USRP-users <usrp-users@list=
s.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

I have an issue that is very odd to me.  I have tried two different X310s w=
ith different daughter cards and they are all exhibiting this behavior.  It=
 feels like I am doing something stupid, but I can't quite figure out what.=
 (a picture is attached)

If I have a usrp source connected to a freq sync, everything is golden.  If=
 I instead use an RFNoC source connected to a DDC to the freq sync, I get i=
nconsistent results.  I think the settings are the exact same, but it feels=
 like the radio is not being reset properly.  Sometimes it tunes to where I=
 tell it to and I can see my signal of interest perfectly, other times it o=
ff-tunes anywhere from a few MHz to way off the screen.  Subsequent retunin=
g seems to actually make changes to the tune frequency, but not consistentl=
y (maybe I need to tune to 943MHz one time to mimic a tune to 910MHz. the n=
ext time I would have to tune somewhere else).

I am using the stock image and have tried with both XG and HG (though I am =
mostly testing with XG).

UHD_3.14.1.HEAD-0-g5491b80e

GR v3.7.13.4
<Screenshot from 2019-10-01 12-51-07.png>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMCaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DFE-X=
gMWjRnCsg9jWESEUgaV-ylQVbjIHIaQFFbsXSE0&s=3DHD_9V5Du1Mwt_qI6Cq-fhvMlJTJm3rw=
Dd0bY0TDiZ4Q&e=3D>

--_000_BL0PR12MB2340C8A015070746F02D6B82AF9D0BL0PR12MB2340namp_
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
Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am not 100% sure I understand what you mean, but I am not sure why anythi=
ng would need to be done differently (and in the past I feel like I had no =
issues).&nbsp; They certainly don't talk about anything needed to be modifi=
ed here:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<a href=3D"https://kb.ettus.com/RFNoC#What_is_the_difference_between_USRP_S=
ink.2FSource_blocks_and_the_RFNoC:Radio_block.3F" id=3D"LPNoLP241613">https=
://kb.ettus.com/RFNoC#What_is_the_difference_between_USRP_Sink.2FSource_blo=
cks_and_the_RFNoC:Radio_block.3F</a><br>
</div>
<br>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
And back to the modifications of the step size, would that still be a poten=
tial avenue to investigate knowing that sometimes things work and other tim=
es it doesn't?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D Leech &lt;pa=
tchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, October 1, 2019 1:52 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RFNoC not re-tuning consistently</font>
<div>&nbsp;</div>
</div>
<div dir=3D"auto">I wonder if this is just because in RFNoC the DDC is expl=
icitly visible, so you have to program it to account for synthesizer step s=
ize?
<div><br>
</div>
<div><br>
<br>
<div id=3D"x_AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Oct 1, 2019, at 12:52 PM, Jason Matusiak via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I have an issue that is very odd to me.&nbsp; I have tried two different X3=
10s with different daughter cards and they are all exhibiting this behavior=
.&nbsp; It feels like I am doing something stupid, but I can't quite figure=
 out what. (a picture is attached)</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
If I have a usrp source connected to a freq sync, everything is golden.&nbs=
p; If I instead use an RFNoC source connected to a DDC to the freq sync, I =
get inconsistent results.&nbsp; I think the settings are the exact same, bu=
t it feels like the radio is not being reset
 properly.&nbsp; Sometimes it tunes to where I tell it to and I can see my =
signal of interest perfectly, other times it off-tunes anywhere from a few =
MHz to way off the screen.&nbsp; Subsequent retuning seems to actually make=
 changes to the tune frequency, but not consistently
 (maybe I need to tune to 943MHz one time to mimic a tune to 910MHz. the ne=
xt time I would have to tune somewhere else).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am using the stock image and have tried with both XG and HG (though I am =
mostly testing with XG).</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
UHD_3.14.1.HEAD-0-g5491b80e<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
GR v3.7.13.4</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr">&lt;Screenshot from 2019-10-01 12-51-07.png&gt;</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.=
com</a></span><br>
<span><a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__list=
s.ettus.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMCaQ&=
amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF=
4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DFE-XgMWjRnCsg9jWESEUgaV-ylQVbjIHIaQFFb=
sXSE0&amp;s=3DHD_9V5Du1Mwt_qI6Cq-fhvMlJTJm3rwDd0bY0TDiZ4Q&amp;e=3D">http://=
lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340C8A015070746F02D6B82AF9D0BL0PR12MB2340namp_--


--===============6951729595910673490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6951729595910673490==--

