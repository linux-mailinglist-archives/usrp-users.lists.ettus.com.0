Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D71F17BE3B3
	for <lists+usrp-users@lfdr.de>; Mon,  9 Oct 2023 16:57:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BEBAB3857FB
	for <lists+usrp-users@lfdr.de>; Mon,  9 Oct 2023 10:57:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696863429; bh=4hQ1U+/NQB4jJ/xLqBPqFoKYEZ3fMDybwuPMwnpby3g=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Wm29zkT+nwnbPpohpqMNChtf1qOU75SNZM77a4QEf2V8oyctVHsnidVAgJuJRIvzS
	 rDKdvHltm87hO19aN7Os1p1PyhOM3civEhUYMnubICe2JF3L6ZrlMLfRr/03cLczwX
	 /6D1B8Wt03YZQ3TX005XQYURbzzOR3EvVYh1jRoxGPgD9UugxSwHNn3NJiagMipx96
	 7EhAtmPc/QEcoDTuq2KLwIYEh3aFULkxWYB98qec/XKmOdJ2JUvjTpdXYUA5GRdEBE
	 JKVsXA9GzBEIhqZHCE0/Ti5DCZAWubRqwJ7gaMcyXzrOyTUDC92pHgMsx/FPZS/AC0
	 vGCSf6fW2u+Ww==
Received: from mail-edgeDD24.fraunhofer.de (mail-edgedd24.fraunhofer.de [192.102.167.24])
	by mm2.emwd.com (Postfix) with ESMTPS id 6DF823857EE
	for <usrp-users@lists.ettus.com>; Mon,  9 Oct 2023 10:56:26 -0400 (EDT)
X-CSE-ConnectionGUID: u5Cq0dNpQkq1vEMrPxqqaA==
X-CSE-MsgGUID: ULEnpulHQNuLf/a/plbKVQ==
Authentication-Results: mail-edgeDD24.fraunhofer.de; dkim=none (message not signed) header.i=none
X-IPAS-Result: =?us-ascii?q?A2FZBgDTEiRl/xmkZsBSCB4BAQsSDECDBIEDeAKBeAGWF?=
 =?us-ascii?q?pIGjXYPAQEBAQEBAQEBCAFEBAEBjBgnOBMBAgQBAQEBAwIDAQEBAQEBAQIBA?=
 =?us-ascii?q?QYBAQEBAQEGBgKBGYUvOgyHBUEdAYEAJgEEG4J3ghZIsh+BNIEBhHawGYFIi?=
 =?us-ascii?q?AoBgU6EAYZDQ4FLgzOEHAUBAYZjBIN8hT0HMoIkgy8qikwxPxNHcBsDBwOBA?=
 =?us-ascii?q?xArBwQvIgYJFi0lBlEELSQJExI+BIM4CoEGPw8OEYJDKzY2GUuCWwkVBjpNd?=
 =?us-ascii?q?hArBBQXgQwIbh8VHjcREhcNAwh2HQIRIzwDBQMEEyEKFQ0LIQVXA0cGDj4LA?=
 =?us-ascii?q?wIcBQMDBFldBQ8eAhAuKQMDGU0CEBQDOwMDBgMLMQMwV0sMWgRwMwNEHUADC?=
 =?us-ascii?q?wdmPTUUGwgBgT2bJQqDRhkGfIEXKBgDKpQwjiyjJgMEA4IugV6hEC4XlyiSP?=
 =?us-ascii?q?Zg6IKMIhHwCBAIEBQIWgXqBf3FPgmhRFwIPohGBMQIHCwEBAwmKNQGBFQEB?=
IronPort-PHdr: A9a23:pYg2pBaUGvGXPR7K6OmOE0b/LTAchN3EVzX9i7IigrNKN6mv8JnOE
 BaDo/t3hULPXYLV5ugCh+eF+6zjWGlV55GHvThCdZFXTBYKhI0QmBBoG8+KD0D3bbbqYiU2E
 d4EVQpj+He2WXU=
X-Talos-CUID: =?us-ascii?q?9a23=3A9A8/KWnorA/PvhaiVM0EA6FKAsfXOWCA526IL2m?=
 =?us-ascii?q?gMGVwEaO4bEWo6Lp9muM7zg=3D=3D?=
X-Talos-MUID: 9a23:I4v/dgozZ5pqmmUtPCgezwxGGcFw/qCOMWYQtZtBso6cMSZTBQ7I2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.03,210,1694728800";
   d="scan'208,217";a="70281127"
Received: from mail-mtaf25.fraunhofer.de ([192.102.164.25])
  by mail-edgeDD24.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 16:56:24 +0200
IronPort-SDR: 65241497_UGQuxa7mQbeecVb0u4P77BKjNy/VoFVDe2Dfo4jx9qkgWor
 1M62zynu3GF2N91/9cwQtvJpobTqzCdRb62tjxw==
