Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDIDLG8fjmk+/wAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 19:43:59 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C36DC130632
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 19:43:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B4E13864A9
	for <lists+usrp-users@lfdr.de>; Thu, 12 Feb 2026 13:43:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770921837; bh=DYZv+TEn/8AWhohKQ2MsfsMAYcqmmT9wcqEe8tGLYmw=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EefhdqSJuT3Y53OGn2MFxj5Ociq6vZNi83guaMo7yVlygm+560d2cgtzU2a/qNgfc
	 AUBt6jr4TLGPdGL6Ro8nroesWMywSzxI7toRvdEXI9SOBRXN39Z6D8HuqqFJc+I6Fs
	 SqB6dWNDV91Vm+dZXTuwOjzVj+UcpGDtNQjqAiuStACzWSZhc1Cm73h1zRqe9GlE+K
	 3ZQoh4FWSP2WLEEK4pB1rBHj10bjl4JAwGcZcE0wCvcMmPEDpuFc94NKMBv4qbCevH
	 iXgVToSJGV0gAuPfCeb1IF1mtpBT3TjJoipaVApfNbDfZKfPMeGJw5H1WyQnJgQn0I
	 716tedWT4uTgQ==
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 74751386489
	for <usrp-users@lists.ettus.com>; Thu, 12 Feb 2026 13:43:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VFe35vow";
	dkim-atps=neutral
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-89473dca8aaso2360416d6.0
        for <usrp-users@lists.ettus.com>; Thu, 12 Feb 2026 10:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770921819; x=1771526619; darn=lists.ettus.com;
        h=user-agent:to:from:subject:message-id:date:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K4hntGiFbQhbp77za3diaEHqGGdTiB37V8uog2+tCDw=;
        b=VFe35vowdtVwFZE+pI35+WUPPLmGZiPJ98aVsSkWOhdxc0rTK4yti6wfZNeOzog8MH
         h4RQkRrO80Dt+9dN+9wUWuKt2xFCA+EjzrfWxTzWpfwfSH4e6JOuzK826oA8QkfQzVDu
         ZrHc3k8LfiVzBuDodn0PtEuzbuGyS9EEIofJu8xLHehFdTHeRBeErmnqIqBQFHHaSfgN
         PhkN0Bq16BCfMNczXG/70rDBzpaKOajFkvYcmajk4t0gAuWvimt82GTMfLd+VUZ+pV1m
         kUSs9HkA/f/H4R97TBIY/fjpDnBjcH2k7tSthSEcRUnfDjS94QYVTFpZjZwInGulln4e
         c5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770921819; x=1771526619;
        h=user-agent:to:from:subject:message-id:date:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K4hntGiFbQhbp77za3diaEHqGGdTiB37V8uog2+tCDw=;
        b=nTtqMJ8P8ydYot4Srh91MF9fG8Rxwu0tjkgEMDCff4OkM2zqsEVVbXvaObmBjYhN/T
         ZkaGaGcCx2S6dIv0YzWz2z45LQ94lAv35MCTuIu4m5HyG9GlM6vjdqJ9gpf51+rJZ+Qw
         /QxkMcAaZtsCXbMul9zcWct9Hi+VWjNo8H1zXFlhIPG0tivz/OjFDddPQEugBHIAl5KS
         UmzXYqalXdg9A0Meia5VxcGtI+NjWJvdzyL5bJ0U8dILS2PF3r1eJJWOorPW7KNbbfnh
         FPJ+fCoNOuvtxcD5ordJ6yoOxV6t0h95DPilP3QNmi26ioil1HV1wMw4UtAOM7tkpvj2
         jwgw==
X-Gm-Message-State: AOJu0YzhbJ2HdAg9vbU17bzXUqSvAnnaWzhq8AhLGm7BHF2Tq4dMsf9n
	Fg/pigK69LQX5RyywZawYIjuJdNdL6np3+iHVGVTG19Rrl7h5Atn/6zDOQAUWQ==
X-Gm-Gg: AZuq6aJjatw8wInd4WvSbzgwi0p+kfRGgADA88fX8wJINiUiOFR8z6BQafFoV+hojj7
	5NPP46lvdtc5ipVq1k/gVibjsPGibO3Ca6LayQY/IOKUib4KlkI+RGd31Pt6lZSxexGvlcAyH0J
	XswMfx+kIZtWu08ZffLCUnUq3ArYX0ZScHjMWr5YRRIsNnwQFxKVpX4muzarvoWinbQJHTacQne
	6Z3oyN9ZdGtsaFdirglj4vilUz50q1/gGohpiuMPZKGsyw9KamOxBpKgY5Efi3uJKE0JlaiPpQj
	oVMuFWUEyJPP9lCK+NVQe5FI/TcQmpMfodlt7MzJ5m2K/e7MksbI+3tMKNTAnBla/NMb6Pf81Xz
	EMnq0tQsZaVBkyOiW7R2nKXxo3HeTeO5X7C/WTCbVKM7KGKhZ3c6ILH04VD7WSdrlo89hMmNzpe
	wLoepE1rd5AcznujVODZQKKFgX3WOWgM+UT7hKeg==
