Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALYKHIZvE2oCBAcAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2026 23:37:10 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 963595C4647
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2026 23:37:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A9753862FC
	for <lists+usrp-users@lfdr.de>; Sun, 24 May 2026 17:37:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1779658627; bh=95mZLTVog5Cm8aACKJddQSh6IWzoItGphad4Y9+k78c=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vf1rpmWxvxBYPptNFVclJIGnsRjCUT1cNhH0+l026Og7CGw03195GII/Aa1lRTrNA
	 8eGzmGwJ8m8kevusOcIgDDl2FSlHzPgasdvd7SW8r3nZYq0GODLY1tgs6yQ+6PANY9
	 iExPVAORWxBb5uioPlaDuilAuy+Z6v0f+TIwHkEKqrJZFS+jTg9oxyr+xerUz/VUGx
	 DIOfjhENXH1rws1l0p3LK1gFMD7iQEOeU8X3AoWfgau5YnDXfvFR4+a7FndFHzKBPF
	 mOlE0rjQKPJW+s6yzFNJlOkwzykg3oeHibW2CRuwer9TGjUtexYl3uf9D8dHoJGq9H
	 1uZ8rb0bO1jBQ==
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CB52385D1D
	for <usrp-users@lists.ettus.com>; Sun, 24 May 2026 17:36:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="jYpJYLwX";
	dkim-atps=neutral
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-69d92dbc420so1057738eaf.3
        for <usrp-users@lists.ettus.com>; Sun, 24 May 2026 14:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779658595; cv=none;
        d=google.com; s=arc-20240605;
        b=R9TcAH3lcbfscC/RaNC8vZUEhjHvUkp0D9OM+n9uTdHh7hFHVfXndrTIzxQiVywMXU
         88YYPM1X2NP5AvUNbWG9PKnbwcmnJnH3o+FMLzvHMqbTh0FU8VMoW5k2YVUnhr4Nbxup
         6cdEe3tZUKDT317VJ1zyXp4G/WWhy2t7Ffi8heMSdaHYExAbcEWhTx7p/iefxWvFneYy
         zoliGrwoIjGUCfn7yDkUjVnQ3lRZsTvAqbjXqOzZ9fMYYppVTP9CzXTy7MfenBf5n906
         O8ygjAoa2/1dkUayjoOAZb2+kCyzMylYqDsfLtKvamE4/Gz0zoTnj8LPTuhiKMfoLEvZ
         ViHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ey4NWNKPobpShAurZFn+kzmBJm+1zuWxKe1K01ph29M=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=iyFMSUluVxdJsBRwv8BrcfjEIBz3i5vwWA2RK3AtHRCSer2c1+lucn5CfoORBYSjMO
         wFVodGJrsW7xmTb/bHJb3HzqkflDqToKvsFuqXkMcAu0OGuiVu4XwqXnPHiCiZcgDX8D
         70NkBhZ4Uxou7UDPb6Xs1k24zC2H5GHLqN4xUI9mQWu461ADWvz21fngImwD/KbUvYy4
         F6LT+F//rZsUHBmhibjYb8mDyXdkZ247ItkounSRQITeA8TpmUs4773vBucoEDkN44T6
         AfwqwkiI6ujZlIzBJaGYv6DraGfw7s1JndtqBBXnovEpNQPXLerxutgIH/ReRuobIn5z
         mOag==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1779658595; x=1780263395; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ey4NWNKPobpShAurZFn+kzmBJm+1zuWxKe1K01ph29M=;
        b=jYpJYLwXqmTHq+0c1wTaKVpdvnZqy+Ne0DmgQVOTCK6YGmfkQ1eOT3qoSrLJlqQMli
         Z5ce8oXCyQcGuLSzPuu/GuoUVBtH/IFaw4EEk+PzaOYEPnyASipQnl7Q/9K4V5vesoKt
         xR5dRupAeDHlKnPbJRLwFEvs4yEoSdcHiLlFyw9rOhXv9JP5W+9N19yyFtJyWb3WSVNs
         +JF6tvC0tz40rI1AvfEz2eviCr+eQAy0dVn4eEx+PkZHDrGQlHluyd+4R7NEFYcyhSoD
         Uol8OL160J0gMDMr7wFidtk89s/ApQW6OUZA3Ylnu7COcPgzrNtNtBfs1popjcuYRkP8
         KcQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779658595; x=1780263395;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ey4NWNKPobpShAurZFn+kzmBJm+1zuWxKe1K01ph29M=;
        b=kagRY7zWDcYWau/8Au1GstPxc6PHP19JZ2uXBX8L81Vm7yEJqXsyf7fBAh1x+iQomA
         Dtn8VFyU1J/9QQEx+QyWrPYSuOlOiIdMjOVU317bwe+Z3zlB0rZWaneD9o7FzzaA4lZ4
         hPlUwEe4zqTDVpdXLT8uSqpOYr+Ra+gYz4czW3ZHDwO4kbiHg4IrE8PHhndki35JwUSC
         ajPUuG+0yvnn5g3hO4Jpb3UWJjBMWko7PPeZrXZ/h8pc6ChglVnjBH6ara1uvrJKdZEA
         wD8/652UmWnXqqfqMun/D9M4kzow7Zi0zd2PvDmfVf4jfsoxYiaCVKSgRt+P3PSd+aOq
         yoGw==
