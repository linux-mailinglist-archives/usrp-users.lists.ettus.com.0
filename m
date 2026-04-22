Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AN8rBFY+6WmEWQIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 23:32:06 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA2F44AF3B
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 23:32:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 534CA386993
	for <lists+usrp-users@lfdr.de>; Wed, 22 Apr 2026 17:32:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776893524; bh=l13wYWIcFIP/fBN1fgENJp3iIX8AYulfjgOl4GHrg1U=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JoBPeBzGMEAHw1EcXG9Q0u0T1Be9La/cJWHj12sddxBSnJo+t/WqoAriBGnNL0iUD
	 q+UV4L7c9VmuYVTn5yWEckAnq/Mz+84wdfmBCiqg4OYZmDgK3CWwM+yHQPSH7j0FUx
	 bwpfRvM8+EWUcwXPYojHoYkEvP3fJEXQ1ciDyBrhqtDvPDpwQArd4niGYKVK8AA/04
	 SpUQPRx9Da/9kR61Xd5FiRLkjxOgURlRZpDVkAbjeSnwaZAefKCTUIRi9Bzn/EDvyF
	 Apwo+dxnaSdj8VXfiBPTOnp4AOAeVnGgtdKrh0FNUye0O6DHz1GGJeXTiEyT/MBJkB
	 6qrL7MMIqN/Jg==
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F6E7386927
	for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 17:31:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZaJK/tgV";
	dkim-atps=neutral
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-793fdbb8d3aso62910977b3.3
        for <usrp-users@lists.ettus.com>; Wed, 22 Apr 2026 14:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776893486; cv=none;
        d=google.com; s=arc-20240605;
        b=HSTjZ6iCimy/pj53IQb14CVw9VDxd2uCcantFEfd3GWw8RgcRP/IEF+hfmVPf5Rnnn
         i+9NaZG33fCaRNPuWzEChSVERMJEE6DwsWVeN+H4Fa9rwXcKplc7lQk9nFCYZfPhVWXx
         fz++qdczo8oWBkVKixdRhyI5KoKap6cVeA+ba3U85arq8+Oa8G7qwhMRDxEwT8Zk7gQN
         z07JNR7ZaE+Xe0c7NyalCO9ujWFkg2507QX2aNIVs6XqJtdz9fy0LmLAhnGYrWj6c/gD
         NjVB0PNiabWgQZ63XUVOAsI0zP8SuCdfV9/cQyn/tK5Qm43h71ugardpxpKPSe3eK26F
         wJ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ToadDX6lSRXlyrqSdjmE+h6t+uZ3s0EnUtg5TqAmIV8=;
        fh=bveq6NBuWncXn6Uhzsw2gIDqOuaW3zcquWjSDVV701E=;
        b=K5To20nMRagg65WGCmUYhsQwsxdibaG+vQgrx32ExvfyWjadihrSxESouxkhEBxkvm
         ApmGq6VfjcgIx1+JtlVmpPDPxCcavdVALIiYEzRbi8g8AhZux2SouM6Fkydnmr7aACli
         Yl27ZtNqe99lFW5xMW1xzsfkj2UsmXvKssGz3+2u8R2F4Mco5WjbvRIVXl0URjCMnMvg
         x//5hqecJLC80iPCu0TCjZ/wZ6cFL2DHSfPsM31E+JF1HQmie/O5Sdhpl/Ft4MRHrhLE
         VC9bRzgc3/9TJ19umRqaLsWRH90wRONw/R7P9rs0MKoZxxc5zYhui9JP98TN/zC0Bd9/
         n9Dg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1776893486; x=1777498286; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ToadDX6lSRXlyrqSdjmE+h6t+uZ3s0EnUtg5TqAmIV8=;
        b=ZaJK/tgVHkb4Yk2jMkA2HW1AtchlhfZzGSmYTZKcGV/+ON+lOCdBYG4Yte7mzjNBXi
         PFlht16epVPmLsBp4bSgtlUT4VMrFgoPa/qa7moE/nKnTOBpKH8EJugscpIhn5tdxAbR
         hK4AkDzw7KOcBOucMHfI2pcrU6hv5eu4onIIcroyHa9aACTwqwwTGwbp4z2PtFdSR34T
         FFYzF4JC4EZorRYplRJdaHRYeAU9LFz1wlLkL30kRlzISVfPQyo6uWRpW3TWaLHHRU3M
         /tYkwy9j2jjHiyDp5vpMCO937a9SyRVC/y97CcuO9MTB1GmYkBJ6qugx2OltBPNIh1s3
         YyjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776893486; x=1777498286;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ToadDX6lSRXlyrqSdjmE+h6t+uZ3s0EnUtg5TqAmIV8=;
        b=LhyEt7mxTfaniBelaDZwKgD5F9dNqmzPfbc/Fnf6Cj73sFNxMFGez/67W62eBHXu7x
         AwcIEtsqzf28xOFCw+RsLT9wRmedHeeFQkU/37tda29TbLL5jg3I6lL5vgkO+qg+cuZH
         EcZJi/fYc2PBquLFonin+BiXLqqNoWb0OZUN09Jezg7dmUSYQCOYOtyjaJVYZa5S7/Tc
         tBU+UtpBCpWuN9ium45PSemmeKlkNfQrzYKTBwtMHnCJaKf5W/5K4cLBQS4YxAMSYhRU
         h6E//3ne0dr6vYWGgZheUX1nAfeYEmS7IbQ7mXv/jP7ssgIm/ULuadVc7+PwW024ey5S
         DPiw==
