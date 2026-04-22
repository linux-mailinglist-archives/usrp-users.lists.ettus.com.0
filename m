Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gG8LI0486WmEWQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 23:23:26 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B98B44AE0B
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 23:23:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8CC6A3869A1
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 17:23:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776893004; bh=0PsyEcUYvq8bRz2C41+y6FjLkdS9RrDmd/xldeY3cRs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sJMxETsGKY/V43MQjCPZdxbu+tFtHfgZCHO9KwsQFaF2ETSTOWfAnFeLfc9M2ZzCo
	 HHVHQSrxjqmC3rwfnhI9us+0Q6d0AiicYXAmtM0Ns7ZbaJ8JseKebcZ89otLujDWDR
	 5aU+rx0XyxVhhadC5LGcMA4Yc04jDzxPJoS6UCxefgzmRW9IOVewN7MKiFV9CjrGM3
	 L8wJVOBTdfcTE5fCG/ffH6BJDT1UUUu5HHfM9Xb2M9T8S7XZq5u+ExgtEp9wDLCXn4
	 fyrV6z3BaVtK1yn+JRqy3hB/YpksOHpmhx9eMmpQ/oYS2WTaUE4Yh8A8JM0yc2OVWi
	 pmQm4L2IV0P1Q==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id CF89638698B
	for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 17:22:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Pgf45t3z";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-baa8c78ac7fso285966566b.0
        for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 14:22:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776892964; cv=none;
        d=google.com; s=arc-20240605;
        b=WcRF+gxl+v8Sn9IrmqMgL7ilRm9089vUE8a0yHhgFCAtF8Jrr1/aI9wDCS34rWnCyZ
         0HKkk06O5xLUYxeVYoqm6uTzhUlHWzQOn5qBtIYs6TRwMpQjV1SISaqiT5DnjUmBEOpm
         IKlYGWjNYr90CpHtHdTvnD9rjLhMSRVylSHmK6o+HIjGUeTi6mAsC/NaoNyo4Q20tI3B
         2R3AHEV+4XKqi+gCZYR+Gxmhx7qKa6zMoT9fuI1y7/+Snqw/pzLYUw/kG5RuhEftjuEC
         LKaMEgNLhVrHkcA8OjVMkW6yFqE3PG5V353fStBJLt3zWWfWQEU+0RFi1oB6i89rE9BS
         Sd7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=svQybSmq0GzeOimvVXgrp4NsNw7T4GHrhqk86Gc107Q=;
        fh=Zlr3AHqe3w6GGfl2TKoQ18w4acHHo9xMRfpNiRaw2SU=;
        b=KpxU/m5Cup6zreXAY/TbkPtMHTN1P0FgmM5k1i/I+tW0uS+P4D7F1RRTMIOBT2pQ0P
         av/t0w1NgpU2YEozfKpCKAP1nWKVPloUzs3Lb59Fi0wcfmWKDjm/2bb37532J+b4mRj3
         W5ig25mliz9lWs2MbtQJWkBNCpcnZqiAaGApjUHKrrP3SKC2UL9MSdS3Yxa/HIOEKSaT
         c42XGZYoWiGiinREKqxqaWfAaN5KdJPY399SQNKBWXsHaJg6YBW2a6tBOII2dxgYVqhM
         iOQRD28+4xEVBA58IvgxhnP+MT3xveZScn09I7Jg/7oA+fqwyjlKIPSf+wxanmUdsM8T
         IVvQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776892964; x=1777497764; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=svQybSmq0GzeOimvVXgrp4NsNw7T4GHrhqk86Gc107Q=;
        b=Pgf45t3zB/JFw8bvqX955A4ZZW4AfafD5urLAGMX8uGiqOFz+OxSDGumhoiEFgVSgx
         ZDivUS8jUlxoNIN0AxenQcEVDA/rr78VUxm5jfcpLOnYaS2zG3kqbTqkI7UohoVXsVGb
         ZjaJGzo0v3t2rE16vHLVEQEBk6zunCXXWOF+BE7mjUSgQ3glgVs4h7gQbdlOVYQPfDt1
         0aROF9Zeug/FXWcJxehVMpJ80OW9VaZvd6wC5gi5JXTMIc9/QGE3CJVEeRsDDGLyML8K
         ZCBbtBl0UTaKBBNPwyeTRUUreDSnMYQLYbYXg1ek9oa3fmbfbAnF6lRJsFn6rJeT9lJC
         qiIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776892964; x=1777497764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=svQybSmq0GzeOimvVXgrp4NsNw7T4GHrhqk86Gc107Q=;
        b=HmHyLITYb8ThFxPWDF9miU209b5FukGwD+v44gK1VANc6v6oxHjUq0VRc79X4FB4Bk
         kLrYDZboAVhn0YOB9I3GscqqV8lj3TndiKUyZd0t8maRavYXzJ+MsfxqqGIf3J3Ma/Fv
         5axeS7YhWoDCO9H3BT8JaoNVc2Ttk/zOEUBtv4Y7LygrRBzaHKnLewpuPzrBCbSCegym
         q+kNQ0xjVGrnjVlnaIS3Vehrke6B8DE4tEKW80eP6DhA/XlQzftswMGqRaJd7daie76l
         fhz0xJBt4BOPx45OJiD7el3ck2rdwZbvVnQ0IeKF21DHzD5mOV3xFC+WtKQjn3LP51Ap
         GwGA==
