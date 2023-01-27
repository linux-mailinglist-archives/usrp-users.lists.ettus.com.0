Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8A767DD3A
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 06:50:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1DE26383BA8
	for <lists+usrp-users@lfdr.de>; Fri, 27 Jan 2023 00:50:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674798623; bh=2ghJ49hHaMEtXwFQqDfhWeT246tFWUztYCZIynj63fw=;
	h=Date:From:To:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZUCHSRaq2beTs1Nyj/GCtCDFsYv4oDgaNqFNxfbCjVY5JgAHlMWHsFTDnnjshwTyY
	 ri61UTQTjKGUQ0l2eq7gPOhDENvyvFUrkXFDpHSC99lhfVRnTOsZ9eEouClSGm8Uoo
	 owQ2eYtG7DDBk6+7wiVRqjeLHvKny8opQYZVuOMK06Z/LyUlOP9hclRXg4Z+wpRNSX
	 JY2BmHXrRYM6U/Vg6XQ/Grz/1mv9YeO0oVMzUFsJmzL5DWUsiW+RMgPcUhM1UXBqBL
	 iqJR+6WIs1/0fuCiCYMiHFApcAxNVeLxuJDo9p9OkVQ3vSLXy2Fj2hcuKLT2AFDXis
	 6KiL2C0XqRPfg==
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.185])
	by mm2.emwd.com (Postfix) with ESMTPS id DD2CD380B8B
	for <usrp-users@lists.ettus.com>; Fri, 27 Jan 2023 00:50:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=xs4all.nl header.i=@xs4all.nl header.b="hZmQm/mB";
	dkim-atps=neutral
X-KPN-MessageId: 6c6b7b5d-9e06-11ed-884e-005056999439
Received: from smtp.kpnmail.nl (unknown [10.31.155.5])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 6c6b7b5d-9e06-11ed-884e-005056999439;
	Fri, 27 Jan 2023 06:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=8ZDjmUAFBhm0NZ+nYioeUXxL0JfkBE+N8IQkWoB7eDM=;
	b=hZmQm/mBcdJZF7N2QLdtkll1P+gYBRHDa2iQg4fh8PrUwv+ZiHUiBjbE0l9RJK4IRcVpZ1Zp4YJZU
	 qBTClw13+N6jDN2fxyDW1+2ED+1jG7ikbsM3HjuDJZzIMBf+YmiP0LW3J151evBVTFZldW/fbIZdAc
	 hw7kImbFn9CDVOQ4jV5s1j3plywEicodewroFpVYXO+XOEoz7sLWUSpFzVgaZ6KBJGWSg2Dv1wQdGM
	 eTRoMkACBcfv358cQ4skvbQkqDqcbs0x7cT0Ip577LY3JVBhYiXavoLBrOeUMBrnQhdjkQ2pWdFX4j
	 D7FXC9Tru8/5bcrP1fwYnhr8VOa+8fw==
X-KPN-MID: 33|QsmWXrfAPVgGftQodXt6g1IVFbLDNPJGl1MbIhwUAmnGRwmjl5bRws/++vB76Fg
 tgyMqjZ6FLV7dL9qQQl2iFTDZ1OVjW+qz4Mkw8ceTcGE=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|B3NfQhX4CRvPlJde6onvX+YBtGll54EZq37kIq22ga2ODjb185cCmlIsR9SxMRN
 jBroEMuhbaL3OssoYtEDbyQ==
X-Originating-IP: 185.206.232.5
Received: from vm01308.protagio.nl (shell.protagio.nl [185.206.232.5])
	by smtp.xs4all.nl (Halon) with ESMTPSA
	id 779968b2-9e06-11ed-9e25-00505699b758;
	Fri, 27 Jan 2023 06:50:14 +0100 (CET)
Date: Fri, 27 Jan 2023 06:50:13 +0100
From: Mark-Jan Bastian <markjan@xs4all.nl>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <Y9NmFYlarlrd8xE/@vm01308.protagio.nl>
References: <Y9Lxt1qeGzi9rym+@vm01308.protagio.nl>
 <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b276bfdb-c59e-bb9f-92b1-c7ab94ad67da@gmail.com>
Message-ID-Hash: BAC64BRLMB574IW2USNGCACASDEVSVUK
X-Message-ID-Hash: BAC64BRLMB574IW2USNGCACASDEVSVUK
X-MailFrom: markjan@xs4all.nl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX-160 LO filtering
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BAC64BRLMB574IW2USNGCACASDEVSVUK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 26, 2023 at 05:14:34PM -0500, Marcus D. Leech wrote:
> On 26/01/2023 16:33, Mark-Jan Bastian wrote:
> > Hi,
> >=20
> > On page 7 of the UBX-160 schematics
> > https://files.ettus.com/schematics/ubx/UBX-160_revE.pdf
> > there is a LO filter selection with three paths:
> > - 800 MHz-2.2 GHz
> > - passthrough (no filter)
> > - lowpass 400 MHz..800 MHz
> > Next to that, there is also a way to measure the LO on J3.
> >=20
> > Question:
> > - Is this LO filter automatically selected, and where should I look for=
 the rules ?
> > - Is there some way to control this LO filter selection via UHD, simila=
r to a tune request?
> >=20
> > - The IQ mixer ADL5371 documentation warns that the LO's 3rd harmonic
> > needs to be well suppressed. Is there benefit to be gained
> > by using an external, more filtered LO instead of the on-board UBX-160 =
LO plus its filters ?
> >=20
> > Mark-Jan
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> Is this a "just curious" type of question, or are you seeing issues that =
you
> believe may be due to the UBX
> =A0 LO and Mixer architecture?

When generating a complex +74 MHz and -73 MHz sinewave signal and adding th=
em,=20
I see 1 MHz spur about -30 dB @ -74 MHz, irrespective of LO frequency. Thus=
 the=20
spur might caused by (remaining) nonlinearity in the mixer or the subsequen=
t stages.=20

I would like to control the -30 dB spur to a lower value, or at least find =
out=20
what the source of this spur is.
Next thing could be the DAC, which supports rates up to 1600 MSPS, but is o=
nly used at
200 MSPS. Perhaps there is a way to modify the waveform in this step, simil=
ar in
the way digital predistortion can help improve spectral output purity?

Mark-Jan

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
