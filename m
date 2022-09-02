Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D195AB502
	for <lists+usrp-users@lfdr.de>; Fri,  2 Sep 2022 17:24:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 75A3B386B62
	for <lists+usrp-users@lfdr.de>; Fri,  2 Sep 2022 11:24:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662132247; bh=rXi7bRSDJFoBxfCzRTzvy9/sY6xo4f3ZZtfPYRIOy80=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VGY8+kd3V6yztk+M9tJ3PDZQDug6akOSdTDIZkqZilNiPpJyzmU88+Bmt0nPKKK7D
	 RhFHEvFH62MDnDoC57oDV2ZdUkFh4pow8tBEx2/1FXcky1mGvm8COBxaEGAqkh+T8Z
	 sLwKhA61/sJsUvJivNUiE3oP+9LHXbH6s0oBMHVaXemAvWgjYav0oc/0pg5tHnVRA8
	 hrW0yOiqY+sZ3GjLN0r29ou/svYKBmDmr9DwqAsKwlklUTyum6il/FQlI4IN8nwF1N
	 /A+rMfbb1+lR/T+iIl+H7u2eZKmTDedLosTXvJ65PV3hfufK/GnTfXQBiuKQHPSb4v
	 UpPqJ/242i7qA==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0058.outbound.protection.office365.us [23.103.208.58])
	by mm2.emwd.com (Postfix) with ESMTPS id 16898386B36
	for <usrp-users@lists.ettus.com>; Fri,  2 Sep 2022 11:22:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="Z7ty/Wbb";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=HIGZEXVd4lcvFtzYIUJL4R8NLT0kVldgoIuk7vS32o3eowtPP4dKW5CzRNyUV+HXnMWH4pLntwQzbH13mjq+0RpAlC1eJq4On2yl9FDaACGa39K57PZDi7/DjFRhFZAai4kLd9+uoIcZ3KERYNwqf5P0N0UA9XnJNPQsygZWsR9wHveT5YR+Vl6LWGIb9dUwNw+Y2nLpsiSA4NvNsdAFAk7sRTywH5A6BfqKrFvPAvpXBkH0+wBe1g1Ht5ly00eb6RhXuE/OqOBV3FLKD0aZQongEblLvNVh/d2ZtjlxkiaQmq/T/cTNMvxu9nXJIdIVCjGrMlIKrRo6cAn1+NqW4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3eLO+4IpCGYRk4g1F1uOA3W6Io6YIrNZkdZEcE85MBw=;
 b=vt1fQ28odHM40TD9cWL8S3BrPd9qOpGOlL+dhNf7AimecuzLvpZn+bJa9sojUEdCdHX6sxfGTJFeWYeyFlWqoVrgA62Z0DmB0/BRnIst12VwfbUOF80WM6OPTZhNv7pPb7Xq9GlIEx91b7Z6ghXsqewddx5hgM4wv9woTJO0qoXR6zoMeMRZZ6j4x4bTiZM01DP/9qvlV6acAa22NhAxwS4jskGxdkBgI2vz9NHOYWlJ50mI9Bsfz/qoH2NbPnHMS3Z+MpvhsFrL8uc6i0I5dS99zl63wQO5bUzZzChJmnWDGKUK4SnIH9ycL/HuLXQk/q8JgkUzqxI4PBGPYNucwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3eLO+4IpCGYRk4g1F1uOA3W6Io6YIrNZkdZEcE85MBw=;
 b=Z7ty/WbbPlmfeZVgU6RAUatiALw8bHWkR8u6yks9vWq3xD1AmBo6hhtpJ1oMyYMW/ACV0llOUaZouf9KXDOarXpIsFfh4JzFI8VW+1HurX613oWdrCT/ppXz+ZfRvw/YPLw+oDzo19a64UmdlWedIzVcg5Pq3TYRXvVg/gK4KklwC3VdDp428Kh48qdB0tLJW47q/2ukm8aVBghWjRbW5z98q/dmyv5k82uKhUJD4OklfL6hJVEyV4HSP5MoNlV8qwEmbfgXizAyPvcc4nm+82k80igFuYFV3BiC2vig5g8abHMk9IXewm4JM+BLm+dU79tAcPd4heGkEoVMJ9k6RA==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1207.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Fri, 2 Sep
 2022 15:21:59 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2837:9cf2:fc77:842d]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::2837:9cf2:fc77:842d%7]) with mapi id 15.20.5566.021; Fri, 2 Sep 2022
 15:21:58 +0000
