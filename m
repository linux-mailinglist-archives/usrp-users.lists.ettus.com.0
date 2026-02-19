Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJZ0D8Z1lmkIfwIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 03:30:30 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D4915BB8E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 03:30:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 182833853C6
	for <lists+usrp-users@lfdr.de>; Wed, 18 Feb 2026 21:30:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771468228; bh=9NL72fy8Zwm0ziGDAR1gJo2bXbuM1+TqaPattHE/hGE=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=w5JQbmuSJF2xTnnpKem1Vr+KgLr2l8rq/7IxEnQIs+Zvp/77EJLkhTjlOcZjdFhCj
	 K7dT2c1Awb5Fys2Df68Pc6GtQfb5l9s27NHHJdf1gfnyMxFYwdrSw4kaSky5H7KKlG
	 cepYHFMu2aTZOhnLPbThR5tX6VV0S9kdLKAr0JPFBXVYSGemkU9Xlapcq8ojU3yR1Y
	 AJT/Fc8SuxosMLSUZE11B4tFUQT1GbzGMxrZYJYX66xRdn3spENWgTy3CNvZKEEHwR
	 DsbgNtfbttSgQfKN2U6Dm6Mzbxo0yePGXlySqQbTskOkSRTMMAPKjX2iqYiCpQWH7A
	 gR2dsNdfNQGdw==
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 6D4393818E3
	for <usrp-users@lists.ettus.com>; Wed, 18 Feb 2026 21:30:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hfzoUpYs";
	dkim-atps=neutral
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59e65b8e268so529949e87.2
        for <usrp-users@lists.ettus.com>; Wed, 18 Feb 2026 18:30:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771468200; cv=none;
        d=google.com; s=arc-20240605;
        b=gN20fSWjKLPkBgQhaz7zEvnLcjwL9KXkA4p5uO4DgOjvjjI6GoV9FizrEg8KriiIwB
         UyCcu+wVbOt+YigQyvMzxbb1w46dATwT4pyqW6raNF/nEtYHKAHPbxWH0Nhm01xnnt5k
         DvDd/NiCMmYl3LqMiAovYW7glfKGdVUpc56xQ00fiXWxkFJklRJJ5VxjZBWSxhK8kLQr
         19QhsqEeb09MurNthP3obrSPC300sKFmF3Mds03mBj6DAUjGmSW3eG62DQXmwdIPJZV8
         zqSU5TuFeGqzAooYHhXNeJrALVwitOmIreeUhcxCbp2FK9jCUla6qlrncAB9PnSVnHDG
         F0FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=w46vnjDtsHsbmw05NeYB/1SbzUAJ43TVXxj2gp48MJA=;
        fh=vj2MHvLR32WxuQprBUVL44zYYgIQJclnSJ8R0m0Tg2M=;
        b=II9QOKc6+AHNWlGkzdVM8tqaqAFQ0q8w/qSyD5sPF3L/zXOCiMnv0jYNGqWJLaMCAf
         Wx3ppsqFdMWK1LBHCCCZNd/k98L8/CACAb2jLkGc46zOEIMS27VTWsXxtYnjL5eQMv7e
         rA2hmkeC93MU5H/3vlGz0/bAii0wXbzYsH30dX33IJyI0NI5Go6EHSbtIaVOWpg/AB7S
         nWFbUdF0UEkxhW4Asfnjf63qKsBCG6B/pARNczEVJ3RGJ/DxMhPNSGSo3hMXObo+/KLL
         rfBhp7A9gOSNnuliTCdfWSaUvNdJmAYXcZgZIlj1EO9tDXoq4ZLOJhNe85qblr53Hjof
         eTRw==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771468200; x=1772073000; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w46vnjDtsHsbmw05NeYB/1SbzUAJ43TVXxj2gp48MJA=;
        b=hfzoUpYsUOnE3ol9FZ17qMJKgMIdPb2rLRQr1MQ58dycI7XG4AVqDVMd4ynMDIeMjO
         xIi52IWhM6XGOK8Puh+Sr/no4J5rXZYBgnrOz0wIIObaxu7x4VaiX/RAefMDS3CG2li/
         y5/R5ctPwVWQtMcayh6sg7vWBYfMu4lVXm/O7EcP6WgcHhZ6uryWgFYwxxhklbBcGTqH
         NenDY4Typ4fES6Ep7DlMbLUlLxx4DsuQh+jzUcYdDPmFl88GJFHo9uyiVDBfYKphzyOK
         ++yxMWCygzZg0wAVw5pI/XG73DjfObCqY/L4Ow4NSV8o7ELUNZi6wNMSO3umhAM30TYf
         9DKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771468200; x=1772073000;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w46vnjDtsHsbmw05NeYB/1SbzUAJ43TVXxj2gp48MJA=;
        b=MLHfVfpcdM+u9da7NMAe6C8uh41sDaDRfWosuYItz8nCAdqaavN5UTOpq7xFSk6P4v
         hiRk/VNm9ZEb7D9BIS2FGThSO7IQgDRms+o0ojpiD9/4Sjw1aHEbpyZlEJzfkV9i4CnV
         fqt4usgKNXZprYhPi6zuvITsamysTGLHNupw1knOun7yOUdPBNS7iW2CWohRat8/rbTl
         dqOIir8/eP7dHeX65ixG5WTNKpsac345nayYC1CTR/SQuw9ARudQogtIBOjhS528YVG5
         89kVshkmGBaA89risK21e+MPzEE2SCphRKCyjbiWmaBX2Bl6+0NS2hfqyOVJBQky6ndS
         Egew==
