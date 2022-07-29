Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D0D585116
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 15:49:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE02A380D8E
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jul 2022 09:49:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659102560; bh=mttEo23/EzYkQwXWxcIfIjrBjRVYvPBhIhUNolg6xQA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ih9nszbmeAi6zsgVyaHcxIaCk0+EdhGagYw+btLP3eBUGF0b3KQFHDBSOfjhizM+o
	 cn5nGihX79DamFTRbMqk31/KmuT1e5BOsm3jWaYbCpf0XXqmGfkPHY4vCof8brCTGI
	 3PBeRamEgJc36WhYMjjSB7GMGcvlABY1L2UHa8OizrNvj+ogZLcM3ao/h1fanfBs7V
	 bVBWw+UdmC1bLgmnuJeqSEoVIqvYugcGlbq0kouvQGiBZbvsb+n71/GMYS4vxuG4lX
	 uff+PmQrggEqtoEvRy+rH6bus6JsT+IMLLQrLKBiaXLpAQHKy+DceO9tnjIAaJd5j+
	 gt9R8RRSB12Uw==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0113.outbound.protection.office365.us [23.103.208.113])
	by mm2.emwd.com (Postfix) with ESMTPS id F292238407B
	for <usrp-users@lists.ettus.com>; Fri, 29 Jul 2022 09:43:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="m4Pl7WjX";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=dQl2g40jIDYkL4XJ0P7FaQ5FE1xqz5ky7zmR5aXcGjwLCYmfbQdYGGy2Y0JW5yCll/4jqoyuhYchizdx6+Ds2F3qXG4dqhAJsAb1yBWqZzIPDcdswRh1tMveqvmx3thNjhpylrdJo103sphfDx3j5BgJHjYhntR4TVXXutp9O+oe2njcMYfKtHQ8BtaK8K/MLQ5hlqq21uHgkneWo1G9U4ufup2zgCliBGEv7I1UvnW+ZR3EcdNv9ba8eKxEAscmvJ8jjkHFO1qBJm9Hd4Ns1onr0oiTA94iiom/CMVI5Uajx8tETqIPlQ60FHCm7AsI4F1aCW583B9I9Wx/y2NniQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cthtj1aXAY4sDBN28u3RvbT3pz1p94hjVUCx2tFnE44=;
 b=fOlXQLFoJ2zceG/NZymgjEUdfhJhC9IF3sgQh0mAKZTDgc8v82C88/SlGr+dG4i4+E5jjF6vvvMiLVBx/DyMHf6gJUABH2padZudSlp9Pc5Bwg28170Q1yusQZ3HNJLCwszzgyRuwJxs8USweCxwg+0G3ibz1GOCyklHtK6W/wXcm0dgeIt98ORPNuiK1xrJWAQf0yCl5JO8Zya3yijlNBgQNWOy9GJb/ZFF+ejzsXF0dGIrDmUjvOUIQA7wQSCSAeGWge0zJv5OFDyRq25JLSKan530kwmXbSOrQ/eJ3gBNr5qXZQZBTiWKRJDZJ7HdOLjsCNQC5e0e5K/JuJyykA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cthtj1aXAY4sDBN28u3RvbT3pz1p94hjVUCx2tFnE44=;
 b=m4Pl7WjX5CccQDJ8qtToKhT/gdHmq4RBFg4ZLl4B/YnnyvBnFGq8Hl1ucwuO9GbkoybK3hPmeQ8pUapA94bxKB1acnP7cSX3QkXv0dAIyRpagA6D9AAruZ325RChhwC5LRuE162CPo1Qc2XOkCKsI3erWmIjVy9wPPWkdzMrRWf5BF0+bjXLGCqfNUS99QssDJjV7eVLbwkrfBP1BcBShmAdiopG4KkRD8HByofeWyrgmQb4nFum1Df5UM+xe1qzuAdtLKSTs170C9u1tiT3Una9gL+MxrpYnnDNx/ybnLV2VYweWZhFOctCI29/XCvTDagT9/XxOF9ZOQFhbNO87g==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1030.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 13:43:06 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::55f3:e741:f8c2:e3e7]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::55f3:e741:f8c2:e3e7%6]) with mapi id 15.20.5482.011; Fri, 29 Jul 2022
 13:43:06 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: Saurav Roy <sauravroy@iisc.ac.in>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: UHD Python API on windows