X-Received: by 2002:a05:622a:116:b0:4ec:fbac:a83d with SMTP id d75a77b69052e-50691b8cf0fmr48653801cf.44.1770921819369;
        Thu, 12 Feb 2026 10:43:39 -0800 (PST)
Received: from [192.168.5.59] ([47.186.162.138])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50684bc7de6sm41229991cf.32.2026.02.12.10.43.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Feb 2026 10:43:39 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 12 Feb 2026 12:43:17 -0600
Message-ID: <Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
User-Agent: Mailbird/3.0.47.0
X-Mailbird-ID: Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com
Message-ID-Hash: UXJGWMD36DTCP7USFH7WJOL6AIPNTIYD
X-Message-ID-Hash: UXJGWMD36DTCP7USFH7WJOL6AIPNTIYD
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] B210 GPIO SPI support using UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UXJGWMD36DTCP7USFH7WJOL6AIPNTIYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8560228028275559194=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pageheller@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim]
X-Rspamd-Queue-Id: C36DC130632
X-Rspamd-Action: no action

--===============8560228028275559194==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_6193191.916036876757"

------=_NextPart_6193191.916036876757
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am struggling with the GPIO on the Ettus B210 (J504). I am connecting it =
to a Raspberry Pi Zero acting as the Master for SPI communications, sending=
 the chip select and clock to the B210. The loopback test on the Pi is succ=
essful. The NI-provided Python example code on the B210 side appears to 'ge=
t' (read) the pins on J504. Disconnected I see the chip select signal go lo=
w and back high, but when I connect it to J504, the software to 'get' the p=
in doesn't change (same code, but in a for-loop). I'm using pin 1 as the ch=
ip select, 3 for clock, 6 for MOSI. I'm not using MISO.=C2=A0

Some references on line suggest that pin 1 is an output on J504 of 3.3V pow=
er, but, I don't think so. It most certainly is not 3.3V and appears to be =
just like the other pins.

I need some help. I've invested about ten hours trying a number of differen=
t methods and code examples. I've tried getting SPI to work, but the docume=
ntation is so poor, I can only guess on the actual implementation. When tha=
t didn't work, I went to bit-banging; also with no success. I'm just sendin=
g datetime from the pi to the B210 to synch them (doesn't have to be exact,=
 just within hundreds of microseconds). So, I'm only sending a handful of b=
ytes once, so bit-banging is just fine for this application. But, I can't g=
et either the SPI nor the bit-banging to work. If I can't see the pin chang=
e when I use the example 'get' python code, then nothing will work.

I'd love to talk with someone who has transferred data over the B210 GPIO. =
(Am I supposed to call this the NI 2109 now?) Thanks. -page
------=_NextPart_6193191.916036876757
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Ar=
ial;color: #1A1A1A;text-align: left" dir=3D"ltr">I am struggling with the G=
PIO on the Ettus B210 (J504). I am connecting it to a Raspberry Pi Zero act=
ing as the Master for SPI communications, sending the chip select and clock=
 to the B210. The loopback test on the Pi is successful. The NI-provided Py=
thon example code on the B210 side appears to 'get' (read) the pins on J504=
. Disconnected I see the chip select signal go low and back high, but when =
I connect it to J504, the software to 'get' the pin doesn't change (same co=
de, but in a for-loop). I'm using pin 1 as the chip select, 3 for clock, 6 =
for MOSI. I'm not using MISO.&nbsp;<div><br></div><div>Some references on l=
ine suggest that pin 1 is an output on J504 of 3.3V power, but, I don't thi=
nk so. It most certainly is not 3.3V and appears to be just like the other =
pins.</div><div><br></div><div>I need some help. I've invested about ten ho=
urs trying a number of different methods and code examples. I've tried gett=
ing SPI to work, but the documentation is so poor, I can only guess on the =
actual implementation. When that didn't work, I went to bit-banging; also w=
ith no success. I'm just sending datetime from the pi to the B210 to synch =
them (doesn't have to be exact, just within hundreds of microseconds). So, =
I'm only sending a handful of bytes once, so bit-banging is just fine for t=
his application. But, I can't get either the SPI nor the bit-banging to wor=
k. If I can't see the pin change when I use the example 'get' python code, =
then nothing will work.</div><div><br></div><div>I'd love to talk with some=
one who has transferred data over the B210 GPIO. (Am I supposed to call thi=
s the NI 2109 now?) Thanks. -page</div></div>
------=_NextPart_6193191.916036876757--

--===============8560228028275559194==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8560228028275559194==--
