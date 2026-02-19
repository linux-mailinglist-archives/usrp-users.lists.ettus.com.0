Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TvVUGD0Bl2k8tgIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:25:33 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F3A15E937
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:25:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 162F038560A
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 07:25:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771503932; bh=RMqAEqBamX2nQz32nwwW6Zr2OCTnCc7MrlzEv2zK23A=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=T+dFnG7wuc6+7//VkkgZCWmkbP8VoidVNRFLEWH9mYj6fpqOIQvVJzAE4ocrJQkSV
	 FdjGWxKknFj3s/BFOHppFwINV0wfzKb3JzVoXroVMQxmzEy9Ngpy+mifwNdcuAdWSM
	 THF/2LiBqFAmJvHqAsi6ppNmhzqcoUdgUzuE9XJakl8wyLPCTaasqQSt3fBItJVmLz
	 kmpUgvPc4kbxlUnw123ce7T3WfwrYNUiIDAsRaWlkvrvqLpJZQMn3w/2O4h9jStvmL
	 n1s0UfP3/d8wWAs7N3Ig3ak1N+NQkiwU1sIlTFaMKbV8iJv4kCIoWBpBDulLHVw8qE
	 PfgPPA9B2J0iQ==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 5A4C83850C8
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 07:25:08 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="aJCE7UAu";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-89577f866d6so12456366d6.0
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 04:25:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771503908; cv=none;
        d=google.com; s=arc-20240605;
        b=B7zIPmIZqbK9gRhJkN1dYyWQota4cx3iM9CFSZBxSzI3CiVwHYUGTRJ3aMxWW4ELzd
         uOvTDydRgLqec1DVSlEtfLTHH6pFGMntnthP/Vuu4WaQHj4BZ7X/brwzPW1WnVCw3VoI
         IXwMK5OboNxeqS16/hX9cEHu+6H5cRTRl4i7M8kduJ3IM2GnYyY9mTmVLUYH+W9+m06i
         DIbK3fcLG7mjN3TOb1Y8DtVsIAOxzTQGkCAOTjnooh/nIVZuO1eZVqUtQWCXfOHDIE5K
         jodCuXIZRW5vJxzE6ttRqFveqW8av0GjT+RXeFpUXoUPSM5Nai+abwPdm7QBUiBy4RMR
         /2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=6bJ176jpid7+qmVcKwYMsO6H6hPUGVeB51X071nDZE8=;
        fh=Rni46yqVkxPnzoJaeasF2jRWS6SwffKhmhdmBaa8z1Q=;
        b=ijZg8YZFfIGoVVz3BvbaPA4xqieh9buJsiHffNvsXq2Yz+LuYFG56kHVCk5QfBR6nN
         3sr+C9+gBhjaYYBVZZDPBPF4JDUjJ3pNs+kXhHRjv1+sRbJ6PdKR43Fsv1xaYcZpTnEE
         YaO2l49sLz+vM7tbWcdgDp1JuZCUUkwS1N+p76d5ISGH9CnHkB6YR9diUfEhoi9OV252
         2Gx4K93jDCKk708hnw14y/q6yqLOArPdW1F+3atSnDHMCBdZQf2f6mtC7qgo3osDHPOv
         UN6Lf5tOayPJsJg23MZmc44BtjpRjTAUDfu/fWbFanEY47g19eAossSuUH2af/LIJZtC
         FFDg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771503908; x=1772108708; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6bJ176jpid7+qmVcKwYMsO6H6hPUGVeB51X071nDZE8=;
        b=aJCE7UAuvFEVnWqTqO+X/K/F+xM7fO1BnexQHLe1Tn2H0msPb3gii6VD0xDf/4YN+0
         mAYv7por/ber2MUtWk0cmZ78GW9FElr8KI4QR1HkIClkact6cilgNhaaU862nqzxaxZ8
         EyHxZ/4lC6EdTaW0YuZ1IsbSP4jdrTTi14INzbUUnYV1zCmm3H1kTNPgP7JrmKZa6mSJ
         GMD2ixpeuFY4nYZB669EaeN0XVOt9ceAWE15k8i6MMuUlBAvoqz/5fM5V9N6U72jNkpX
         kf4H2COyzlx3nOI4bzNnpGnJvVI8juCIucbCn1C5LqnM9SpOaOvgNcOHnCgFUSbwQ9Uv
         uRIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771503908; x=1772108708;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6bJ176jpid7+qmVcKwYMsO6H6hPUGVeB51X071nDZE8=;
        b=RYGxpXzfmqdW//2tzZ534U99EHZpXQPGJZih2o+aQwWMh0sXcZ4OYmzIrxrMrFTfoU
         7hT368YeK1GDeNQQ6Uk1eFJcUWlB1aR1XjRqo6YqLttUxM+bffphDKka/yfs9oIhJ6BD
         jBSzlZ2s59LLNQz4d6T46ud6vCPgc3JcL+9SV3F5C4Tqn2Q80aCD61/7pagFNfdpDu++
         QVxCMEwH3Oqs96QIvcLrHgfGOhKMJAh7mnohtvgWU6/rwJWLZu6xaQTFv30iNimLogGC
         V/2mRzcQgRhuUjeTtQmPSxFcYWE+KEvy4GXnm92gBz/Bdw4GiETFHcsFJfI/FwWnDfbQ
         Os5w==
