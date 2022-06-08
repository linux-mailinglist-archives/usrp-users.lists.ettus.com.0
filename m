Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F6B543D54
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jun 2022 22:06:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 05D6D3845AA
	for <lists+usrp-users@lfdr.de>; Wed,  8 Jun 2022 16:06:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654718785; bh=rOQ2MX899G5UFmpx5h0Iz0CCTlz5d6391nqhOs7D9gU=;
	h=To:Date:CC:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=CRX/QCyWlsBmjGY8ryOEtf7h8R8JwFYAxu3N/WET3hW8tejLqgLPe7hXOpVzM548X
	 DP4wOS0vEaGLMw9r0WhXzyFwvPZ2JhRkyEOUdMDfVLdKoq6JacoZ12RYihQHrVb9Vb
	 xhvUXb91sEGkP/1AYOuq10xhV321aQED5ZaKrhJLiwKWjWq83Dg00BVW/yh6qDbdVo
	 39XBQHR6AnRv8u6XTw9bYYIgkuA6E+Y9PwiHwxz4f24RExkk7EDejpfJ55eeVHPAsS
	 KGi89QmymD0lB68m4u9zk3Q7nKqIVxQsW4AqC85GWK48UPZGhA8WW0ZE/0hPbRd7QK
	 4CBCtQR6v5y5A==
Received: from dmzms99801.na.baesystems.com (dmzsmtprelay-tx.us.baesystems.com [149.32.232.65])
	by mm2.emwd.com (Postfix) with ESMTPS id AF55638431D
	for <usrp-users@lists.ettus.com>; Wed,  8 Jun 2022 16:05:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=baesystems.com header.i=@baesystems.com header.b="LzyXmcAp";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1654718717; x=1812398717;
  h=from:to:cc:subject:date:mime-version;
  bh=sZd9jnPIIzIUvH88qtzDX3qf4PossJ5OKjXTwXzzzn4=;
  b=LzyXmcApmm1Y4GhZe94GQF0tC8logJLHkrDRPUv868Q0AQs7me+1bfy6
   DHZ+ihF/7+jpLGT8/kJoo7b0wNy6EkI8C/+M68WHrXA+n9TnZr5wQVi2y
   +7eCTu6o4o8A1ewDDtprJ+kbFmb3kovVpl1HyOccJd+VSS7HCJigL0Lzq
   U=;
