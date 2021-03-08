Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0D533107D
	for <lists+usrp-users@lfdr.de>; Mon,  8 Mar 2021 15:12:49 +0100 (CET)
Received: from [::1] (port=47894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJGch-00083p-Dr; Mon, 08 Mar 2021 09:12:39 -0500
Received: from mail-oln040092009107.outbound.protection.outlook.com
 ([40.92.9.107]:1186 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1lJGcd-0007uH-RF
 for usrp-users@lists.ettus.com; Mon, 08 Mar 2021 09:12:35 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DLFtAsbIeCMO/BKOvuWq6PJSVzlNcTeYjsTA8P11kqZWFwo6uRsh4H5Ow/4p1ePX493gdZd8JoF093tJ+sIdr1AIJ34ZNRmRr/PMn/gFP6l+OYLg3gmtnh9wAns2mRo2Y/MyNESBQjFsKdmZwa5KyLXW1ndB5sYs1Wr5C+wtvJdGbw/3hs8edaen6+2OW19VJHzJJvCMRBTXTm9Hql03ZIC9uiSZy9nduaVxAp5vRf31GtJMydDr6N2m633wXJyPvmSbOJb3y0sxj3+AzMdDXo/m0fcvFmAYNsmFuk2wFunZdJpitJMxEati/5lMTkpiz02W+eYcqzjnMT7Oar6wJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCxuiBLWOEoSoU2vxx4QjkpwBT9sBDcwSPTiqBc/TpI=;
 b=fqbS6NuWT0xF3PshmaEMCh5+NbLKS+dFEUrp127C4Sjhvg+miMmv/Njt5Xt2ZAQdWSD6rRcvggw3dGl2MedG89wjMqtiArwm545aKX8unKbT5rwntgT4HQO3px94JcsZk4HusqZsKIz+HahuiXXZviC+yu75tWUKAK3L0olq4Nv4GkSSr7PBwUl0Iu9YJ8wCJYEDMiiPcJq79KZOT+6c2H/tLoYLAspGvaIjLSxif4dprC09eIDXBzSmoKtCzMRhnqpLnAUmgxb2X1hM1DYx28nVeqB2v1A+pGnGg8grJjB3Xz1ZcTl0GdBD9MeGqqJ9SapyAfYE5RtcUI9tTskhKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCxuiBLWOEoSoU2vxx4QjkpwBT9sBDcwSPTiqBc/TpI=;
 b=CnDFmqWk8nkQYDV61p8LMR/cUzZ6gsWtAbPc8tkvxj94TUTKPwyZ3ZEGYw8hMNToLHn097Dm3W70Y7VxRAy30LH6tZ3N7+AK97O9jHwe5EC9t8gd2/EE9dVbqv9hqY668iIrhkGxbDKvnvGUSApj1UdpSkW0UvE93bwBCwrKq8YEkvz3VrmpA60bwooukp2nv1QppFeNktGSXATgOizLoVYnbNxi76aOuRFfaEasbqpnT6lAql75zOEZT/9j90i0pMt8ZDZBH9VjAiJyjtjOws4aD55vU0kj4TnMnKOYzWHUr9t+StU8Ujr9lr4g51lsCkKO2Nn5A2LBXsyfT6aeSw==
Received: from DM6NAM04FT029.eop-NAM04.prod.protection.outlook.com
 (2a01:111:e400:7ea3::49) by
 DM6NAM04HT092.eop-NAM04.prod.protection.outlook.com (2a01:111:e400:7ea3::143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Mon, 8 Mar
 2021 14:11:54 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 (2a01:111:e400:7ea3::51) by DM6NAM04FT029.mail.protection.outlook.com
 (2a01:111:e400:7ea3::247) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.25 via Frontend
 Transport; Mon, 8 Mar 2021 14:11:54 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::2da4:eb7e:cc30:8f3f]) by SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::2da4:eb7e:cc30:8f3f%6]) with mapi id 15.20.3890.037; Mon, 8 Mar 2021
 14:11:54 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Current Recommended UHD RFNoC Versions?
Thread-Index: AQHXETlhxzHljkG1xEq4YYuaEkdWBqp3VqOAgACER4CAAkv/Bw==
Date: Mon, 8 Mar 2021 14:11:54 +0000
Message-ID: <SN6PR1901MB468802554777BDBA10E79AB3A4939@SN6PR1901MB4688.namprd19.prod.outlook.com>
References: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <54732d0c-9515-3b01-6221-b8b177e52e6d@ettus.com>,
 <CAL7q81ss9P3tEKd-9djzCT0+F3DreSzcUGermgEvS=yDWdd2-g@mail.gmail.com>
In-Reply-To: <CAL7q81ss9P3tEKd-9djzCT0+F3DreSzcUGermgEvS=yDWdd2-g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:822F6EDBD3801A805333B12DB6ECAF3E7046C9D385535C7940DA67D9B41A3ABF;
 UpperCasedChecksum:A8290C52D02E941570FBCDB8029BDBE9A68BD09A2D8041F73648F50C88D4A221;
 SizeAsReceived:7044; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fOp3RvJ9ONdYQLwqAV6RdQX4wxfZTxtt]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: a0c8e7ae-8493-443c-6320-08d8e23c20ac
