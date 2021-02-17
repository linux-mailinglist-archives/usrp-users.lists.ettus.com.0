Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9302631DC55
	for <lists+usrp-users@lfdr.de>; Wed, 17 Feb 2021 16:36:02 +0100 (CET)
Received: from [::1] (port=34518 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lCOrt-000745-0d; Wed, 17 Feb 2021 10:35:57 -0500
Received: from mail-eopbgr110139.outbound.protection.outlook.com
 ([40.107.11.139]:56388 helo=GBR01-CWL-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <md964@hmgcc.gov.uk>) id 1lCOro-0006wQ-7v
 for usrp-users@lists.ettus.com; Wed, 17 Feb 2021 10:35:52 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ksDVcr+qUXRcEEpS8Fku4A+7Pj51an7LGlbD/VR1hfeqqxvfozDYJ+gthTWNe9d0TgZlx8O1OP6M/SQnnaEDIwKAZnwrZSVI/zTWllmyG8U9DMUuRcdkdCrwb2uu0AYJw2BnVt8oSWHD3Z1WxPRfyI1QeFhjjthG2Hu91PMedU4kdlusdCP5PeGeUaK36VK6s/vJ7uq0Kr4D4RM17LP/VQzM1mAM+5zBAiUz46QRu5Bhu7eyBPRaptMHuV4BUn2m4JRz8rZNwRg8PPG/qFEIk5XXP0wBxXIFQ6iEzcprsxUM5z6+B1sKai9hMlbedWXzNvCDs0fTFcGqH3QZ85C7iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iGiO2SihlCdOo64BlGOgDHalN9di2kEJ4giFAELKRM=;
 b=i5RDnqwP539A27qPX22XY8jaUtfTXsQkz1Lk0triJAlPzbwQoi6jwis4z+oGXcw4Z3wBE29Uoj80rgz/ieXa07vmIAYqnloU6PF+YE9E//Vn3tiRojLerCJv1kxUskw34Tx141oWZx2yMmVY865HaRhPIwUWZvx9QUjqMisuIPDkudfgyiJv/bDu0t/618xKj6OWxstR4ajiUJAZIOu6izOIHudlIjFWDavcMbUOSVkF7DqI5RWTpFA1NxC7HlF8iBE1t0m+yCVZEfM/2SkK12ZQYbIpJXaUfjMJWE29jBGvOpYjpmYlD8nbMC1DaLH/W6cjRr6XgSiMTP6qelyd2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hmgcc.gov.uk; dmarc=pass action=none header.from=hmgcc.gov.uk;
 dkim=pass header.d=hmgcc.gov.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmgcc.gov.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2iGiO2SihlCdOo64BlGOgDHalN9di2kEJ4giFAELKRM=;
 b=UsXxgUEaqeoJ8idMnJ2nErnvCNu7j/a7AX/+26sG4OF7UimtnMe3OdxKz7C+8eGUQvo9tPwlSpPhPTqV1hNAOwWohPTPQWVCJG+Q+H6Ddi1JFIxPJKgJzaeqc8CXAnq6y9iSUnzOlbM+OCVGPbd/0JB4IgF80GGnLCTuPXJllj8=
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:132::7)
 by LOYP123MB3231.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:f1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.39; Wed, 17 Feb
 2021 15:35:09 +0000
Received: from LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b]) by LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
 ([fe80::58a6:243c:81ac:b96b%4]) with mapi id 15.20.3846.041; Wed, 17 Feb 2021
 15:35:09 +0000
To: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: OTT Gain Block stopping samples flowing from RFNoC Digital Down
 Converter