Thread-Index: AQHYooUvmk70+YPQGUC617aYiM+W062VWcfg
Date: Fri, 29 Jul 2022 13:43:06 +0000
Message-ID: 
 <BN0P110MB101544FAD777E6C1534B1D66B1999@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: 
 <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: 
 <MAXPR01MB43596E4778E0A0DA838DFAF489969@MAXPR01MB4359.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9475b544-6b35-4bb2-fb99-08da7168445d
x-ms-traffictypediagnostic: BN0P110MB1030:EE_
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 GZVAbZtSyXMHgOVl6OGycaHpHLOc8DA/QIc2bhzVqGsym2x3dhloByfLGm5hVkKWleHW8FF7qb+z+1AkhQSHEhCo2C+cK1XUWbVOtyF622IqaP3LalEbEOWfBNCiRkflTFVL8/29edbHqzq2Nykyas3AhPktiufuY3wf2xCl4vgN8U0AI46s1V6OWC7tHXvqZzoKg3xC+8IAoc52elS4L7jfrD0j4ZWZ1k5ep2/0oTgZEp+ux/V6oYato15u8Vd/emVZjQ1PK4NDVKowclAhA/Vaf7tWvlXnx4+hfsFkGYJhFUyPDroL/1dIs+TGBWwvQS7ZKP7EgwsFamToW3zd4d56okpssjzDMY1Alzr5AOR/aCGKR3mi2A5Q5bJiE+WACIde/IWQlXJ+CHdkuwQrF/UhIUQbvrLTM2U6Tns5eEKImpoG/fNlDmhanMZJaUceKwwV/dQSIJc5ZbQk+E2Qy4X/HpqaFh/pzRAAZEOxnVsnjWvoo9eVzPA7HWS6fTv/gZnYjjomjhWWBtf62SfWzcOy9bUURHZuF76qctTGx6HBVdyAM7wD/X+1qoRlzsyllO5DWr7UZ50bxUsRyU6ZKrVAJ1ORQEtZXDxEVwtTS48Awhm//XgCrbi7Xso+9bPzmBtgq1+wQlsr6NWSyxttqA+LaEYcCdYFnwC2wXeyHynRj7Y8kdtWuzXbzehkC+V2Tf3B+x3NhhE5wLx9uJq45tp3wCd8K5SAvAHmD2lJUZOY309vqms00sCna+Lhe6DOQlDOcvXiu7EJQ5aENjr3+Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(366004)(82960400001)(99936003)(966005)(498600001)(71200400001)(166002)(38070700005)(38100700002)(86362001)(53546011)(26005)(9686003)(7696005)(6506007)(110136005)(186003)(8936002)(66556008)(55016003)(2906002)(5660300002)(52536014)(66446008)(64756008)(66946007)(66476007)(76116006)(8676002)(83380400001)(33656002)(40140700001)(21615005)(122000001)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 /T9IBBK9OPTi+Bx21/+ZHKGuy/kBI9NH3Hm9mxrlXb5sghD0T0T3hWZTNjeKO7Pl7vKBUZhggy+qYdVy/Q2J/WoiLLdhdFNlKxbbwBlkSEYdJd9LSnAsLd/Tzp9G5Uj3/HDAIon4oYGBKaGYYtN5O/oYf2K+/iiXdjKhCkerKp0SEkb+zisANFWMeM5CeSj+pSR55Q+c/59SVyOnWEr//U2Nd9gYuNw/NsZ+/70fWeypWq3UUB4qyd2Gj0bnswV3rzNY+m1SKPZo4tVrw8WY38C0DzR4eTF3wDOYzAK7C3MMoX5T7YdN2HHTlMfI32gqUQrsmwSLB4Q+MC03LPHAHu6dnlFKiWJOwAapvhAhvjrz15fwAbdf/+Fgarvd9R0rif+/nBt+3DI0SLT6HBhH9iA6toXQ4uBnubRLRf5XzBw=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9475b544-6b35-4bb2-fb99-08da7168445d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 13:43:06.3424
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1030
Message-ID-Hash: BY6FFN2HFOGXDCOTBJIOEECK7OAXHZWR
X-Message-ID-Hash: BY6FFN2HFOGXDCOTBJIOEECK7OAXHZWR
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API on windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VPDE3DQZLK54C66DP6XJ6RBKDX3427JC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6688030153237429931=="