X-Gm-Message-State: AOJu0Yxj7PcrkKAUYcbrAyXRPvxJzRER4fd7bfR7IyZaswUVoaAHgPjZ
	d4GQsiSUQpnbgwlxxpXhpAwofakdrzIaC/NroFFP+ebDQGYSBUK24oICNMg/2d+EnjqrA5+Xxqt
	FAnx4PLEuxy2aYCq4gxEgVGiGo9XPW3vEfyLC
X-Gm-Gg: AZuq6aIIhbiCnk+/Ks6tsY3Tx7M2uCdzJz4HWhDXnGdBiLSJf9pM1hCu91I1x9Xmm4V
	mOiHD9aiFKuGp/HrE48gcO5FOp1Bn+4iWAohEiEk/rVef+4+GkOWcCdqn3NDp+tvzPmnhqlme0K
	wifIto6zMuP3IUkcHCESnZ2KTu/YKfFx8VQGCVTc7kCdQ8bli5mH+E8KZ0R/H6jWdtZ39hadtlS
	7qzjcp6tNduiuTpeucU45XiBY6ldV+WZB+mWsTU1l/5HmlinX1FO4AQkJC8qHWD5i6RjTEp7Hja
	Yrt2ArHM
X-Received: by 2002:a05:6512:3b8e:b0:59e:5b94:18c7 with SMTP id
 2adb3069b0e04-59f0263362cmr6476956e87.27.1771468199416; Wed, 18 Feb 2026
 18:29:59 -0800 (PST)
MIME-Version: 1.0
From: Chris Wozny <woznych@gmail.com>
Date: Wed, 18 Feb 2026 21:29:48 -0500
X-Gm-Features: AaiRm508bYCVNZlvFs17K_FpW6vZjbIckhk-E8b_Y15gGdvDlLb0wJ0YUS39FvQ
Message-ID: <CAEZoMYMR5b=ZT8MQgkVQ4Z0OsZNzjvrLMhbf0RmoV66O7LYHKg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: YJ2JU72P37J5CMZNBMCY773IMXFEP7I4
X-Message-ID-Hash: YJ2JU72P37J5CMZNBMCY773IMXFEP7I4
X-MailFrom: cwoz36@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X410/ZBX Session-to-Session Phase Coherence with multi_usrp API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YJ2JU72P37J5CMZNBMCY773IMXFEP7I4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3255300351216842031=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[woznych@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,emwd.com:dkim]
X-Rspamd-Queue-Id: 61D4915BB8E
X-Rspamd-Action: no action