X-IPAS-Result: =?us-ascii?q?A0C6CACAEyRl/wSsYJlSCB0BAQEBCQESAQUFAUCBT4E1M?=
 =?us-ascii?q?VlxAlk8YwGWFZIGjXYPAQMBAQEBAQgBQgIEAQGMFgImOBMBAgQBAQEBAwIDA?=
 =?us-ascii?q?QEBAQEBAwEBAQQBAQECAQEGAgEBgQoThWkMhwBBHQGBACYBBBuCd4IWSAICs?=
 =?us-ascii?q?iGBNIEBhHawGYFIiAoBgU6EAYRegWVDgUuDM4QcBQEBhmMEg3yFPQcygiSDL?=
 =?us-ascii?q?yqKTDE/E0dwGwMHA4EDECsHBC8iBgkWLSUGUQQtJAkTEj4EgzgKgQY/Dw4Rg?=
 =?us-ascii?q?kMrNjYZS4JbCRUGOk12ECsEFBeBDAhuHxUeNxESFw0DCHYdAhEjPAMFAwQTI?=
 =?us-ascii?q?QoVDQshBVcDRwYOPgsDAhwFAwMEWV0FDx4CEC4pAwMZTQIQFAM7AwMGAwsxA?=
 =?us-ascii?q?zBXSwxaBHAzA0QdQAMLB2Y9NRQbCAGBPZslCoNGGQZ8gRcoGAMqlDCOLKMmA?=
 =?us-ascii?q?wQDgi6BXqEQLheXKJI9mDogowiEfAIEAgQFAhaBeiWBWXFPgmhOAxcCD6IRg?=
 =?us-ascii?q?TECBwsBAQMJhWmESwGBFQEB?=
IronPort-Data: A9a23:RLyYPKAJNaKqcBVW//blw5YqxClBgxIJ4kV8jS/XYbTApDhzgmYFy
 mtLC27XbveMM2umeY8laNyy9EkG6pTSnNZqTANkpHpgZkwRlceUXt7xwmUckM+xwm0vaGo9s
 q3yv/GZdJhcokf0/0vraP67xZVF/fngbqLmD+LZMTxGSwZhSSMw4TpugOdRbrRA2LBVOCvT/
 4upyyHjEAX9gWUtajpFs/vrRC5H5ZwehhtI5jTSWtgW5Dcyp1FNZLoDKKe4KWfPQ4U8NoZWk
 M6akdlVVkuAl/scIovNfoTTKyXmcZaLVeS6sUe6boD56vR0Soze5Y5gXBYUQR8/Zzyhw4srk
 I0lWZaYEW/FNYWV8AgRvoUx/yxWZcV7FLH7zXeXrOq80xDNemPQ8rZMK24mOacF/tplKDQbn
 RAYAGhlghGrguu3xL2kE69th99lItPiIYUfvX9t13fVAJ7KQ7iaHv6MtIEehWhqwJwm8fX2P
 6L1bRJrcR/JJRdGMVcSAZMzhs+ph2K5fSdRtVSVoqQ6+S7fwWSd1ZC3aYWNIYfWFZ89ckCwp
 2jB52rBI04mG9Wl4iO632vzgfT3pHauMG4VPPjinhJwu3WO3XYLTQANWEGgif24kVKlHd9DN
 1EPvCEpqMAPGFeDS9D8WxKn+TiFvwVaVcBZDus67w+A0OzY7m51G1Q5c9KIU/R+3OdeeNDg/
 gbhcwrBVW0/4o6GA2mQ7KmVpj6UMC0YZz1KLywdQAdPp5GprIgvh1idBpxuAYykvO3TQDvQ+
 jGtqDRhprMxicVQ6b6302qaiB2Rp7/IbDUP2CPpYkyf4DlEObGVP76T1QCD7NJrDpqocV2aj
 X1Vx+mc9L8vCL+OpgysQcIMPqmg19OYAjv+gVJQQp4rrQap8H/+frJrwSpfIX1xOZ0uYg7ZY
 070uCJQ6qRMPXCsU7RFXoKpB+kuzoniDd7AVM2IXuFRY5N0ShCLzBtuaWGUwWrptkomyoM7B
 ru2bueuCiw8JZl87T/rWdoY76An9ho+yUzXW5r/6RatipiaRXyNTIY6IEm8Vf844IyEsTfq3
 Y5mbeXS8CpmUcr6fiXz2qwQJwpTLXEEWLbHm/YOfeuHegdbCGUtDsHK+owYeqtnofVxtvzJ9
 XSDSENn2ALBpXnYGz6rNFFnSp3SBKhak1xqHBYCH1iS31obXb2O94YaLps+Qqkm/rdszNlyV
 Pg0RP+DCfVuFBXC/ywWfMT4p4lMLR6uhRy8OhS0RD0Fe79hWA371dv2dST/9CQ1L3SWtOlvh
 5aCxw/kUZ44aAA6N/nvadWr1EKXgXgRvMlQTnn4CIBfV2u0+bc7NhGrqOE8Jv89DCnqxxyY5
 l6wOggZr+ycmL0F2oDFqo7cprj4DtYkOFRRGlTayrOENSP62G6H6q0YWcaqeQHtbk/FyJ+AV
 850kc6laOYmmWxUubVSC7xolKIyx+X+ro9gkzhLIi/5UESJOJhBfF+2hdJCp49c9I9/4AGWY
 H+CyvNeGLeOOf7mLmIvGRoYXryD+805yjj2xtYpEXr+/x5yreamU10NHhyiix59DbpSMaE58
 Nglo/xN4Bybjx4yOcfbiytR2T2GK3weYaAZp7UfOovKixUq+H5Gc5fzGi/727DRStRuY20BA
 C6Yu7rGvJtYnnH9SnsUEWPc+9ZdibAlmgF4/HVbK3unwtP61+IKhjtP+jEJfyFp5xRg0dMrH
 FN0NkdwdJ68zx0xiOdtB2mTShx8XjuH8UnMynwMpm3Tb2+sckfvdGQdG+K8zHo1wlJmXApw3
 e+nkT7+cDPQYsvO8DM4Whdlp9zdXNVBzFD+t/79LfuVPasRQGTDsvaia1Nd/lGjSYk0iVbcr
 OZnwPdoZOepfWQMqqk8EM+B2a5WVBmAI3dYTOp8+L8SW1vRYyy2xSPEPnXZlhmh/BAW2RTQ5
 xRSG/9y
