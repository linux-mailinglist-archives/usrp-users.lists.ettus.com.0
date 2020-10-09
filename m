Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5FF2887CF
	for <lists+usrp-users@lfdr.de>; Fri,  9 Oct 2020 13:28:47 +0200 (CEST)
Received: from [::1] (port=59250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQqZo-0001jW-Ag; Fri, 09 Oct 2020 07:28:44 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:33098)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1kQqZk-0001fD-PC
 for usrp-users@lists.ettus.com; Fri, 09 Oct 2020 07:28:40 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 7B20A104F9C
 for <usrp-users@lists.ettus.com>; Fri,  9 Oct 2020 11:27:42 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.22])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 6C8A78005A; Fri,  9 Oct 2020 11:27:32 +0000 (UTC)
Received: from us1-mdac16-33.at1.mdlocal (unknown [10.110.51.91])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 6B36C800A3; 
 Fri,  9 Oct 2020 11:27:32 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.48.236])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id CB4241C0066;
 Fri,  9 Oct 2020 11:27:31 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7F18B400056;
 Fri,  9 Oct 2020 11:27:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b5ZBQDju0fx0X5K13HgA8ESMZRELl2fzPj34bPeDi5ihdC88W4isTNkqFTOge2lqPgIBVoSaHEnHQQ6BmawTDD7RktyBjt74Xo/u/E5Js5/0E73KgMmTzreAZGq2QEW8KuxB7s6BatrrBePMGkaCKQyqZNtHShDmeY8aZA1+gg2aj/csOM41EQPlRs84wMf/0aDC5MxCOvUrtD8BsfRVfV4k+f6Wh6LadF4XD9XitZfYvk3LGbPwL00I3ICZ9l+gnzbaZAvclY+HrdlUo/G7o76PnDhb4lhcKbrLSK0LNIzSTvLMYSFkg4LC9ATPLRb+qc8Xk4T/UIWkOU8bdtPQVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mC1p2KQFL36JYIdZkoWIKDoLj/9/rd+Dwl2DvCIpCDw=;
 b=N1SHEaEhIY4hJDHmtFU2VAtek5sxtt2a5DnFEHOeaUwnG+AI+fB8LPJLTp0r8X7sQ+/Rkf4NOMwm+i3hDSZscGdnN30FfnjcWJO/xS3LuGJvNVCniAv6j/k3zdzJ7rQOkQ34C0CH6Pwn+7qdW/DnK3eH/e7q0eaOyes1fNG0IrfYdNjD6Yl3GFo6ZUZ5i1s9MqqGQqHIChWNcHW66e/EaCa/bjNEuKL5eFydDkACsdHUdnfbhzLzTGNq0DuYc8yPclVH3lZv6Zt4e+7fEvNBtPmmj3q+RaQtipdPIubSEUx/LVA/SD22kWfWijKlThH5LdJIbQFzNiBa5IAe67Wd3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mC1p2KQFL36JYIdZkoWIKDoLj/9/rd+Dwl2DvCIpCDw=;
 b=b63jvcCpc7acObO/jbd2Au/bGlIGOBabsKyERlMfSOsgl84KvqSDx7RK2wdkBzTt3qBSbFxRg8lwZdWpFQiGKJA68xXGU2RpfWQg7gsHUeMVzi/jiypQstCERyHgv4SZiXKJX8DXA1jBcvA1KsMhbChfY/r+2GYx63y/WCGED3s=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3279.namprd12.prod.outlook.com (2603:10b6:208:105::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Fri, 9 Oct
 2020 11:27:29 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::7c9d:5fe7:77ba:1be5%3]) with mapi id 15.20.3455.025; Fri, 9 Oct 2020
 11:27:29 +0000
