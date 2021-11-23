Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D0445A0C9
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 12:01:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3209D384034
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 06:01:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nkom.no header.i=@nkom.no header.b="DzQYn9/D";
	dkim-atps=neutral
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2121.outbound.protection.outlook.com [40.107.225.121])
	by mm2.emwd.com (Postfix) with ESMTPS id 528E7383C1E
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 06:00:23 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bkbfZkYb3oVcb5mZ9bPdthgiV63fQ7uATSw0C5eVZ25Le8Aj562wIl+pzCdwhfeIgL1n3XgLGEFKAEXEK+inszoD6f7oLKPL1u7C87kdzCsnAp7IYjFziSw0CKMwGCjO9jrjXvCwBsGDSWc1R1CwQ1WLFfz2YyaWpToTRm8ukNQ/Q7QeoHml+BC4RHQO6MAO1lTi36tOJsa77ex0/IOJT4Ji4f/f0caJPC0Xp/aYfT33YrGKhR7npyxva5iBUZymq3b7b2spOOR6STeI8cXfS5AmLkxz9dk4hlRDWWHRonoKpOwoIV6cS1ubVk38epeUid5KTkKjpF+R+pcHnOHUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebBu33ol3fEkk/AVsygbjvH+qQfM9Z7PPjipWhjS1Ek=;
 b=LiXzsIIeIb314LWoiqlgB2YNE0poZwcNUwuWvgv64TrOK/8QSbBlD35K9ptHzy9Y7p+/qOlp8/eCayjJrMHeemFhzXXVGesPvUP9TGYwr/FQgQ95ELWCWOOS7qgBS4M0zGQDCm4OND8vurlRhICP6FMtv5hrjzRPYP7m23Svpden3nFe0oX0nMCWw7bdNKQDSGl5v1REU+V+dikduvT5IEuMDttZqhslUCDE1tPmgIfhh2pj5VIBVS5C6VNQQYAqsjmHUDYWWFnTl/DI3LfD9M3cB6/iXongFu08kus3AfGlaj7XK2GNceOR5HMNbJ++JRLrCHw1Hd0JTScBnd8HeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nkom.no; dmarc=pass action=none header.from=nkom.no; dkim=pass
 header.d=nkom.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nkom.no; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ebBu33ol3fEkk/AVsygbjvH+qQfM9Z7PPjipWhjS1Ek=;
 b=DzQYn9/DGmnttoHYmgEVJNoczaFLO7XqOZ7iUUNxti7bpW5RrhUN/PJ79i/IVzkBpip5WAVF8Y021/idTm7Ra35ltiNGTTGkL4DBf6jjSXy8FqHS/4I2yWiugxZvkDtbP3WMFYgb8KZfVGpQqjY4x/fAiOvnCIQ5d4X/YWtvEOBSGy88Brhk3LEozxfvmryZZNPh4Iz0OBMho8Z0fORyBOOv3r0bMIkMxafjs1N5qjspRmkHaRp/pBVIIt80d4kVtzLAK2Ta7WSGxg8Uji4ww1gNn1WiWEULPJgAJZkyfnFcRkhkBsXE907e8vO1v6ezlfMt+2zld53Ya87+Brn+Ow==
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:f::16) by
 OL1P279MB0065.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:10::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.19; Tue, 23 Nov 2021 11:00:21 +0000
Received: from OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a]) by OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
 ([fe80::4162:d6f1:2ee3:8c1a%6]) with mapi id 15.20.4713.026; Tue, 23 Nov 2021
 11:00:21 +0000
From: =?iso-8859-1?Q?Skorstad=2C_J=F8rn?= <jsk@nkom.no>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.1 memory leak?
Thread-Index: AdfgWN228Y01SzPZTHOL/V2saNAcEg==
Date: Tue, 23 Nov 2021 11:00:21 +0000
Message-ID: 
 <OL1P279MB00831EFE3B28943071A61160A0609@OL1P279MB0083.NORP279.PROD.OUTLOOK.COM>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nkom.no;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2e5078e-68d6-461a-82c2-08d9ae70719c