IronPort-SDR: gM27Aa0eyu0QHquis2cBXEAObXNmvWWBe35DTcULwCTV3Azq2D0v5DnHgIq32xhmyyO+VGKK41
 I5NZxvtKwPvw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AMLUaKBeOjzqUkTIgFB3wAvmilGM+wtnLVj580?=
 =?us-ascii?q?XLHo4xHfqnrxZn+JkuXvawr0AWSG9iGoKIYw8Pt8InYEVQa5piAtH1QOLdtb?=
 =?us-ascii?q?DQizfssogo7HcSeAlf6JvO5JwYzHcBFSUM3tyrjaRsdF8nxfUDdrWOv5jAOB?=
 =?us-ascii?q?Br/KRB1JuPoEYLOksi7ze+/94PdbglShDewYbx+IRa5oA7MqsQYnIxuJ7orx?=
 =?us-ascii?q?BDUuHVIYeNWxW1pJVKXgRnx49q78YBg/SpNpf8v7tZMXqrmcas2S7xYFykmP?=
 =?us-ascii?q?Hsu5ML3rxnDTBCA6WUaX24LjxdHGQnF7BX9Xpfsriv3s/d21SeGMcHqS70/R?=
 =?us-ascii?q?C+v5Ll3RhD2lCgHNiY58GDJhcx2kKJbuw+qqxhmz4LJfI2ZKP9yc6XAdt0YW?=
 =?us-ascii?q?GVBRN5cWSxfDI6icoUPE+QPM+VZr4bhqFQDtgGxCRWuBO711jNEmmH60Ksn2?=
 =?us-ascii?q?OohCwHG2wkgEsoAvHrKrdX1MKMSUfuyzKnO1TnIcu5b2TDm54PVdhwur+yCU?=
 =?us-ascii?q?bd+fcHMzkQvDQTFgU6Opoz/IzOZzPgNs2mf7+pkTuKvjGgnphpqrTe12Mgsk?=
 =?us-ascii?q?YnIhpkJyl/a8CV525w5KsG/SE5+eNOpFoZbuC6GOYVsWMwiX31otzggyr0Ao?=
 =?us-ascii?q?ZO2fTUGxIglyhPCa/KKb5SE7xDgWeuMPzp1mW5pdry/ihus7USt1+zxW8203?=
 =?us-ascii?q?VpWoCRLnN3Bum0N2RHR5caKVuVw80G80jiMzwDe8vxILVwumafVKZMt2KM8m?=
 =?us-ascii?q?54dvEjZHyL7mV36gLKKekk+9eWk9f7rbqv4qpKdLYN4lx/yP6ool8eiG+o3K?=
 =?us-ascii?q?BIOUHKe+emk0b3j+lD2T6tSg/0tl6nZrIjaJcMGpq6lGwNV0pgs6xK4Dzq+1?=
 =?us-ascii?q?tQYnX8HI0hAeBKcjIXkO03CLOzlAfulhVSjii1nyOvcMbL/GZXMLmPDkKv/c?=
 =?us-ascii?q?rZ48E5Q0hY8zdda555MC7EBJuz8WlPpudDFEhM1KQK5zuT9BNlg0o4TV3iDD?=
 =?us-ascii?q?66YPa/KtF+H/OMvI+2CZI8Pvzb9LuAo5+TpjXAih1AdZ7Wp0YELaHC5GvRmJ?=
 =?us-ascii?q?16ZYX3qgtoaCmgFpBQxTPfqiV2ZTT5ceXOyX7km6j4nD4KmCJ/PRoa2j7OZx?=
 =?us-ascii?q?ie0AoVWZnxaClCLCXrkap2IW+0QZyKKPs9hjjsEWKC8S486zxGurBb2y6d8L?=
 =?us-ascii?q?uXK4C0Yronu1Nx05+3IiREy7iZ4ANqB02GRUmF0hXkESCMx3KB68gRBzQLJz?=
 =?us-ascii?q?LNim7lFDtFJ/NtNUxwmLtjR0/BnEJb5XQeLNoOUU0y+B8i9DCsqZtYw2MMVJ?=
 =?us-ascii?q?UthB8i5yBvE2nz5LaUSkunBOJ0w9rnb2Ty5DcF3gzb77+hrxw08RcFCL3Hgm?=
 =?us-ascii?q?q978xPUAabDmkiChr22eKEHmiXK8THQniK1oEhEXVsoAu3+VncFax6T9Iyhj?=
 =?us-ascii?q?n4=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BQAwB2bIJi/0LBJQpagQkJgUaBIYF?=
 =?us-ascii?q?/AoFrsimBfAsBAQEBAQEBAQEIAUIEAQGFAoVBJjYHDgECBAEBARIBAQYBAQE?=
 =?us-ascii?q?BAQcEAYEbhWkMgjUpAYQXTBIBDAlrJgEEDg2CdoIMrVmBMxoCZYRthRGBPIF?=
 =?us-ascii?q?mhVWDCIZtj3wElV0HOgNUgQUSgSFxAQgGBgcKBTIGAgwYFAQCAxASUx4CEww?=
 =?us-ascii?q?KHA5UGQwPAxIDEQEHAgsSCBUsCAMCAwgDAgMjCwIDGAkHCgMdCAocEhAUAgQ?=
 =?us-ascii?q?THwsIAxofLQkCBA4DQwgLCgMRBAMTGAsWCBAEBgMJLw0oCwMFDw8BBgMGAgU?=
 =?us-ascii?q?FAQMgAxQDBScHAyEHCyYNDQQjHQMDBSYDAgIbBwICAwIGFwYCAnEKKA0IBAg?=
 =?us-ascii?q?EHB4lEwUCBzEFBC8CHgQFBhEJAhYCBgQFAgQEFgICEggCCCcbBxY2GQEFXQY?=
 =?us-ascii?q?LCSMcHBARBQYWAyZSBgIBmXiiOqEDBwODTJ94LhWWdwORXYVwjiOCUyChbAG?=
 =?us-ascii?q?EcQIEAgQFAhaBaAmCBXCDOVAXApx/gTACBgsBAQMJkAiBEgEB?=
