Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC22CC4055
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 20:47:24 +0200 (CEST)
Received: from [::1] (port=33922 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFNBC-0006fe-HI; Tue, 01 Oct 2019 14:47:22 -0400
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:51606)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1iFNB8-0006Sn-6y
 for usrp-users@lists.ettus.com; Tue, 01 Oct 2019 14:47:18 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 A3AB4C79B0
 for <usrp-users@lists.ettus.com>; Tue,  1 Oct 2019 18:46:37 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2050.outbound.protection.outlook.com [104.47.44.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us4.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7EE74BC005E;
 Tue,  1 Oct 2019 18:46:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3iB0PHOCmJe7+TGZhZ1Y5yo2bBT8EzPKbBs/LHSjg+qWzARKnegv/nzv/ZFDUbJQQUfcw8UKMYoV99OxVNSIwOMrOMsSiz6UQUGtAu9e/rvtpN8VrJR132l7g0Sh4x1Fr+CL0WO/cLOGdRzdSe4C8zc2lR2AInxA1jSyliYP1LPzIJpVBFwUBxHxaxQ87aJGragaD7YPuXCHPxOu23pbD47uU2jh0Z2GiwQoZ+8NnnQN2invqlN927VXmV/x+3NhbddCR7Eg7mHoziFS75oUNzquUu95RRahJL0raqtdLidY1hVifV8ILSKbnu+7OTO2wtO8fW8SVYmnA84HfK8Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hp9SgMEC1ycoCllZJccUn2vu2fPiIQqvHZ9eQrjfsi0=;
 b=WzDfMtaDRr6swRoD4LeqSWKsHtzttE3upy3qJHg9Mjy+Y1R2J1YdObdYPCa8mZ77CWuwl7v0R84zFFa/h5eIJe5Wbg2ypL3VyiaBH91nLB5n6LtEOGTYN+xnBoF7UqwK72dd1jAst9O7SQZmw9hNbLjs6kT67fI0CxC+9U6a5+CgfIpnFgDYA8H4iy4BfcBed7yKucOnDXPuGe/EjmW21e3iZRwEqUh3I2nsqxoEyJyzXV510+aYjlLe4jJNU2QLCgdiQEFPbKgeIGbhKpq61SoJyKLBRVXQEPLSBEblKVwC6q93FCa7eO7uw+s6Ilefjl6R2eIHYiroIhG0MsyCgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hp9SgMEC1ycoCllZJccUn2vu2fPiIQqvHZ9eQrjfsi0=;
 b=KrDyfwrVX6uIfEKEtCj5gF92si8TLQf986JfEv0gCUUsF5iOs6L9CpIxns9r2q8qayt5XZjDeVaSVxSyjXm1skv/JtIrydSUVEEp/0PlQzEc+0fbB+OKXv3DpCN5iBjubDym15xSXcx+v0LZqHp1AzLjl0oBPy/pTs9G93Yfom8=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2532.namprd12.prod.outlook.com (52.132.9.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Tue, 1 Oct 2019 18:46:14 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::d017:bb2f:c281:2400%5]) with mapi id 15.20.2305.017; Tue, 1 Oct 2019
 18:46:14 +0000
