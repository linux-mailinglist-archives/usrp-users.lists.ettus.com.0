Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500B1B6C66
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 06:07:01 +0200 (CEST)
Received: from [::1] (port=53054 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRpcC-00022e-0p; Fri, 24 Apr 2020 00:07:00 -0400
Received: from mail-oln040092253050.outbound.protection.outlook.com
 ([40.92.253.50]:7318 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jRpc7-0001sy-Eg
 for usrp-users@lists.ettus.com; Fri, 24 Apr 2020 00:06:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X4YTXYf0SQVaWel8EMMUrqJdSy9NWK8M+Yk1SnKvkj7wdZopuZfBHrN7tIr9xtHVg0R92xPTfRCN5TfgkA//2WXiBC41/RWOzqtj6xHyZ0TVsuSfLJhQGI4VkhcjTE6Nmy4DwbWP6AQJxZN7JGxoCIWz9qmUCO8USA00pjpKqX9op3P+DlKlx4CG6rx15g8wrNf2qvxoSoUtlGsyjZq01pOXRcVPK/Sx1r6G4sofITDnaSa9gnzLKojI78FZgGyHeZ+h/x0dIOxg7TuAgOPMl8BGon2o7ffZ/RiSYBDP/IjAThK7Bc8lKEqat9/D5RrH4oMhH1pfaf/6R0YstQTHRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKI+gSlo4n6A1vYNk/V5aDEGqL49rvh2cXpz4bmIeYc=;
 b=Wa+tu7GY+Eg1s9PCecO7Ab4lfkmGZcFHjhINJz8xsmp1ayFcuTd27yus9n4AGsIw5S7d3msDBE+OWjlS+DRDf6U8LffIWOYHQKLkjB5Zmx8daA4hFX0prW0l1PtBIHnnxmhUELDDc4ctSUr++/dFt4W4pbU1rz3TQrkHww/HuFYwv3VoZ0jFKtnW0DjCucdhdwB+DnICxvB0KcfOX15mY+/3TEEHrGPxPoFNgs6Pg6mJPV6OXFr2s9KDO53+hdo7+Ca5MIdaI7rJ4Viivif4ex4iQHf+Ochoymt7zjZfPY/vewvyK96DwTBFf51vhQa+jGTOOFcBq6Y/R3fyxRRGEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MKI+gSlo4n6A1vYNk/V5aDEGqL49rvh2cXpz4bmIeYc=;
 b=FKAeiEI3VTiLWWJ/M6RLm0sVVTduiwd/Xi/BxSzqGwcRYN07sM8adUUL4FC9OBklZYsUY80oEmEm42Jh3x1rrkpZHVulEXWrbi3XtAjyFpQoEXo8uREVj0XerRvYGx+UD7W5aYQUTeyj5wi2BHg+NdR4l1hawUYHUKNSzj8bIX5r3UfeY4FH1EyqZ8v6BIo4GjmPVHb9BC6cgv9VPJJnyolqP+gvH9Ikko/KkgD4OnLQ5E7xyUPOIOwCkPCXHr524z9ADW5h5ChU5cET5ljJMDRYuObAm3pfhCBz3yP54gT49Pa0rcDkEfMckzGxBXuuTG1i2R9vfF+VQzQGU3Q+JA==
Received: from SG2APC01FT009.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::47) by
 SG2APC01HT153.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::448)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Fri, 24 Apr
 2020 04:06:11 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.250.60) by
 SG2APC01FT009.mail.protection.outlook.com (10.152.250.158) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Fri, 24 Apr 2020 04:06:11 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.012; Fri, 24 Apr 2020
 04:06:11 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
Thread-Index: AQHWGPFZoDfvbKh70EeqElLjPk33eKiFsxgAgAACBxKAAAl8AIAAjjZVgAFSvYCAAAgLvg==
Date: Fri, 24 Apr 2020 04:06:11 +0000
Message-ID: <BM1PR01MB3348E558D45108505B6A5D5D88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
 <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
 <BM1PR01MB33482FF8513BFE835941A7E888D30@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAL7q81sH5ae_M4ub4h8dR4DXAVFGxbBi___5TgyoHvK5Lj6nMQ@mail.gmail.com>
In-Reply-To: <CAL7q81sH5ae_M4ub4h8dR4DXAVFGxbBi___5TgyoHvK5Lj6nMQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: bpadalino@gmail.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:3C8975E956254085B59410673BFF3A4C026A9725DE6E7C194FA31AA2EA6E22C5;
 UpperCasedChecksum:A4B884ADB89D650D849E113130480D7C4075DDC2B18838C80DDF0016795B7472;
 SizeAsReceived:7524; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Hb8/6fh+UyDgnYKIGreSv4K42QhILiWh]
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ee4e1a00-9497-4883-0323-08d7e804d2e3
x-ms-traffictypediagnostic: SG2APC01HT153:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RAdmN47gC9RWaRToVwQ6N+4pHTDaEOZpHu6L9HTYLHwUzvswXBWbkzs1qoXmRZ4Q97QDR/kJupzvKH9gthoC6zlZ6ERzqLY+97L4FLGYk+1Ja8jLPBm2MvAWdjcycSuHClHQcLyte2wVAqcRCPoW7hDgvSbffPaPsKuC4kLoqgPI8c0s4a1avQNhEUUwEXJIDWEYLy/MkA0HN0bpXaakYowkk8RjglF88HnYb0W98GSov5pvuct5HTfp7iEQTZ0N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: 1pqVp6Aflb1Y0sHPzO1PmwXcIeML+ozTQ1nuvH2U72nwyblwKaBSp5N0s1ehhRkjDCbviU97hoWwmI31vZ2F7Famt4G0IjjIs39/CsSfHR++CDdfDihdAxpx53Yz+DLtPxpL9ddeB+pz78WGMk2Vvg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ee4e1a00-9497-4883-0323-08d7e804d2e3
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 04:06:11.0861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT153
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1358787361388066344=="
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