X-IPAS-Result: =?us-ascii?q?A2BQAwB2bIJi/0LBJQpagQkJgUaBIYF/AoFrsimBfAsBA?=
 =?us-ascii?q?QEBAQEBAQEIAUIEAQGFAoVBJjYHDgECBAEBARIBAQYBAQEBAQcEAYEbhWkMg?=
 =?us-ascii?q?jUpAYQXTBIBDAlrJgEEDg2CdoIMrVmBMxoCZYRthRGBPIFmhVWDCIZtj3wEl?=
 =?us-ascii?q?V0HOgNUgQUSgSFxAQgGBgcKBTIGAgwYFAQCAxASUx4CEwwKHA5UGQwPAxIDE?=
 =?us-ascii?q?QEHAgsSCBUsCAMCAwgDAgMjCwIDGAkHCgMdCAocEhAUAgQTHwsIAxofLQkCB?=
 =?us-ascii?q?A4DQwgLCgMRBAMTGAsWCBAEBgMJLw0oCwMFDw8BBgMGAgUFAQMgAxQDBScHA?=
 =?us-ascii?q?yEHCyYNDQQjHQMDBSYDAgIbBwICAwIGFwYCAnEKKA0IBAgEHB4lEwUCBzEFB?=
 =?us-ascii?q?C8CHgQFBhEJAhYCBgQFAgQEFgICEggCCCcbBxY2GQEFXQYLCSMcHBARBQYWA?=
 =?us-ascii?q?yZSBgIBmXiiOqEDBwODTJ94LhWWdwORXYVwjiOCUyChbAGEcQIEAgQFAhaBa?=
 =?us-ascii?q?AmCBXCDOVAXApx/gTACBgsBAQMJkAiBEgEB?=
X-IronPort-AV: E=Sophos;i="5.91,230,1647302400";
   d="scan'208,217";a="479580560"
IronPort-SDR: BDX5ozPLq8slwIRBbM5cGk3PbzsAc+EHwSaHPPesGDi5prvaFuC6ayIJSdcp8Rl3Fb3KTSndQY
 6tb7YBacHoWucUaHgHOA5GiKj7rtYnvntHPfDOgDans3TpwEpcgL8deacdagsWR1AAcrA/ZJN+
 dg/oWRmIK41wEEsq0cSaAZF1AsJ/nGrPYY5gRZvo3YiQ9YokZMVwQlJzp40PVIvwPIfA3uf52K
 MjpzYDfoVH0s+oYhUatfZfeAdVL6UvUq+nvEOf1hOpKYSciKoadD4lqz0hKSnOCGBxhTRkTvsz
 2DA=
