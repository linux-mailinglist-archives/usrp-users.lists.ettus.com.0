Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3E2315331
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 16:52:31 +0100 (CET)
Received: from [::1] (port=36156 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9VJR-0001ue-Fr; Tue, 09 Feb 2021 10:52:25 -0500
Received: from mail-eopbgr110091.outbound.protection.outlook.com
 ([40.107.11.91]:42688 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1l9VJN-0001nk-H7
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 10:52:21 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDITD22U6bzZGMfBESO6Cw2fkHlyojbXTqejHCja/liO4x8Ed3NycXrikwsw/zECXn1wGyjiw7lNu/Prh6BqgD65pX7QjBsBD54hUtbffTNmYftayf+j4PMpis2tCHidDqFc0InzyNCOoFNQISaox+8q3Ofe+3nYqVQAPfqW9JBttVj7gE43Ug8QS565y3wgZYzp1dnp9fu02VCRxFmjbMkqH4fkNu5BTdHDPovcAQ4Xz68onTcrbdnhSEyZCP39wbVI2utjD+yIquaeLIBvOJVm3hnUxjJ21m+DbEZQyhsmiUQ1RXXQGOsultAXde082Jevi1YxwZtaUVAzBonaug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yimojRLlOv92FI4Z/1WIfcnpbaNEZhsQSd3reiIYcuw=;
 b=DceE+YHnLXY/lw4Ft1AkOHW/oSQDQTapwqfvYx/xdGdoL9OFaDtiZXjwvZ4kGS7p8Zh97122tMzOdrM7CDsoTOw94xZvc5UwKxehoCBEtg7tPbltImzsLcx08zt+tlvFu606hay7Cw3hKPilrL4Led+8bHBEUGn3IPHU5mBYx5+svoLnyzRL3e7LGUOtMUcHY9d7izPlVvWoDjadruSqUOgdhSPOm7uBNTvBUrFsGtEcXV8tCYcIknWo/f58i5jswGeVgonmWigRteTT13oRiplsWxIsEutUhjjEZjGVj6+KgTv0O9G2+h+R+GPbCoDpQJ2kKM2zo4NOA+nHzSFf4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yimojRLlOv92FI4Z/1WIfcnpbaNEZhsQSd3reiIYcuw=;
 b=W2EI9JKDTTwb7w9Xy4iHazB3GkGYiih3p1E0AbLzyOZqTDwgtcA19nShiflaGYN8KgZ5RKoVyj2TasEr/GVfi2SDwpzf1W05e9kQ9GKuQoIgLpZ2iKktyTZvIrL58rZ64r/MbtOWla0MDdW3tnAT1k+R0c+vDYwrOtlWIBrTjME=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LO3P123MB2891.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:b6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.27; Tue, 9 Feb
 2021 15:51:39 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3825.030; Tue, 9 Feb 2021
 15:51:39 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Opening Vivado GUI during FPGA image build
Thread-Index: Adb5UifNbGHjaHXZQZaCPPt8iNPFaAAIwHVwAAV++wAAIHzm8AE2/hDgAACPo10ABAVeoA==
Date: Tue, 9 Feb 2021 15:51:39 +0000
Message-ID: <LNXP123MB3724EA5CE60857E69A1D1DE4CA8E9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
References: <LNXP123MB372437DE53B4243C99065495CAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <LNXP123MB37243B9CFF15D54ADF43B60BCAB59@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <CAFche=ho_+V79hQNdL7BoyQCF8x4SJtuo303QwifKJ-urtdTgg@mail.gmail.com>
 <LNXP123MB37245962447F0F1E05DFAD6FCAB49@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>,
 <LNXP123MB37245B3319A1D21299289075CA8E9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <MN2PR12MB3312959399C75B6CF2F7517DB88E9@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: <MN2PR12MB3312959399C75B6CF2F7517DB88E9@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c0e6202-3219-4519-d2e6-08d8cd129692
x-ms-traffictypediagnostic: LO3P123MB2891:
x-microsoft-antispam-prvs: <LO3P123MB2891588934971C00E5B2BE98CA8E9@LO3P123MB2891.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qob1MNELV3xksfone8Rc8RthNOHX2B5Lb/u+RpknJyFqx8q/yX8N24DV5eGwdlguewisYIQj8Q7WHAEJCrJ9VzhUNlnIzXIVKJSOoeiPIID8yUULx5xloYK1P9JVYOHfZBtwwc1wFAdNokL2olDlvHRyeE3JTJz53u4Z/TrrmXL+aAo4a1H/Jdb9Ppz/fY8wJbHKvhyD0CXb7c1cnPuou1BT5rmAQFksCeXh2SFkYjMAlmwBT6gJ+JoQOMqm9/CuUKA9CFtu/Vmr97+zO2QjQe26L3HGQ1aZcGiCJLVkw/g29OCu/q9x+1Ou0otFY35LPUqM0JGZPPCvgvUHHZv2gNbQTtlflVzXlq6FeTDw/61I8r6keYqPzSamDcZ7Y+RaD0oGgWtKZKQpIcsJ2cOZETMM10AGRSxLqhIzLGjxub8EgpNiopDgr2XCmqE/bs7aAEUeOArzcg7gLvm1UOBuq0fNOuL8fLDxI2TiEH0qZP/lCe8g027d+EMr9ynfeOil0njgpBx3Wa0gzEM+nFk3d0UK2EtLs0fiYMacsbhq+ZUTzLw24oblIPsLMLE9FE2A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(136003)(39850400004)(346002)(366004)(55016002)(53546011)(9686003)(6916009)(86362001)(26005)(186003)(2906002)(6506007)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(52536014)(33656002)(5660300002)(7696005)(478600001)(8676002)(83380400001)(8936002)(71200400001)(316002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?YWDYXcygByyKRHwBZuk1TFCD7LKlW3Y8BL+To6A5YtjT7rxsn57DteDMXUMN?=
 =?us-ascii?Q?+6vwQiP9obYATOtF2vGotWLWfANnOaKzZGQuLMVC8APLtMjnOuzxM+qQ80Kd?=
 =?us-ascii?Q?3sXVTNE9SDyFIOboB8Vq45m8LbUwP46LPOQ4SYMda+AtOfk1czY4FIeK/f/N?=
 =?us-ascii?Q?Ga2euqjUBoc9WajkFh5dzmIpoMkakEm+kg/Fj3Ot5XCvNI6R/pTp8DQ5UfKQ?=
 =?us-ascii?Q?Ix17CCpLqznh0stUkZgh7jII8cYEQfoNMT+CcOc9xF4iiB5rli4zAesIN0Um?=
 =?us-ascii?Q?BlylOYTR/vh/oY3BwP6wLnQFC90lzCBMpbAmK7eOnheghlWsh+Fj2DSd4MAa?=
 =?us-ascii?Q?xgQdbXio1t/2wIkamXlAzW6YdbojIRlqsm+z6Sd1sf0MSBavOPMiQW7XRrBE?=
 =?us-ascii?Q?0JZGQPwL7QMBtj/LFIW+29hWAxjNfozatJCMUdnD9TDhbKn56b/OhpfqaloV?=
 =?us-ascii?Q?cMeansYgEq3oesMqsru1YViA59UrwP9dSI58BFEcqhcsLr+5S33Cktx2WXvo?=
 =?us-ascii?Q?HvOKVGEyLUHFHKHz/zJEw3h2APjqydSyM8UCH4XqBHWmdN45iME8cFMqOYHh?=
 =?us-ascii?Q?CCzSZTouAnbOpcaYFdbI4oiE2q/9XAJJEMCLxgpV/KI05lTmjNDldCUjoUa+?=
 =?us-ascii?Q?YY+nY3CgKJ+pyhE/6CGJM/uXo0dPbnu9N93thqaDGDZBi+vKbAX5Tb17Z0hg?=
 =?us-ascii?Q?LoePvZMpmRFT+BAV1vzfoNWoU8kfj3N0fxu+Hd7xf0H+NkwYr3t6jWn7yoCQ?=
 =?us-ascii?Q?qoJN7kIHpgLP2rI7byOzkg2Kc7RV4qckFsUU7gp7zC5bdh+IOYmiZHH5V0ab?=
 =?us-ascii?Q?d4pY5v+OK9xbEzw9HO0P+Xr4LBX6ugkSQBVI1WW8ZHgF10QNR9JBiOxCxAm5?=
 =?us-ascii?Q?kaYd6V3fneg5liImWMTQiW3KKGT2q3kvx9odghSgQIQ5OFHXGnrBhQ3Ch1FS?=
 =?us-ascii?Q?aWHCxkKs4L+2AZlpWrosIlUYwJLMZBiZtmdl1KfBVCHCUdlaTIxp/8oBINT+?=
 =?us-ascii?Q?rK+hdZCNOE/fVw1f9ibSwsyw5Y2105k/WUWffP1vzIiEEXXDk7/ypyr23KJE?=
 =?us-ascii?Q?lxLO2y1mStSYeppmR2ZGSeiMlii4C7Dh2HxnuWf84VHmQl/pyCmMPAA+Trgd?=
 =?us-ascii?Q?ak/pm6XIdowPEt+cqjajTRZ3SPFKtICGey5IKW6ltLK69JiLXiw0CIZelXwC?=
 =?us-ascii?Q?WqAjE/aAsG33waL6aUVN57kaitM8vEYheJlykOEI8GyNHFQrPJ2+WzqoFDpG?=
 =?us-ascii?Q?M9erM2jQYsVuFo1BPIIqwl2yjuNcpDUBxTDHjwWV+0ahignpmLCYWSHgyfJa?=
 =?us-ascii?Q?bw5SPiHYsyFwrKFJd88m44VY?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c0e6202-3219-4519-d2e6-08d8cd129692
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2021 15:51:39.1249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BBMDYmhG60ma8SSVTxCtluyV370BTmOrBFz6hBJ0r1NHO8SgB3GEZ/ThApYBI/Jq8yDf/JkmQqpxbM43CZDGiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO3P123MB2891
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
From: Mark D via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark D <md964@hmgcc.gov.uk>
Content-Type: multipart/mixed; boundary="===============2285990023830552308=="
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

--===============2285990023830552308==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB3724EA5CE60857E69A1D1DE4CA8E9LNXP123MB3724GBRP_"

--_000_LNXP123MB3724EA5CE60857E69A1D1DE4CA8E9LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Jim,

That fixed it, would never have found that one!

Looks like Ettus need to fix this bug in rfnoc_image_builder for future rel=
eases.

Mark


From: Jim Palladino <jim@gardettoengineering.com>
Sent: 09 February 2021 14:02
To: 'Wade Fife' <wade.fife@ettus.com>; Mark D <md964@hmgcc.gov.uk>
Cc: 'usrp-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Opening Vivado GUI during FPGA image build

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
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB3724EA5CE60857E69A1D1DE4CA8E9LNXP123MB3724GBRP_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1744790373;
	mso-list-template-ids:-1259438016;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Thanks Ji=
m,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">That fixe=
d it, would never have found that one!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Looks lik=
e Ettus need to fix this bug in rfnoc_image_builder for future releases.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US">Mark<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-US"><o:p>&nbs=
p;</o:p></span></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Jim Palladino &lt;jim@gardettoengineering.com&gt;
<br>
<b>Sent:</b> 09 February 2021 14:02<br>
<b>To:</b> 'Wade Fife' &lt;wade.fife@ettus.com&gt;; Mark D &lt;md964@hmgcc.=
gov.uk&gt;<br>
<b>Cc:</b> 'usrp-users@lists.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<=
br>
<b>Subject:</b> Re: [USRP-users] Opening Vivado GUI during FPGA image build=
<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">It's be=
en a while since I did this, but I had issues bringing up the gui as well. =
Here is a copy/paste of some notes I wrote for myself:<o:p></o:p></span></p=
>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:#172B4D;mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto;mso-list:l0 level1 lfo1;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
">Edit the file &quot;$PREFIX/bin/rfnoc_image_builder&quot;.&nbsp;<o:p></o:=
p></span></li><li class=3D"MsoNormal" style=3D"color:#172B4D;mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto;mso-list:l0 level1 lfo1;background:whi=
te">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
">Find the line &quot;gui=3Dargs.GUI&quot; and change it to &quot;GUI=3Darg=
s.GUI&quot; and save it.<o:p></o:p></span></li><li class=3D"MsoNormal" styl=
e=3D"color:#172B4D;mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;mso-l=
ist:l0 level1 lfo1;background:white">
<span style=3D"font-size:10.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
">Next, edit &quot;$PREFIX/../src/uhd/fpga/usrp3/tools/script/setupenv_base=
.sh&quot; to make sure it properly reflects your Vivado installation path.<=
o:p></o:p></span></li></ul>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Once I =
replaced &quot;gui&quot; with &quot;GUI&quot;, the -g option worked fine wi=
th rfnoc_image_builder. The last note was something I had to change so my V=
ivado path was set correctly.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hope th=
is helps,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Jim<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB3724EA5CE60857E69A1D1DE4CA8E9LNXP123MB3724GBRP_--


--===============2285990023830552308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2285990023830552308==--

