Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5295351C900
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 21:28:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 373B4385485
	for <lists+usrp-users@lfdr.de>; Thu,  5 May 2022 15:28:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651778884; bh=JDgLV2N2f89YsyMFQA2LNZ3ZK+f+qB0xokkXRsmqOFg=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=C8W/gdy2edryD5HzoITZgex7bTLi1pPwVaTglPtVWh/usPh58c0fAZYhaBI2kUsV2
	 9KStGkfB/9YNsVqxJa8mfVUt0Z02uMfuL0YOtSmQ6gOZ2rdOIwXGASkdHFdpaTMIHC
	 AHqqerR7r+er/GfTueDXydn5alU+g7khkUJf8baE7nlDEhwOaMXizWQV/rX8pAD/dd
	 qqQxYFNNTwg7bA8rpXkVsnesufqQJBy8sL3FeTQS+EKswAv81vfWSxloIJup4bsCyz
	 Y6CvihjAb/ymyLrV25jAkDtkKeFxZj8pk1eS4YCKB8iqkqoKqyAKMlSt61ywaLxqZ1
	 GNwD2EgNHfyIg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0115.outbound.protection.office365.us [23.103.209.115])
	by mm2.emwd.com (Postfix) with ESMTPS id CC6EC385417
	for <usrp-users@lists.ettus.com>; Thu,  5 May 2022 15:26:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="fojupzle";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=rdkiEc7EBFc+oPRuqgk7u+UAGhgBok+VTfvhSWEJ6bk7XW2pzd6J+iqIRyYpGeym8cCwBwd3aURBUgq+y7Ex8JrEHy+VLoxBA7jQEk4A/qMXIcZEPc1LHSmAa81SlgF2dIgHsJPgE9Wi2MY0vKpF5nknzCLbPmFe1S2Qccbnr8oyvaE1Qxnbh3Gn2bNH4my/e6FiRRF1m1rtvnygC0SE7YtHOzKNDPhygnUR437Yqnt5aItPq3k4pZapvaqmcoppKU1tm6rKbS+GlrL39xjU8I+RId/yz2ZWVvEb/x3vqCEeWqJtYZdAgyeQKQsW+CveUqs3nTMNAY2Qg6F0iGrvxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sMDbPbnMHdEUP8e0WOfjmzmd4dAFl5nkAhWCEAW72RM=;
 b=vxQydeNmNm8YFvocekJ0OjRfDC5TeWH3CBN3SiG3Qz3wfTMaOm9PhHcnRBP20X2Suf5Aq2mClZFv+bldIu9N+zZ9F5GkvDMxjJf/CR3wqiyN07bPpWMwHNmh5KqZYdvSRksYMRteipsYlQmQzbTUEckPZzByeiG45u1lnX5moJQcpPC4Cl6XZ1IUQJRaLGRiOC0FbbugBvA45eY68rcXSGqb5YUkSnfNH7cUL7zlpPFWc88NyaCJFZszUX5qv2WpS+yGueJVSVes07VK4cPwEYjCL+gn0bKhsIgOXt8kosez6YoiU10E1NYk0+vVaIf35pLgTGMYt2DKQXenLStOOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sMDbPbnMHdEUP8e0WOfjmzmd4dAFl5nkAhWCEAW72RM=;
 b=fojupzlezydRwsVio2cR5m1KOIPWFuMAV53WFyPlN5jGAALHc99yieu2teahJyarU7a7JLXJHp6hBi88DDVabzHaV5CI4NwRNp3AbHZbX40On+YfmnSMni3A1kkomPsGuxd+s9rHnvT2C8Iav7cyhVKbVW+lY0uD4oQoBWjEvSyl7jN/Vz4QoIZDMkn8oXZwhnXfcLIh6iOgCV9Eo4LnDtanrQOBFlodzIMRoZwdeARGRWmo1DJGcpeX6nrymOUyMgpdT7qv3Slb3r2q0VQZ/VXxbC04u2ZT9s9B29qyR1N/oTT/i00DY8p80Lo3z1obuL7++FmtxWCcsvhNTmdCrg==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1465.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:184::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.27; Thu, 5 May
 2022 19:26:49 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7811:f343:1b68:6c21]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7811:f343:1b68:6c21%5]) with mapi id 15.20.5186.028; Thu, 5 May 2022
 19:26:49 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N310 White Rabbit sync calibration
