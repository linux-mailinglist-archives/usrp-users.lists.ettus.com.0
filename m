Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5A81B5000
	for <lists+usrp-users@lfdr.de>; Thu, 23 Apr 2020 00:18:11 +0200 (CEST)
Received: from [::1] (port=47184 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRNh4-0002au-3n; Wed, 22 Apr 2020 18:18:10 -0400
Received: from mail-oln040092255094.outbound.protection.outlook.com
 ([40.92.255.94]:44834 helo=APC01-HK2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1jRNgz-0002Uq-FJ
 for usrp-users@lists.ettus.com; Wed, 22 Apr 2020 18:18:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BEoVO4nUPt0S2QpQYsiJTzqrXtVK10y0Osp+25gnilUAi4BjNMHxj86KTIydhS13VbJNpqnXfkvENKvmBejYOM1TUVW4MN1RHP2VrLDdh/GeCuKZ1fmJcQlx+tM5CBDO+kg14MoRYUb4ROvcwytUkpWVf5+6WnrROcc+lk1YkFWLCpXZMBUf39t2FzknXOvy4Pf2+c5ou6oU0xNf2jPdVcbUovFgc3BKDGGqfWwgM/SeNpSdVxEuhRxR9jVZZqNcy6Wdk4yRvfadKKEOWQc7qi7me/3GsIUIY+kC27kj78IJA54KCPm2xMUGWKaOrBmrtbZq1uxrJVGXP3p1rbmE7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkWdcQzFJMVdlCU0YX1q7/Y15vmM9vKnwGQQOt7/1gI=;
 b=lQW4V58wdIIvrgsqwcjCkBcNI0ugobAB6Tibgv5F/ifazIAg4Zk2ia+kJB7WvxEnec8vHwVUFR+jaEhT+I/huCHJCZTqsT3+w70cvA9s35Hm1s7YQxvCjQwkw5hmzEBvrhcGq3bjd3/xqyWBvqj3gxnC8E7AF50nji9bPeumAd6/aVZbLVCL3OWKd4VBZGFK3IRa79oolT/MYT9Bvq/e2DLyvJE/IJu7k3DsejMMT7OWb3RKBn3FCCvJWu3FZNibtXK63u7YQV3MypQ4km+xA6r3m2QaZ4oAUudsLab6OjlD+eT6sDUYIP13nSeZOSIhvkaZQpUMOLUbJn6pn7cipw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkWdcQzFJMVdlCU0YX1q7/Y15vmM9vKnwGQQOt7/1gI=;
 b=XGE/KDPJrfAmo+i/xzo7EoRgDjPedwngxPXaxv/e9BB4xL4tsUZACVtKQ13Hakhu5O5CiBb40rT0u0ODOLCKaj2yzbxbTo797CXJ0hczzsy8Sx+yl8XXOxnRNn7wvoZIKoaKJxAHd/q/evQo8DY7/KvC6k92NzWlo0A711gUQmOWoNyCBFY5JuxjwcNL1T02TOCptKKw8+l+mSTwF+t5MJC5LivAVnwQ5uHNK9WBKdjdEGdYDh+XLcXEwFOudPZ76jWdh3EgMz0jRGipSN6K/jbb68ggjciDTDVHHeLDsOq4uxbWBV9jAs17V0naMdZfN0t2puqp8Upo5YYBDNrSeA==
Received: from SG2APC01FT033.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::47) by
 SG2APC01HT024.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::402)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 22 Apr
 2020 22:17:22 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM (10.152.250.57) by
 SG2APC01FT033.mail.protection.outlook.com (10.152.250.119) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.15 via Frontend Transport; Wed, 22 Apr 2020 22:17:21 +0000
Received: from BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d]) by BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::847d:5ffa:5836:553d%7]) with mapi id 15.20.2937.012; Wed, 22 Apr 2020
 22:17:21 +0000
To: Brian Padalino <bpadalino@gmail.com>
Thread-Topic: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
Thread-Index: AQHWGPFZoDfvbKh70EeqElLjPk33eKiFsxgAgAACBxI=
Date: Wed, 22 Apr 2020 22:17:21 +0000
Message-ID: <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>,
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
In-Reply-To: <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:E71BF0B42E76189BF6D3BAF87A01679C8F25C90078E43E9BA1124C727EA60D23;
 UpperCasedChecksum:F2FDE2E85A5AC0D99EC7FF92E159091DDD2CF0E0B07D408F037ABC9BAA47EA11;
 SizeAsReceived:7097; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TL83IvdAzSCi8YMSg46OlijFFuQj+zfH]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e733274a-a1b1-46a0-dee0-08d7e70aed50