--===============3255300351216842031==
Content-Type: multipart/alternative; boundary="000000000000c1d5bb064b2414d0"

--000000000000c1d5bb064b2414d0
Content-Type: text/plain; charset="UTF-8"

We're working on a two-channel phase interferometry application using an
X410 with two ZBX daughterboards and am having difficulty achieving
consistent inter-channel phase measurements across application restarts.
I'm hoping someone on the list has experience with this and can point me in
the right direction. I've found quite a few emails on the mailing list from
about a year ago on the topic, but they didn't seem to have a resolution
(as far as I could tell).

Here's my current configuration:

NI USRP X410 (Rev 7)
Two ZBX daughterboards
MPM Version: 5.3
FPGA Version: 8.3 (UC_200)
FPGA git hash: c37b318.clean

I'm using UHD 4.7.0.0 with the Multi_USRP API in C++. The ports I'm
connected to are the RX1 SMA ports on the same daughterboard (A:0 and A:1).
The X410 is also connected to an external 10 MHz + 1 PPS reference from an
Octoclock. I'm feeding these receive ports with a pulsed waveform from a
signal generator connected via a splitter.

Problem:

Within a single execution of the application, the phase difference between
the two channels is extremely stable and consistent pulse-to-pulse.
However, when the application is restarted the phase offset changes to an
essentially arbitrary value. Across five consecutive runs we observed delta
phase values of approximately -25, -154, -25, 74, and -119 degrees at 3050
MHz.

The same code (timed command tune requests) and test equipment setup was
working with an X310. The phase differences were consistent over a period
of a few days of application restarts and power cycles. It seems like there
are some fundamental architectural differences between the X310 with two
UBX-160s and the X410 with two ZBXs that prevent the same task from being
accomplished.

Here are the steps we've taken thus far to try and get the same initial
phase on both channels from one run of the application to another:

1. Switched clock and time source to "external" to lock to the Octoclock's
10 MHz and 1 PPS reference and polled the ref_locked sensor before
proceeding.
2. Used set_time_next_pps() rather than set_time_now() to latch device time
on a PPS edge, followed by a sleep longer than one second to guarantee the
latch has occurred.
3. Configured subdev spec (A:0 A:1), per-channel parameters (sample rate,
bandwidth, gain, antenna), and get_rx_stream() all after the ref_locked
wait and PPS latch.
4. Issued simultaneous tune commands to both channels using
set_command_time() aligned to the next PPS edge
(get_time_now().get_full_secs() + 1.0), followed by another sleep greater
than 1 second to allow LO lock.
5. Attempted explicit LO sharing via set_rx_lo_source("internal",
"LO1"/"LO2", chan) on both channels, however set_rx_lo_export_enabled() was
not supported on this radio so we abandoned that.

The within-run phase stability is excellent (sub-degree variation
pulse-to-pulse), which suggests the hardware is working correctly. The
problem appears to be that something is initializing to an arbitrary phase
state on each UHD session that is not being reset by any of the above steps.

The ultimate question we have: with an X410 and two ZBX daughterboards is
multi-channel phase coherence across multiple UHD sessions possible? If so,
are there any steps we might be missing or out of order from what we tried
above? Feeding in a known signal every time we start a session is not an
option.

There was some chatter in the mailing list about newer versions of UHD
resolving this, but other replies from March 2025 left it ambiguous (to me
at least) as to whether this was fixed for X410s or X440s or fixed at all.

Any guidance you all might provide is greatly appreciated!

Best,
Chris

--000000000000c1d5bb064b2414d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We&#39;re working on a two-channel phase interferometry ap=
plication using an X410 with two ZBX daughterboards and am having difficult=
y achieving consistent inter-channel phase measurements across application =
restarts. I&#39;m hoping someone on the list has experience with this and c=
an point me in the right direction. I&#39;ve found quite a few emails on th=
e mailing list from about a year ago on the topic, but they didn&#39;t seem=
 to have a resolution (as far as I could tell).<div><br></div><div>Here&#39=
