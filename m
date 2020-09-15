Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF9126B524
	for <lists+usrp-users@lfdr.de>; Wed, 16 Sep 2020 01:38:15 +0200 (CEST)
Received: from [::1] (port=43748 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIKWY-0000vv-VS; Tue, 15 Sep 2020 19:38:10 -0400
Received: from mail-dm6nam08on2067.outbound.protection.outlook.com
 ([40.107.102.67]:1697 helo=NAM04-DM6-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <minutolo@caltech.edu>)
 id 1kIKWU-0000r8-O1
 for usrp-users@lists.ettus.com; Tue, 15 Sep 2020 19:38:06 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQpYO5zXKrwcSNh2BtWGbWsVKuHFjZKisGdAFvS75qSJuvvqJFXkdYjF2tSlhvCKzVvRR/9sS4Wz6lGsmIv0uvSgV56fjhX/OBJwha/7eD/NgCslx9IFgKhtxhBr1WzeRO/3uf2itf5s12pXCu8XZYygsXxcdktye69hv8EYqKUFScQsECIysopysLONm+xoRIToc+NJ297BtBXKw0PTA42b5I6Ev0m1XPQJTaGzJWghrnxbFGeGfFgcURcRLx87mlbPSJbPLTg1QucVyizoRghtdyJPUTTzK0tuTOW3L+Ny0hw54WdO7RjJGdVhWAK3XTKIPvSYxnIycDlKnJ2odQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4NQPkvdL4eSQycBM7NUKMBS6cxieTbno2T6BWGN7FKY=;
 b=B+ltwPfxBnCJ7FDnnz81/tOUAO1U+gxg7BGvPVzpV8x+ySx45juaWI5gK9Pyi1KaRe1RUET5C9hQda0c+kjTfPGSuMgqiRJChGyMaUUZuwB1XgrxIdsTSJRG+dCoE+NoTMAgiY2AhhJzcQTuGYR7XYvVxOhoW/zql9GjKZcdGZJdhMQDLttwRhSnPRp+OdTr3r1m/tGOJ51GDCdaeMB+rslVTg5J85fpj0YdpvDvU1mXRjKCVCPOoCBDIPBaxwVk13lL3RnOReZa4o/WNuZOfYo/5MpYXFpWljmwffAoHiqdZ0o/Lpzr6iZVbE78/Dtjl7bMsFdiBCxW33QPJ+VF1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4NQPkvdL4eSQycBM7NUKMBS6cxieTbno2T6BWGN7FKY=;
 b=j4uCPf/m/hHhtr5Kskd24ZpVI55mBkVolfQ6Cfkc9FS3g7N4lupBJ82q86nyKZ26U7DwmMhMkmz9isFAli7/tUP7PL4U0YkK89Wmnxcw4QNQI9feDwXKuTLcZgkpaHff5OYmCYSICCq3wzB0VuLLmDDiNbTE0vE7fd3qkyNtFu8wVswV0ci5sItdNfNtrO1+dUBfaEF/8h30BsLO0aYd2XgtZkm+B2ZvetBZUe/QqxTO2XEE12rl//End6uJLZgdNKTO4tAF8AQ6+pZmzzKoZcdNsREe9M91i+25fqbHzSuW+Gb7nkhRCxSGq+Nbg9r6KWb/lS5bp34TEX8Pnip/tw==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BYAPR03MB3800.namprd03.prod.outlook.com (2603:10b6:a03:67::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.17; Tue, 15 Sep
 2020 23:37:23 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::4121:1ed8:cb01:620d]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::4121:1ed8:cb01:620d%3]) with mapi id 15.20.3391.011; Tue, 15 Sep 2020
 23:37:23 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD and GPUs