--===============6688030153237429931==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_003B_01D8A32F.9923CBC0"

------=_NextPart_000_003B_01D8A32F.9923CBC0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_003C_01D8A32F.9923CBC0"


------=_NextPart_001_003C_01D8A32F.9923CBC0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I just went through this myself, so I'll try to include my experience for
you.

 

First, make sure if you've already built and installed UHD, uninstall it and
run "make clean" in the build directory. If you've already built it but
haven't installed it, running "make clean" should be sufficient. Make sure
you have the 'master' branch of UHD checked out, and when you run cmake,
make sure you include the argument "-DENABLE_PYTHON_API=ON". You should get
an output from cmake that looks something like this:

 

-- ######################################################

-- # UHD enabled components                              

-- ######################################################

--   * LibUHD

--   * LibUHD - C API

--   * LibUHD - Python API

. other stuff .

 

The "Python API" line is the one you're looking for. Once that's done run
'make' and then 'sudo make install' and 'sudo ldconfig' as normal. Once it's
installed, test that it worked correctly by running 'python3' and typing
"import uhd". If you're not able to import the uhd module, make sure that
the uhd directory is located in the /usr/local/lib/python3/dist-packages/
directory. If not, try the installation process again.

 

I hope this helps.

 

Very respectfully,

 

Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

www.riversideresearch.org <http://www.riversideresearch.org/>  

T: 937.986.3153 | F: 937.431.3811

 

This e-mail message, including any attachments, is for the sole use of the
intended recipient(s) and may contain proprietary, confidential or
privileged information or otherwise be protected by law. Any unauthorized
review, use, disclosure or distribution is prohibited. If you are not the
intended recipient, please notify the sender and destroy all copies and the
original message.

 

From: Saurav Roy via USRP-users <usrp-users@lists.ettus.com> 
Sent: Thursday, July 28, 2022 9:25 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: UHD Python API on windows

 

 CAUTION: This email is from outside of Riverside Research. Be careful when
clicking links or opening attachments unless you know the content is safe. 

 

Dear sir/madam,

we are trying to install UHD and python API for B210 in windows 11. We are
following binary installation for UHD. But after this, we do not know how to
proceed to create the python API. On this page,
<https://files.ettus.com/manual/page_python.html>
https://files.ettus.com/manual/page_python.html instructions are related to
'install the Python API when building UHD from source.' Could you please
provide the Python API building steps for binary installation of UHD?  Thank
you very much.


With regards

Saurav Roy

 

Sent from  <https://go.microsoft.com/fwlink/?LinkId=550986> Mail for Windows

 