x-ms-traffictypediagnostic: OL1P279MB0065:
x-microsoft-antispam-prvs: 
 <OL1P279MB00651AC490BC13DFC3105886A0609@OL1P279MB0065.NORP279.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UhYVKeq5NWyGWZ/vvzJowOjgwLQ1BFErFHK+HgBLBBbmnB7cpv8WL6X57BVPpVlVkKbXmXJIm4HGc7kjn6rjk3umOMKKBFh5mEpayS/h9WsUoxvQyn40t0w0TVlDiFLbBsP0NNlTuFIRiJJ7lx/y0vonzTjqSfQXBWwbZ+38vB9gZZ5+PeBD/StwpgGkMZ5C87r2WT7PdlFpwHTqjBzaSJR2CQ1aFqbtoLlmCdH5SM0q7LlZAl6nzfJZGZDPHIskJszX1i284RA56kBh3cyAkAxs5dP4XHktTR6ZtzOSRoX6djGxz6UsYz9ChLP1T3s5vsdZiKW37R22e58VOy6a2I5ndx2hwNHr5nC6chMtq1WTlBsfFGiSRK7/QhdKSUZXktZImGGJqygjQu4AmB+O5CwXL6ULVQcwX3rhgTGaHa0xyX2lr8y6kn4CvjddV1c9yaZyh9dhWLsDDtL4sUXiIn/GV+4pYg8QwpOOv8PfTswNSLBa8MzwJosCrzUWMoM0TaXehQ/fNkJieYQTZoI4/cl2BEZCZ+B/qXaGE42gptzxssdqC3Yw2c2VOYMmlgSYmZAClceYy8LYZcP9kMYHAhvdP2QceXCFXrVs5Aenu+rKq7wh9wNQI02hBqWaqV+aScg4FeDulovvuqasgYBOLYTrCjO5Z2u2/n7zRwcWYK2WPU1lGwfmyg50qNM6Fg9iRDyr5kjap5PbJ2v793Fq/A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0083.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(136003)(39840400004)(376002)(346002)(366004)(508600001)(2906002)(33656002)(83380400001)(316002)(26005)(71200400001)(6916009)(186003)(52536014)(5660300002)(8936002)(66446008)(38070700005)(6506007)(64756008)(66556008)(38100700002)(66476007)(7696005)(86362001)(122000001)(9686003)(7116003)(66946007)(76116006)(8676002)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?xDSPZDT0fFcAT0H9F8rMlV46Uyy/CCE7rPd8yIGZbhkReUOt7o1w9t6UFH?=
 =?iso-8859-1?Q?rS3GZbidYIy1qTtcJ9yhvfVGqU/wmi8/qaODcP9M7QWmlP8CyRYQ9hFoBT?=
 =?iso-8859-1?Q?TRdA6t13bjH0pGUwgpypsVXqGsS7zFQT1l9pI8L984LU+r3GbQaXsV1yse?=
 =?iso-8859-1?Q?DTB1M4uEyeZ80T/iH8TAbgCIWVlZa5mwubHyAEfsJIO6h+W1j0Dl9cREIZ?=
 =?iso-8859-1?Q?O1/DB9LlKEPhg0W/pgYBLh4K97QTsgM/F6oUK2hhw7/vIY9qZJcYCnqNf+?=
 =?iso-8859-1?Q?YxAUBoJnxV89trWNwjvdksXNYMpugA4W55StD4PbdGKqbjkHOLSHpWlPPv?=
 =?iso-8859-1?Q?xI4uZO7jkhoQU4AR52x9LZx0vND6Xwx8vyoBAOMAhh+cGLaz05FNIi0jyB?=
 =?iso-8859-1?Q?y/xK4VKta4uAZ6b/PFvDu/3vQZRbLQKpUbjr8jW+HzGKt6cmZsLq+u0I3H?=
 =?iso-8859-1?Q?MldUNR1PJPoKiyCaYy8739RRxULPOWL8eVNvBetLDxoCj24txQ12h8qIor?=
 =?iso-8859-1?Q?DvbiapdYYTvGV1AFtquBphhLSrd6I67rEfwNY6HKBPInyDKZjGkxna+NrJ?=
 =?iso-8859-1?Q?Vb2HRqIKWXVMY8F/ufTOQLJRDGXMHphXry1rfdWUjWF8/ABNRIIbBMyv0w?=
 =?iso-8859-1?Q?Ki1ZKdeQ79rra2lORWOeK8lmi1ZckCo0ky0Tk4GHTnZpQFOW1MDpP7ysvS?=
 =?iso-8859-1?Q?hGb2PeTV7YYfOtTDBzTJ3l+oS9K7H1qkyv8nmnfknCYaIZt2z+xkbsHYQy?=
 =?iso-8859-1?Q?HnP+f7EV4o9NNd2wNY+9PmfJJthtadKUJ470CwSEmC0c+uzLM5Svv5NK1E?=
 =?iso-8859-1?Q?/zzALqs1AgrPOk0EjGtpRvDJzaFZO+p2U21Dpi3q3I+Ebx5AHG3OVteyz3?=
 =?iso-8859-1?Q?3svXyAKFnOSedk09jmpL/mM+xN0+voeDcc6wPLCZoc0PuA1PEM80VuO/Sw?=
 =?iso-8859-1?Q?oHqtYI6elJGI3o8H+R9reDoUEexyLlXMUUHZlEocAsekn6C1yrH+obzcAS?=
 =?iso-8859-1?Q?7vHS5UDREviJnzElovdedY5FZN6Ohq0dQw0ihRVZP+FyD/dmddBTiDkjpU?=
 =?iso-8859-1?Q?ocN2xr9zpIK+U878yULwsuS+Wvd4sajLgZHtP5YgLp+NijSxo/Oy8QVPfo?=
 =?iso-8859-1?Q?tpo9QbElp6C1GDy4PC1EfzQ7EJcK3JbT0AnviTcez0+fTmlXyEvOwuD9xv?=
 =?iso-8859-1?Q?6ZTfug0ZJEfgyO8JM+sm6YPUDgdW6zlM4BpFkf1EbuuShN+OraHdXz7peA?=
 =?iso-8859-1?Q?D1qaan2O740GQBZPqri6Gtp584pY+x5bKmP9wWevUV1UssNafPYTO5v0DR?=
 =?iso-8859-1?Q?PLObEp3d8aOIeBn2W/tiIST+nRQGc5j8Np+DDHgfVbtWV2d+5KHYR7cWMP?=
 =?iso-8859-1?Q?A6LrE9j4bhPx0T8Ol8bZagrs6CFjtSEgJBZrwGQPc97KE8wygfrrk7LPyu?=
 =?iso-8859-1?Q?Hnt4tVwL/Nk+7k3BILD1PAJjlJPZkfPOzWEi07rOoF/wZ1YTmizeR2B5tK?=
 =?iso-8859-1?Q?/x7zSEAWVmU+dIDyUm3gn8EKZHmbJCY56mwoxKIRWkCzY5ffZq3Mg4XSgo?=
 =?iso-8859-1?Q?bWMw60BahSvH+ODOCYQinccVoWm1Nm6M2pwpJqn9fQd8dBxqWw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: nkom.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0083.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e2e5078e-68d6-461a-82c2-08d9ae70719c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2021 11:00:21.4083
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad83e65c-03f6-4cfd-b799-47a2fafd7bce
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U1ACoyPWeo9PvTQpARspXJf7i7CYg3iJaShgqGoFbdbX0zM4vXPnOZ7c6Y+EG70/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OL1P279MB0065
Message-ID-Hash: SUMF6FBUGDRNPLAAP5SBQKOT7IAQMV6P
X-Message-ID-Hash: SUMF6FBUGDRNPLAAP5SBQKOT7IAQMV6P
X-MailFrom: jsk@nkom.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] UHD 4.1 memory leak?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XBJQCRMHAPUE642RDTPFQBUAG733KS2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4170163579331832650=="

