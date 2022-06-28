Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2A955EEC7
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jun 2022 22:06:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 054D5384374
	for <lists+usrp-users@lfdr.de>; Tue, 28 Jun 2022 16:06:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656446771; bh=dT24xpf/ChRseKV5hCm3ky4jlC13LxfcZaO6Z4YyU7Y=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=uV4sY/lZtj01Nj3bJbLaXAtbxkFnFT2hoN1WVHAg3glZK6x83adQN/5jwXLDJgSuB
	 T4ygZgX2/XneDMN7ryGalHWTUqd2zFO04l9VHLZ7N2obTAkMldiMCnOZNnCyDGd/O6
	 PoHzBfzg5urRQ6cwZg/ISz4NAyxI9qM5ge3JE3p/aL/BVEiu9bpGSv8CgFCVuaf8zG
	 kPIDssyclB2fNi1NwzKX8nb0U1wqgX7+2p/2NG69YgduO2NIlAKfSGrRiLY/QD1CcO
	 TEVBEznNL515dsbskPRpDpIAGcq4y1OZnSy1lno8W1H6w0SScm9NCBT5LhsdfQMtVT
	 bFzLoUnJJKLEQ==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0113.outbound.protection.office365.us [23.103.209.113])
	by mm2.emwd.com (Postfix) with ESMTPS id 2C4B8384146
	for <usrp-users@lists.ettus.com>; Tue, 28 Jun 2022 16:03:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="G1AOxFq5";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=NyLO79jOCZwG+M/qlCzTBy/WzhYWYWI2VonQ9WMEAo+SPyRC2sIQIBoUiNLv9ga4rVdLV0tgWhnpF8ofJK5OaoHwB3nulcc5u5UCNOK9Ii0yqyxrc4ab+vn+gNhjt9HAEnXvSUTVQdHAp2vg9rIVrm28aspWwj5QDMkuHCcbASIOhR+HoQ0hKYnUMOzMjk9q0DBIB9Krs5cMaouMIGvHIZK21ZHkArmBkoTVgT6CQ/SwEKXxeAnUnxkrxctbkIIyjab89tNh/XW+5MZRbt/wChkyza8vpGQYxTNuU7aEbNETcXj9SSokqFqjAlsjehxp4NBNNGDkuyGnA//CPHt7mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zTCtS1b9r1aPVT/UZcYgO71p8ARR6cuFEJ1O5STbVqc=;
 b=nVl3skpWwWPaUUHWAUyF1Gp34xRGvr8tfjTAtHje1hLQ7NSZvzL6iQZ4Gnd0ZaTA/Og0XSZV/tFta8n3OnKKREc29dqHLmJ+VTOqnPPj3RGsxiU1lG5d0MLlUd9kWGVaUHaiah4QPrDayTyrFCbxsdLN51lbUFbw0W0cbeHjpiY1copXoQiI17mXbXWTC3xakCc6Tmd7l8Ydye5UmKkYvzDdoDbuOWmkVX4gVR0y5Jk96TMKYG52U106O7iS8rPjSE+dzEaiVirFa1OYdoTZUqkqkVY3/S0iphkH7rAugnte3wFklkvRGl2CQHz68j3scdl8XwENPWpB4YCeITqW3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zTCtS1b9r1aPVT/UZcYgO71p8ARR6cuFEJ1O5STbVqc=;
 b=G1AOxFq5iBX0WlWXGYlWIRx4oxdg5gZApCQNpH7xaYdTS/n/M9DydDQvP55PyZjiYk1E7rg8yoZxihscui52msbKUcpnBQ9oplpGSbH/L6h9VS+bpPhcAo3q01eer5efekmUOc4xb95fCSKGEzDBsDU9br5uyjgeIdRSDEFFZwWR2thiwB4X+d2GrsiB89oDZIq7cbQNLHAwG7NuBUSYo/Jv0Gq5ohB9GR/L1BRbVrZ20+QZYc6eZnVQC5DW/Zuei5u4RlHHb7+vEBwvkX3GOhOHaBUDHIYBuquNwILyjIJDfOk7XHMooqdTAP91OYTRECO4qCVv2A5YzGST7FJg2w==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (52.145.11.201) by
 BN0P110MB1403.NAMP110.PROD.OUTLOOK.COM (52.145.38.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.16; Tue, 28 Jun 2022 20:03:16 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::4413:23b1:52c7:8685]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::4413:23b1:52c7:8685%4]) with mapi id 15.20.5353.024; Tue, 28 Jun 2022
 20:03:16 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: usrp-users <usrp-users@lists.ettus.com>, undefined
	<discuss-gnuradio@gnu.org>