x-ms-traffictypediagnostic: SG2APC01HT024:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LG7RblkgiQzzLVWWagipiLwQf6T0EOnrxburit2mEF5A2NBNdl7FYAsx62dVMJsgHOBvES0Ju9ABjIwfu/+aD78JKBiTkEHl2O65CDj6sw59kMCCN8jrHidJb57zx80s2v02QpJRbhTA3wPCeTJMUyw04KC5Xw/npLJ7M32LJxe/LshbCWl5mM9bF1JqV2iTW7t7L3ETApVVCuLrTQtKNnvEgO4U9PnobEpYkothu+l39lFwB+z4k+vaRBILa66c
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:; SFS:; DIR:OUT; SFP:1901; 
x-ms-exchange-antispam-messagedata: nQLDc+ZGJ+Q/452CzK+cGZ9Wp5Pb7K8DrarIwLZ3zNffqVdDpTVLhqQL3NTw7s5uYry4ZcIi2F+Z9yuE/6Cc0rHE8DlXpZjcDrSSHKQR59wOevOqnjFJOdtlDq+aFY5juzVtK0m2xo9ikDbzA32twA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e733274a-a1b1-46a0-dee0-08d7e70aed50
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 22:17:21.2324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT024
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
Content-Type: multipart/mixed; boundary="===============1074150541843763892=="
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

--===============1074150541843763892==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR01MB334827C32F91A512A6786A1B88D20BM1PR01MB3348INDP_"

--_000_BM1PR01MB334827C32F91A512A6786A1B88D20BM1PR01MB3348INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Brian

Thanks for your response, actually I tried using DDC 1 to n block as given =
here, but giving 1 to 8 channels have a timing issue, while generating the =
build. So I thought it as an alternative plan.

https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/REA=
DME.md#dsp-utilsnoc_block_ddc_1_to_n

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Brian Padalino <bpadalino@gmail.com>
Sent: Thursday, April 23, 2020 3:38:02 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instanc=
es

On Wed, Apr 22, 2020 at 6:00 PM Snehasish Kar via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hello

I need to have input 16 input and output port from the RFNoC so that I can =
custom sample rate for each channel. Is it possible to modify the RFNoC DDC=
 block and split stream block to achieve this.

Probably not successfully.  They are too large by themselves to just instan=
tiate 16 of them.  Moreover, having lots of output ports on a block is not =
really well supported from my experience.  Lastly, having 16 blocks just is=
n't going to work.  The crossbar doesn't have enough ports.  You're better =
off making a block with 1 input and 16 outputs, but, as I mentioned before,=
 that is still potentially problematic.

Also, the split stream is pretty finicky.  I don't believe it conforms to t=
he AXI spec and might cause lockups.

Lastly, you need to make sure you adhere to the ~200MHz/AXI port rule of th=
umb.

Do you have a block diagram of what you're trying to achieve?

Brian

--_000_BM1PR01MB334827C32F91A512A6786A1B88D20BM1PR01MB3348INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
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
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n">https://gitlab.com/th=
eseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/README.md#dsp-utilsnoc_b=
lock_ddc_1_to_n</a><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards</div>
<div dir=3D"ltr">Snehasish</div>
<div dir=3D"ltr"><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Brian Padalino &lt;bp=
adalino@gmail.com&gt;<br>
<b>Sent:</b> Thursday, April 23, 2020 3:38:02 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:00 PM Snehasish Kar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br>
</div>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div><span style=3D"font-size:14.6667px; display:inline">Hello<span>&nbsp;<=
/span></span><br style=3D"font-size:14.6667px">
<br style=3D"font-size:14.6667px">
<span style=3D"font-size:14.6667px; display:inline">I need to have input 16=
 input and output port from the RFNoC so that I can custom sample rate for =
each channel. Is it possible to modify the RFNoC DDC block and split stream=
 block to achieve this.</span></div>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Probably not successfully.&nbsp; They are too large by themselves to j=
ust instantiate 16 of them.&nbsp; Moreover, having lots of output ports on =
a block is not really well supported from my experience.&nbsp; Lastly, havi=
ng 16 blocks just isn't going to work.&nbsp; The crossbar
 doesn't have enough ports.&nbsp; You're better off making a block with 1 i=
nput and 16 outputs, but, as I mentioned before, that is still potentially =
problematic.</div>
<div><br>
</div>
<div>Also, the split stream is pretty finicky.&nbsp; I don't believe it con=
forms to the AXI spec and might cause lockups.</div>
<div><br>
</div>
<div>Lastly, you need to make sure you adhere to the ~200MHz/AXI port rule =
of thumb.</div>
<div><br>
</div>
<div>Do you have a block diagram of what you're trying to achieve?</div>
<div><br>
</div>
<div>Brian</div>
</div>
</div>
</div>
</body>
</html>

--_000_BM1PR01MB334827C32F91A512A6786A1B88D20BM1PR01MB3348INDP_--


--===============1074150541843763892==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1074150541843763892==--

