Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D70FF41DD54
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 17:22:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C58F38423A
	for <lists+usrp-users@lfdr.de>; Thu, 30 Sep 2021 11:22:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=OroliaDS.onmicrosoft.com header.i=@OroliaDS.onmicrosoft.com header.b="CeIvReAF";
	dkim-atps=neutral
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0072.outbound.protection.office365.us [23.103.208.72])
	by mm2.emwd.com (Postfix) with ESMTPS id E9789383344
	for <usrp-users@lists.ettus.com>; Thu, 30 Sep 2021 11:21:50 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=1KHkRkj2hMXcxTEuGU4tm8C1rKVdzhbZ+21tRqlsLRz+K2VxcI05Lx0nvd4RUlyTUN0BH9jiZWMeI/FmixS92kqToqVTaTswyE+2EUru0am09R1kdOd8KqkBCwjXbRQdcHufrtWlP0WbFGgvNSQuLPAxHN3h0UerK3W47pTUHONSUlUjTa+ie96a+cLo3rd+xsbvm7sJrkTD2ZRQls5NKngc0py+BlttAs7r/A5fkA8YV6xv0KWL81vfcu/GqLrgr7a6u6AUxAK3Nvi/KzfXEHIz10xIf4ipsTp2JMJzwOH9u8TGu7BGQVz4fn1DDP87EgP+Yji600NtDmv2PcQnNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=qZXx0rny1J4pZnsl+njFYaMtqvDDAbz9P2dr2kQqZQI=;
 b=KUFQaLNOlUqAkCnTcchtAGer5kAyc/0Jp3AfUeCZb5T1BLQxFNWmg49O5apE9HsACF0QF0Xh4dt4tFPh5w8mfmDXCPI5I50KBwnOG4hAP6nmHbhq7eyaDW97rgCsAApdujfdBI4yHBd7tj/eeL5uwiowurRyuS0JWwMajJN1z90WjMC5FVXk30x/EqBOFQUKrckYAiMpVEtV3A+g9xq1EG2OFcJ8vUxJBu2/pNHbt8lc3QJe13oKseXtchmgiJokJUHyyUQ5hUE/cCnGSvkenFOuQ6EzgP1XHWm+bL+gxYAvOR4jtEYOgoGpz+vZjhN1/FDsUZUgZtA+xrAkXGYYBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oroliads.com; dmarc=pass action=none header.from=oroliads.com;
 dkim=pass header.d=oroliads.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=OroliaDS.onmicrosoft.com; s=selector1-OroliaDS-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qZXx0rny1J4pZnsl+njFYaMtqvDDAbz9P2dr2kQqZQI=;
 b=CeIvReAF+wY5ecDjoy9Hdf6j0Dtx37EjRWqyWls0TsVkZpdYzxHFLp47jrk6L7MGZYqocRF6ggAFvJqh8TH0j5INIgpYOZxtj547hJF5z+r5TwjGPNAIS7snFOG4XuOq8nzUbSiHOpQ9geozjoxOZAzHKI/DnSKwEX+YO32dUSA=
Received: from CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:14b::16)
 by CY1P110MB0439.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:402::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Thu, 30 Sep
 2021 15:21:46 +0000
Received: from CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7daa:8e7a:6611:5dd]) by CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
 ([fe80::7daa:8e7a:6611:5dd%7]) with mapi id 15.20.4544.023; Thu, 30 Sep 2021
 15:21:46 +0000