X-Gm-Message-State: AOJu0YxmQgmLzEVshPb921EOuASKk4gaUFXUZootIw9EeWJ+u0xIPFMB
	72dIjheErXI4sdluM0MNpCSNtm4LZh1et9DBjxqmB5HuB+ue8NHlfj1IjGhj+18MpE/xIQo+JRe
	Ok19PYdabS7OY7ul8cFdIGKnEowuZyW0=
X-Gm-Gg: AeBDieuiJSSECuZ2LZIHj6WyUpzrRXMEO+IJyALMNFA9jnTyWR7HtKIV2sMRlIVhozY
	cQpKcJlM2K6tl/y9hfiFFQ+iVzbcOQcxD8jaNIHPfX8Ch+YegA0AVxeZP8wB1+jNETJEL3RGI7A
	twWGJD0mEBEoEPsQHT9dQYI+yy2R0PxOa6OKieMJqLi2+CylP/8sgQMpJ6EkkelM2n9cZhFeItV
	CBbh0cFSdWAeCmPZFICQDULINTNOWSG8Ss762KBOahq1psLZ4Arbbq1eVZXpL/nCKnZHh36SqCY
	whQW3PPDyvm5Yyeoqw==
X-Received: by 2002:a17:907:7f94:b0:baa:3cf6:4f53 with SMTP id
 a640c23a62f3a-baa3d0598e6mr443019366b.5.1776892963200; Wed, 22 Apr 2026
 14:22:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQrK_wswceCEgReCGHVMw6mpKEzFvznmVRAs-C1DzOy+g@mail.gmail.com>
In-Reply-To: <CAB__hTQrK_wswceCEgReCGHVMw6mpKEzFvznmVRAs-C1DzOy+g@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 22 Apr 2026 17:22:30 -0400
X-Gm-Features: AQROBzACiPyQmDzukX69TndfZVuOBGFNEpJkiBNLBxRxRkOQwOPHbXY3nOWeVP4
Message-ID: <CAEXYVK74FA4ukyJmW1sACH=88CqMwpZGADA=XLLfPo3wM9ehFA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: KLMBFYWZL7Y7SMYUNZ3TEV75MA3LZZCC
X-Message-ID-Hash: KLMBFYWZL7Y7SMYUNZ3TEV75MA3LZZCC
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: New Timed Rx/Tx complex gain feature 4.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KLMBFYWZL7Y7SMYUNZ3TEV75MA3LZZCC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5482280079331794032=="
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[bpadalino@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 0B98B44AE0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============5482280079331794032==
Content-Type: multipart/alternative; boundary="000000000000e0243f06501321da"

--000000000000e0243f06501321da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2026 at 4:59=E2=80=AFPM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> The change log indicates a new timed complex gain feature.  But, after
> looking through the manual, I can't find the relevant API function calls.
> Any advice?
>

Seems like maybe it's in a weird place:


https://github.com/EttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88a67=
f2ea929/host/include/uhd/features/complex_gain_iface.hpp#L64

Does that help you out?

Brian

--000000000000e0243f06501321da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 22, 2026 at 4:59=E2=80=AFPM R=
ob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:</div><div class=3D"gmail_quote g=
mail_quote_container"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hi,</div><div>The change log indicates a new timed compl=
ex gain feature.=C2=A0 But, after looking through the manual, I can&#39;t f=
ind the relevant API function calls.=C2=A0 Any advice?</div></div></blockqu=
ote><div><br></div><div>Seems like maybe it&#39;s in a weird place:</div><d=
iv><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/EttusResearch/u=
hd/blob/9c1a361ad896f7ce0d9fd2f861ae88a67f2ea929/host/include/uhd/features/=
complex_gain_iface.hpp#L64">https://github.com/EttusResearch/uhd/blob/9c1a3=
61ad896f7ce0d9fd2f861ae88a67f2ea929/host/include/uhd/features/complex_gain_=
iface.hpp#L64</a></div><div><br></div><div>Does that help you out?</div><di=
v><br></div><div>Brian</div></div></div>

--000000000000e0243f06501321da--

--===============5482280079331794032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5482280079331794032==--