From: David Raeman <david@SynopticEngineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: E320: Periodic phase jumps w/ any external clock?
Thread-Index: Adi+3cvTSS9n8BBcRzmQcMckzjX06g==
Date: Fri, 2 Sep 2022 15:21:58 +0000
Message-ID: 
 <BN2P110MB17472B06A089D9138D6E8575B77A9@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5cd17e32-a247-4d60-a4a1-08da8cf6e0d2
x-ms-traffictypediagnostic: BN2P110MB1207:EE_
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 srMUF/dcaIOb44GJOMgQ9zK0gVHIcMVc//O+WVoToSg4KT+V73Ibrz6VPibf3H0BgzU8n2zJF254evPC6//cabV7EcE9xJyd/UE7rKybX8NzqfV/vLm/nsic4G4XFtQ/QtwZkPRjjUSqqUs5R0ankC1btXRDP1COEcOTornv9+PmdofQYCvAfIbkTRaLmcL/jGmgxm7DiqlH529JsTqd+TmiuOIaSv2m2WrePckB9T7NXkaun1TN6rls4w5OMZN+Zdgyojcmv3YmR23beaomPnIRlsjQeS0BvhzjWbJvrgdtJszEZmb6f/DixvfE17mpCN8hLd7eN1w19NxbnWGuD12u7vtQVwzUIvDehUcidWViOU47TeP1awykjg7B3V75p+0Iw+g3ifd0GdhQwpLbqhsLIXxSGkGofMQ5ToDEAnMP9PikAzc2C+CzVd8uPooZwcH8FiSMuLJRBvIHju2SlC7WrBxAf0+SWqbYmOkB8JQFvIXPzDbq5qqk8lnNEB20SpwaBRdxHNJrXQtST5ZzMn8RykPnwf1wTsJHCoM9fcW2bDJqr1XbVgTxcJLOh4TtW5OtbO+99pzQ5ROA0uDldD6MGtjbT25FEVm/A+b3KBiJFxb5tJh25T/+GS0JMZ9UQRHbjUZ17ysZJiSDu5PwPSkIQzaCVy0t+Z5jhZWx+JtbMlUjJNKi30Q5QWl5k3uuS8BIJU+O3SnDIjozK+JYJDaTVsL5H7QfJV3rOUrwqks=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(39830400003)(366004)(41300700001)(8676002)(5660300002)(166002)(508600001)(966005)(7696005)(6506007)(8936002)(52536014)(2906002)(186003)(76116006)(9686003)(33656002)(66446008)(86362001)(71200400001)(38100700002)(6916009)(41320700001)(66946007)(64756008)(55016003)(38070700005)(122000001)(83380400001)(66476007)(66556008)(85282002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 qd7iP3Hidpn64VIyoz4JqBc51PoSvRp8f6Wi0D3MeTLqhasl8P/WeQTC/zwpklceRXTksubbwnjx+2HxglZN/gpJ/LuMAvKg9BACFGGTnTj0orpSoDNVk5MThft+SIjzwJJxU/thrLaah5GlQC1qqf8ehd7HZgCFSnoUSWySMdCYih87aVZzRW8mp9XuEmOHn5mh/w8kVRFmmgH+bLbQLUaeDWJezPQ/qWSug1snFj868mTZuPCIWAoDEfF5e7g+sBObVkJ8rxbAIhw41LTab5WscF5QgyWonlYnJlJQMYqvJN8ZmixU3IO0ogZdMzMTi8dCgO58DR5s9d5kUOMh2XHGoS2GhE/Y/ngfD7YQ67Fl+Dy76midFu+gAvPAaxRaPygZp3qzXfs941jnehiR1llktFz6ZJV7IQdBrNYg/+F/97tas+3IteRiSmFJrq0MuicfX0fHtu1k9Fs24F9NljMavSQFJcpIuWsqInUPzf0=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd17e32-a247-4d60-a4a1-08da8cf6e0d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2022 15:21:58.7466
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1207
Message-ID-Hash: LLTEGUL3AORNND7GTE4R2PL6LH7IL7DX
X-Message-ID-Hash: LLTEGUL3AORNND7GTE4R2PL6LH7IL7DX
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E320: Periodic phase jumps w/ any external clock?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XK7DJMNXTZVTKHGVAPZFJL3NZEF73XME/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6089707930926269717=="