X-Gm-Message-State: AOJu0YweEnEg55VxBY2/ldR8kEyshcbbZYbYtzlhPgOY0uWbvhGlScAc
	QSBhKFOFemUJxX0O9nnTIuJeRzAe9R1XIq6xoNrQlhhAAKE22jDjSJrZyV0RwSVQNcDDW3dexIS
	CQJKRyG8uE2VlIz3ECyWf3AoQs3zKpFcMyWvmRLKrha6WDN85Jw1Y2iJ7lw==
X-Gm-Gg: AZuq6aJSHe3W3QxQKHcCy5pzMBwC2wotsFuDAIj5/IMy1q0xFGIc4hjAy6SToumfqds
	Haj8K/atkE+TP6sSsEZgkVMKpJFYCvYDFlDaHc7CCMq9j4nEJST1G8g0X/HzrLp4PtSp2fdj7lZ
	lQdMiiA5bE4+paoOJEDbvszG6ReULEjgGh1KWl+z98G2vNyrreFe/gkdRjrDyAD4O0oGhFOV4w+
	EWNv3JkepZwupuKo0TB5HAZkkbBXo2xjY7WQXOcmBAaQxIoMuUzPL9kuEYnTch/+Z7hH0usxcvV
	0oOA3Ks7aysq9ijjj5qecox1T3q3xWNdgVxAisrDGDFK8Csm
X-Received: by 2002:a05:6214:5187:b0:894:5d38:2e38 with SMTP id
 6a1803df08f44-89965b454femr18707996d6.18.1771503907609; Thu, 19 Feb 2026
 04:25:07 -0800 (PST)
MIME-Version: 1.0
References: <dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc@lists.ettus.com>
In-Reply-To: <dvYs9Hr7Nhk39PmDXQf5NIlzWpzZrmxfYXTlP5tOc@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 13:24:56 +0100
X-Gm-Features: AaiRm50Xm-54kTtiYpKrcwJO-eFuBWd2TY3jeu8WmkO8xuK_ddt6VEfOFis2bnM
Message-ID: <CAFOi1A5h9KtnxBVaqRSY8=UswbenW7WzPA9M3VC=G7-U8-VfRg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: AULQDUOS3IB5ZJ6NXGXYQONL625NGE3M
X-Message-ID-Hash: AULQDUOS3IB5ZJ6NXGXYQONL625NGE3M
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPSDO Lock slow on X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AULQDUOS3IB5ZJ6NXGXYQONL625NGE3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5364060583133202672=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,mail.gmail.com:mid,ettus.com:email]
X-Rspamd-Queue-Id: D9F3A15E937
X-Rspamd-Action: no action

--===============5364060583133202672==
Content-Type: multipart/alternative; boundary="00000000000021ac60064b2c65ce"

--00000000000021ac60064b2c65ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just set the clock/time source to gpsdo. Your GPSDO is better (as a
reference) than your internal oscillator, even when it's not yet locked.
Depending on what you're doing, you can just start using it before it's
locked (obviously, if you need accurate time/coordinates, you have to wait,
if you're mainly after good frequency accuracy, then this is a fine
solution).

--M

On Mon, Jan 26, 2026 at 9:27=E2=80=AFAM <carmixdev@gmail.com> wrote:

> Ok, thank you for your answer, should i need to start before this time,
> say after five minutes, could I try to sync to the internal PPS even if
> gps_locked flag is still not true?
>
> I would have to accept less precision, but the system could work in a
> =E2=80=9Cdegraded=E2=80=9D mode until the gps_locked=3Dtrue, do you think=
 it is possible?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000021ac60064b2c65ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just set the clock/time source to gpsdo. Your GPSDO i=
s better (as a reference) than your internal oscillator, even when it&#39;s=
 not yet locked. Depending on what you&#39;re doing, you can just start usi=
ng it before it&#39;s locked (obviously, if you need accurate time/coordina=
tes, you have to wait, if you&#39;re mainly after good frequency accuracy, =
then this is a fine solution).</div><div><br></div><div>--M</div></div><br>=
<div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Jan 26, 2026 at 9:27=E2=80=AFAM &lt;<a href=3D"mailto:c=
armixdev@gmail.com">carmixdev@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><p>Ok, thank you  for your answer, s=
hould i need to start before this time, say after five minutes, could I try=
 to sync to the internal PPS even if gps_locked flag is still not true?</p>=
<p>I would have to accept less precision, but the system could work in a =
=E2=80=9Cdegraded=E2=80=9D mode until the gps_locked=3Dtrue, do you think i=
t is possible?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000021ac60064b2c65ce--

--===============5364060583133202672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5364060583133202672==--