Thread-Topic: GNU Radio Companion N310 GPIO Sink/Source block
Thread-Index: AQHYiygN18Kpejai60Kthd8CxWlEhw==
Date: Tue, 28 Jun 2022 20:03:16 +0000
Message-ID: 
 <BN0P110MB10152F264F3AC30E659AC800B1B89@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 5189f0d2-42b3-a815-5e3f-01ac11398dbe
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 101d1606-1bb3-4e67-f88a-08da59413da4
x-ms-traffictypediagnostic: BN0P110MB1403:EE_
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 k2BdFU0aoBThfq3bq6EocZfzzOpBsZZQkKcfqfKWB1aI6bAhmSmgZWt6ylD5wKHg6qldgUVfb6oXkYWUlQlgFTXni4wfvfpvZSEqM5U+xccfznVvkIQP/5KYmsr7uUS2Fisuf9PtFCUAa/JtJSrtb09w3Vkrmw2LPmf3F6hguqpxcURS2XWSIajLyV3ZmDGNFSnpc7rm+5GgtnZAZIFcZUCLlbHAUy5TJPTM+C9NxX1b83nHgArEioN4Z0IOFCac/8CTUr7NJBrNNnD1ed2yCq/8HAGg6m8C/3kqhq/2t7k653RKJjk8+on+q/OG1I85mPFq4KBELdTnNGBeRH1YSJsjWCfqhGKAvy/l3YAHwkAq9so5b7FkP96A+cSN1XI0kb3idPjamLsswnjZJhVP8Yt5vM5PSAz+t4OQlLlgTrf01W0By5qnClpn6gPdMQSbXIHnMFG9HYB/GeKBKWlBUaj7fkvO2luRR/e+2uCVfcVT5z7M3P+/8e2d2cMFgKl/E4S+1iYsq+8LzqqLq0/pk7iBFMop1MxDiXJXn/d6jS09GAt2TzaGEdriyrkv/AEhDIXENxNsIz1fjprdllTU2HcSaJtiNBtge55YQ3TzAfKmjlKCdpyMbkg/mXbowlpe+YdmZB9ALDapsJqEwpuYnXBeTkJdc2jE11sbwWrvzmjs+u8Kr8c5lbK+AB11Q+X9JLAcW50duqw0pg1uL5WtAuQumpNN+b0TGbzrB4VV5KD2m9ZjmAkDWSXYx8YpLMMaNLt+BY4XxjzWMM6dYAEcRg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(366004)(66556008)(82960400001)(166002)(122000001)(66946007)(38070700005)(83380400001)(55016003)(71200400001)(19627405001)(76116006)(66446008)(66476007)(64756008)(8676002)(86362001)(33656002)(5660300002)(2906002)(8936002)(26005)(9686003)(110136005)(38100700002)(40140700001)(52536014)(7696005)(498600001)(6506007)(186003)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 qMmE1MGYIqaRFcNyTcjJuNq3l6I3hv8leSXc9si5lVnAvvJSxKfEKLR7nfEnznkhAjcOOjC4thzS1fVApvnHQjOxz5FSCgCpNVWFJaSfwkiS3fhfHm9MB2VOB3egpaQUawnnLsLBFpTXxLcQJ3MtD1jrw28hB0eycSzAoFRE27RERWNwEQ0V8WIttzkx71e9Q+TdlG74+9Gwxm9P/iZfiXJpcG8vaKJ5YuXVEog9a2FJrgY/sGEEF/sTZycEVoExN5iVRNV3MMauV2WR+MuZKWAYICeQcfnSxodmRp2RE4uecTnW4MwQMyrE35yD3A9JXuFnEnA43XCizidIUYGNhEdWj3pYLGzOqX2wc4/SUTuaBlnuLEXnlrOnBPan0gKINzBpOqGhF5PG0fnegb9n6HVfohj1zlSNHeK2l8wrRGg=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 101d1606-1bb3-4e67-f88a-08da59413da4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2022 20:03:16.7845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1403
Message-ID-Hash: TKEGRTK777MZLCDWMRY625PKC3CO56LV
X-Message-ID-Hash: TKEGRTK777MZLCDWMRY625PKC3CO56LV
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GNU Radio Companion N310 GPIO Sink/Source block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZJRF2P3OOWGRRI3SMA3LSK6DWWR7U6B5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0270438439750261811=="