;s my current configuration:<br><br></div><div>NI USRP X410 (Rev 7)</div><d=
iv>Two ZBX daughterboards<br></div><div>MPM Version: 5.3<br>FPGA Version: 8=
.3 (UC_200)<br>FPGA git hash: c37b318.clean</div><div><br></div><div>I&#39;=
m using UHD 4.7.0.0 with the Multi_USRP API in C++. The ports I&#39;m conne=
cted to are the RX1 SMA ports on the same daughterboard (A:0 and A:1). The =
X410 is also connected to an external 10 MHz + 1 PPS reference from an Octo=
clock. I&#39;m feeding these receive ports with a pulsed waveform from a si=
gnal generator connected via a splitter.</div><div><br>Problem:</div><div><=
br>Within a single execution of the application, the phase difference betwe=
en the two channels is extremely stable and consistent pulse-to-pulse. Howe=
ver, when the application is restarted the phase offset changes to an essen=
tially arbitrary value. Across five consecutive runs we observed delta phas=
e values of approximately -25, -154, -25, 74, and -119 degrees at 3050 MHz.=
</div><div><br></div><div>The same code (timed command tune requests) and t=
est equipment setup was working with an X310. The phase differences were co=
nsistent over a period of a few days of application restarts and power cycl=
es. It seems like there are some fundamental architectural differences betw=
een the X310 with two UBX-160s and the X410 with two ZBXs that prevent the =
same task from being accomplished.</div><div><br></div><div>Here are the st=
eps we&#39;ve taken thus far to try and get the same initial phase on both =
channels from one run of the application to another:<br><br>1. Switched clo=
ck and time source to &quot;external&quot; to lock to the Octoclock&#39;s 1=
0 MHz and 1 PPS reference and polled the ref_locked sensor before proceedin=
g.<br>2. Used set_time_next_pps() rather than set_time_now() to latch devic=
e time on a PPS edge, followed by a sleep longer than one second to guarant=
ee the latch has occurred.<br>3. Configured subdev spec (A:0 A:1), per-chan=
nel parameters (sample rate, bandwidth, gain, antenna), and get_rx_stream()=
 all after the ref_locked wait and PPS latch.<br>4. Issued simultaneous tun=
e commands to both channels using set_command_time() aligned to the next PP=
S edge (get_time_now().get_full_secs() + 1.0), followed by another sleep gr=
eater than 1 second to allow LO lock.<br>5. Attempted explicit LO sharing v=
ia set_rx_lo_source(&quot;internal&quot;, &quot;LO1&quot;/&quot;LO2&quot;, =
chan) on both channels, however set_rx_lo_export_enabled() was not supporte=
d on this radio so we abandoned that.<br><br>The within-run phase stability=
 is excellent (sub-degree variation pulse-to-pulse), which suggests the har=
dware is working correctly. The problem appears to be that something is ini=
tializing to an arbitrary phase state on each UHD session that is not being=
 reset by any of the above steps.<br><br>The ultimate question we have: wit=
h an X410 and two ZBX daughterboards is multi-channel phase coherence acros=
s multiple UHD sessions possible? If so, are there any steps we might be mi=
ssing or out of order from what we tried above? Feeding in a known signal e=
very time we start a session is not an option.</div><div><br></div><div>The=
re was some chatter in the mailing list about newer versions of UHD resolvi=
ng this, but other replies from March 2025 left it ambiguous (to me at leas=
t) as to whether this was fixed for X410s or X440s or fixed at all.</div><d=
iv><br></div><div>Any guidance you all might provide is greatly appreciated=
!</div><div><br></div><div>Best,</div><div>Chris</div></div>

--000000000000c1d5bb064b2414d0--

--===============3255300351216842031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3255300351216842031==--