--===============4170163579331832650==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB00831EFE3B28943071A61160A0609OL1P279MB0083NORP_"

--_000_OL1P279MB00831EFE3B28943071A61160A0609OL1P279MB0083NORP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have some trouble using the UHD 4.1.0.2 library. I am using RFNOC blocks =
RADIO and DDC, and setting up an RX stream using graph->create_rx_streamer.=
 The receiver loop is running in its own thread doing something like this (=
simplified):

uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_M=
ORE);
stream_cmd.num_samps  =3D size_t(sampsPerBuff);
stream_cmd.stream_now =3D true;
stream_cmd.time_spec  =3D uhd::time_spec_t();

for (;;) {
  rx_stream->issue_stream_cmd(stream_cmd);
  rx_stream->recv(&buffer.front(), sampsPerBuff, md, 3.0, false);
  std::this_thread::sleep_for(std::chrono::milliseconds(2));
}

I am developing for an E310 sg3.

When calling issue_stream_cmd repeatedly this way memory usage goes up unti=
l resources are depleted (few hours). If stream_cmd is replaced with STREAM=
_MODE_START_CONTINUOUS and called just once memory usage is normal. But for=
 the application developed the mode NUM_SAMPS_AND_MORE is better suited. It=
 is also what we used with the 3.14.1 library, without any memory problems =
like this.

Any tips?

BR
Jorn



--_000_OL1P279MB00831EFE3B28943071A61160A0609OL1P279MB0083NORP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
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
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have some trouble using the UHD 4.1.0.2 library. I=
 am using RFNOC blocks RADIO and DDC, and setting up an RX stream using gra=
ph-&gt;create_rx_streamer. The receiver loop is running in its own thread d=
oing something like this (simplified):<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">uhd::stream_cmd_t stream_cmd(uhd::stream_cmd_t::STRE=
AM_MODE_NUM_SAMPS_AND_MORE);<o:p></o:p></p>
<p class=3D"MsoNormal">stream_cmd.num_samps&nbsp; =3D size_t(sampsPerBuff);=
<o:p></o:p></p>
<p class=3D"MsoNormal">stream_cmd.stream_now =3D true;<o:p></o:p></p>
<p class=3D"MsoNormal">stream_cmd.time_spec&nbsp; =3D uhd::time_spec_t();<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">for (;;) {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd);<o=
:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; rx_stream-&gt;recv(&amp;buffer.front(), samps=
PerBuff, md, 3.0, false);<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp; std::this_thread::sleep_for(std::chrono::mill=
iseconds(2));<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am developing for an E310 sg3.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When calling issue_stream_cmd repeatedly this way me=
mory usage goes up until resources are depleted (few hours). If stream_cmd =
is replaced with STREAM_MODE_START_CONTINUOUS and called just once memory u=
sage is normal. But for the application
 developed the mode NUM_SAMPS_AND_MORE is better suited. It is also what we=
 used with the 3.14.1 library, without any memory problems like this.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any tips?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">BR <o:p></o:p></p>
<p class=3D"MsoNormal">Jorn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_OL1P279MB00831EFE3B28943071A61160A0609OL1P279MB0083NORP_--

--===============4170163579331832650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4170163579331832650==--