X-Gm-Message-State: AOJu0YxwDlQC0v8b3JuI2nXvfBOCLy0F7sR43cybHsxpBu6VWH6LpJm2
	1cvU1sUn8nBdeyI7s+4xNmPE7/h7+NmTSwiz0XFA8OF0WOPboFk3Lr14HNW9FsH8BCf/ur6+TSM
	pI4k8zvUU/V1FAvuTNV88S1fBfK89DEp8zjLZvCYvpAQ8bzWgy+dW5g==
X-Gm-Gg: AeBDieuAkMAF5Wz19bhOwlovjmyxjfExY5xX6SKieZSAtKgaB5nQx7iFLLK0xxIRAl+
	4UAcqWOeSbW0f+WvhBvtoGTMiHfUwTgJgO80nViI9r6gex3v5ZmAMGkDlwCQjCDQF2G8tUIKwIu
	8QpsZvX6C/Wbls6KZuwvw9nUFF/vHzhj8ZkYU9wud8zUHY9z/1SvhIxPdXbBkJ23V9vGNwhbqGd
	of6RycMmT4xjCkTcjF1MUpSO6G8Oe6bSydCDoxVLWPE9wfkwi5Ns5e26DdzFASzWciOMzVCr3QO
	Wq662B9YerfnKVq1vrpAmpOU81pUa9NkuFZLST1szuDKYhiWNA==
X-Received: by 2002:a05:690c:39a:b0:7b3:3a49:756 with SMTP id
 00721157ae682-7b9ecf8a7abmr248973547b3.25.1776893485785; Wed, 22 Apr 2026
 14:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTQrK_wswceCEgReCGHVMw6mpKEzFvznmVRAs-C1DzOy+g@mail.gmail.com>
 <CAEXYVK74FA4ukyJmW1sACH=88CqMwpZGADA=XLLfPo3wM9ehFA@mail.gmail.com>
In-Reply-To: <CAEXYVK74FA4ukyJmW1sACH=88CqMwpZGADA=XLLfPo3wM9ehFA@mail.gmail.com>
Date: Wed, 22 Apr 2026 17:31:14 -0400
X-Gm-Features: AQROBzC3Eyy6l3K3--AEH04BvslrKUZsoxn6HKUuB8M8esaQ5I2YV8DRw4NsOS8
Message-ID: <CAB__hTSNVkq7ZAqXw-uhmp8Sw-OSFp3_7m7dbsDH0TN0nq7jRg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: EP7XLG7QRXVAFKWWEXGACW4CE6GYRZEQ
X-Message-ID-Hash: EP7XLG7QRXVAFKWWEXGACW4CE6GYRZEQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: New Timed Rx/Tx complex gain feature 4.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EP7XLG7QRXVAFKWWEXGACW4CE6GYRZEQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3150054412694919790=="
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
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[nd.edu:s=google];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,nd.edu:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[rkossler@nd.edu]
X-Rspamd-Queue-Id: 8BA2F44AF3B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============3150054412694919790==
Content-Type: multipart/alternative; boundary="000000000000064efa06501341ee"

--000000000000064efa06501341ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes. Thanks!

On Wed, Apr 22, 2026 at 5:22=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Wed, Apr 22, 2026 at 4:59=E2=80=AFPM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> The change log indicates a new timed complex gain feature.  But, after
>> looking through the manual, I can't find the relevant API function calls=
.
>> Any advice?
>>
>
> Seems like maybe it's in a weird place:
>
>
> https://github.com/EttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88a=
67f2ea929/host/include/uhd/features/complex_gain_iface.hpp#L64
>
> Does that help you out?
>
> Brian
>

--000000000000064efa06501341ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes. Thanks!</div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 22, 2026 at =
5:22=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">b=
padalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 22, 2026 at=
 4:59=E2=80=AFPM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div>The change log indicates a n=
ew timed complex gain feature.=C2=A0 But, after looking through the manual,=
 I can&#39;t find the relevant API function calls.=C2=A0 Any advice?</div><=
/div></blockquote><div><br></div><div>Seems like maybe it&#39;s in a weird =
place:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://github.com/E=
ttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88a67f2ea929/host/include=
/uhd/features/complex_gain_iface.hpp#L64" target=3D"_blank">https://github.=
com/EttusResearch/uhd/blob/9c1a361ad896f7ce0d9fd2f861ae88a67f2ea929/host/in=
clude/uhd/features/complex_gain_iface.hpp#L64</a></div><div><br></div><div>=
Does that help you out?</div><div><br></div><div>Brian</div></div></div>
</blockquote></div>

--000000000000064efa06501341ee--

--===============3150054412694919790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3150054412694919790==--