x-ms-traffictypediagnostic: DM6NAM04HT092:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vr2QiRXVHGUdNj+IqboHFAFxraLkDk4+S4fE6W1O3WYMZyi6T+TscXvg+LSxqVf39EPjsXhP3Ya6SlMH9/4y9fkK3yFwKowmbVmglhxV98tsmJHg3AevlR+1VYrgHQ8494e50n7gVZLUO96cUe4D7/KKP2jnSUPXKpXJIima6zV3Cqjes0OWXrM3XoIC3f7kiBxkc3eMXQFLmuRn8iH+x9EWctMW+mAJbWqonXwPfvRoa6KtNVQmn5gU7buy8z15hPFkObpM0eqYnQsRn6qnnfrYammciEdsAQn3S5JoWvdVrLq9hsr9q5csQiDU73VcDZ2G/aFdpqDRgUrPANoXQhq213QO72Rx+FwcdNluqi8SLFyvQGoj+i5fyelrSBHGr4RoEIWsryohw84J3RA1tj4XCPqDTM8SMJgzF0Eh+my0fZFvsOy4vYCkdv43ST3W
x-ms-exchange-antispam-messagedata: k9hkP79pFBhX5YsPsFZC4MHVVk1kpBO3S7XPJVmmpmzlBd2gcFAZVKapEc8ako30p32cfl9UO0BtCKEqGstLb7iXLA4Y9qmfX7bBcAU25FJMB0DK0bdxvqsvRsGzfu0lrwO2R/nw1m9/6XBKf6LKQw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM04FT029.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a0c8e7ae-8493-443c-6320-08d8e23c20ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2021 14:11:54.6119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM04HT092
Subject: Re: [USRP-users] Current Recommended UHD RFNoC Versions?
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
Content-Type: multipart/mixed; boundary="===============0449169273706018145=="
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

--===============0449169273706018145==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR1901MB468802554777BDBA10E79AB3A4939SN6PR1901MB4688_"

--_000_SN6PR1901MB468802554777BDBA10E79AB3A4939SN6PR1901MB4688_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks much, Marcus and Jonathon!  I appreciate the direction and reference=
s.

Jeff

________________________________
Hi Jeff,

Here are links to the RFNoC 3 & 4 workshop videos that will help you get st=
arted. Personally, I would suggest trying out RFNoC 4 first.

RFNoC 4: https://www.youtube.com/watch?v=3DM9ntwQie9vs
RFNoC 3: https://www.youtube.com/watch?v=3DVbODcrmpLaU

On Sat, Mar 6, 2021 at 2:12 PM Marcus M=FCller via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
By the way, if RFNoC 4 is what you're interested in, the current master bra=
nch of
gr-ettus, GNU Radio 3.8 and UHD 4.x are what you're aiming for!


On 04.03.21 22:08, Jeff S via USRP-users wrote:

> I'm getting ready to help someone install code and I'm seeing conflicting=
 things
> regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC developm=
ent.  They are
> going to use an N310 and I've been using maint-3.7 for quite a while.
>
> Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7 of=
 GNURadio, and
> master for gr-ettus?  Or is there some later, stable recommendations?
>
> Sorry if there was any recent related posts, but I didn't find any.
>
> Thanks,
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_SN6PR1901MB468802554777BDBA10E79AB3A4939SN6PR1901MB4688_
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
Thanks much, Marcus and Jonathon!&nbsp; I appreciate the direction and refe=
rences.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Jeff<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div>
<div dir=3D"ltr">Hi Jeff,
<div><br>
</div>
<div>Here are links to the RFNoC 3 &amp; 4 workshop videos that will help y=
ou get started. Personally, I would suggest trying out RFNoC 4 first.
<div><br>
</div>
<div>RFNoC 4:&nbsp;<a href=3D"https://www.youtube.com/watch?v=3DM9ntwQie9vs=
">https://www.youtube.com/watch?v=3DM9ntwQie9vs</a><br>
</div>
<div>RFNoC 3:&nbsp;<a href=3D"https://www.youtube.com/watch?v=3DVbODcrmpLaU=
">https://www.youtube.com/watch?v=3DVbODcrmpLaU</a></div>
<div></div>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Sat, Mar 6, 2021 at 2:12 PM Marc=
us M=FCller via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
By the way, if RFNoC 4 is what you're interested in, the current master bra=
nch of<br>
gr-ettus, GNU Radio 3.8 and UHD 4.x are what you're aiming for!<br>
<br>
<br>
On 04.03.21 22:08, Jeff S via USRP-users wrote:<br>
<br>
&gt; I'm getting ready to help someone install code and I'm seeing conflict=
ing things<br>
&gt; regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC devel=
opment.&nbsp; They are<br>
&gt; going to use an N310 and I've been using maint-3.7 for quite a while.<=
br>
&gt;<br>
&gt; Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7=
 of GNURadio, and<br>
&gt; master for gr-ettus?&nbsp; Or is there some later, stable recommendati=
ons?<br>
&gt;<br>
&gt; Sorry if there was any recent related posts, but I didn't find any.<br=
>
&gt;<br>
&gt; Thanks,<br>
&gt; Jeff<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
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
</div>
</body>
</html>

--_000_SN6PR1901MB468802554777BDBA10E79AB3A4939SN6PR1901MB4688_--


--===============0449169273706018145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0449169273706018145==--