IronPort-HdrOrdr: A9a23:ahfKfq/OiDFKqrNqfx1uk+DfI+orL9Y04lQ7vn2ZESYlF/Bw5P
 re+MjztCWE8Qr5N0tQ+uxoVJPtfZq+z+8M3WByB8bBYOCOggLBR+sO0WKI+VPd8ljFltK1op
 0AT0ERMrLN5BNB/KHHCUGDYrAd/OU=
X-Talos-CUID: 9a23:g5hl2WFUTCPsZMudqmJ60mEIR8ssakHsj1X3DF+8I3ttdK+8HAo=
X-Talos-MUID: 9a23:53Ep8QQUM9Xbe4MwRXTtjjZ6Ov9JvJiBAXomiKoropaDLhRJbmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.03,210,1694728800";
   d="scan'208,217";a="217033482"
X-IronPort-Outbreak-Status: No, level 0, Unknown - Unknown
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4])
  by mail-mtaF25.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 16:56:23 +0200
Received: from mail.iis.fraunhofer.de (unknown [153.96.212.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 52C87C004A
	for <usrp-users@lists.ettus.com>; Mon,  9 Oct 2023 16:56:23 +0200 (CEST)
Received: from mail05.iis.fhg.de (2001:638:a0a:1111::215) by mailn2.iis.fhg.de
 (2001:638:a0a:2111::212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.42; Mon, 9 Oct 2023
 16:56:23 +0200
Received: from mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec]) by
 mail05.iis.fhg.de ([fe80::2564:37d:9a5e:29ec%6]) with mapi id 15.02.1258.012;
 Mon, 9 Oct 2023 16:56:22 +0200
From: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC + GNU Radio: spp is set differently
Thread-Index: Adn6vp5RnRtB5hHWTz2VxB+vkIu5MA==
Date: Mon, 9 Oct 2023 14:56:22 +0000
Message-ID: <75c7acf9196142a6a2c0fda19fe48938@iis.fraunhofer.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [153.96.171.210]
MIME-Version: 1.0
Message-ID-Hash: KOOPPVWJD2QJGE3M7YUAJGMJL4ZX4EW5
X-Message-ID-Hash: KOOPPVWJD2QJGE3M7YUAJGMJL4ZX4EW5
X-MailFrom: luca.bachmaier@iis.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC + GNU Radio: spp is set differently
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOOPPVWJD2QJGE3M7YUAJGMJL4ZX4EW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4666723388373292590=="

--===============4666723388373292590==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_75c7acf9196142a6a2c0fda19fe48938iisfraunhoferde_"

--_000_75c7acf9196142a6a2c0fda19fe48938iisfraunhoferde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm currently implementing a GNU Radio flowgraph that makes use of the RFNo=
C FFT block. After fixing a bug found out by Rob Kossler (mail in this mail=
ing list from September 14) in the UHD repository, the original problem per=
sists in GNU Radio: trying to use FFT lengths greater than 256 throws the e=
rror "samples per package must not be smaller than atomic item size".

When trying to look closer into the problem I noticed that the spp paramete=
r is set differently when using the UHD python API directly (script rfnoc_r=
x_to_file) and when using GNU Radio. I added debug statements to the rfnoc_=
rx_streamer block that print the values of spp and ais.get() (atomic item s=
ize). When calling the rfnoc_rx_to_file script with a spp set to 1024 and a=
n FFT length of 1024 I get the following output:

[INFO] [0/LogPwr#0] Setting default MTU forward policy.
Using radio 0, channel 0 Attempting to connect FFT:0 to 0/Radio#0:0...
Requesting RX Freq: 0 MHz... Actual RX Freq: 1 MHz...
Waiting for "lo_locked": ++++++++++ locked.
Requesting samples per packet of: 1024
Actual samples per packet =3D 1024
Using streamer args:

[DEBUG] spp =3D 18446744073709551615
[DEBUG] ais.get() =3D 1

[DEBUG] spp =3D 2000
[DEBUG] ais.get() =3D 1

[DEBUG] spp =3D 2000
[DEBUG] ais.get() =3D 1024

[DEBUG] spp =3D 1024
[DEBUG] ais.get() =3D 1024

Since here spp is not smaller than ais.get(), the flowgraph is able to run.=
 When trying the same as a GNU Radio flowgraph, the output is the following=
:

[INFO] [0/LogPwr#0] Setting default MTU forward policy.

[DEBUG] spp =3D 18446744073709551615
[DEBUG] ais.get() =3D 1

[DEBUG] spp =3D 2000
[DEBUG] ais.get() =3D 1

[DEBUG] spp =3D 2000
[DEBUG] ais.get() =3D 2048

[DEBUG] spp =3D 0
[DEBUG] ais.get() =3D 2048

For some reason, spp is finally set to zero and ais.get() is set to 2048. I=
 do not understand why, and I also don't get why the behavior is different =
for GNU Radio at all. Is it possible that GNU Radio uses its own version of=
 UHD? Up until now I believed that GNU Radio simply uses the already instal=
led UHD implementation over the UHD Python API. If this is not the case, ho=
w can I change this specific GNU Radio UHD version? I tried looking into th=
e source code of gnuradio/gr-uhd/lib/rfnoc but I do not understand it unfor=
tunately.

Regards
Luca

--_000_75c7acf9196142a6a2c0fda19fe48938iisfraunhoferde_
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I&#8217;m currently implementin=
g a GNU Radio flowgraph that makes use of the RFNoC FFT block. After fixing=
 a bug found out by Rob Kossler (mail in this mailing list from September 1=
4) in the UHD repository, the original problem
 persists in GNU Radio: trying to use FFT lengths greater than 256 throws t=
he error &#8220;samples per package must not be smaller than atomic item si=
ze&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When trying to look closer into=
 the problem I noticed that the spp parameter is set differently when using=
 the UHD python API directly (script rfnoc_rx_to_file) and when using GNU R=
adio. I added debug statements to the
 rfnoc_rx_streamer block that print the values of spp and ais.get() (atomic=
 item size). When calling the rfnoc_rx_to_file script with a spp set to 102=
4 and an FFT length of 1024 I get the following output:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[I=
NFO] [0/LogPwr#0] Setting default MTU forward policy.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">Us=
ing radio 0, channel 0 Attempting to connect FFT:0 to 0/Radio#0:0...<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">Re=
questing RX Freq: 0 MHz... Actual RX Freq: 1 MHz...<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">Wa=
iting for &quot;lo_locked&quot;: &#43;&#43;&#43;&#43;&#43;&#43;&#43;&#43;&#=
43;&#43; locked.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">Re=
questing samples per packet of: 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">Ac=
tual samples per packet =3D 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">Us=
ing streamer args:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 18446744073709551615<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 2000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 2000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 1024<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Since here spp is not smaller t=
han ais.get(), the flowgraph is able to run. When trying the same as a GNU =
Radio flowgraph, the output is the following:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[I=
NFO] [0/LogPwr#0] Setting default MTU forward policy.
<br>
<br>
[DEBUG] spp =3D 18446744073709551615<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 2000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 2000<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 2048<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] spp =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US">[D=
EBUG] ais.get() =3D 2048<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For some reason, spp is finally=
 set to zero and ais.get() is set to 2048. I do not understand why, and I a=
lso don&#8217;t get why the behavior is different for GNU Radio at all. Is =
it possible that GNU Radio uses its own version
 of UHD? Up until now I believed that GNU Radio simply uses the already ins=
talled UHD implementation over the UHD Python API. If this is not the case,=
 how can I change this specific GNU Radio UHD version? I tried looking into=
 the source code of gnuradio/gr-uhd/lib/rfnoc
 but I do not understand it unfortunately.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_75c7acf9196142a6a2c0fda19fe48938iisfraunhoferde_--

--===============4666723388373292590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4666723388373292590==--
