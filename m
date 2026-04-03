Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNOIBVjhz2kS1gYAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 03 Apr 2026 17:48:40 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 21365395F2C
	for <lists+usrp-users@lfdr.de>; Fri, 03 Apr 2026 17:48:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A00D538655B
	for <lists+usrp-users@lfdr.de>; Fri,  3 Apr 2026 11:48:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775231317; bh=KSzgQDFbYvKwBdaSaBZ9rRuTanzwqXIRPWx6bIPrNEY=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=HsNvcTrcDPFI4e9dBkh+u0E3vYS2WLZipyGCGY1wWRenwZxmpWGGO4c9i37YDekej
	 IgLAUnzPI7XM8Tugb7pBT9E69jjjQ3tXSnWJchYd2SV3mgSw4dgCNoEDnQsPhcuxNK
	 CqL6b5HUMRTixcM9gUGFi+FFMwofLgCwR6IySLgzIR3hoj16WAkyEoWjlWIaBhUwBe
	 ThhKQ+xRo+0f1+kbyNpzZ7UY/wOGQjVobIzHSfqo9u3+n6xya4tDDc9TuFdbkVjWDP
	 ULB3YGvwtcqWu0RcMZ+B8Qh104D4ax6onBVRNpHikYG9Rsxj0S1eGp0O3S6ACV54S8
	 yDavV3H0svIoQ==
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 3CA94384C6B
	for <usrp-users@lists.ettus.com>; Fri,  3 Apr 2026 11:47:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="XNkc+HRF";
	dkim-atps=neutral
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-67bac077116so833855eaf.1
        for <usrp-users@lists.ettus.com>; Fri, 03 Apr 2026 08:47:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775231247; cv=none;
        d=google.com; s=arc-20240605;
        b=OGCAs85+vDSrJoWypjGReu4VXNMbb0eHu7HlDEiaGuwCSjYA0OcfaWn1JMgC0R9jyv
         YbOLwahf2rydIOpOzIzMtWI3sF7/oicVDFZhb8wQ1qU6DRG0cwensNh+ZRbgB9C2+32h
         fOZWEm5Zpwznfkig3PhtFJgPoWPWuCAb6rODyp7Er26T8msHb2gyH5Yk1qqmQked6xYq
         zjV5mhAhMaD/n/g+Fz5e16LJ3WfN+TKrXCls1gpXJPZyyUT63BLam0RTB6Kpf+msSun0
         djbrrQgO9vXIyFqKXf5Bjf8RiKiFqfNWTnl0Hy9GmnMQgHFa6oI+y9pWBTaG/OnVai9N
         8sgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ndR+5QGc3k+JQAoI+0BKLJXH6eEOtFMMAtb9M1LDosY=;
        fh=7x+5Qq5FC8MUtCGcJvrnDrCV484FJE2pnnNf2U13jts=;
        b=QvP08uWBv88kM6TqNYTA5M3XXjo/zl8pfCyVuLzcuq+K2R49FVISDvkgaFeLFVRA6A
         KY8s3Lt5Rgmc2MDUHcvx/Iw6mdXCwVgfQMARKfDQslUGcrQXrrUK1FiT0rH7UIJ19hzR
         /RRghfyTxYA8R76ufaTUWG5ikxJYnW10wvCa7pq+7AhPDAO3eRlmGtcgT5nEvgPPuVPa
         QmmJaG5rBd5VYWFnKTbAxqbCFukrAZxRVeZOfTH8mf50imcCGg5ycDsOTWAjNn5N6G2A
         yBA9dSCLi0F7KevHaGMTFSUtp8bdGDGs1W3vNpFuFZEMyK6o1AHidzxQSG/GydaO9S54
         zwqQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1775231247; x=1775836047; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ndR+5QGc3k+JQAoI+0BKLJXH6eEOtFMMAtb9M1LDosY=;
        b=XNkc+HRFcivmMQUtXOGsufVrP6OBEH3MrAI5CqpwEZYWxNK4+TJ0qzoKabu7cz7V5a
         6F8uzF7OqtEebKMwk4UL0UuVGqVE7KrdDf/FHewFpb1f72OGogW3zytY0bvkkthYei3O
         e72M1UN1y/oQsASCnC6+nrKsMsiTUk4Bt2n05Epe2U5v5mraZW0CIXQUukebhkJYrcdD
         cFWO0Ch0SrQ6Vnv6wAMJyRGk2r5L3AYeq4s0o9S14kMoaBHheocSax+d6mP0hQd6c/aj
         5kPIXAv3bxShUHnbYhlvu2yAtVum9gXpmpkkuKtNaBVpros2NVPuCtdKyS6iwDDgB0gl
         wVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775231247; x=1775836047;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ndR+5QGc3k+JQAoI+0BKLJXH6eEOtFMMAtb9M1LDosY=;
        b=R4DE00UIHGGRLwCAwEu9GHiA8NqFHqA0IJaFFOwZqkbsOQkmWFVtIA+0q4mjTFvKq2
         3PWC6IDyZfwYeVqkiKeP6EADOFNDBg+Qm/uWSO93Z2Rk6t2jEa7a0f43Yi/+/pg1/HOi
         KE640JioALBNQHU4rNko+hEdchomSx6WKg+m6PohT9uEN/Hgbpe3m5nYHmraXga9JJnZ
         Qy8DT3VWckjzR9UmYVermKus0GmONt5WgxHhyh1WspBjGpgqxHGWVBSiaL45b0m+kMdP
         A2wojPxzqwOj9cU/tj9spxISuFytfLy1dWjuIzvVtDzpLZxBU+lgMD3M6zqaYKFHDO5r
         nNQA==
