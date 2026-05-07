Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id g0rTBfQG/WlLWwAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 07 May 2026 23:41:08 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 643BA4EF6B4
	for <lists+usrp-users@lfdr.de>; Thu, 07 May 2026 23:41:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1E0CD391099
	for <lists+usrp-users@lfdr.de>; Thu,  7 May 2026 17:41:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778190066; bh=CJB6Cle6/n286EhRaWQbaBfOdfyxRuWoFl7w4HPdXfk=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=bvsewDbiIeRqiWol3Tv42RwGVs0kz7OWNiP1bSaTf0TIkks7dUO+RfcJYvyPrS0hD
	 utP8VJtBxxO0Q6d8sSqEomNDPFrPOgttcxwnUxvJ/MJhnneTsYU5h++61EGU3MqLPW
	 em8zmEdSgWMYi3m29sPgXicl9l7dr3G1EZc2OnRdg2adswzhrxguOkAiEtcH2B/zYd
	 uXsC4OwQ1zEGANEgSOF9IL2WNPG7PeRhMgDVNB7fi+JAcG/d+nROyNWbSXI+oS6Vt0
	 Hqd0DmIMgDPUg7wx2t/xlIoTaZvm5yDpRBslt4UZLlZYC1kAQGwt2k/ZI/UeUPkUtb
	 Hr5m7Zpp3p8KA==
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by mm2.emwd.com (Postfix) with ESMTPS id C2DDB39102F
	for <usrp-users@lists.ettus.com>; Thu,  7 May 2026 17:40:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="TvAH27S4";
	dkim-atps=neutral
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7dbe07d3ec3so708118a34.0
        for <usrp-users@lists.ettus.com>; Thu, 07 May 2026 14:40:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778190051; cv=none;
        d=google.com; s=arc-20240605;
        b=eGSyWodYrcsFiNMZsp02GWhLXuDvfkVuQyEr09aB/yU1Gx3CSLrxh8t+Kq3lkXZz6T
         drP2+Oskz4yIul1mNgPZa2ne3i1hdP9bVnpZDIu2z0Iokm1W3b0fakj/Z5tRAYvxQk5s
         BiRkXXaH603Q8/ceHvKmVNiBPW678eJxe1UZRQduODzQt8cOZzLUEvkMH3YBYghQ2Xz7
         olmncb2N1dWECKcEqVPmi38FvVFl/pH2fJ7DZ7xdbwzwaoCb5tuS6ECCEIxs6KQU/16G
         D4ncPWHTcJhpXLxhrarcZzp54lPYHpQeH8YLhSWzjCMS2TIe1jE804SeTVwe7ZC+F8tl
         BQBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=6YQk661eDG+uvCJnaEI4CZQc4WOe5nAEOPGFSA1jrt8=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=ZjcJg1pmI8tDITBLcxlktF9US6Z2M8hfJuWKqgw/J0Ogxdk6TV+0GS50192RF/eEAE
         40ZqpLZTThavONhi0UTDN5xb4WZwL+1RPoeYmri8WhEZzZNXiZpS6Nyoae6sVVWExkw2
         +h/QEnqcUrVr5O+O5b7kKicTBUp30U/NfbkXdMweNjIg8PH5XgT7MyBv3xMs1fgrsQJm
         lgfUD+k+2/ARmGgRjiNWYkx7LY6aWepxw6SkRjp/1Wniq4F9jm1FNPoKcFmj5YdI+ess
         UeP719WpMY/ItmAxwjFvPyPrwNahffCr7GP1uH+kqctmMeWW2mxfPtpmYm1hP9z4Jr7L
         IYzA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1778190051; x=1778794851; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6YQk661eDG+uvCJnaEI4CZQc4WOe5nAEOPGFSA1jrt8=;
        b=TvAH27S45CBFnn4spf+Q56FKV3eB2+zvaVAaF7inAlN/+Q9CiUyq7lVCYqROhpPDDw
         peDoDbKS7Uxu5inTPizU0hAsV1vEjkSmqd1kKZiZaiovPxD4V7bOVGBgY3IRDHxW38GG
         6Pk6zKM+1EHP0hsabqDWGnao0lfgBZTFlErNvjXgtBE6tETUWAGv+slHZ6sX3PMB7Ehi
         5/x8KIaWFIFoAeuGn3eg21efKFoaeOZp67Dz/KPrHi9858yT5cRd2hPiB9Sqqq9vK7nh
         sO5NEZFfEZJyh2QJutFRDX0BMH7TjJjtREt5QQ0jOLGpOszac0IMZFbGjNkyyTHC8Pc+
         6JCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778190051; x=1778794851;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6YQk661eDG+uvCJnaEI4CZQc4WOe5nAEOPGFSA1jrt8=;
        b=CYGSF0yWD+Dz5g3xhUKIn3ubERGt2fy5GnPNZxP3C3UfUE4x2OgqqJIBLBzC3mq14o
         m/odH5NjXvMUHdF9eP8xwH9+c9bg+rfzFNIK8iUi5A72nbp/7EpBTsiwMAbUpniJmuzI
         4te3Oy6AiEk1lfYJK7ii3zMNPxbRf/06+g80vGSUFga9u5UMW055P8ocfbBetJyIJQEb
         vVD9lHnKhwqlJ0RFbI41MoqKkg6jeIwkTcKNoZIuXVnH7YTFv5ytHdJCUL0Y3z6TAdYP
         DiArzQQOznBHn/ktosanrae1D07IIDbyAoIIUSaBAW73AbbqDLOl1Bw0pdpq2r8B3ytu
         /WAQ==