--===============6089707930926269717==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB17472B06A089D9138D6E8575B77A9BN2P110MB1747NAMP_"

--_000_BN2P110MB17472B06A089D9138D6E8575B77A9BN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm working on a project that involves modeling an incoming signal's phase =
as a stochastic process, and I'm seeing a weird phase artifact on the E320.=
 It looks like a slow periodic phase perturbation - my best guess is someth=
ing pulling a PLL, because it always returns back to a settled state. It oc=
curs with any external clock, but not when using the internal clock. I eith=
er need to find a way to correct the behavior, or to understand the root ca=
use so I can confidently consider a different USRP that won't exhibit this =
behavior.

I confirmed the same behavior on 3 different E320 radios, first using an ex=
ternal OCXO (3Vpp bipolar sinewave) and then using a benchtop function gene=
rator to create 10MHz square or sinewave clocks. In all cases with external=
 clock, the phase artifact can be observed.

I am using only UHD utilities, two radios, and simple offline processing of=
 the samples:
(1) Cable radio A (transmitter, an E320) to radio B (receiver, any USRP) wi=
th 30dB inline attenuation. Determine appropriate gains on both radios to e=
nsure the receiver will receive a robust, unsaturated signal level.
(2) Radio A uses UHD's tx_waveforms utility to send a 150kHz sine wave with=
 400MHz carrier frequency and 500kHz sampling rate, where reference clock c=
an be internal (no problem) or external (problem).
(3) Radio B uses UHD's rx_samples_to_file utility to capture 10 seconds of =
data at the same frequency and sampling rate, always using internal clock.

This is repeated for various clock options on the transmitter, everything e=
lse held constant. In a theoretically ideal system, the unwrapped phase of =
the received baseband sinewave should be a line, but in reality it'll wande=
r due to imperfect clocks, noise, and other systems effects. I want to see =
the wander, so my processing is:
(1) Compute the unwrapped phase over the 10 seconds of the captured I/Q sam=
ples.
(2) Compute the best-fit linear trend line of the unwrapped phase, and subt=
ract it
(3) Plot the unwrapped phase residuals

Here are some images showing internal clock, external OCXO, and external fu=
nction generator square wave: < https://imageshack.com/a/u1YW7/1 >. For all=
 three cases I'm showing the unwrapped phase residuals over the full 10 sec=
onds, and then plot zoomed into two seconds to show more detail. You can cl=
early see the periodic phase issues on both the external clock cases, but n=
ot the internal clock case.

Is this a known issue? Any speculation on what might cause this effect when=
 using an external clock? I can't figure out what the internal TXCO does th=
at is distinct here-- they both feed into the same ADF4002 PLL. The interna=
l clock runs at 20MHz, but I was able to try an external clock at that rate=
 (required a 2-line patch to UHD) and it didn't make a difference. The only=
 other USRP I have on hand is an N320, and this issue does not seem to happ=
en on that radio model when I use the same OCXO.

Thank you,

--
David Raeman
Synoptic Engineering