X-Gm-Message-State: AOJu0YwBhoMQyuVjHNdY2dsoJ8EVURDk5Rl9GJen6bC+kLRukfWJP8+A
	964A/HYUuLqahNKXni2N8A3kNef569XNer5BNx5pzXCJRWWKd7uP6TkoUBSmxgo7ag6HRI9uRjJ
	3MNSy1aOHq94oWVchnmNALs+NKSjj8aDe5G5e+yksYubJtXQYGSGHFSS/9nbG
X-Gm-Gg: ATEYQzxCrBDYHHZbXxg2A9df3sTKnuRVXBbkP+BY9OOsFDv1cqlyNzonsGVoecr5ftf
	L/MTSw/fHYmVywN7zwE1z7zhiKUS1BvxVE2FxOGV0pB5zF76YjVHMe3moA2o34JTpKurqiiwc73
	TpwbiYcwh2Tb0kZjNoPfCPhdtM7Dj1Cx0KlmXTlDQppVUUZo5tMcMOjtWfP5Q26MoVWaHvtwTZs
	+vUmPbFU13QWbFynYAabQbas/J+r0O4yx+CUV0bFojxUPRHne3x4TA5etcb+oVAul64nGQj0/qX
	YDU=
X-Received: by 2002:a05:6820:4b95:b0:67d:e7c3:3c76 with SMTP id
 006d021491bc7-6822240384emr1985916eaf.64.1775231246717; Fri, 03 Apr 2026
 08:47:26 -0700 (PDT)
MIME-Version: 1.0
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Fri, 3 Apr 2026 10:46:50 -0500
X-Gm-Features: AQROBzAgd8xW2FjMT7vVeIvOzXcADwgfVDZLHE377qG_PFfX-X4CDptolq3ayn8
Message-ID: <CACaXmv_smdkZoOnc+Z5GPf_q5DrTerhp71CvC6u4go467iCNpw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: AJJ3QDWKL27YE3HNWWFHN3SFV2BSTVDU
X-Message-ID-Hash: AJJ3QDWKL27YE3HNWWFHN3SFV2BSTVDU
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NEWSDR 2026 on June 4 & 5 at WPI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AJJ3QDWKL27YE3HNWWFHN3SFV2BSTVDU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0789190589280792912=="
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[neel.pandeya@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[forms.gle:url,mail.gmail.com:mid,wpi.edu:email,newsdr.org:url,emwd.com:dkim]
X-Rspamd-Queue-Id: 21365395F2C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============0789190589280792912==
Content-Type: multipart/alternative; boundary="000000000000dae7a0064e903bfd"

--000000000000dae7a0064e903bfd
Content-Type: text/plain; charset="UTF-8"

The 16th annual New England Workshop on Software Defined Radio (*NEWSDR*)
event will be held at Worcester Polytechnic Institute (*WPI*), in
Worcester, Massachusetts, USA.  The event will take place on *Friday* *June*
*5*, and there will be evening tutorials on *Thursday* *June* *4*.

Please see the event webpage for details.

https://newsdr.org/workshops/newsdr-2026/

Advance registration is required (so that we can get a head-count), but it
is completely free.

https://forms.gle/VvUVnhZtBPZRsxsT6

We are looking for poster presentations, and we encourage anyone interested
to submit a poster for the event:

https://forms.gle/hobTwXv5cKN8gxhK7

If you are interested in exhibiting or sponsoring the workshop, please
reach out to us at "gr-newsdr-info@wpi.edu".

We look forward to seeing you at the event!!

--000000000000dae7a0064e903bfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">The 16th annual New England Workshop on Software Defined R=
adio (<b>NEWSDR</b>) event will be held at Worcester Polytechnic Institute =
(<b>WPI</b>), in Worcester, Massachusetts, USA.=C2=A0 The event will take p=
lace on <b>Friday</b> <b>June</b> <b>5</b>, and there will be evening tutor=
ials on <b>Thursday</b> <b>June</b> <b>4</b>.</font></div><br><font face=3D=
"verdana, sans-serif">Please see the event webpage for details.</font><br><=
br><font face=3D"monospace"><a href=3D"https://newsdr.org/workshops/newsdr-=
2026/">https://newsdr.org/workshops/newsdr-2026/</a><br></font><br><font fa=
ce=3D"verdana, sans-serif">Advance registration is required (so that we can=
 get a head-count), but it is completely free.</font><br><br><font face=3D"=
monospace"><a href=3D"https://forms.gle/VvUVnhZtBPZRsxsT6">https://forms.gl=
e/VvUVnhZtBPZRsxsT6</a><span class=3D"gmail_default" style=3D""></span><br>=
</font><br><font face=3D"verdana, sans-serif">We are looking for poster pre=
sentations, and we encourage anyone interested to submit a poster for the e=
vent:</font><br><br><font face=3D"monospace"><span class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"></span><a href=3D"https://forms.gl=
e/hobTwXv5cKN8gxhK7">https://forms.gle/hobTwXv5cKN8gxhK7</a><br></font><br>=
<font face=3D"verdana, sans-serif">If you are interested in exhibiting or s=
ponsoring the workshop, please reach out to us at &quot;<a href=3D"mailto:g=
r-newsdr-info@wpi.edu">gr-newsdr-info@wpi.edu</a>&quot;.</font><br><br><fon=
t face=3D"verdana, sans-serif">We look forward to seeing you at the event!!=
</font><br><br></div>

--000000000000dae7a0064e903bfd--

--===============0789190589280792912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0789190589280792912==--