Thread-Index: AdaLuC4QZgMnNKvWRjeUvGxjMS3vtwAAO+Gw
Date: Tue, 15 Sep 2020 23:37:23 +0000
Message-ID: <BYAPR03MB4678DD52A6F64FCF2081BD33D3200@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <BYAPR03MB4678CA6B6C59C6C3CC1FF2BBD3200@BYAPR03MB4678.namprd03.prod.outlook.com>
In-Reply-To: <BYAPR03MB4678CA6B6C59C6C3CC1FF2BBD3200@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: it-IT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=caltech.edu;
x-originating-ip: [2600:6c50:4080:32:785a:d033:27e2:46ae]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3274b36-0233-498b-defe-08d859d04c29
x-ms-traffictypediagnostic: BYAPR03MB3800:
x-microsoft-antispam-prvs: <BYAPR03MB3800E765D6C30110F5C44293D3200@BYAPR03MB3800.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TxnOjuaRBj6H438U2nPb0zkUE61p8SByuY9UZGd+l+giM6nw7ljTlyjKthjn5FcFSTsl/Ww/bs3buhJtOiFZtVvpap2DDZpV2DtbLzf4irLW5CQq/UfcEf0bjbHDzHyQrZYsc+/EmR5ZrqiH4uo8KdN9q19rPar/dTkHDBx5lB4BvBqyHiFGhignwMviLH9O8VEdkmAqhjHtowCiGIhro2JCqbfRqeaO/djekWJ5DOTh0gXNzqX6US5ecDtRejg9gJP3Kckye5ByG1DIc4qqqrmxMzJkQ3/s65aZkNm2joB8En4S35LUITW8VmPWMnlfQlJpjUYhUpVJntz57A7bCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR03MB4678.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(376002)(346002)(39860400002)(396003)(186003)(6506007)(478600001)(2940100002)(8936002)(2906002)(5660300002)(83380400001)(75432002)(786003)(52536014)(7696005)(316002)(55016002)(86362001)(33656002)(6916009)(9326002)(66446008)(66476007)(71200400001)(76116006)(66946007)(64756008)(4744005)(19627235002)(8676002)(9686003)(66556008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 5o+U4uyAGJbUj8ltA91ihUzWq26T1uDTv3wvXCinhbuaIZzYFknhtkBC+LDQbGEK2RoDdriW5WY9gTnebEdgp4vzyVIWwTIyd9oBEumonPvVAjsjkumjV2yF1y9USAdLzaqlsuW2uwe31RlGSYHYekh5qhk/uJl7pMpAJQEV1ngG8n+mP8idloX4iZZ1qqJSUbSn9HDgzdVRV6241ZjSRYkRHbapjQm16fLNI33S9RlQnZxv7FINa9g6VCxdgNo8+2997cGOOJ00FsVq3grQJp7CklwSIiajga/w3wRln6KykTeUAXJ+h/TDZ20x7HVIBMGaXbQIaUqMepO35ixOjLyNv9W0uJufMV7CfetgPVAkAzN2wwSNS1/5Axcu8yp27xoORbKClvn0Udae4TJnB+WviV17LuBZO8P44RWe/jYKI8NUHLHyW3raCPda8aDQi3n5oUWIvsYfchXkJEBfDfuz7pEZYHRcVWMaU26JYxZfgYu+WhugvdftAmG1AjnQa33OsLSb4eC2LbTOEDmKBOkqnEES8iT3rbCwwCEnZHuB+6/1DncyWNe5ayEQEff6yX9an6K5ReIyAL3QSLG/9vM7cvPdQ4B1v7fcgZJD9fXm5HmckV7ouwpB8NREnQyj3ZWRtO9yvuiPj7vYqDSRWN+rgMWnZtWInFOJs1tsG6/mhDwesVltPT53qgadPRnZMdsQTtP+jP/IM0uIW47rrA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3274b36-0233-498b-defe-08d859d04c29
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2020 23:37:23.7877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tjUKFpZV+XsQAz8B8ZeZkyU57mcM0sPKMgj82y/U5rBVWfqVQ6KZA+MOjCocHzoe0ido/uzBgcHQhs6G2P9jLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3800
Subject: [USRP-users] R: UHD and GPUs
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
From: "Minutolo, Lorenzo via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
Content-Type: multipart/mixed; boundary="===============1796419632898818056=="
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

--===============1796419632898818056==
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678DD52A6F64FCF2081BD33D3200BYAPR03MB4678namp_"

--_000_BYAPR03MB4678DD52A6F64FCF2081BD33D3200BYAPR03MB4678namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Is there any plan (or ~simple way) to use GPUDirect to make USRP samples go=
 to and from an Nvidia GPU memory without passing through the CPU?
My application, which heavily relies on GPU for processing, is currently li=
mited by the round trip latency. Since we have a new streaming protocol wit=
h UHD 4.0 I thought there could be an update on the topic.

Any suggestion is appreciated,

Best,
Lorenzo

--_000_BYAPR03MB4678DD52A6F64FCF2081BD33D3200BYAPR03MB4678namp_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.StileMessaggioDiPostaElettronica19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there any plan (or ~simple way) to use GPUDirect =
to make USRP samples go to and from an Nvidia GPU memory without passing th=
rough the CPU?<o:p></o:p></p>
<p class=3D"MsoNormal">My application, which heavily relies on GPU for proc=
essing, is currently limited by the round trip latency. Since we have a new=
 streaming protocol with UHD 4.0 I thought there could be an update on the =
topic.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestion is appreciated,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best,<o:p></o:p></p>
<p class=3D"MsoNormal">Lorenzo<o:p></o:p></p>
</div>
</body>
</html>

--_000_BYAPR03MB4678DD52A6F64FCF2081BD33D3200BYAPR03MB4678namp_--


--===============1796419632898818056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1796419632898818056==--