To: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] New mender instructions?
Thread-Index: AQHWnabfrdx7nJ5fnEimNyynJOtT1amPITQc
Date: Fri, 9 Oct 2020 11:27:29 +0000
Message-ID: <MN2PR12MB33127F51EFE54032BF0ECD11B8080@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <CAB__hTQ66fKZiDJLS+JskvOOmJ7BRatHLTSoZozoLbP+L1iKLA@mail.gmail.com>
In-Reply-To: <CAB__hTQ66fKZiDJLS+JskvOOmJ7BRatHLTSoZozoLbP+L1iKLA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e845837-a525-4fcd-d0dd-08d86c464ec0
x-ms-traffictypediagnostic: MN2PR12MB3279:
x-microsoft-antispam-prvs: <MN2PR12MB3279FB3AF174BE3C3700E9DDB8080@MN2PR12MB3279.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ju6AWtR53esXj9mIHGX8oDFY87reGZIfKexWrCWXWYPtYqTLUJpimbRDQpeVPIDBRISdXgasnI6dR0ObnG8UtI31f8bIBxOWnW37FQto+9aYSjhCDxf8iGpFWVVgB+6TCBfMLLnxLr15Cs2DrNoTY6XEuydGkvLAxPZWD0hFfBWj5opErei2ZUeaN0LBkXxVUyZXYk6BNuGu/OlaM4cX8kJqo+m8a1xA09W4QYfAQBjrW3DvbAdhaNcU5PPUoznz4H9mSnCx12skhZ+TrS9vMhmMIH9xmM+h+NQRgWgBzsu5W2Rr5HUOIEPoRjJEN3ht2VUjxQ6sHuNdcvrVmwiffAkgHRo9Gj9ykfJG5j/p8euKfZWFXcHX2pH+kP72aqMojvOirnEDEPr1e+SmuXUVRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(376002)(346002)(39830400003)(366004)(66476007)(52536014)(316002)(6506007)(110136005)(86362001)(53546011)(19627405001)(76116006)(33656002)(66946007)(5660300002)(66556008)(66446008)(55016002)(186003)(64756008)(4744005)(26005)(83080400001)(2906002)(166002)(478600001)(7696005)(8936002)(8676002)(9686003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: MZjzraqxJOOXWCT2JGVRqQG2ePxz4R6njdQyW48GmDRFtwSQIPBD/QwOTi+6gnLehqyqfiZivb+nCPvx5KHHp9UWye4gaeckLu50HSa+CDJg+c2yVM8TSr7dUVptzfMkp1eLQvwpVKex149Ok4JG1OZgYLkzv6VH+4e1+6tjQ8hEZyNi+VVh/IJ6wQGr/7Uhe/ZZpinprpjNiE+WfDjDx8OTnnxwBS5IRk0EEs+L4qvV5qr84SMd70K+rs7j6Q/e6BOBrdLA98M7lF7neVwQehvwem+CkJa02udwQHfycEdn8OSoAEZ/RP+hAXkfUzGi65lv3ZJbfuwhdgfS6IhK/RTHct5z+6ceoAgb1/G8tag3iuf7ShBmZsHK1Bh55uBoYMWp7vfokua1c595lpoW0rgbStAahRCL4s013Bke5JTMhu1SOy2ALCO4MvW5WHITIVE1HweOMqTxtL4U0Ic/ghUnLAN/cJfXMNm87s1nEjxZtHlRphpDs9rbg5ukL6OCTAdMRC4QOdlwqKjkZ9Wu6cE/uMmW2OqGRsqRrDKNHFZoS1r9ltr1MBVzCKuG6yWd+B3NckRF7Qx77Ult+oPEs9KQUeL98anFsrAUBNPsRfpVthtyigk8ul9xaVHTcOU7Rv1hRMMl6RvS2U33oUmFHA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e845837-a525-4fcd-d0dd-08d86c464ec0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 11:27:29.5406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h3fRhBtYis0y1HkFeuy3WvKghgc+Zbg53j4yxkbJ5hG2bUSqruP5ED831/UWuumDxmeqM/To0noqCdpdVYXIduewF7IblNgiUF2azptGVa4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3279
X-MDID: 1602242852-1LsoKKUHvH7Y
X-PPE-DISP: 1602242852;1LsoKKUHvH7Y
Subject: Re: [USRP-users] New mender instructions?
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
From: Jim Palladino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jim Palladino <jim@gardettoengineering.com>
Content-Type: multipart/mixed; boundary="===============6919625684520824923=="
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

--===============6919625684520824923==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33127F51EFE54032BF0ECD11B8080MN2PR12MB3312namp_"

--_000_MN2PR12MB33127F51EFE54032BF0ECD11B8080MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Per (https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_rasm_mender) I=
 used the following on an E320:

mender install /home/root/usrp_e320_fs.mender

I'm pretty sure I needed to add a force flag to it as well.

Jim

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Rob Koss=
ler via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, October 8, 2020 3:10 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] New mender instructions?

Hi,
What is the new mender command to use on the N310 under UHD 4 file system? =
 The -rootfs option from the following instructions is not a valid option.


root@ni-n3xx-serial:~# mender -rootfs /home/root/usrp_n3xx_fs.mender

--_000_MN2PR12MB33127F51EFE54032BF0ECD11B8080MN2PR12MB3312namp_
Content-Type: text/html; charset="us-ascii"
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
: 12pt; color: rgb(0, 0, 0);">
Hi Rob,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Per (<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_ras=
m_mender" id=3D"LPlnk695367">https://files.ettus.com/manual/page_usrp_e3xx.=
html#e3xx_rasm_mender</a>)&nbsp;I used the following on an E320:<br>
<br>
mender install /home/root/usrp_e320_fs.mender<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">I'm pretty sure I needed to add a force flag=
 to it as well.</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Rob Kossler via USRP-users &l=
t;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Thursday, October 8, 2020 3:10 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] New mender instructions?</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi,<br>
<div>What is the new mender command to use on the N310 under UHD 4 file sys=
tem?&nbsp; The -rootfs option from the following instructions is not a vali=
d&nbsp;option.</div>
<div><br>
</div>
<div>
<pre style=3D"font-family:monospace,Courier; color:rgb(0,0,0); background-c=
olor:rgb(249,249,249); border:1px solid rgb(221,221,221); padding:1em; whit=
e-space:pre-wrap; line-height:1.3em; font-size:14px">root@ni-n3xx-serial:~#=
 mender -rootfs /home/root/usrp_n3xx_fs.mender</pre>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB33127F51EFE54032BF0ECD11B8080MN2PR12MB3312namp_--


--===============6919625684520824923==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6919625684520824923==--

