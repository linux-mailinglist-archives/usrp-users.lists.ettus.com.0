Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B82319D98
	for <lists+usrp-users@lfdr.de>; Fri, 12 Feb 2021 12:53:19 +0100 (CET)
Received: from [::1] (port=37604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAX0d-0005Xt-HF; Fri, 12 Feb 2021 06:53:15 -0500
Received: from mail-eopbgr100125.outbound.protection.outlook.com
 ([40.107.10.125]:31872 helo=GBR01-LO2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lAX0Z-0005TT-Tp
 for usrp-users@lists.ettus.com; Fri, 12 Feb 2021 06:53:12 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OUWz4HuYaJXh2EnxlCb8FP1IbQuAxqDWJGFhjlbQev4vagiU96kmVu1VL0wtMuQ8CibXbq3Ra1Q2VecZke0ECluQslLCjAPfnva7faG7VGcZMIgh9IX5eoScLHkTcWuDiaA42kya8bXMhWvxh8a7xIRXD41dy5f7CW3Gcn3M409WxsKKQSP60QhA/wW/11Q9ZbklqSMt2uyWzz78TCoqAUJ5RLxy7rlN5OvccETgeQ1pm+TWFvB+Huv7xVfUd3Rl8wnSIz5Pl+6ZxmhBEYPguzEtDb6CBIVoBb8LshMqQ1jf9AjCTsivThZ3d1q+P+T3C35AVb5TtE6kIcTNwv7ljA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQCuox8SIybJVTCj67a/EK5rIR3yZDgaOS0x/Vj5YAk=;
 b=gx/8bXwjf7jOTPMYDwXupoUqjN4ogiFvIraI4JnXi06hfVQhPVHA+av1tgMZarADXogrXJj+FLBczkwQB1EIUlDj7KklcVak5gXmSoep2adr9Qxki4hOp0YwXxuImYzNNS3LV6AWr7x64KeUSr/AooGdkqKFQ8h3DIUFB7f1BmJGwSJFu02kvPW+y/EWFu04bA36nWIRVFQz/7UNqLbN0QGsy+05qLeb58bmeGcHotJqA3g2UyiZIVjU8hoUFQwwewRaSCqqvZiY0UANRroxxZcgvsU/HUXBKj8oSWU5r8p0JOF1JwawvF0mcoY0ex5Rwy5+k3cG7o6inJfO4k/DDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQCuox8SIybJVTCj67a/EK5rIR3yZDgaOS0x/Vj5YAk=;
 b=CozodPCR3/Fvh9XQ6xKtvAs4ytzoA/vi0SnKaVjE1NwHs8Qc/OoINeqKVNe/vvEiiH/rzO3/U57WhE30h0QT/y5JkM35B4fZCIgkAQt0ddMTDBSg7dOwv0FsCf3wexc05qmoysRl6/UGzKKHpeUzf6yd40p7wRqFBb9X9dKirck=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LOYP123MB2815.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:f3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19; Fri, 12 Feb
 2021 11:52:29 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3825.030; Fri, 12 Feb 2021
 11:52:29 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC OTT Block on E320
Thread-Index: AdcBMbPeiYyrqr/eQbmPfmK6sMotug==
Date: Fri, 12 Feb 2021 11:52:28 +0000
Message-ID: <LNXP123MB37245E820A2A005C90462024CA8B9@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7c9a403-bb68-450f-45fd-08d8cf4cac6e
x-ms-traffictypediagnostic: LOYP123MB2815:
x-microsoft-antispam-prvs: <LOYP123MB2815CB798771702454375B48CA8B9@LOYP123MB2815.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iT71iA57dgQkH9E26GAYbh1gu1cchUQxNyFnoi+rAjzIvZM49h7opbVZHH2zlCX8fqqeDrKNdsp5BAWaT26KCu5E3SyHk8HOeDuEZHL1Rn34h5OD/GY1CxdJNY91rMtTE2BHeGisrmAs4rrPT+OJcKYm+2wEbUjCvcvfY1G5dZsU6/GfGG138TVZT1dc4A8ORyUrMJhT3swe+40hEFqJv0RkQaoXYAavvlWfdxvpfIAvuBCS3m1SryRIgB9ZTHc0xMOksmTBL0BTs4QfidEhXPa7wgn5F3r8Gezt69Rwjsnl+K0xY70SsL4Tv/nfhtn14i3ipKGAqc0h65UJVO+o/vUiizTKWNmBveoZ1Anjm5cj1p4EJBOjI7ZkG+g4u17px4Krp1T/mZ9LvIFrlTmIbJQ31cVMdawTE3+1W0TCRLHxpkeqLzVcv8rP7w8fKxGvW6IJHql4sHXwX9qP6uYwl0kXn0jKTOFH3mqFODaJljbLjaFzumq1fVgPUIfYBZm+RjugoTgqEbv9xdQm/hxbuuETLHR+IE2PWdZL+WqtNpNIk+4yONgP9AJL/DrcM1sS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(366004)(39840400004)(396003)(71200400001)(6506007)(64756008)(8676002)(2906002)(186003)(52536014)(66556008)(33656002)(83380400001)(66446008)(76116006)(66476007)(26005)(478600001)(5660300002)(86362001)(7696005)(8936002)(6916009)(316002)(66946007)(9686003)(55016002)(9326002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?1XtozfDRJjSP6bqSlUUhV+lKdSlG4iA8NXcIEyXvxcrDsXQG55fEWMZOhFCW?=
 =?us-ascii?Q?J8p02Opn5qL32UYEfC5tZMfP7Ycmi/MsJvQP4SN/eg19TtBHRCRTG2N9+bkM?=
 =?us-ascii?Q?hB5kEqpkHhmbJCsj2cIelhaqHqaOJP/YAgL8M663GbrqFHFCB5OeanCpnk+f?=
 =?us-ascii?Q?c6epfd3hOhR1gV2Q6WcngVjpMlv5MJaMAFfmTVbtnv/Z/j+29e5PX39rGqjx?=
 =?us-ascii?Q?vCnFKVn24Rs1aA1Oq0XZcxYIxY6BfBrRUTyOvVHQcATqE/8Ufz38xojfIcc5?=
 =?us-ascii?Q?tJ7U7VXCht9d74sXXmFv7mTo0lEzMi5h8kjBM7sfBCtpcJqbQIRojptqRZ5D?=
 =?us-ascii?Q?gQVM4ABi2ysLiEWr0qwzE2CcWgPzJ0BzpAv31XcvUIMm8+hnzuK3wjYj1MwW?=
 =?us-ascii?Q?EGTaiebBttmbedgptxTrwd+LyMWdidAPvYRKZMq3hD6cpIewJOTb8JebffNh?=
 =?us-ascii?Q?37UuQ0IM6SvO0v9+dacwCzFK4CVmILoTuNK46Xw8VsCtQwHJxdCkrTrb3NMk?=
 =?us-ascii?Q?suCCGGplOv4+jRnQofYUsr/VK3xB/CFsgA0lkSgSGP0LyQwNS2/CkWLGZ7YJ?=
 =?us-ascii?Q?pSdrd3Wx6+sS440IXHYUkjwq/nCkR86NEh248Drl46TpNsCDCL9N/8DU5/Zq?=
 =?us-ascii?Q?jTwcOuOKzqKw6asUnzqy9hqv3xjDIDW9PVR2GJA6FwT8LkQ2n7DR6AzWt4t8?=
 =?us-ascii?Q?fhtlS/v8W+xFj1ffycw84QLVC61yaJrITeDYFLDUn5g4DA3tsLEhNqytLPsH?=
 =?us-ascii?Q?L1rLDLBf1mzKbDUkq+HE5SWSNTVeXC/b9i0nYfxy/nblD+YHDiTSfQmbCGbn?=
 =?us-ascii?Q?o9I5okjh/0NluFJZOxamJIaGiylFWnvBsmIdBmFkP0AgS6BpTYURtiTkQXcF?=
 =?us-ascii?Q?YSEo4JIv4Z14IWoL9u8L/LE/e3pRryYQ82qxg0oFhpaUjgsvwVhiervlYWKM?=
 =?us-ascii?Q?Tif3cw71FOx/HCN08VoOYvbzkN1RAv2TvrraZ/p+veN7kb9s2V/1Gf4VO5PD?=
 =?us-ascii?Q?+SGOFz0+/9ONnE5D8fdsgtVm1xBUpcpRRlUOZ9JN7yjcXr9v5tXQ3Wjx1lb+?=
 =?us-ascii?Q?Dpty2K+MZTF/Qnme+ypW9BAPdUOPnFHKYwRPdXsNFRpP5CPwGx+ySRrvA2uv?=
 =?us-ascii?Q?qEbz0rDWRFyOC/g2zuDt4e0e8Zqsyg/jrk/tEnDDtI+aQ+/Z2DRr7FPi0Cyk?=
 =?us-ascii?Q?zn6FEQ537R+43okh1Sq80XhMaXXb8JpqhfyrU+2+wonTRay2eW9DnAvhsA9T?=
 =?us-ascii?Q?BBXcnmbI1D69GXv+RFaV3BBnXP9okbwrzckzJEgVc+wwayvmd1SisJgzhUPv?=
 =?us-ascii?Q?pBxTblSFFeskNzEwwLO02jzs?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b7c9a403-bb68-450f-45fd-08d8cf4cac6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2021 11:52:28.8893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8E8SijcCWx+igeD5cKM7xw+O/iStSWmYMuBLWrsSIEB60sSma5lWyRX/HWTc2VXIGJqBJ2r3SPXb8oqNanQZWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP123MB2815
Subject: [USRP-users] RFNoC OTT Block on E320
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
Content-Type: multipart/mixed; boundary="===============7909174235646075150=="
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

--===============7909174235646075150==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB37245E820A2A005C90462024CA8B9LNXP123MB3724GBRP_"

--_000_LNXP123MB37245E820A2A005C90462024CA8B9LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to add an OTT block into the FPGA for an E320. I'm using version=
 4.0.0 of the UHD.

So far I've used rfnocmodtool to create the OOT folder structure and add my=
 new block. My initial plan was to add this block as per the default code g=
enerated that just passes data through. I wanted see that this was instanti=
ated into the FPGA and the system still worked before starting to add my ow=
n code.

I've been following the "Getting Started with RFNoC in UHD 4.0" page on the=
 Ettus website and also the Youtube video "RFNoC 4 Workshop - GRCon 2020". =
The .yml file I've created connects the OTT block between the radio Rx and =
stream endpoint (I've removed the DDC / DUC and already had the FPGA workin=
g without these).

So far I've got the FPGA built and uploaded to the FPGA. Uhd_usrp_probe sho=
ws that the RFNoC routing as expected, but the name of OTT block has been r=
eplaced with Block#0. The OOT project appears as a folder in GNU radio with=
 the new block available to be dragged into the project.

I think the issues I'm now having are similar to those reported recently by=
 Mike with the E310. Trying to run a GNU radio project results in the error=
 " AttributeError: module 'Dilbert' object has no attribute 'dogbert'"

The examples I'm following are all based around the X310, is there an extra=
 step required for the E3xx USRPs to update the firmware running on the dev=
ice so that it's aware of the new block type? If so I've no idea how I woul=
d go about this.

Any help on this would be much appreciated,

Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB37245E820A2A005C90462024CA8B9LNXP123MB3724GBRP_
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
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m trying to add an OTT block into the FPGA f=
or an E320. I&#8217;m using version 4.0.0 of the UHD.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So far I&#8217;ve used rfnocmodtool to create the OO=
T folder structure and add my new block. My initial plan was to add this bl=
ock as per the default code generated that just passes data through. I want=
ed see that this was instantiated into the
 FPGA and the system still worked before starting to add my own code.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been following the &#8220;Getting Started=
 with RFNoC in UHD 4.0&#8221; page on the Ettus website and also the Youtub=
e video &#8220;RFNoC 4 Workshop - GRCon 2020&#8221;. The .yml file I&#8217;=
ve created connects the OTT block between the radio Rx and stream endpoint
 (I&#8217;ve removed the DDC / DUC and already had the FPGA working without=
 these).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So far I&#8217;ve got the FPGA built and uploaded to=
 the FPGA. Uhd_usrp_probe shows that the RFNoC routing as expected, but the=
 name of OTT block has been replaced with Block#0. The OOT project appears =
as a folder in GNU radio with the new block
 available to be dragged into the project.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I think the issues I&#8217;m now having are similar =
to those reported recently by Mike with the E310. Trying to run a GNU radio=
 project results in the error &#8220; AttributeError: module &#8216;Dilbert=
&#8217; object has no attribute 'dogbert'&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The examples I&#8217;m following are all based aroun=
d the X310, is there an extra step required for the E3xx USRPs to update th=
e firmware running on the device so that it&#8217;s aware of the new block =
type? If so I&#8217;ve no idea how I would go about
 this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help on this would be much appreciated,<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB37245E820A2A005C90462024CA8B9LNXP123MB3724GBRP_--


--===============7909174235646075150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7909174235646075150==--