From: "Adam Bader (Proxy)" <adam.bader@oroliads.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Amount of Radio Buffer in 4.1
Thread-Index: AQHXtg7h3DMaWANdGEidMTxdHbEtGA==
Date: Thu, 30 Sep 2021 15:21:46 +0000
Message-ID: 
 <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: b81a1fc0-de3c-6d2c-8d7d-e1f18b260753
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=oroliads.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16350b95-5b62-4f92-0b51-08d98426045b
x-ms-traffictypediagnostic: CY1P110MB0439:
x-microsoft-antispam-prvs: 
 <CY1P110MB043906BCC35661BBB4A398F0E3AA9@CY1P110MB0439.NAMP110.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uv4KYB3+9L7iNC7hvVhglPVFO7MRZ6f+2ROoPldHBTY9spaLBZzWjvvDwL3vc3jDTLRufvO6m4rjuaAopt2SCr05DJ35OwbvyALwiJmmd9wgD4E7bkJsSej6J5J7omCNmXqH94VOSi3oPej9ILdNY451LvLtHFhY8TyqxT5osGHtLeO3+Jtcsy0glWMv1sRX1vVrjxhFq2Jkhn0+5dPuYSAIESBPZLxPvJ4NsKO4cm7XYi+27d2IpXB+97ZoV5t9PHxYq0rrgQ8pmnUiACniiY0vK8sTbvI30obCQLdSmaGZV2r5ycfpByvn6x6SBvsMUjX9zoS5N2J/RNwixGC6o59/SnJfhXi9Db467aFemc/sdZmxyGpldoI5eZH24EGrFujxe0HA5u1exfzT/nkFTOX4Hs9ZHcDcsd3mSw4pVXggfV+oldR92/y69PYgIHxdvCJ10jXtCjyPYCKb0nLiHViJ5N/mvuSamtOYH0b/FksmXzuWbAW/YwTGZOiXejvNFHX2QexTGmpBxQGwgjtPRzmMBSDUoPgXVud2HUoYCzjmyuaWCf/nfBYDFYZQAVRCsj+ZwbLpemVoAC5XBmeM31ljKLnwRe4dWB/wphZbu9O4/Y9ggrFSCgwOI5x6roBZ
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(19627405001)(52536014)(71200400001)(8936002)(6506007)(83380400001)(186003)(33656002)(64756008)(66946007)(26005)(66446008)(66476007)(66556008)(76116006)(9686003)(55016002)(508600001)(38100700002)(122000001)(7696005)(8676002)(316002)(2906002)(86362001)(38070700005)(6916009)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 7EG61nnkIYLaTNYzNiLchMUEgEgLnqWvN2NSxRLiNAJhrR8M+ucv7/JoBEWMGWCK//HUmdiyKUCwsE3IWPv3m5UO+NCIJFiQv39pdonZscSduP/a7U89/Z1LEiVxgxkJ6OgHVvj7y6eMOtjAuSJF/BFvVUJKj0A8miyYQnzmZrCmnrxI9K+W3s1p8DpfO7FV6aavFGeWxM7wS94wNHmxJYfSJmJ1vnN6wL5f+FMNF+5hW9x1TsC7A9NJu/2eZ7p3EL7zcstIlJlKWeb++Ee2dHv3gEafEbLkBE/eGHEv9xH7kbHKtFG6USGpHoAB0n28/plVMbVLFMwx0COsd2qSOiPC0Lour9dT93KUT/GW3pvPxM6KH5gtEB75LPPETm3g/in0r87sPZcXJPFPgin8ufZi/oyuT0yLkMwyZKUgTrxmqOpt7R8EzOxN5aKi7Vn2LjlbS5J6cseiwJfohKZ0XFpIXkaH1+sS97kOQ2oO9k4Xyvk9jm/rn4FTpOp2fBskN/nWhuz+O/hs2wLCiuC36GO4dKEFDYR+GT6D2Cz/sU+9zuUhtACz0YStJCnH6/id5Qp14QRmPB2E9qSMDw45+y7U7bYrHxESWUN7wZwITdEBuwNtO22NZRY/qat6khdgrgyTjNiqZAcXU4uJNYVZ5JH0a5ldtISZKalSvnLXwOhy4CMA/ezhR0q86xp1aVFqw4Xy509GnbLPB5qJQc42sg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: oroliads.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 16350b95-5b62-4f92-0b51-08d98426045b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2021 15:21:46.4845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2b24436f-9785-4281-92f6-d7ee04c9cf8f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1P110MB0439
Message-ID-Hash: E2E76MISOBBBTWPLAV4S7MI5ODGHZHHA
X-Message-ID-Hash: E2E76MISOBBBTWPLAV4S7MI5ODGHZHHA
X-MailFrom: adam.bader@oroliads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SPGA5PDWI7LCJF7C2KTCWJV5ZQ24ZNSU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4834472344695586244=="

--===============4834472344695586244==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9CY1P110MB0821NAMP_"

--_000_CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9CY1P110MB0821NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We are having issues trying to run our application with the current version=
 4 releases of UHD. We are running successfully on version 3.13. I've been =
trying to create a simplified test scenario using a single output on a N310=
 and continue to see underruns and time errors on version 4.1.

I'm using a modified benchmark_rate application trying to model our streami=
ng implementation. My testing has been on a system running Ubuntu 18.04. Th=
e computer has a 10Gb card connected directly to port sfp1 on the radio. Th=
e radio is running the default HG fpga image. MTU is set to 9000.

Data is transmitted at 62.5Msps in a continuous burst. Every packet is sent=
 with an up to date time_spec. Our application builds up and sends 1ms wort=
h of samples to the radio repeatedly (trying to pass the whole ms to send()=
 as well as break them up into max_num_samp chunks shows no change in timin=
g behavior). After resetting radio time to 0 the initial packet is time spe=
c'd to 1.8 seconds to prime the radio buffer. There is no rx stream involve=
d.

I had the sample application poll radio time in parallel with sending data =
to the radio. The radio time thread prints out the result from get_time_now=
 every 100ms. The transmission thread prints out the time_spec that was jus=
t transmitted once send returns. In 4.1 I can see streaming is effectively =
handling everything in 'real-time'. The radio times being printed line up i=
dentically with the time_spec that was just transmitted. Any delay in trans=
mission results in immediate underruns and time errors. This same test when=
 done with the 3.13 host library and another N310 using the 3.13 firmware s=
