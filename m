Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F88C315126
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 15:02:53 +0100 (CET)
Received: from [::1] (port=35364 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9TbP-0004Re-IF; Tue, 09 Feb 2021 09:02:51 -0500
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52]:35426)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jim@gardettoengineering.com>)
 id 1l9TbL-0004Ko-GJ
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 09:02:47 -0500
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 D140CCBC9F
 for <usrp-users@lists.ettus.com>; Tue,  9 Feb 2021 14:02:06 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.66.117])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 B8B758007B; Tue,  9 Feb 2021 14:01:56 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.92])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7651EE0072; 
 Tue,  9 Feb 2021 14:01:51 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 0A843800072;
 Tue,  9 Feb 2021 14:01:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=du/uCaYjiDSYUtKd34Cb5/jzRkW9sFupwGGi1ZxDCo0EEL99EE1Rm8WvXofSGYKo3L9ChZ6/tizTFv37ac51VQZVb4Oz5maUmafNQmqpSEOHoEqhZ3kQ2BseJE6o1ocA55SOI0ck2Tx7GQ/2XH9KDvYC4t8cABXmb0CdFA0URo99W2tiEbBdTrRqMQVlX++ZudGey6Kg6fjJ3i8AfVhks96ubBpvQLUUx+jffas71w2zs2cyxokrzXmtvTogTT/J1nvDeUECVqyPx3lHPa5pzvgHHIL3BOg8WgSht2dwdwUb3Z+ayus81uZeMcgxSRpA7Zn7GRBrZioMIQvlVlTgvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C5WgQEqw56yFF3tTXDFnBul65kK7TP0/H5Z2di1Qop8=;
 b=BN3evhRmxEHY21c/Y9ca+Y937alPPy7eeUFj0IfjlijzrZA/+5WFa8HSCxz87FZhtOVwnL3eP0+VcAtH2ghBz0pT+QXjzDdM6qS41GMnBWRNThPxkSdAdoIBBJEUQAl+bw2+mmL5iaXKWr3BD46Y9g/F0O65amm6iJhmz8W+DdKmnZg1iSx2kTthpyV6WGprba5VGcyx11hFkhJhlRa4Az15O+7XmJ1Kst6QSXAMv0M4j/UmsyNZBesGtRGW2LZP1zRqckO1cKuPyloqAqrC3wJLfLh01auwUvnDG2yBE4AsP6vHPhKeq3d+CrUnjM/UN76r1kZiUALxJ8rA2UNQ9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C5WgQEqw56yFF3tTXDFnBul65kK7TP0/H5Z2di1Qop8=;
 b=DxSWNHZW/JNzIU4OUFjQWGj1ZIKhM9rxYsEbF/tctoAsjZjfYEoFkrh6pE7+7emcEMk5DaGSRA4W/t+t5hVkxXx40UnkLGZFjboTa5ruVjYRpBWq3OD+einsGRLh63TqpDzFyAiQap6JJW0dugw8XGFbWzFl4xqqy6o15zp1Zfk=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3631.namprd12.prod.outlook.com (2603:10b6:208:c2::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.23; Tue, 9 Feb
 2021 14:01:45 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::4df9:1a8c:aa50:d57f]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::4df9:1a8c:aa50:d57f%5]) with mapi id 15.20.3805.033; Tue, 9 Feb 2021
 14:01:45 +0000
To: 'Wade Fife' <wade.fife@ettus.com>, Mark D <md964@hmgcc.gov.uk>
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Opening Vivado GUI during FPGA image build
Thread-Index: Adb5UifNbGHjaHXZQZaCPPt8iNPFaAAIwHVwAAV++wAAIHzm8AE2/hDgAACPo10=
Date: Tue, 9 Feb 2021 14:01:44 +0000
Message-ID: <MN2PR12MB3312959399C75B6CF2F7517DB88E9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: <LNXP123MB372437DE53B4243C99065495CAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <LNXP123MB37243B9CFF15D54ADF43B60BCAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <CAFche=ho_+V79hQNdL7BoyQCF8x4SJtuo303QwifKJ-urtdTgg@mail.gmail.com>
 <LNXP123MB37245962447F0F1E05DFAD6FCAB49@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>,
 <LNXP123MB37245B3319A1D21299289075CA8E9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
