Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E84DBD203A5
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 17:35:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C9FF33865EA
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 11:35:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768408556; bh=PIEo0ajsOtKW0REo4zc0ozNrWLWEewOC4ASHvFHnq/A=;
	h=Date:To:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=WtxU8Vwk0Mq2Ehgdz7s00O5el+JSoJrA4AcM58zYB8IjjJP/EapBm28C/oqY9q1nt
	 kiIZM3yILqMxStUSyJpZIs6sdhRSwCma7TkSwA78P3Xbi+3wPacdUR3hJn8s8fCblm
	 U+7XxxwyHN/Supe4KbJu7e1jrDKWN90vDaCF28fAwZfeHjJCVY0DyVZzj/sIZHHEzK
	 vBmwtRrPd1bQHi3NMUqcl0QkvItcKAmvFSzoxhT4MJWt5tSExqyfWbMan9bt0rF2mn
	 wZps0XLnNfK2YF9V57FIJmHXQOJhRIrbtvmKMjymapTq1LQlW1V4rHQoUawCUwk4PB
	 yZaSjOKb/w6gA==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 58420386567
	for <usrp-users@lists.ettus.com>; Wed, 14 Jan 2026 11:34:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768408494; bh=pv+l8Vac9ASDbIUAkgf9zIllxAo8OIpOM88mG7DG6ww=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=KfNjsoBDAArkt3cEFvapu+aWNEWLZoTF8rlufjyDzW75vtxcxgsyscI/FDyclQEDw
	 W+lIw4py5WCFRcuTy6Fv6zXT7NxMooEjLIjB8gzHkRgw5VHvhsm1Zzz+BmXatgYQQz
	 aU4to39ALfWhZpbDn48m5bBhYq2z7AUPnVPaCMYg61AD4YtbKdhnDJklk2WuladIh1
	 gFW5ZQBQx2TEUH2jBlNeEHtJlGnwuqqC5YNCdNsXJeCV5seV2TVQ5gFwg1l3p94h3T
	 362mrTJcWkf9uv3NBBDOf+pBH5e9ReJaH+FhsKtYpgbbfHkRSv2pa5mpqi7d7uPnZ/
	 rNPnkqAnm3Z6A==
Date: Wed, 14 Jan 2026 16:34:54 +0000
To: usrp-users@lists.ettus.com
Message-ID: <opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAE_Rk571Jp1DPYM7+-EvBRRpysWH_=murK68afj-kU4RGZ7_9Q@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: FVMEKXA2MG7DNI6ZAIK2ZZCYPDOQAPYE
X-Message-ID-Hash: FVMEKXA2MG7DNI6ZAIK2ZZCYPDOQAPYE
X-MailFrom: niels.steffen.garibaldi@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?b?UmU6IFg0NDAgWDRfNDAwIHdpdGggRERDIG5vdCB3b3JraW5n4oCP4oCP?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVMEKXA2MG7DNI6ZAIK2ZZCYPDOQAPYE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "niels.steffen.garibaldi--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: niels.steffen.garibaldi@emerson.com
Content-Type: multipart/mixed; boundary="===============5915248663056801903=="

This is a multi-part message in MIME format.

--===============5915248663056801903==
Content-Type: multipart/alternative;
 boundary="b1_opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Daniel,\
\
The short answer is that the current DDC/DUC implementations will not wor=
k for Sampling rates above 250MHz.\
\
The long Answer:\
The current implementation of the DDC/DUC RFNoC blocks only supports a si=
ngle sample per clock cycle processing of data.\
\
Internally the DDC/DUC blocks use the faster CE(Compute Engine) clocks to=
 do the Down-/Upconverting, [which on your X440 device is running at 266.=
66MHz](https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#X440).\
\
Therefore the highest sampling rates supported by the DDC/DUC blocks is 2=
50MHz, which corresponds to the 200MHz BW variants of the provided bitfil=
es.\
\
If the radio provides samples at a higher rate, they will still reach the=
 DDC block but the internal serialization buffers will fill up quickly as=
 the block can not process incoming samples fast enough. This will lead t=
o an overflow, which might be related to why your rfnoc session times out=
.\
\
This is the also the main reason why only the =E2=80=9C\*_200_rfnoc_image=
_core.yml=E2=80=9D variants have the DDC/DUC blocks included.

You can still capture samples at a faster sampling rate, but you will hav=
e to stream them to your host first and then do the downconversion there.=
\
Be aware that this requires a fast connection between USRP and Host, whic=
h can be challenging in some setups.\
\
Another thing you could try is to reduce the MCR closer to your target sa=
mpling rate. The x440 supports a wider variety of flexible sampling rates=
 than the other USRPs, so if you only care about the downsampled waveform=
, you could just try to get close to your desired sampling rate that way.=
 See [the appendix of this document for a list of supported sampling rate=
s of the x440](https://kb.ettus.com/About_Sampling_Rates_and_Master_Clock=
_Rates_for_the_USRP_X440#Appendix).\
\
If you still require this feature, you will either have to update the imp=
lementation yourself and make the DDC/DUC multisample capable, or you cou=
ld try and contact Ettus/NI/Emerson support and put in a feature request.=
 Depending on your business case the implementation might be prioritized =
and updated in a future release.\
\
Regards,\
Niels

--b1_opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Daniel,<br><br>The short answer is that the current DDC/DUC implement=
ations will not work for Sampling rates above 250MHz.<br><br>The long Answe=
r:<br>The current implementation of the DDC/DUC RFNoC blocks only supports =
a single sample per clock cycle processing of data.<br><br>Internally the D=
DC/DUC blocks use the faster CE(Compute Engine) clocks to do the Down-/Upco=
nverting, <a href=3D"https://kb.ettus.com/RFNoC_Frequently_Asked_Questions#=
X440" title=3D"">which on your X440 device is running at 266.66MHz</a>.<br>=
<br>Therefore the highest sampling rates supported by the DDC/DUC blocks is=
 250MHz, which corresponds to the 200MHz BW variants of the provided bitfil=
es.<br><br>If the radio provides samples at a higher rate, they will still =
reach the DDC block but the internal serialization buffers will fill up qui=
ckly as the block can not process incoming samples fast enough. This will l=
ead to an overflow, which might be related to why your rfnoc session times =
out.<br><br>This is the also the main reason why only the =E2=80=9C*_200_rf=
noc_image_core.yml=E2=80=9D variants have the DDC/DUC blocks included.</p><=
p>You can still capture samples at a faster sampling rate, but you will hav=
e to stream them to your host first and then do the downconversion there.<b=
r>Be aware that this requires a fast connection between USRP and Host, whic=
h can be challenging in some setups.<br><br>Another thing you could try is =
to reduce the MCR closer to your target sampling rate. The x440 supports a =
wider variety of flexible sampling rates than the other USRPs, so if you on=
ly care about the downsampled waveform, you could just try to get close to =
your desired sampling rate that way. See <a href=3D"https://kb.ettus.com/Ab=
out_Sampling_Rates_and_Master_Clock_Rates_for_the_USRP_X440#Appendix" title=
=3D"">the appendix of this document for a list of supported sampling rates =
of the x440</a>.<br><br>If you still require this feature, you will either =
have to update the implementation yourself and make the DDC/DUC multisample=
 capable, or you could try and contact Ettus/NI/Emerson support and put in =
a feature request. Depending on your business case the implementation might=
 be prioritized and updated in a future release.<br><br>Regards,<br>Niels</=
p>

--b1_opvBtdJRjFznFDZtTPSk8huJqKCStTx50oICCtWaQrA--

--===============5915248663056801903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5915248663056801903==--