hows the sample just written being 150-200ms ahead of what the current radi=
o time is.

Is there anything that can be done to increase the amount of buffer availab=
le on the radio with the stock FPGA firmware? Is there something we need to=
 rethink in our streaming implementation in UHD4? Appreciate any insights.


Adam Bader

Principal Software Engineer, Orolia Defense & Security

1610 SW Main St Suite 202

Ankeny, IA 50023

_____________________________________
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure, distribution, or copying of this =
e-mail or its attachments is strictly prohibited. If you have received this=
 e-mail in error, please notify the sender immediately by return e-mail and=
 permanently delete the e-mail and any attachments.

--_000_CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9CY1P110MB0821NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<span style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); backgroun=
d-color: rgb(255, 255, 255);">We are having issues trying to run our applic=
ation with the current version 4 releases of UHD. We are running successful=
ly on version 3.13. I've been trying
 to create a simplified test scenario using a single output on a N310 and c=
ontinue to see underruns and time errors on version 4.1.</span>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
I'm using a modified benchmark_rate application trying to model our streami=
ng implementation.<span>&nbsp;</span><span style=3D"margin: 0px; background=
-color: rgb(255, 255, 255); display: inline !important; color: rgb(0, 0, 0)=
;">My testing has been on a system running
 Ubuntu 18.04. The computer has a 10Gb card connected directly to port sfp1=
 on the radio. The radio is running the default HG fpga image. MTU is set t=
o 9000.</span></div>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
Data is transmitted at 62.5Msps in a continuous burst. Every packet is sent=
 with an up to date time_spec. Our application builds up and sends 1ms wort=
h of samples to the radio repeatedly (trying to pass the whole ms to send()=
 as well as break them up into max_num_samp
 chunks shows no change in timing behavior). After resetting radio time to =
0 the initial packet is time spec'd to 1.8 seconds to prime the radio buffe=
r. There is no rx stream involved.</div>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
I had the sample application poll radio time in parallel with sending data =
to the radio. The radio time thread prints out the result from get_time_now=
 every 100ms. The transmission thread prints out the time_spec that was jus=
t transmitted once send returns.
 In 4.1 I can see streaming is effectively handling everything in 'real-tim=
e'. The radio times being printed line up identically with the time_spec th=
at was just transmitted. Any delay in transmission results in immediate und=
erruns and time errors. This same
 test when done with the 3.13 host library and another N310 using the 3.13 =
firmware shows the sample just written being 150-200ms ahead of what the cu=
rrent radio time is.</div>
<div style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); background=
-color: rgb(255, 255, 255);">
<br>
</div>
<span style=3D"margin: 0px; font-size: 12pt; color: rgb(0, 0, 0); backgroun=
d-color: rgb(255, 255, 255);">Is there anything that can be done to increas=
e the amount of buffer available on the radio with the stock FPGA firmware?=
 Is there something we need to rethink
 in our streaming implementation in UHD4? Appreciate any insights.</span><b=
r>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<b><span style=3D"margin: 0px; font-size: 10pt; font-family: Arial, sans-se=
rif, serif, EmojiFont; color: rgb(29, 55, 135);">Adam Bader</span></b></p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<span style=3D"margin: 0px; font-size: 10pt; font-family: Arial, sans-serif=
, serif, EmojiFont; color: rgb(127, 127, 127);">Principal Software&nbsp;Eng=
ineer, Orolia Defense &amp; Security</span></p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
</p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<span style=3D"margin: 0px; font-size: 9pt; font-family: Arial, sans-serif,=
 serif, EmojiFont; color: gray;">1610 SW Main St Suite 202</span></p>
<p style=3D"text-align: start; background-color: rgb(255, 255, 255); color:=
 rgb(33, 33, 33); font-size: 11pt; font-family: Calibri, sans-serif; margin=
: 0px;">
<span style=3D"margin: 0px; font-size: 9pt; font-family: Arial, sans-serif,=
 serif, EmojiFont; color: gray;">Ankeny, IA 50023</span></p>
<br>
</div>
</div>
</div>
</div>
<div style=3D"" font-size:9pt;=3D"" font-family:=3D"" ?Calibri?,sans-serif;=
??=3D"">_____________________________________<br>
The information contained in this e-mail and any attachments from Orolia ma=
y contain confidential and/or proprietary information, and is intended only=
 for the named recipient to whom it was originally addressed. If you are no=
t the intended recipient, any disclosure,
 distribution, or copying of this e-mail or its attachments is strictly pro=
hibited. If you have received this e-mail in error, please notify the sende=
r immediately by return e-mail and permanently delete the e-mail and any at=
tachments.
</div>
</body>
</html>

--_000_CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9CY1P110MB0821NAMP_--

--===============4834472344695586244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4834472344695586244==--
