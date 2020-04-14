Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C06F71A788D
	for <lists+usrp-users@lfdr.de>; Tue, 14 Apr 2020 12:38:53 +0200 (CEST)
Received: from [::1] (port=34032 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jOIxv-0007ey-QL; Tue, 14 Apr 2020 06:38:51 -0400
Received: from us-smtp-2.mimecast.com ([205.139.110.61]:44972
 helo=us-smtp-delivery-1.mimecast.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
 (Exim 4.93) (envelope-from <fsalomon@mathworks.com>)
 id 1jOIxs-0007Y0-62
 for usrp-users@lists.ettus.com; Tue, 14 Apr 2020 06:38:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mathworks.com;
 s=mimecast20180117; t=1586860686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UX3SG9SUv83/8hN9mbOgYZ0nnAt8HObyokEoU5po6Yk=;
 b=e9suB/QeAee8fAEkl3JFqA4xwgdENGsp8vwIpXQM9I0D3Rm3If5lKkfbKMTO3StXexGiS6
 4y7abKprOY3p2R05YyFC9AJVkpr0jC5tdGbOui4L6uhbMiOakmhUrVBIHw7vrYeJvRMgi5
 ZB5JmnvQXg52dKm+Sf6zE48K0YdnARI=
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
 (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-104-xaDQKgptNBKAMAwrvYhkWw-1; Tue, 14 Apr 2020 06:38:03 -0400
X-MC-Unique: xaDQKgptNBKAMAwrvYhkWw-1
Received: from MN2PR05MB6158.namprd05.prod.outlook.com (2603:10b6:208:d2::30)
 by MN2PR05MB6397.namprd05.prod.outlook.com (2603:10b6:208:d8::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.13; Tue, 14 Apr
 2020 10:38:02 +0000
Received: from MN2PR05MB6158.namprd05.prod.outlook.com
 ([fe80::cc14:becb:bf4b:ca51]) by MN2PR05MB6158.namprd05.prod.outlook.com
 ([fe80::cc14:becb:bf4b:ca51%6]) with mapi id 15.20.2921.024; Tue, 14 Apr 2020
 10:38:01 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] E312 fails to run uhd_usrp_probe from host
Thread-Index: AQHWDoyBZqBu4cu+/Uy4/sNpG7j+P6hxD8wxgAFHaICAABwjgIAGAMZf
Date: Tue, 14 Apr 2020 10:38:01 +0000
Message-ID: <MN2PR05MB61582C9FC55D1EC05A1E3B19CCDA0@MN2PR05MB6158.namprd05.prod.outlook.com>
References: <MN2PR05MB6158024B384B2167EDE0F3A1CCC10@MN2PR05MB6158.namprd05.prod.outlook.com>
 <BYAPR03MB4678BE943BAAE738CFFB24B4D3C10@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CADBWrHjmRmKZ55Ud33HbENZPb91FtQLsnQywwjK6mE8rqTGtWw@mail.gmail.com>,
 <5E90891F.6060508@gmail.com>
In-Reply-To: <5E90891F.6060508@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2.29.222.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22f39e54-0133-4c36-ed70-08d7e05fe80a
x-ms-traffictypediagnostic: MN2PR05MB6397:
x-microsoft-antispam-prvs: <MN2PR05MB6397D71FF47C16DFC803459CCCDA0@MN2PR05MB6397.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR05MB6158.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(366004)(376002)(9686003)(186003)(53546011)(7696005)(55016002)(478600001)(19627405001)(2906002)(71200400001)(966005)(5660300002)(52536014)(6506007)(8936002)(66446008)(66946007)(76116006)(64756008)(81156014)(33656002)(66476007)(8676002)(316002)(66556008)(86362001)(110136005)(26005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LoCXI3tpILuBcA6ykrf6xZyx/9jdLQEQpGY1KQjrDvK0qlWY7P7X/UxELlV36DZ/aMYjUiZKusdVNr54pD1x8C+UFKZodvHEq+rOt5kO2ppr4yhVjuuKRWoZGjaKubnAUPu0L7bPfEALcOLsAAaH31dFRkArk7rvPPOUE9c2AHrv5hwzuKFFn7ropFdrmAvoY3EOY+/CB2B4L6Zbwih4nNC4rvuO+pHSk2uo8c82sfaGwFVXM6n8dfOqaBAT0m2EZMbhi+5+BPcIPhLlS8+9G/OMMAqf2fdwfrisANkZODsaSSxCln7VX/e1SX1hjZ6Xq7KRfHDbzO85ew3kLcMmOlywOf/pay+67Go4tSVMzdx6dy+UAKU2BJYvSNErFbpQCvkQgDEDfjvSrnsMwKR4OzUeuzuYqKxTJ+hMRNf9CHl3NC6uWZ5TCzQxXZVEqHUVrbGdmfSMcwaJyqyZ40uGQKH7fBDGCfTQceo7cSf9pYTROJaH9r7DApdrAZ74mKZLZ8lYuTSs16XMB+mSS79Hfg==
x-ms-exchange-antispam-messagedata: PZF5czNrcn9Lfk4NZ06lhdJ99qZuX9TLGWLSsuBONj5uwhVjVZ62/nA8vxgMoGwpvTXjvETipdwAiT6snmk7s/Qu7T9Js5JxpsJ5K0aZ92tybJBBI52rOIvZAwZ0yhz/LgAfiudqd2+F9FXDlApmng==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: mathworks.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22f39e54-0133-4c36-ed70-08d7e05fe80a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 10:38:01.4910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99dd3a11-4348-4468-9bdd-e5072b1dc1e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NRX4VftCl9aTGM2nCsghRrkiwv49Qb9oT0JQ/qCaXxxvtnYL0sAQ3a+xjg15saZ+SFouXBgwVlQMWiJ6jsmXqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6397
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mathworks.com
Subject: Re: [USRP-users] E312 fails to run uhd_usrp_probe from host
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
From: Francisco Salomon via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Francisco Salomon <fsalomon@mathworks.com>
Content-Type: multipart/mixed; boundary="===============4053042150292406282=="
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

--===============4053042150292406282==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_MN2PR05MB61582C9FC55D1EC05A1E3B19CCDA0MN2PR05MB6158namp_"

--_000_MN2PR05MB61582C9FC55D1EC05A1E3B19CCDA0MN2PR05MB6158namp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Thanks all for the answers!
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: 10 April 2020 15:56
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E312 fails to run uhd_usrp_probe from host

On 04/10/2020 09:15 AM, Sam Reiter via USRP-users wrote:
Francisco,

The FPGA update sounds like a good step. I also notice that the 'addr'  arg=
ument you pass seems to be interpreted as a 'mgmt_addr' based on the [INFO]=
 output. In newer embedded devices like the N3xx, I wouldn't expect you to =
be able to successfully run a uhd_usrp_probe over that mgmt address - you c=
an't pass CHDR packets over the mgmt interface. On the N3xx, I'd tell you t=
o connect over the SFP+ port(s) and try again. The E312 obviously doesn't h=
ave SFP+ ports, so I think you'd need to set it up to operate in "network m=
ode" to enable this CHDR streaming over the RJ45. I'm not sure what the sta=
te of network mode is on the E31x in UHD 3.15.

Alternatively, you could try SSH'ing into your E312 over that mgmt port, an=
d then run the uhd_usrp_probe directly on the device. I'd expect that to wo=
rk over the mgmt port every time.

-Sam
See:

https://files.ettus.com/manual/page_usrp_e3xx.html#e31x_migration<https://f=
iles.ettus.com/manual/page_usrp_e3xx.html#e31x_migration>


The Network Mode is no longer supported on E31x with the MPM-based UHD.



UHD 3.15.0.HEAD-0-gaea0e2de

Any clue?
Many thanks!

Francisco
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<http://l=
ists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>



--_000_MN2PR05MB61582C9FC55D1EC05A1E3B19CCDA0MN2PR05MB6158namp_
Content-Type: text/html; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; color: r=
gb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !importa=
nt;">Thanks all for the answers!</span><br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> 10 April 2020 15:56<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] E312 fails to run uhd_usrp_probe from host=
</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 04/10/2020 09:15 AM, Sam Reiter via USR=
P-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">Francisco,
<div><br>
</div>
<div>The FPGA update sounds like a good step. I also notice that the 'addr'=
&nbsp; argument you pass seems to be interpreted as a 'mgmt_addr' based on =
the [INFO] output. In newer embedded devices like the N3xx, I wouldn't expe=
ct you to be able to successfully run
 a uhd_usrp_probe over that mgmt address - you can't pass CHDR packets over=
 the mgmt interface. On the N3xx, I'd tell you to connect over the SFP&#43;=
 port(s) and try again. The E312 obviously doesn't have SFP&#43; ports, so =
I think you'd need to set it up to operate
 in &quot;network mode&quot; to enable this CHDR streaming over the RJ45. I=
'm not sure what the state of network mode is on the E31x in UHD 3.15.&nbsp=
;</div>
<div><br>
</div>
<div>Alternatively, you could try SSH'ing into your E312 over that mgmt por=
t, and then run the uhd_usrp_probe directly on the device. I'd expect that =
to work over the mgmt port every time.</div>
<div><br>
</div>
<div>-Sam</div>
</div>
</blockquote>
See:<br>
<br>
<a class=3D"x_moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_usrp_e3xx.html#e31x_migration">https://files.ettus.com/manual/page_us=
rp_e3xx.html#e31x_migration</a><br>
<br>
<br>
The Network Mode is no longer supported on E31x with the MPM-based UHD.<br>
<br>
<br>
<blockquote type=3D"cite"><span><br>
</span>
<div class=3D"x_gmail_quote">
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex; border-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span>
<div>UHD 3.15.0.HEAD-0-gaea0e2de<br>
</div>
<span></span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Any clue?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Many thanks!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Francisco</div>
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
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________
USRP-users mailing list
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>
</pre>
</blockquote>
<br>
</div>
</body>
</html>

--_000_MN2PR05MB61582C9FC55D1EC05A1E3B19CCDA0MN2PR05MB6158namp_--



--===============4053042150292406282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4053042150292406282==--