X-Gm-Message-State: AOJu0YzXqyvKNQkExrKCb6L+gt+DWAIw748SYEr46UIR1hWWxgJTd57s
	fn1rUAovfquojQOqcKjvbq8YYcFraQHfyyD6prv0wqJgwE1FoVb4UxzWeA6wGNXogYYWoLp8o0K
	rd2tgXW7oImXmltL4vpPzWVkC+Mm51Lzc0kO52Y+P0PlrlOzpYJa+8BjRtQ==
X-Gm-Gg: AeBDieu4FWfduF3E2X5IccefPtaRrQ1oH2cLTTe5WOHuxLnywbAWRp6awtQ37UjvwOv
	3BrB3KnZHaX6VFMhi3726RWYG/ZSSDZiANitboZTrLYr/joBUyv0f9azx3pSKYLosdziB7vXGq/
	PRFnwChsPEe7s6XskTqU3enLpfebR27IV2pl/pQMSXX81qH+K/Qla496cGE3V/B08pA3lDZGuJr
	1TVjoIO3hoSqmDJvdwbP8WEoJPbgzAwNAbAg0B59mGUPOWzGPr5YdluAesi4Gcp0nb0bP0USyTD
	jvc=
X-Received: by 2002:a05:6820:1c92:b0:696:2674:8a07 with SMTP id
 006d021491bc7-69998d13defmr5004628eaf.33.1778190051197; Thu, 07 May 2026
 14:40:51 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Thu, 7 May 2026 16:40:15 -0500
X-Gm-Features: AVHnY4LOv4OIUgZHyGuBoricqaBo6EjnyO4laScpXXUo8RM3GCSn6uiiJ_SSElE
Message-ID: <CACaXmv90P+31aeh8Wvqr=+h+MepdszEgEpvMsjS75UAUohW1Rg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: TUUZC2PPJX4RMKTO5EXDJDWJMWS3U46R
X-Message-ID-Hash: TUUZC2PPJX4RMKTO5EXDJDWJMWS3U46R
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?NEWSDR_2026_=E2=80=94_June_4_=26_5_=E2=80=94_WPI_in_Worcester=2C_Massachusetts=2C_USA?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TUUZC2PPJX4RMKTO5EXDJDWJMWS3U46R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2851116524953716755=="
X-Rspamd-Queue-Id: 643BA4EF6B4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[neel.pandeya@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,forms.gle:url,mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,ettus.com:email,newsdr.org:url,wpi.edu:email]
X-Rspamd-Action: no action

--===============2851116524953716755==
Content-Type: multipart/alternative; boundary="0000000000005853dc065141223f"

--0000000000005853dc065141223f
Content-Type: text/plain; charset="UTF-8"

The 16th annual New England Workshop on Software Defined Radio (NEWSDR)
event will be held at Worcester Polytechnic Institute (WPI), in Worcester,
Massachusetts, USA.  The event will take place on Friday June 5, and there
will be evening tutorials on Thursday June 4.

Please see the event webpage for details.

https://newsdr.org/workshops/newsdr-2026/

Advance registration is free but required so that we can get a headcount.

https://forms.gle/VvUVnhZtBPZRsxsT6

We are looking for poster presentations! Please use the link below to
submit a poster for the event:

https://forms.gle/hobTwXv5cKN8gxhK7

If you are interested in exhibiting or sponsoring the workshop, please
email us at "gr-newsdr-info@wpi.edu".

We look forward to seeing you at the event!!

--0000000000005853dc065141223f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><span style=3D"font-family:Arial,Helvetica,sans-serif">The 16th=
 annual New England Workshop on Software Defined Radio (NEWSDR) event will =
be held=C2=A0</span><span style=3D"font-family:Arial,Helvetica,sans-serif">=
at Worcester Polytechnic Institute (WPI), in Worcester, Massachusetts, USA.=
=C2=A0 The event will=C2=A0</span><span style=3D"font-family:Arial,Helvetic=
a,sans-serif">take place on Friday June 5, and there will be evening tutori=
als on Thursday June 4.</span></div><br><font face=3D"verdana, sans-serif">=
Please see the event webpage for details.<br></font><br><font face=3D"monos=
pace"><a href=3D"https://newsdr.org/workshops/newsdr-2026/">https://newsdr.=
org/workshops/newsdr-2026/</a><br></font><br><div class=3D"gmail_default" s=
tyle=3D"font-family:verdana,sans-serif">Advance registration is free but re=
quired so that we can get a headcount.</div><br><font face=3D"monospace"><a=
 href=3D"https://forms.gle/VvUVnhZtBPZRsxsT6">https://forms.gle/VvUVnhZtBPZ=
RsxsT6</a><br></font><br><font face=3D"verdana, sans-serif">We are looking =
for poster presentations! Please use the link below to submit a poster for =
the event:<br></font><br><font face=3D"monospace"><a href=3D"https://forms.=
gle/hobTwXv5cKN8gxhK7">https://forms.gle/hobTwXv5cKN8gxhK7</a><br></font><b=
r><font face=3D"verdana, sans-serif">If you are interested in exhibiting or=
 sponsoring the workshop, please email us at &quot;<a href=3D"mailto:gr-new=
sdr-info@wpi.edu">gr-newsdr-info@wpi.edu</a>&quot;.<br></font><br><font fac=
e=3D"verdana, sans-serif">We look forward to seeing you at the event!!<br><=
/font><div><br></div></div>

--0000000000005853dc065141223f--

--===============2851116524953716755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2851116524953716755==--