------=_NextPart_001_003C_01D8A32F.9923CBC0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Roboto;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle18
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>I just went through this =
myself, so I&#8217;ll try to include my experience for =
you.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>First, make sure if you&#8217;ve already built and =
installed UHD, uninstall it and run &#8220;make clean&#8221; in the =
build directory. If you&#8217;ve already built it but haven&#8217;t =
installed it, running &#8220;make clean&#8221; should be sufficient. =
Make sure you have the &#8216;master&#8217; branch of UHD checked out, =
and when you run cmake, make sure you include the argument =
&#8220;-DENABLE_PYTHON_API=3DON&#8221;. You should get an output from =
cmake that looks something like this:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>-- =
######################################################<o:p></o:p></p><p =
class=3DMsoNormal>-- # UHD enabled =
components&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p><p =
class=3DMsoNormal>-- =
######################################################<o:p></o:p></p><p =
class=3DMsoNormal>--&nbsp;&nbsp; * LibUHD<o:p></o:p></p><p =
class=3DMsoNormal>--&nbsp;&nbsp; * LibUHD - C API<o:p></o:p></p><p =
class=3DMsoNormal>--&nbsp;&nbsp; * LibUHD - Python API<o:p></o:p></p><p =
class=3DMsoNormal>&#8230; other stuff &#8230;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The =
&#8220;Python API&#8221; line is the one you&#8217;re looking for. Once =
that&#8217;s done run &#8216;make&#8217; and then &#8216;sudo make =
install&#8217; and &#8216;sudo ldconfig&#8217; as normal. Once =
it&#8217;s installed, test that it worked correctly by running =
&#8216;python3&#8217; and typing &#8220;import uhd&#8221;. If =
you&#8217;re not able to import the uhd module, make sure that the uhd =
directory is located in the /usr/local/lib/python3/dist-packages/ =
directory. If not, try the installation process again.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I hope this =
helps.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Very =
respectfully,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate<o:p></o:p></span></p><p class=3DMsoNormal><a =
href=3D"http://www.riversideresearch.org/">www.riversideresearch.org</a><=
span style=3D'color:#1F497D'> <o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Saurav Roy via USRP-users =
&lt;usrp-users@lists.ettus.com&gt; <br><b>Sent:</b> Thursday, July 28, =
2022 9:25 AM<br><b>To:</b> usrp-users@lists.ettus.com<br><b>Subject:</b> =
[USRP-users] Re: UHD Python API on windows<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div =
style=3D'mso-element:para-border-div;border:solid #F9E436 =
1.5pt;padding:2.0pt 0in 2.0pt 0in;background:#F2463D'><p =
style=3D'background:#F2463D;border:none;padding:0in'><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'>&n=
bsp;</span><strong><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#0F0F0F'>CA=
UTION:</span></strong><span lang=3DEN-IN =
style=3D'font-size:9.0pt;font-family:"Arial",sans-serif;color:#F6F6F6'> =
This email is from outside of Riverside Research. Be careful when =
clicking links or opening attachments unless you know the content is =
safe.</span><span lang=3DEN-IN style=3D'color:black'> </span><span =
lang=3DEN-IN><o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
lang=3DEN-IN><o:p>&nbsp;</o:p></span></p><div><p class=3DMsoNormal =
style=3D'background:white;vertical-align:baseline'><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black'>Dear =
sir/madam,<o:p></o:p></span></p></div><div><p class=3DMsoNormal =
style=3D'background:white;vertical-align:baseline'><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black'>we are trying to install UHD and =
python API for B210 in windows 11. We are following binary installation =
for UHD. But after this, we do not know how to proceed to create =
the&nbsp;<span style=3D'border:none windowtext =
1.0pt;padding:0in;background:white'>python API.&nbsp;On this page, =
&nbsp;</span></span><span style=3D'color:black'><a =
href=3D"https://files.ettus.com/manual/page_python.html" =
target=3D"_blank"><span lang=3DEN-IN =
style=3D'font-size:12.0pt;border:none windowtext =
1.0pt;padding:0in;background:white'>https://files.ettus.com/manual/page_p=
ython.html</span></a></span><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black;border:none windowtext =
1.0pt;padding:0in;background:white'>&nbsp;instructions are related to =
'</span><span lang=3DEN-IN =
style=3D'font-size:10.5pt;font-family:Roboto;color:black;border:none =
windowtext 1.0pt;padding:0in;background:white'>install the Python API =
when building UHD from source.</span><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black;border:none windowtext =
1.0pt;padding:0in;background:white'>' Could you please provide =
the&nbsp;</span><span lang=3DEN-IN =
style=3D'font-size:10.5pt;font-family:Roboto;color:black;border:none =
windowtext 1.0pt;padding:0in;background:white'>Python API =
building</span><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black;border:none windowtext =
1.0pt;padding:0in;background:white'>&nbsp;steps for&nbsp;binary =
installation of UHD?&nbsp; Thank you very much.</span><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><div><=
p class=3DMsoNormal =
style=3D'background:white;vertical-align:baseline'><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black;border:none windowtext =
1.0pt;padding:0in;background:white'><br>With regards</span><span =
lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><div><=
p class=3DMsoNormal =
style=3D'background:white;vertical-align:baseline'><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black;border:none windowtext =
1.0pt;padding:0in;background:white'>Saurav Roy</span><span lang=3DEN-IN =
style=3D'font-size:12.0pt;color:black'><o:p></o:p></span></p></div><p =
class=3DMsoNormal><span lang=3DEN-IN><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-IN>Sent from </span><a =
href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986"><span =
lang=3DEN-IN>Mail</span></a><span lang=3DEN-IN> for =
Windows<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-IN><o:p>&nbsp;</o:p></span></p></div></div></body></html>
------=_NextPart_001_003C_01D8A32F.9923CBC0--