Thread-Index: AdcFQlWECmXf12heRQuWe0v7YuOKiw==
Date: Wed, 17 Feb 2021 15:35:09 +0000
Message-ID: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=hmgcc.gov.uk;
x-originating-ip: [62.189.143.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 89ff865d-4989-4c13-30f3-08d8d3599c1f
x-ms-traffictypediagnostic: LOYP123MB3231:
x-microsoft-antispam-prvs: <LOYP123MB32314E3C88BACF4E874E0FE6CA869@LOYP123MB3231.GBRP123.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a2oC7sL8F4lrQOjPJ5Quxk/qynqdIvIUGgHrcyu6gAtLfofY6DoqLSMbxxHXhs4yayLCInPEaAbdU12V0fUHrbpXCZcez7wVy9fcWEsWofr0VSaSwh6kBwxchYNtMfYm3Q7OHlNLXQq3H9H0JE8ol2QLDfOHx4lVCylJebvjQ6cwjXR/2BaZGbsOuiNY2XSRqXspo8ZZjFsgBly3oCIGnfbUGKA6YLSadd+3iojorfdoiKrkLGrSwdaKqBmVSUxLSQlroG9lX2wTbSUr0nvI76sftA9JWj3MQrnwAIrbXj7ttvpnNrQRgw0fQZMKYgCz6LioZQbyo+Uo8a3ta0a5foqAgYWAkEavlvUof1MdvM/WrSDvZrukHHSoQN6RysP781Pnp3XkjDeEVuDN0KzaMWRIQK4sB7036FgX0JVHv2AFq4ylgTwzdN00o7MQEKYKht0vtJqr6EduMgWtNm6K6iOb5Yjc6gb/PW9IPxoJF/SSH0/46I9Zmn1t3H1x9gTNZnoAnLeolIaj6wpTYdEEgpPr11ahrD5lqAeOiV66SXW50wPYeJuqlTH4SxpMLsPd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(396003)(346002)(376002)(366004)(136003)(86362001)(6916009)(6506007)(26005)(2906002)(9686003)(478600001)(76116006)(186003)(66946007)(71200400001)(8936002)(52536014)(83380400001)(8676002)(55016002)(33656002)(7696005)(5660300002)(66556008)(66476007)(316002)(66446008)(64756008)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?d+0lnUZL9APYD5FDfUygHw4ZwGIAlIlYrBIgZdCi+WIs5oewLX4Qdf9e+H3w?=
 =?us-ascii?Q?Ke1lBg5/qWlEDCkSY6K0jZE5JNcp9eRhg0kZ2Kk69Y6zIUcZC3E5FkGRxrkl?=
 =?us-ascii?Q?olJT7GqN9FyR1AjS53NRKvhZxwpZWRWsafI7kJeYGwcpg+n3kh18yzQHyXtS?=
 =?us-ascii?Q?eXqr5dGMP7OJkWMyRRCkjixMqVmMOYfulNxl2Kv66JIX2FAUIrUCe9Rr0e0y?=
 =?us-ascii?Q?vahIrB1PbwkkSrwyKu1s8FOQ0G/qo4RTO5x8PlVUIDxE49RAgxuMMBla+GZh?=
 =?us-ascii?Q?LmT66Z0t13jEivXoTjMtugM66oEdmOIXwQuWvutzDUii2nh70mgAjymZv8Tr?=
 =?us-ascii?Q?MazP4doUFIh1AJWtJ243hWIFbJ+IjAH+k1ziLlhbBq+CUHrgWeqRnR5hIDXQ?=
 =?us-ascii?Q?Ynf1w/O4uzEiAe+9Im70d3E27e7YucoclDyl63kayTesS57pWN+il1x88WhV?=
 =?us-ascii?Q?532Vfacb1YRiTKQgWVC3IT4W6BSRnCKtVHy9vV+kr7s/lIHzoQtRjal+yguz?=
 =?us-ascii?Q?o7PFRC01ERsA5Obfqk776tBLtWfvBxeqY+noJruwn6jTrZfsZ5kE2bn5rldD?=
 =?us-ascii?Q?igpoLPEu+h5j0Xuevf+zuhm90RLdcwz5GmznZU8h1JJuIdiDgm/baiLkOgEP?=
 =?us-ascii?Q?SkZJAYpatzKtoFJKGfIKVWRgUjOII0jBfMBzCSbnaDJndP7tACKMazKVbKLr?=
 =?us-ascii?Q?6fcBj4TFudhe21AAUeBLWOPrqmjuVp5JB3gUPJrSL+FEe7tf1K36j8HR24w+?=
 =?us-ascii?Q?AhdKk/56l8LOruCH8haFMXZ+AQnhlv3ahvE5dPyhXlQWxn7An03RDftTqplr?=
 =?us-ascii?Q?XvBG7vRd4Z7hDMdnL/V1ZogucG8os+tHYrBffu23lrKYmFGBdoTkJTp0r8pk?=
 =?us-ascii?Q?7wmAWDqKScuE5iUqo0jkj2wm4MLJJbHAQj3bzvMb+zdOmlS395tqGzzdbfNI?=
 =?us-ascii?Q?wgWEmNRbpbZ4ZhzuDoxeZaLD3Uv+hRF+KZrs8xbq500bNJe2OaYAE8V9WUGk?=
 =?us-ascii?Q?nCVyIPWn7THH/jCiHhbXmBCSNFulhJ39B74OFg3bzzTgXm/VGGtR9It1Jqda?=
 =?us-ascii?Q?vjqnw989rjFWj0p+1YiAJeBw+1U0Jrxv7RLScCK+CRJW+TM3lfFdWRMY3PEb?=
 =?us-ascii?Q?mj5TuXuvJ8NdUsBrzJpWVFKWQNpeEFl2OJhoKgCPaEJGXnadRZVbt/DWs/Bt?=
 =?us-ascii?Q?V9vqoKn8Sx2JxEaSEhX+Ua88JzpsIIUYyMCPOm2rzSmNt396KC3ZMKi3Dfr+?=
 =?us-ascii?Q?Dft1l0aomIMrLaTm/Jfl8FE9h5nyu7ko79oAW2HAKbp8HSx+xMBgvpH1Aqyn?=
 =?us-ascii?Q?C1v5dQuza1vytXwRnhFNasr9?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hmgcc.gov.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 89ff865d-4989-4c13-30f3-08d8d3599c1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 15:35:09.7127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c724c4ae-2756-49fe-b1cd-3a725b29341a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n7R/INpo9dSP84+NrCbae4QTQQuvrKAGNE7l06ArlVNdJUr1+Uie1sPFgdZMucFoi3YGMLfuG/eYy+CH9URYGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LOYP123MB3231
Subject: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
Content-Type: multipart/mixed; boundary="===============6827181812054722629=="
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

--===============6827181812054722629==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_LNXP123MB3724BAB625FE639AF1D8FEBCCA869LNXP123MB3724GBRP_"

--_000_LNXP123MB3724BAB625FE639AF1D8FEBCCA869LNXP123MB3724GBRP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm working with an E320 using UHD 4.0.

I've been working through the video "RFNoC 4 Workshop - GRCon 2020" to inst=
all my own custom signal processing block into the RFNoC on the FPGA.

I've also been following the guide AN-121 "Debugging FPGA images" and have =
added Chip Scope probes to the payload and context stream signals.

I have got to the point where I have the block instantiated in the FPGA. Ru=
nning the example GNU radio code that streams samples from the host compute=
r through the gain block and pack to the PC works as expected. I am also ab=
le to capture the payload and context stream signals in Chip Scope.

However if I reconfigure the GNU radio to "RFNoC RX Radio"->"RFNoC Digital =
Down Converter"->"RFNoC Gain"->"RFNoC Rx Streamer"->"QT GUI Time Sink" the =
system no longer works.

The Time Sink appears but the GNU Radio console is saying rfnoc_rx_streamer=
0 - UHD.recv() call timed out. Removing the gain block from the GNU radio d=
esign restores operation, so it appears that the gain block is in some way =
blocking the streaming data.

I've also rebuilt the FPGA with the gain block connected between the DDC an=
d Stream Endpoint but the results are the same. I've tried reverting the ga=
in block code back to that generated rfnocmodtool, which just loops the con=
text and payload data straight through.

Does anybody have any idea why this block would be stopping data internally=
 generated within the USRP from streaming out, whereas it works Ok when dat=
a is flowing from and back to the host?

Any help would be greatly appreciated,

Mark
________________________________
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.

--_000_LNXP123MB3724BAB625FE639AF1D8FEBCCA869LNXP123MB3724GBRP_
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
	font-family:"Calibri",sans-serif;
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
<p class=3D"MsoNormal">I&#8217;m working with an E320 using UHD 4.0.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve been working through the video &#8221;RFN=
oC 4 Workshop - GRCon 2020&#8221; to install my own custom signal processin=
g block into the RFNoC on the FPGA.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve also been following the guide AN-121 &#82=
20;Debugging FPGA images&#8221; and have added Chip Scope probes to the pay=
load and context stream signals.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have got to the point where I have the block insta=
ntiated in the FPGA. Running the example GNU radio code that streams sample=
s from the host computer through the gain block and pack to the PC works as=
 expected. I am also able to capture
 the payload and context stream signals in Chip Scope.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However if I reconfigure the GNU radio to &#8220;RFN=
oC RX Radio&#8221;-&gt;&#8221;RFNoC Digital Down Converter&#8221;-&gt;&#822=
1;RFNoC Gain&#8221;-&gt;&#8221;RFNoC Rx Streamer&#8221;-&gt;&#8221;QT GUI T=
ime Sink&#8221; the system no longer works.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Time Sink appears but the GNU Radio console is s=
aying rfnoc_rx_streamer0 &#8211; UHD.recv() call timed out. Removing the ga=
in block from the GNU radio design restores operation, so it appears that t=
he gain block is in some way blocking the
 streaming data.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve also rebuilt the FPGA with the gain block=
 connected between the DDC and Stream Endpoint but the results are the same=
. I&#8217;ve tried reverting the gain block code back to that generated rfn=
ocmodtool, which just loops the context and payload
 data straight through. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anybody have any idea why this block would be s=
topping data internally generated within the USRP from streaming out, where=
as it works Ok when data is flowing from and back to the host?<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help would be greatly appreciated,<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Mark<o:p></o:p></p>
</div>
<hr>
This email and any files transmitted with it are confidential and intended =
solely for the use of the individual or entity to whom they are addressed. =
If you have received this email in error please notify the system manager.
</body>
</html>

--_000_LNXP123MB3724BAB625FE639AF1D8FEBCCA869LNXP123MB3724GBRP_--


--===============6827181812054722629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6827181812054722629==--