X-Gm-Message-State: AOJu0YzpuJ8Nh4pd3dHOjdv09gtNAhPq6LhyxENspm3tKharazZMulzb
	SRmz1pxY2YRyb1CrKWdJUlbi9rosnOospyN45WKoOOWHmsXXl5NkR3JJOug9pqavVjECGyKsySb
	O1V3big10PYAs/G19HOZFn1JH3TKTlqzHOn1GEBZ28v6pdfz8jTaGvceicw==
X-Gm-Gg: Acq92OG5utXAXT10QniPRnYeAPVLd6/W/lX9KGfeJ1VV+m6Pq75AUDdORex0+gxH1c+
	EWSJOrNPaDH+6ArKI+EubftLSgXf0XOeDnAqlRmPcVyPtKogO7UObJVSRSweodMqDea4w6abjuN
	7snlr33WqIuNMUGVDgNjHSmItl3IYwZksaIjiDRuBRhfhmKKzoh3853cIWXW4Weo2X8kw8mnOIx
	T2zflllvD0cDaE1+6o0M0qZoV8/4WOrWoU/RXMVIZbfVDvv7IntY17CajAdPDrpFxhfQVE42Md2
	52r7FWBk5OPppbnHNSIHuHV4xkVI304m8AtHpc77x/OuOQ2TSKjs
X-Received: by 2002:a05:6820:818b:b0:694:9f3a:da8 with SMTP id
 006d021491bc7-69d7eb30e64mr6620133eaf.12.1779658595020; Sun, 24 May 2026
 14:36:35 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sun, 24 May 2026 16:35:59 -0500
X-Gm-Features: AVHnY4IPZTMZyqQBXXyK82DHNA5UpnEWRr8Cvnc9E9tYdNrcABvQRjxBGv1Oloc
Message-ID: <CACaXmv-_dQZsMzP=iyP9w4o+g2ikqNrRyicHCScovr8a1mwVAg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: MTTXEZZHYS7VS4KPMUTUEJL2OK2JA5ZM
X-Message-ID-Hash: MTTXEZZHYS7VS4KPMUTUEJL2OK2JA5ZM
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?NEWSDR_2026_in_Two_Weeks_=E2=80=94_June_4_=26_5_=E2=80=94_WPI_in_Worcester=2C_Massachusetts=2C_USA?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MTTXEZZHYS7VS4KPMUTUEJL2OK2JA5ZM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5934162972734607660=="
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	FROM_NEQ_ENVFROM(0.00)[neel.pandeya@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email,newsdr.org:url,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Queue-Id: 963595C4647
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============5934162972734607660==
Content-Type: multipart/alternative; boundary="00000000000060c0480652970e95"

--00000000000060c0480652970e95
Content-Type: text/plain; charset="UTF-8"

The 16th annual New England Workshop on Software Defined Radio (NEWSDR) is
only two weeks away!!

NEWSDR 2026 will be held on Friday June 5, with evening tutorials on
Thursday June 4.

NEWSDR 2026 will be hosted in-person at Worcester Polytechnic Institute
(WPI) in Worcester, Massachusetts.

Advance registration is free but required so that we can get a headcount.

For event details, latest updates, and registration, please visit:

https://newsdr.org/workshops/newsdr-2026/

We are also still welcoming poster presentations, and we encourage anyone
interested to submit a poster for the event at the link below.

https://docs.google.com/forms/d/e/1FAIpQLScYvl_NpCt2RLHv7UoqGMy1APVh_3MfT5DZgoiknACl0ENliw/viewform

We look forward to seeing you at the event !!

--00000000000060c0480652970e95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The 16th annual New England Workshop on Software Defined R=
adio (NEWSDR) is only two weeks away!!</font></div><font face=3D"verdana, s=
ans-serif"><br>NEWSDR 2026 will be held on Friday June 5, with evening tuto=
rials on Thursday June 4.<br><br>NEWSDR 2026 will be hosted in-person at Wo=
rcester Polytechnic Institute (WPI) in Worcester, Massachusetts.<br><br>Adv=
ance registration is free but required so that<span class=3D"gmail_default"=
 style=3D""></span> we can get a headcount.<br><br>For event details, lates=
t updates, and registration, please visit:<br><br><a href=3D"https://newsdr=
.org/workshops/newsdr-2026/">https://newsdr.org/workshops/newsdr-2026/</a><=
br><br>We are also still welcoming poster presentations, and we encourage a=
nyone interested to submit a poster for the event at the link below.<br><br=
><a href=3D"https://docs.google.com/forms/d/e/1FAIpQLScYvl_NpCt2RLHv7UoqGMy=
1APVh_3MfT5DZgoiknACl0ENliw/viewform">https://docs.google.com/forms/d/e/1FA=
IpQLScYvl_NpCt2RLHv7UoqGMy1APVh_3MfT5DZgoiknACl0ENliw/viewform</a><br><br>W=
e look forward to seeing you at the event !!</font><br></div>

--00000000000060c0480652970e95--

--===============5934162972734607660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5934162972734607660==--