------=_NextPart_000_003B_01D8A32F.9923CBC0
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
y5hBglp6x595DCG05IgGyQRzP9bNyqPglQMRekuqNtiM8s/BZZ0LiVtMDkna9k9jj28wggbAMIIF
qKADAgECAhMsAAP4qhx1+DitimPYAAcAA/iqMA0GCSqGSIb3DQEBCwUAMEExEzARBgoJkiaJk/Is
ZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREwDwYDVQQDEwhCUk8tRFMwMjAeFw0y
MTA3MjExNjI2MzhaFw0yMzEyMjcxNzIyNDFaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UE
CxMNT24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkB
Fh1qandoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAq1tErUsiT3Xmo0whVata7DEky+wTGh0D0AlHBuQNdHfogoK2vCrdCDk6216x7OSYO37lrxbB
Qd/3oXGaqk8zsyRl/N221uflWYVs9qgOqABYXkn7bWHrSQf15D/yQB/keqFeFjPrW+tmcjHEYJta
w2Dr0K9gyQVsbcrfbkk6HXUCAwEAAaOCA8cwggPDMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcV
CIWbhmWDndEtgsWVEIGmmyuDmZlRgSWH0qVDgrHkJgIBZQIBBTA1BgNVHSUELjAsBgorBgEEAYI3
FAICBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwCwYDVR0PBAQDAgWgMEMGCSsGAQQB
gjcVCgQ2MDQwDAYKKwYBBAGCNxQCAjAKBggrBgEFBQcDAjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUr
DgMCBzAKBggqhkiG9w0DBzBXBgNVHREEUDBOoC0GCisGAQQBgjcUAgOgHwwdamp3aGl0ZUByaXZl
cnNpZGVyZXNlYXJjaC5vcmeBHWpqd2hpdGVAUml2ZXJzaWRlUmVzZWFyY2gub3JnMB0GA1UdDgQW
BBSSFzfpC6wiUiUs2WbKNUrY6pYBmzAfBgNVHSMEGDAWgBT+5/KpKajUn7P6830wA8KstUdQZTCC
AQAGA1UdHwSB+DCB9TCB8qCB76CB7IaBs2xkYXA6Ly8vQ049QlJPLURTMDIoNyksQ049QlJPLUNB
MDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNl
P29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hjRodHRwOi8vY3JsLnJpdmVyc2lkZXJl
c2VhcmNoLm9yZy9jcmwvQlJPLURTMDIoNykuY3JsMIIBEwYIKwYBBQUHAQEEggEFMIIBATCBpwYI
KwYBBQUHMAKGgZpsZGFwOi8vL0NOPUJSTy1EUzAyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT
ZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NB
Q2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MFUGCCsG
AQUFBzAChklodHRwOi8vY3JsLnJpdmVyc2lkZXJlc2VhcmNoLm9yZy9jcmwvQlJPLUNBMDEucnJp
LXVzYS5vcmdfQlJPLURTMDIoNykuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBAcpalu96zFfEytfTu
gF/lYkyKgnMGiq64hC5VNVwKJ2dQ6TjJkFWONo3nMDL08QBPHVReQMqORLw+TkLxj6fA+8SYHiuP
i74wleDZzmP6iicscyf+mFsYSmvk6606E27c6Qq3FOMrbI3yNlDHP9K2KL9Dcv/JK0l266aQOGCK
LqDiS/DpYK7So4G+wUn932/go3CY02vxsmFq9RJZ7V2ax0cNtYk9fLNxKXhIVNCWhag0JuLZt1z5
YCWUoDZedDiV8aaBaOqtgDwiLwJCZlpdtte/5Zxb1zwpmtx/LklY1w1Ha1UBf0HC/0G1lkXtraWS
gLWtKHTC/TqNs6cfPKSFMYICyTCCAsUCAQEwWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD
+KowCQYFKw4DAhoFAKCCAccwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjIwNzI5MTM0MzAzWjAjBgkqhkiG9w0BCQQxFgQUPd1HXA1fMel82KvLvUfMk+7Dd7cwZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgAfWtj+M042SU/XxatnAamtrzPLLSegp
qqx63OQjr0pnu4gQ9ekSxHrvPPMPtu/EhmSvYHRhu03TPM39UP1zxm2KRm2hNw355CvIB0PlCoq3
W1IjIXPhlj5Q324KtpZAc4V3TzI+T6MphgHWGEUlABseGWI+7X8uTiKSebh2ijGoAAAAAAAA

------=_NextPart_000_003B_01D8A32F.9923CBC0--

--===============6688030153237429931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6688030153237429931==--