--_000_BN2P110MB17472B06A089D9138D6E8575B77A9BN2P110MB1747NAMP_
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
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
/* List Definitions */
@list l0
	{mso-list-id:1609435404;
	mso-list-type:hybrid;
	mso-list-template-ids:-1250636946 1092905290 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1829133572;
	mso-list-type:hybrid;
	mso-list-template-ids:-518228108 -1267298558 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2
	{mso-list-id:1940790547;
	mso-list-type:hybrid;
	mso-list-template-ids:-1940350506 1964776074 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l2:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l2:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I'm working on a project that involves modeling an i=
ncoming signal's phase as a stochastic process, and I'm seeing a weird phas=
e artifact on the E320. It looks like a slow periodic phase perturbation &#=
8211; my best guess is something pulling
 a PLL, because it always returns back to a settled state. It occurs with a=
ny external clock, but not when using the internal clock. I either need to =
find a way to correct the behavior, or to understand the root cause so I ca=
n confidently consider a different
 USRP that won&#8217;t exhibit this behavior.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I confirmed the same behavior on 3 different E320 ra=
dios, first using an external OCXO (3Vpp bipolar sinewave) and then using a=
 benchtop function generator to create 10MHz square or sinewave clocks. In =
all cases with external clock, the
 phase artifact can be observed.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using only UHD utilities, two radios, and simpl=
e offline processing of the samples:<o:p></o:p></p>
<p class=3D"MsoNormal">(1) Cable radio A (transmitter, an E320) to radio B =
(receiver, any USRP) with 30dB inline attenuation. Determine appropriate ga=
ins on both radios to ensure the receiver will receive a robust, unsaturate=
d signal level.<o:p></o:p></p>
<p class=3D"MsoNormal">(2) Radio A uses UHD&#8217;s tx_waveforms utility to=
 send a 150kHz sine wave with 400MHz carrier frequency and 500kHz sampling =
rate, where reference clock can be internal (no problem) or external (probl=
em).<o:p></o:p></p>
<p class=3D"MsoNormal">(3) Radio B uses UHD&#8217;s rx_samples_to_file util=
ity to capture 10 seconds of data at the same frequency and sampling rate, =
always using internal clock.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This is repeated for various clock options on the tr=
ansmitter, everything else held constant. In a theoretically ideal system, =
the unwrapped phase of the received baseband sinewave should be a line, but=
 in reality it'll wander due to imperfect
 clocks, noise, and other systems effects. I want to see the wander, so my =
processing is:<o:p></o:p></p>
<p class=3D"MsoNormal">(1) Compute the unwrapped phase over the 10 seconds =
of the captured I/Q samples.<o:p></o:p></p>
<p class=3D"MsoNormal">(2) Compute the best-fit linear trend line of the un=
wrapped phase, and subtract it<o:p></o:p></p>
<p class=3D"MsoNormal">(3) Plot the unwrapped phase residuals<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here are some images showing internal clock, externa=
l OCXO, and external function generator square wave: &lt;
<a href=3D"https://imageshack.com/a/u1YW7/1">https://imageshack.com/a/u1YW7=
/1</a> <span style=3D"font-size:12.0pt">
&gt;</span>. For all three cases I&#8217;m showing the unwrapped phase resi=
duals over the full 10 seconds, and then plot zoomed into two seconds to sh=
ow more detail. You can clearly see the periodic phase issues on both the e=
xternal clock cases, but not the internal
 clock case.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this a known issue? Any speculation on what might=
 cause this effect when using an external clock? I can't figure out what th=
e internal TXCO does that is distinct here-- they both feed into the same A=
DF4002 PLL. The internal clock runs
 at 20MHz, but I was able to try an external clock at that rate (required a=
 2-line patch to UHD) and it didn't make a difference. The only other USRP =
I have on hand is an N320, and this issue does not seem to happen on that r=
adio model when I use the same OCXO.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-- <o:p></o:p></p>
<p class=3D"MsoNormal">David Raeman<o:p></o:p></p>
<p class=3D"MsoNormal">Synoptic Engineering<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BN2P110MB17472B06A089D9138D6E8575B77A9BN2P110MB1747NAMP_--

--===============6089707930926269717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6089707930926269717==--