In-Reply-To: <LNXP123MB37245B3319A1D21299289075CA8E9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e889eec6-e77e-493d-1c57-08d8cd033c32
x-ms-traffictypediagnostic: MN2PR12MB3631:
x-microsoft-antispam-prvs: <MN2PR12MB3631D47135B0F8A368AF283DB88E9@MN2PR12MB3631.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OJd8q2f6M9BlRjrYvVevhtGbXuND7I8kqCm0MOvhG04Y7tFEq0deQEQ7DjxZcYzA8y2XxMfNI41ANwDI5MMCxtFa5tSkqBDl6ahtGPwpB6iLwy3KtpGbD5PMB/SNDXJV8QkjNAiokLsoP/KnraB3sGvSM5lGSg9KptHX7wDy04mKSdbZVh3w6JL6LH5vh7sihtRb354qLfoS5pPNc2jMKZDGPa0mZzZ0m5Gd1REb+SYUhns+WysN3aQ5uYIJypgFj33m6hZJ0fbLvIYPriV+iHxqrsoheMRqtA5LT3PKisgFAh9Agaab8eofMPLqVQqqqjA2gCcTTsWt65HV/yK1AdcgPJCzoxuHvBQd5TOwDf0D/z6c+bp+RDZmpI7Zo8qVxd2QcmwXNEjKi100WPwX6IWI3V5kHtdEfZ8yQnNnr/wehvTyZLOrgu2x+PLXtLCRJGWWQNbB+me/jOmY1TlE0E7XoSYWynJyC9e/OmM5cbr4LRz7D2mVp0BQV+pGlNJIXtAHrfYs90UsXsq6Xv7rqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB3312.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(39830400003)(396003)(136003)(6506007)(8936002)(53546011)(7696005)(8676002)(76116006)(4326008)(26005)(19627235002)(186003)(71200400001)(478600001)(9686003)(2906002)(19627405001)(86362001)(66446008)(66476007)(316002)(110136005)(66556008)(5660300002)(52536014)(33656002)(83380400001)(55016002)(64756008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?j7VRcS30byZ29dVQk1a6V117Sc0ZE3Z1tvovuZsWIsNlDS4kh2V7nStn?=
 =?Windows-1252?Q?rIEeRGrdX+AGMQkP3sMyQiXs0T46Z2LRp/EFrfVX2juNpi3mwRWZygHy?=
 =?Windows-1252?Q?fGnwbUkrF4F9ng8ABvSkUuWAsAkD61aNTjIdJ9+Fzgc5DZc+7iT5p+pr?=
 =?Windows-1252?Q?qBtsr9kayu3i7aOxXcERM+l8wPyKhCeYgf+ru4QYEYQq/Ol/q/0/TcNP?=
 =?Windows-1252?Q?Jucof80OgjSQndUwopcAtoa8P+rR8DKvK6lJ5YfMkMKVlIgC1n/YKaBm?=
 =?Windows-1252?Q?w/NSlsJ5tOkfGZ7kS/VKh5+lwspPyeq/Z2ofmiwdfOKoWpjiNHWDPZFE?=
 =?Windows-1252?Q?G8tsWpLyEGYSQ0d3iaUszYN7AteTy+iwTmdKT8hka3+JzAiFfVNC641/?=
 =?Windows-1252?Q?+t6pGACOZ7JvcMF7viTD+dURJIiLuO21u1JYWy9XMrYjloWh6weFc+bm?=
 =?Windows-1252?Q?Yf2wYGiSj0PCZG1YhkHIsR+FRsgoj+nNQmSmhbxmK6qVDP148sQTGlVa?=
 =?Windows-1252?Q?SU9r/m3H5CNG+Ac2zOh3rpHm3OTMyMQxjBK8GuI7SNK9ezL6pB6gTxht?=
 =?Windows-1252?Q?tffuWNxYli6MonMAkY8+CMWaNxtkByqxjAfQho5nZNUKapjNzLak8bwz?=
 =?Windows-1252?Q?6mBQyeZ1dTSSPne779CEikAmwtpMb+V0KwJ0xuyhUe7jvJQwxG26thi7?=
 =?Windows-1252?Q?SL60PyhWAzYohksq0UDfI6VkjifN85CsXf5Fb0i3vOmhHH7N/rK7JhH9?=
 =?Windows-1252?Q?981NJoMUvYVkbyMQx7y1kCkaRXvMhpUovn7rsfG+4h8VsSXsk3lklhxh?=
 =?Windows-1252?Q?841EFhdpY35RzrxsoFqMbYiXqL5XXp8/KLSAmmhqnTH1u2Rp0zSvvS9V?=
 =?Windows-1252?Q?Zn0Yosk5luIjwALWnUmccVvjFgIrqa6MIZiHPiGJNY7GgKbTOE7JAcxl?=
 =?Windows-1252?Q?+52hplDo2IzWZ5dK4M1fAsipzINBLcJ7SHhpVstPnwWnNryCoWlGMog1?=
 =?Windows-1252?Q?vq/ojn7C0TkoZ/2hMlc7MGSLqpsL7nffyZY/F71bkRiiwb0B3FWEWaBa?=
 =?Windows-1252?Q?b4pBuBOa9WDeY5ktV6RrFdJQJAKHOxi3z2WvDdevQz7KXDT0vToxjsXg?=
 =?Windows-1252?Q?vpH4OF5Zc8b5GllNIBHxmEnJ92MwsyIVDJyJAJtH9zG6JHtEbKGkFk38?=
 =?Windows-1252?Q?wfJpVK0rElT+FZxrBPrQ+lOjOW4ppHGy3rBL1C8iOQa7ZgHgE1Za2ETE?=
 =?Windows-1252?Q?h2M7WDse1biMi4yLXFCGPSEsIH6F9WQ8oUWaVSqUo8Y59gIwZkbcceJQ?=
 =?Windows-1252?Q?d5jG6X23JI2cA3IOf8h8zotCNXDyCg1P1oEnjXKzRjNafZuw5IClh/rJ?=
 =?Windows-1252?Q?bY1BahukiWlc8gyP0Dp6IeTP9ko0bKvg9VY=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e889eec6-e77e-493d-1c57-08d8cd033c32
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2021 14:01:44.9249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S61Qg61xYRG2rdOjik0W1Poa4+okBY7Q88fUFoWOuLekZMftBpmn+s7QOMRRrq/Y9vD1sBvqFVqv6/S0Ky78F9t8xxo7oefYyTCwdz9WjAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3631
X-MDID: 1612879311-4ZpJXsiMNdOZ
Subject: Re: [USRP-users] Opening Vivado GUI during FPGA image build
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
Content-Type: multipart/mixed; boundary="===============7003150847973010822=="
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

--===============7003150847973010822==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312959399C75B6CF2F7517DB88E9MN2PR12MB3312namp_"

--_000_MN2PR12MB3312959399C75B6CF2F7517DB88E9MN2PR12MB3312namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

It's been a while since I did this, but I had issues bringing up the gui as=
 well. Here is a copy/paste of some notes I wrote for myself:


  *   Edit the file "$PREFIX/bin/rfnoc_image_builder".
  *   Find the line "gui=3Dargs.GUI" and change it to "GUI=3Dargs.GUI" and =
save it.
  *   Next, edit "$PREFIX/../src/uhd/fpga/usrp3/tools/script/setupenv_base.=
sh" to make sure it properly reflects your Vivado installation path.

Once I replaced "gui" with "GUI", the -g option worked fine with rfnoc_imag=
e_builder. The last note was something I had to change so my Vivado path wa=
s set correctly.

Hope this helps,
Jim

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Mark D v=
ia USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, February 9, 2021 8:48 AM
To: 'Wade Fife' <wade.fife@ettus.com>
Cc: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Opening Vivado GUI during FPGA image build


Wade, usrp-users,



I=92m now trying to build some code in an OOT directory.



I can build the design with the rfnoc_image_builder Ok, however I can use t=
he two step workaround to get the Vivado GUI to open. When I try and run =
=93make E320_1G GUI=3D1=94 I just get an error saying that there is no rule=
 to make target =91E320_1G=92.



Any idea how I can use the two step workaround from an OOT directory, or ho=
w I might be able to get rfnoc_image_builder to bring up the GUI?



Thanks,



Mark



From: Mark D
Sent: 03 February 2021 09:49
To: 'Wade Fife' <wade.fife@ettus.com>
Cc: usrp-users@lists.ettus.com
Subject: RE: [USRP-users] Opening Vivado GUI during FPGA image build



Thanks Wade,



I had tried this just before your email. The first time I did this I got an=
 error from make saying that Vivado wasn=92t found in the environment and t=
hat I should run setupenv.sh.



Running =93source setupenv.sh=94 fixed this issue and =93make E320_1G=94 GU=
I=3D1 did open the design up in Vivado.



One thing that might be a cause of the issue is that I don=92t have vivado =
installed at the =93standard=94 location. It seems strange that rfnoc_image=
_builder finds it Ok. Maybe if I try the -g option after running the setupe=
nv.sh it might work.



Thanks again for your help,



Mark

From: Wade Fife <wade.fife@ettus.com<mailto:wade.fife@ettus.com>>
Sent: 02 February 2021 17:45
To: Mark D <md964@hmgcc.gov.uk<mailto:md964@hmgcc.gov.uk>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Opening Vivado GUI during FPGA image build



Hi Mark,



This is curious. If I recall, someone else was having trouble with -g, but =
it worked for me last time I tried it. I will try it again to see if I can =
reproduce anything. In the meantime, you can run rfnoc_image_builder and ma=
ke in separate steps. See if this works:



# Generate the build files only; don't build the image

rfnoc_image_builder -y e320_my_fpga.yml -t E320_1G --generate-only

# Build the image with the GUI

make E320_1G GUI=3D1



Thanks,



Wade



________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_MN2PR12MB3312959399C75B6CF2F7517DB88E9MN2PR12MB3312namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It's been a while since I did this, but I had issues bringing up the gui as=
 well. Here is a copy/paste of some notes I wrote for myself:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<ul style=3D"margin:10px 0px 0px;color:rgb(23, 43, 77);font-family:-apple-s=
ystem, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &q=
uot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sa=
ns-serif;font-size:14px;background-color:rgb(255, 255, 255)">
<li>Edit the file &quot;$PREFIX/bin/rfnoc_image_builder&quot;.&nbsp;</li><l=
i>Find the line &quot;gui=3Dargs.GUI&quot; and change it to &quot;GUI=3Darg=
s.GUI&quot; and save it.</li><li><span style=3D"color: rgb(23, 43, 77); fon=
t-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, =
Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvet=
ica Neue&quot;, sans-serif; font-size: 14px;">Next, edit &quot;$PREFIX/../s=
rc/uhd/fpga/usrp3/tools/script/setupenv_base.sh&quot;
 to make sure it properly reflects your Vivado installation path.</span><br=
>
</li></ul>
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Once I replaced &quot;gui&quot; with &quot;GUI&quot;, the -g option worked =
fine with rfnoc_image_builder. The last note was something I had to change =
so my Vivado path was set correctly.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hope this helps,</div>
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
sers-bounces@lists.ettus.com&gt; on behalf of Mark D via USRP-users &lt;usr=
p-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, February 9, 2021 8:48 AM<br>
<b>To:</b> 'Wade Fife' &lt;wade.fife@ettus.com&gt;<br>
<b>Cc:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Subject:</b> Re: [USRP-users] Opening Vivado GUI during FPGA image build=
</font>
<div>&nbsp;</div>
</div>
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_MsoNormal, li.x_MsoNormal, div.x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_MsoHyperlink
	{color:blue;
	text-decoration:underline}
span.x_EmailStyle20
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_MsoChpDefault
	{font-size:10.0pt}
@page WordSection1
	{margin:72.0pt 72.0pt 72.0pt 72.0pt}
div.x_WordSection1
	{}
-->
</style>
<div lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break=
-word">
<div class=3D"x_WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"">Wade, usrp-users,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">I=92m now trying to build some co=
de in an OOT directory.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">I can build the design with the r=
fnoc_image_builder Ok, however I can use the two step workaround to get the=
 Vivado GUI to open. When I try and run =93make E320_1G GUI=3D1=94 I just g=
et an error saying that there is no rule to
 make target =91E320_1G=92.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Any idea how I can use the two st=
ep workaround from an OOT directory, or how I might be able to get rfnoc_im=
age_builder to bring up the GUI?</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Thanks,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Mark</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<div>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Mark D
<br>
<b>Sent:</b> 03 February 2021 09:49<br>
<b>To:</b> 'Wade Fife' &lt;wade.fife@ettus.com&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> RE: [USRP-users] Opening Vivado GUI during FPGA image build=
</span></p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal"><span style=3D"">Thanks Wade,</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">I had tried this just before your=
 email. The first time I did this I got an error from make saying that Viva=
do wasn=92t found in the environment and that I should run setupenv.sh.</sp=
an></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Running =93source setupenv.sh=94 =
fixed this issue and =93make E320_1G=94 GUI=3D1 did open the design up in V=
ivado.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">One thing that might be a cause o=
f the issue is that I don=92t have vivado installed at the =93standard=94 l=
ocation. It seems strange that rfnoc_image_builder finds it Ok. Maybe if I =
try the -g option after running the setupenv.sh
 it might work.</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Thanks again for your help,</span=
></p>
<p class=3D"x_MsoNormal"><span style=3D"">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span style=3D"">Mark</span></p>
<div style=3D"border:none; border-top:solid #E1E1E1 1.0pt; padding:3.0pt 0c=
m 0cm 0cm">
<p class=3D"x_MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@=
ettus.com</a>&gt;
<br>
<b>Sent:</b> 02 February 2021 17:45<br>
<b>To:</b> Mark D &lt;<a href=3D"mailto:md964@hmgcc.gov.uk">md964@hmgcc.gov=
.uk</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Opening Vivado GUI during FPGA image build=
</span></p>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
<div>
<div>
<p class=3D"x_MsoNormal">Hi Mark,</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">This is curious. If I recall, someone else was hav=
ing trouble with -g, but it worked for me last time I tried it. I will try =
it again to see if I can reproduce anything. In the meantime, you can run r=
fnoc_image_builder and make in separate
 steps. See if this works:</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal"># Generate the build files only; don't build the i=
mage</p>
</div>
<div>
<p class=3D"x_MsoNormal">rfnoc_image_builder -y e320_my_fpga.yml -t E320_1G=
 --generate-only</p>
</div>
<div>
<p class=3D"x_MsoNormal"># Build the image with the GUI</p>
</div>
<div>
<p class=3D"x_MsoNormal">make E320_1G GUI=3D1</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">Thanks,</p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<div>
<p class=3D"x_MsoNormal">Wade</p>
</div>
</div>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</div>
</body>
</html>

--_000_MN2PR12MB3312959399C75B6CF2F7517DB88E9MN2PR12MB3312namp_--


--===============7003150847973010822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7003150847973010822==--