--===============0270438439750261811==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB10152F264F3AC30E659AC800B1B89BN0P110MB1015NAMP_"

--_000_BN0P110MB10152F264F3AC30E659AC800B1B89BN0P110MB1015NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

(Cross-posted on usrp-users and discuss-gnuradio)
For anyone who's familiar with using the USRP3 (specifically the N310) with=
 GNU Radio:

I'm trying to create a flowgraph in gnu radio companion that incorporates r=
eading a value from one pin on the front panel GPIO of the N310 and writing=
 a value to another pin. I'm looking for a source/sink block for GNU Radio =
companion that can accomplish this. Has anyone done this previously, or can=
 anyone point me in the right direction? I have very little experience with=
 GNU Radio and have no expertise in programming OOT modules. Thank you for =
any help you can provide.



Very respectfully,



Joshua White

Precision Timing Systems Engineer

Engineering & Support Solutions Directorate

www.riversideresearch.org<http://www.riversideresearch.org/>

T: 937.986.3153 | F: 937.431.3811



This e-mail message, including any attachments, is for the sole use of the =
intended recipient(s) and may contain proprietary, confidential or privileg=
ed information or otherwise be protected by law. Any unauthorized review, u=
se, disclosure or distribution is prohibited. If you are not the intended r=
ecipient, please notify the sender and destroy all copies and the original =
message.



--_000_BN0P110MB10152F264F3AC30E659AC800B1B89BN0P110MB1015NAMP_
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
: 12pt; color: rgb(0, 0, 0);">
(Cross-posted on usrp-users and discuss-gnuradio)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
For anyone who's familiar with using the USRP3 (specifically the N310) with=
 GNU Radio:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span style=3D"background-color:rgb(255, 255, 255);display:inline !importan=
t">I'm trying to create a flowgraph in gnu radio companion that incorporate=
s reading a value from one pin on the front panel GPIO of the N310 and writ=
ing a value to another pin.&nbsp;</span>I'm
 looking for a source/sink block for GNU Radio companion that can accomplis=
h this. Has anyone done this previously, or can anyone point me in the righ=
t direction? I have very little experience with GNU Radio and have no exper=
tise in programming OOT modules.
 Thank you for any help you can provide.</div>
<div>
<div id=3D"Signature">
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<p style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif">&nb=
sp;</p>
<p style=3D"margin:0in; font-size:11pt; font-family:Calibri,sans-serif"></p=
>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">Very =
respectfully,&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><b><span style=3D"color:#1F497D">&n=
bsp;</span></b></p>
<p style=3D"margin:0in; font-size:11pt"><b><span style=3D"color:#1F497D">Jo=
shua White&nbsp;</span></b></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">Preci=
sion Timing Systems Engineer&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">Engin=
eering &amp; Support Solutions Directorate&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D"><a hr=
ef=3D"http://www.riversideresearch.org/" rel=3D"noreferrer" data-ss16497724=
10=3D"1" data-ss1656444958=3D"1"><span style=3D"color:blue">www.riversidere=
search.org</span></a>&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:#1F497D">T: 93=
7.986.3153 | F: 937.431.3811&nbsp;</span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"color:black">&nbsp;<=
/span></p>
<p style=3D"margin:0in; font-size:11pt"><span style=3D"font-size:9.0pt; col=
or:#1F497D">This e-mail message, including any attachments, is for the sole=
 use of the intended recipient(s) and may contain proprietary, confidential=
 or privileged information or otherwise
 be protected by law. Any unauthorized review, use, disclosure or distribut=
ion is prohibited. If you are not the intended recipient, please notify the=
 sender and destroy all copies and the original message.</span><span style=
=3D"color:#1F497D">&nbsp;</span></p>
<br>
<p></p>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BN0P110MB10152F264F3AC30E659AC800B1B89BN0P110MB1015NAMP_--

--===============0270438439750261811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0270438439750261811==--