--===============1358787361388066344==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB3348E558D45108505B6A5D5D88D00BM1PR01MB3348INDP_"

--_000_BM1PR01MB3348E558D45108505B6A5D5D88D00BM1PR01MB3348INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Jonathon

I need to use a sample rate between 20ksps to 1msps.

Btw I tried following Brian's advice about breaking the logic. I was able t=
o use to build a fpga image with 2x1:4 DDC block. Though I required 1:16 DD=
C block, but still it is great to start working.

@Brian Padalino<mailto:bpadalino@gmail.com>: Thanks a lot for the help.

Regards
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Friday, April 24, 2020 9:00 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: Brian Padalino <bpadalino@gmail.com>; usrp-users@lists.ettus.com <usrp-=
users@lists.ettus.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

Hi Snehasish,

The DDC supports a wide range of sampling rates. Depending on the rates you=
 want, some of the DDC filters could be removed to reduce utilization or th=
ere may be a better architecture to fit your situation. What rates do you n=
eed to support?

Jonathon

On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello Brian

While writing the bitstream it gave an error stung the current design didn=
=92t satisfy the timing constraint.

I tried creating 12 blocks of DDC 1 to 2, blocks but that failed too saying=
 the placer couldnot place more than 5% of the movable instances in the des=
ign.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Brian Padalino <bpadalino@gmail.com<mailto:bpadalino@gmail.com>>
Sent: Thursday, April 23, 2020 4:19:14 AM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:
Hello Brian

Thanks for your response, actually I tried using DDC 1 to n block as given =
here, but giving 1 to 8 channels have a timing issue, while generating the =
build. So I thought it as an alternative plan.

https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/REA=
DME.md#dsp-utilsnoc_block_ddc_1_to_n

What was the timing issue?  Is it possible for you to break up the logic to=
 help relax timing constraints?

Brian
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR01MB3348E558D45108505B6A5D5D88D00BM1PR01MB3348INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hello Jonathon <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I need to use a sample rate between 20ksps to 1msps. <br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Btw I tried following Brian's advice about breaking the logic. I was able t=
o use to build a fpga image with 2x1:4 DDC block. Though I required 1:16 DD=
C block, but still it is great to start working.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<a id=3D"OWAAM472637" class=3D"_1OtrSZdhKXVv3UhaivrdJ4 mention ms-bgc-nlr m=
s-fcl-b" href=3D"mailto:bpadalino@gmail.com">@Brian Padalino</a>: Thanks a =
lot for the help.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 9:00 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> Brian Padalino &lt;bpadalino@gmail.com&gt;; usrp-users@lists.ett=
us.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>The DDC supports a wide range of sampling rates. Depending on the rate=
s you want, some of the DDC filters could be removed to reduce utilization =
or there may be a better architecture to fit your situation. What rates do =
you need to support?</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, Apr 23, 2020 at 3:19 AM Sne=
hasish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">While writing the bitstream it gave an error stung the cur=
rent design didn=92t satisfy the timing constraint.&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I tried creating 12 blocks of DDC 1 to 2, blocks but that =
failed too saying the placer couldnot place more than 5% of the movable ins=
tances in the design.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards</div>
<div dir=3D"ltr">Snehasish</div>
<div><br>
</div>
<div id=3D"x_gmail-m_4985790380076774549ms-outlook-mobile-signature">Get <a=
 href=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_4985790380076774549divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D=
"_blank">bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, April 23, 2020 4:19:14 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" target=3D"_blank">snehasish.cse@live.com=
</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your response, actually I tried using DDC 1 to =
n block as given here, but giving 1 to 8 channels have a timing issue, whil=
e generating the build. So I thought it as an alternative plan.</div>
<div dir=3D"ltr"><br>
</div>
<div><a href=3D"https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n" target=3D"_blank">htt=
ps://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/README=
.md#dsp-utilsnoc_block_ddc_1_to_n</a></div>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>What was the timing issue?&nbsp; Is it possible for you to break up th=
e logic to help relax timing constraints?</div>
<div><br>
</div>
<div>Brian</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div>
<div dir=3D"ltr">
<div></div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB3348E558D45108505B6A5D5D88D00BM1PR01MB3348INDP_--


--===============1358787361388066344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1358787361388066344==--