Thread-Index: AdhgtHhPiloNJa1HTfaXSaYWbdnqlQ==
Date: Thu, 5 May 2022 19:26:48 +0000
Message-ID: 
 <BN0P110MB10159184B12B21D8C5843308B1C29@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50965a84-e220-4f75-2275-08da2ecd3344
x-ms-traffictypediagnostic: BN0P110MB1465:EE_
x-microsoft-antispam-prvs: 
 <BN0P110MB146500E125B6FD2A4F0E48D3B1C29@BN0P110MB1465.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 atFqo/4hL7QeM/rDZVNNnVYnDm46h0wk9oPqCFWcYtS/+2UNuuWuvfTH+hGeV0ZH/qT3c7wa+5JpiMEyAN4S6UZKwyBa5dq7hfdW+q7QWvWZ0/IlRYI6c447lxT7JqXCz9MkEZyak+RQRpXziF2sS3PJ8VBuc4RTtdW9nI2meUPVF7nTB3uUiLyDkv1XVCWsA5+mOOfuvIYQ35719Sy2zayEtnfC4gp1IAjgwApN24TJMpJh/xuAbmJfsACnxScJInH2JJzKYlaADsv5NhxlEWCTx5E0wqI7SJN0BG6k9yUHLUOw3zoGq/BxYWrJgWCfuDibNfSSHoVZXKQIFniFsika0rPEX9P3UuSOOLTmKHV6IVb9oaDGZ1lHecvArMbto205vPrubnNvtz7WyyH2HZTnO4US0XMoGAWcf6PxcypqG7AKPfK/1NiIIMWyFfcCdG68fhR9Xl8q9N+hOjgQhmwBuFuIurDtGogQspuyvY7j0vee/PLBgJ6y/pNwOMdis6OsKCOKH9zFWNQ+phCJLBvE/A/872bNl0+iRF3N65+Zpux6vXphsYXPVOztw8Tie0s3R7UOYgHKEdYXHsVbDRhDhf/turhO1HFkRwuq6TotsoypoVEkj/46Y4XdxCGY5fPPYL1oOps7ZuqH1+DSqxrpPryiRQcNTd7zG2T+NYUssQo4OMXUHUMkcnE+8+uSqqhD2SA3AnpBOUjCoxENHqlioBFXa14DxwSa8iS8jVzpncIZGv/H47GoTsL0ytckgJRGBti4DOVXp7f6uqhoLA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(2906002)(186003)(33656002)(38070700005)(38100700002)(9686003)(6506007)(122000001)(7696005)(55016003)(82960400001)(508600001)(40140700001)(86362001)(8676002)(99936003)(166002)(5660300002)(83380400001)(66556008)(71200400001)(66946007)(76116006)(66476007)(64756008)(6916009)(66446008)(8936002)(9326002)(52536014)(316002)(85282002)(340984004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 h7hZOsEH3IA5cuj1xEFPIFhX+CeQE9V0hur7+Qx7kpnHG7h0vWoNC4uRgiIvJqMK0MLWR6gGrfcvgWM95z0DU/0Q3+DRNL7/haAgfFd5aqvqR9zEcSW9AASwMTm+RoMrKHMA0LzrZlu8Aca7KM4ucqB1/Mw9hrVuFwhNuqmwFK65z/kXZQQS5IVbNsyrKvRCbxzLXE9DrgWXgk6oNvjaOppT4EMUNsEaGBBy7nAVaw8fJON+jzqsq1BSWSS1fojEfGdc+G9TFCXPyypV3NCbTVVgelNp4nWQ+mNSKoY6LFRzp2tCEjYvJwT683K9ZHc1v6IikWHU3q7alEwZN6dhROOp0VLD76GAuOspJsn5B/bIuwwld/GeolYS/Dpnahm8aduA30Nj+9nSQVhyrUkiNynN+QEoeSxHc0jm0MIBrzMexiavN5KSLWxiqDDGLjWjA16DiaIQM8lqV/JY6RjDJpB0GsOqZG1WPCHUZRLS7U4=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 50965a84-e220-4f75-2275-08da2ecd3344
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 19:26:48.9466
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1465
Message-ID-Hash: ACFMB3S7WUJ6WOENNIIK3ISEIEUI75EN
X-Message-ID-Hash: ACFMB3S7WUJ6WOENNIIK3ISEIEUI75EN
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N310 White Rabbit sync calibration
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3GTQMDTA2ANOS2QXM36Z3C3BRX3EBMKK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5123116998117684004=="

--===============5123116998117684004==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_0086_01D86094.8874EC60"

------=_NextPart_000_0086_01D86094.8874EC60
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0087_01D86094.8874EC60"


------=_NextPart_001_0087_01D86094.8874EC60
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi

 

I'm attempting to use the White Rabbit slave functionality of my
organization's N310 for clock synchronization. While the frequency
syntonization works correctly, when comparing the PPS clock of the N310 to
the PPS clock of the WR master, the N310 has a phase offset of about 100us.
I am aware that the system must be calibrated to the specific fiber
connection between the master and slave devices, but I am unable to locate
the calibration values in the N310, and have not been able to find any
documentation on the Ettus website in this regard. Has anyone used the N310
WR functionality, and if so, can someone point me to any documentation to
assist me in calibrating the device?  Thank you in advance!

 

Very respectfully,

 

Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

 <http://www.riversideresearch.org/> www.riversideresearch.org 

T: 937.986.3153 | F: 937.431.3811

 

This e-mail message, including any attachments, is for the sole use of the
intended recipient(s) and may contain proprietary, confidential or
privileged information or otherwise be protected by law. Any unauthorized
review, use, disclosure or distribution is prohibited. If you are not the
intended recipient, please notify the sender and destroy all copies and the
original message.

 

 


------=_NextPart_001_0087_01D86094.8874EC60
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I&#8217;m =
attempting to use the White Rabbit slave functionality of my =
organization&#8217;s N310 for clock synchronization. While the frequency =
syntonization works correctly, when comparing the PPS clock of the N310 =
to the PPS clock of the WR master, the N310 has a phase offset of about =
100us. I am aware that the system must be calibrated to the specific =
fiber connection between the master and slave devices, but I am unable =
to locate the calibration values in the N310, and have not been able to =
find any documentation on the Ettus website in this regard. Has anyone =
used the N310 WR functionality, and if so, can someone point me to any =
documentation to assist me in calibrating the device? &nbsp;Thank you in =
advance!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span style=3D'color:#1F497D'>Very =
respectfully,<o:p></o:p></span></p><p class=3DMsoNormal><b><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal><b><span style=3D'color:#1F497D'>Joshua =
White<o:p></o:p></span></b></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Precision Timing Systems =
Engineer<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>Engineering &amp; Support Solutions =
Directorate<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'><a =
href=3D"http://www.riversideresearch.org/"><span =
style=3D'color:blue'>www.riversideresearch.org</span></a> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>T: 937.986.3153 | F: =
937.431.3811<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:9.0pt;color:#1F497D'>This =
e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.</span><span =
style=3D'color:#1F497D'><o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_001_0087_01D86094.8874EC60--

------=_NextPart_000_0086_01D86094.8874EC60
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
DxcNMjIwNTA1MTkyNjQ2WjAjBgkqhkiG9w0BCQQxFgQUnIMkxjFh0TlO4eXcHHVIBZ7TyIYwZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgExyLPygESkOVRViHjdYAUOskqiAHQUM
la1CErDHKqxfWY+nlsqeCqCMmauIAs2haED1NXG1JeuXTUJW0pLMj2QrDws6HajR6oUd70JEcJdq
GVB9uJxuGjLgZBu4o1rNquXvXMce/y8f6hsvqviX9bIym1iTxUdVZa9l9Jw/0vmMAAAAAAAA

------=_NextPart_000_0086_01D86094.8874EC60--

--===============5123116998117684004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5123116998117684004==--