To: Marcus D Leech <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] RFNoC not re-tuning consistently
Thread-Index: AQHVeHbv0cvGx2/8hUGLN6pZi897u6dGEQaAgAAK1qE=
Date: Tue, 1 Oct 2019 18:46:14 +0000
Message-ID: <BL0PR12MB234059374EDB6CEF5FE8E167AF9D0@BL0PR12MB2340.namprd12.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: f2ed14d3-be9a-425c-32cb-08d7469fa2fa
x-ms-traffictypediagnostic: BL0PR12MB2532:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR12MB2532B666DB3B837EAE400D4FAF9D0@BL0PR12MB2532.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0177904E6B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(376002)(346002)(39830400003)(199004)(189003)(54094003)(19627405001)(66556008)(256004)(76176011)(66476007)(7696005)(8936002)(14454004)(508600001)(966005)(71190400001)(71200400001)(5660300002)(6916009)(7736002)(74316002)(14444005)(5024004)(33656002)(316002)(99286004)(1411001)(66066001)(25786009)(2906002)(64756008)(66446008)(6306002)(476003)(6246003)(66946007)(52536014)(486006)(9686003)(11346002)(105004)(186003)(6436002)(55016002)(54896002)(446003)(236005)(76116006)(86362001)(606006)(66574012)(26005)(229853002)(53546011)(6506007)(102836004)(3846002)(6116002)(8676002)(4326008)(81156014)(81166006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2532;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /CqKvRA38eHAskgYazRcZeI4eD7pqGlAMAKPT9hzi3pXEN+WDwjam5lTYHCpiVgXljBC+TDyz2MUGuUPPxBmybW+tGwMy+1OgxoNgXgLLx8jc1GErIKOCsCoSCLNNwC0ikA4tvGTZEx+fGd23fL01qfjR60iEST+ZbIcTAhQ2Ti+BrEKqjQPqcgEOXHpJB5quZrrApLSHt4+fYATf3+l5L4pIzmF6JvUP0jg/rPZ83yUMsleyQjPufwTkhZg3XAwXD/Vp+x/tb59Ae6KrLfPUx7fhec4jzOusRHjb3cRtS33s7VEJLTsNEtYi6oyfR5DNWBID6B0rVRzfJ/hH2rs9dzr5Fd0jdlZydK5CGEyGEclXJe9rN8oTW323yhI673KNug3CErGMGK4G8se766ZXi9cJgnvnk210ui5rjywHvtWXylzDpieYwlkEjRzGt3Fn55xw2DwmsjNEcePVKj4ZQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ed14d3-be9a-425c-32cb-08d7469fa2fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2019 18:46:14.3865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FBsyDFxXm5Cb7WCHnfcbLgTnwE0eToV5Db49Bqwkf459DGANkmfhHcR4IcG87egqfno/jZvB2rmICiDfkzSPsbiDDWqZB8rQxbM6OQrUK4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2532
X-MDID: 1569955587-y4VW9zFykhYR
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
Content-Type: multipart/mixed; boundary="===============5225589967580702464=="
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

--===============5225589967580702464==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB234059374EDB6CEF5FE8E167AF9D0BL0PR12MB2340namp_"

--_000_BL0PR12MB234059374EDB6CEF5FE8E167AF9D0BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

OK, I think I found the issue.  I am not sure what was causing things to so=
metimes work vs other times, but it seems to be the difference.  I pulled u=
p an example RFNoC flowgraph and it didn't have any issues.  So then I star=
ted stripping things out and trying to compare things.  The only real diffe=
rence that was a problem was two lines:

good:
                args=3D"input_rate=3D{},output_rate=3D{},fullscale=3D{},fre=
q=3D{},gr_vlen=3D{},{}".format(master_clock_rate, samp_rate, 1.0, 0.0, 256,=
 "" if 256 =3D=3D 1 else "spp=3D{}".format(256)),
bad:
                args=3D"input_rate=3D{},output_rate=3D{},fullscale=3D{},fre=
q=3D{},gr_vlen=3D{},{}".format(master_clock_rate, samp_rate, 1.0, 0, 256, "=
" if 256 =3D=3D 1 else "spp=3D{}".format(256)),

and
good:
            self.uhd_rfnoc_streamer_ddc_0.set_arg("freq", 0.0, chan)
bad:
            self.uhd_rfnoc_streamer_ddc_0_0_0.set_arg("freq", 0, chan)

The difference between those lines is that the bad lines have the value "0"=
 and the good has "0.0".  If I manually make the change the flowgraph seems=
 to work fine.  I can't for the life of me figure out why one flowgraph is =
doing it as an int and the other as a float (they are both opened in the sa=
me GRC window), but everything is happy if I just do a save-as on the worki=
ng one and start from there.....

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

--_000_BL0PR12MB234059374EDB6CEF5FE8E167AF9D0BL0PR12MB2340namp_
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
OK, I think I found the issue.&nbsp; I am not sure what was causing things =
to sometimes work vs other times, but it seems to be the difference.&nbsp; =
I pulled up an example RFNoC flowgraph and it didn't have any issues.&nbsp;=
 So then I started stripping things out and trying
 to compare things.&nbsp; The only real difference that was a problem was t=
wo lines:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
good:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; args=3D&quot;input_=
rate=3D{},output_rate=3D{},fullscale=3D{},freq=3D{},gr_vlen=3D{},{}&quot;.f=
ormat(master_clock_rate, samp_rate, 1.0, 0.0, 256, &quot;&quot; if 256 =3D=
=3D 1 else &quot;spp=3D{}&quot;.format(256)),<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
bad:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; args=3D&quot;input_=
rate=3D{},output_rate=3D{},fullscale=3D{},freq=3D{},gr_vlen=3D{},{}&quot;.f=
ormat(master_clock_rate, samp_rate, 1.0, 0, 256, &quot;&quot; if 256 =3D=3D=
 1 else &quot;spp=3D{}&quot;.format(256)),<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
and</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
good:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_rfnoc_streamer_ddc_0.set=
_arg(&quot;freq&quot;, 0.0, chan)<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
bad:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self.uhd_rfnoc_streamer_ddc_0_0_0=
.set_arg(&quot;freq&quot;, 0, chan)<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The difference between those lines is that the bad lines have the value &qu=
ot;0&quot; and the good has &quot;0.0&quot;.&nbsp; If I manually make the c=
hange the flowgraph seems to work fine.&nbsp; I can't for the life of me fi=
gure out why one flowgraph is doing it as an int and the other
 as a float (they are both opened in the same GRC window), but everything i=
s happy if I just do a save-as on the working one and start from there.....=
</div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
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

--_000_BL0PR12MB234059374EDB6CEF5FE8E167AF9D0BL0PR12MB2340namp_--


--===============5225589967580702464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5225589967580702464==--