IronPort-Data: =?us-ascii?q?A9a23=3AcgxGjax796c0+7emKHZ6t+fWxCrEfRIJ4+Muj?=
 =?us-ascii?q?C+fZmUNrF6WrkUHm2saWD+AOv2LNGqnftsgaduw8RlUucCEzdVmTAJu/3w8F?=
 =?us-ascii?q?HgiRejtXI/AdhiqV8+xwmwvdK/shiknQoGowPscEzmN/39BDpC79SMmjf/QF?=
 =?us-ascii?q?uKmYAL5EnsZqTFMGX5JZS1Ly7ZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB?=
 =?us-ascii?q?5er83uDihhTVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTq08uEdiEE?=
 =?us-ascii?q?m3lExcFUrtJk57UVmEvee6PZVXfzHVRX6SmhBsEvCs1zqI9N/Nab0pL49mLt?=
 =?us-ascii?q?4kpjo4S88XuEEFwYvSkdOc1CnG0FwlkOqdL4qOBPXm7tdeUyWXMenb30u5yA?=
 =?us-ascii?q?UQte4Yf/46bBEkVr6NIc2xWNUrra+WehejTpvNXrtk4NtGuIZgSoGpIyTDCE?=
 =?us-ascii?q?e1gTIzfXr6M7thdtB88i8pJB/+YecMDbDNHahWGaBpKUmr7orpWcPyAiX3zd?=
 =?us-ascii?q?iYI9QrI9Ow45GzfyApylqLqN8bRfN+DA8NYgi6lSqv91zyRKnkn2Ba3kGDbm?=
 =?us-ascii?q?p50utLyoA=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AcwfKdqx6aocTdAQU+KxSKrPw/b1zdoMgy1?=
 =?us-ascii?q?knxilNoH1uA6mlfqWV95gmPHDP5wr5NEtPpTn4Atj/fZq+z+8W3WByB9eftV?=
 =?us-ascii?q?LdyQ+VxehZhOOJrgEIcBeOldK1u50AT0F1MqyWMbBc5fyKmXjBYq1QuuWvwe?=
 =?us-ascii?q?SKoe/fynt3JDsaF52Ilz0JdzpyzCVNNW977aJQLuvi2iPtnUvQRUgq?=
X-IronPort-AV: E=Sophos;i="5.91,286,1647302400";
   d="scan'208,217";a="327834332"
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Potential X410 issue
Thread-Index: Adh7cjQ/OVGFcAWvQP+dtpOO1n+ykQ==
Date: Wed, 8 Jun 2022 20:03:46 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.226.123]
MIME-Version: 1.0
Message-ID: <165471871793.11266.8640979229099732140@mm2.emwd.com>
Message-ID-Hash: RXLYJAYRKF25LBUZW5EC3GLD22M7VJP6
X-Message-ID-Hash: RXLYJAYRKF25LBUZW5EC3GLD22M7VJP6
X-MailFrom: robert.tillson@baesystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Debora Varma <debora.varma@ni.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Potential X410 issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RXLYJAYRKF25LBUZW5EC3GLD22M7VJP6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Tillson, Bob (US) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Tillson, Bob (US)" <robert.tillson@baesystems.com>
Content-Type: multipart/mixed; boundary="===============5892457776445371476=="

--===============5892457776445371476==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4c9f824346c949b08f0dbd135a95a9f9baesystemscom_"

--_000_4c9f824346c949b08f0dbd135a95a9f9baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Peeps,

So I have been working on the X410, UHD 4.2.0.0, Ubuntu 20.04, CG_400 firmw=
are revision...

No matter what Rx sampling rate I request, the device wants to supply 500 M=
sps :)

So then I decided to try rx_samples_to_file, requested 5 Msps, and got 500 =
Msps as well...

Is there something different with the X410 when configuring the sampling ra=
te that is different from other devices?

If not, something seems to be amiss, any suggestions?

Thanks,

--_000_4c9f824346c949b08f0dbd135a95a9f9baesystemscom_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">Peeps,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So I have been working on the X410, UHD 4.2.0.0, Ubu=
ntu 20.04, CG_400 firmware revision&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">No matter what Rx sampling rate I request, the devic=
e wants to supply 500 Msps
<span style=3D"font-family:Wingdings">J</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So then I decided to try rx_samples_to_file, request=
ed 5 Msps, and got 500 Msps as well&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there something different with the X410 when conf=
iguring the sampling rate that is different from other devices?<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If not, something seems to be amiss, any suggestions=
?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
</div>
</body>
</html>

--_000_4c9f824346c949b08f0dbd135a95a9f9baesystemscom_--

--===============5892457776445371476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5892457776445371476==--
