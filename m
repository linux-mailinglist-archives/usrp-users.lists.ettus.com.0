Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGZON0VNxGljyAQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 25 Mar 2026 22:01:57 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 531AC32C0F9
	for <lists+usrp-users@lfdr.de>; Wed, 25 Mar 2026 22:01:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6FB53865DD
	for <lists+usrp-users@lfdr.de>; Wed, 25 Mar 2026 17:01:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774472515; bh=yMrD4YC6L70M8SRYHB9tz8HKgblC54H62ihRlLDz6k8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=H7Ua03VjuB5vLLvyTzGJdlM1stG7hhsUXJNdjftObrKIqdPSJybwbXIbwxw2xV9j7
	 KM9fNLusIFR5zrbmHAJ0jaZaaiT9yEuylJIE9/Vrx+RloE4qFMmsvegefnxpz1wEdf
	 jBzN3pSqGfRhu5yNZESnGpdsTyb5Q8pNWzLTVXn7MeKVAnPsQS1JK9McTr35JqS0qF
	 fX5ZFFUU5AHWQivOoR2f+O1GMC1YGRDVpTHgIckdWvFeKJGpmyD52CkeujlHGhGKUT
	 TJJ4/DyYC+ZNCY6P18YVwPy+ROf42HDUoFIEIL/+BfyLwKBb46oufUuVAD48R1l7oh
	 mD+DbiJAqNlDA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id C053B3865DD
	for <usrp-users@lists.ettus.com>; Wed, 25 Mar 2026 17:01:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YBF8NvHT";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-66132b22182so327688a12.2
        for <usrp-users@lists.ettus.com>; Wed, 25 Mar 2026 14:01:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774472500; cv=none;
        d=google.com; s=arc-20240605;
        b=DEWYO+fhSJEbsNLqfgEF22A58+xx7xkrT7lTenKd2qApr5AxUKcNoVUaPsdQssLBVl
         PhLautUVzIZrhf6SPQZJNC+C2wWZw9IRTvEDCvvqQF+I1/WoZXMbxmm+qkEs46yeLZv1
         Jlu4iWx2jyYebo/Lo+dFRQEbNIbdwgpHQNt34LQBPfeps0Q1cc+JNPViWj/9k+EdrhHM
         CtKzf3d/1pW/chTqLmRnzShNnWMRROVNrYoijYQzuqtaYaL8gtsSYOn8yOZ1Zbi65DLz
         kpmcnbTbKuBUb8XcdeMZYsIA76skFa/AC28+ZB13Try3RrIWlN5ZxVfHxeyf6CyUiBkc
         GjZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=PfsfXMqdgYhC1Gejf7iwBsrjRYZqrgxZEAhJ2SsRN7w=;
        fh=OQVjqbLSN0V+L5a5ArrSjcFzkDJtuGiSS4vXxcEBjiw=;
        b=M+ZVVdU6h3BWa1c3pIp56FD7Lf4au0V7OIH1vAf9hf6HwPVGEuIOVXqOpxhiCg/LT+
         hi0YCx278YwUk0fTeJASvOshc8Edbge/1ihcsY1OWFtVFX7TXmLIEb0Vz/Iho2RG9TCU
         Mogho0UYJKx6bZfG3gaZK1/CtNj4I+gSfEILpINE76egWy0I4glepghtsiB90/CRidlj
         9dFwCCn7S88zeyS+m122G6ALxMq53vqoM5jMAH7pF61CeiSj60Mvki2ChZ/ROk9ksPDf
         xPu1VaoKtjdJv+LIDkNrNlBN/dZcqpw9LrYy7moyeN15C4FJsQSf3fWka+o/pALI+owP
         PM8Q==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774472500; x=1775077300; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PfsfXMqdgYhC1Gejf7iwBsrjRYZqrgxZEAhJ2SsRN7w=;
        b=YBF8NvHT/tsCNAkgSwuidAsz9PHFhXSPFkkxuND6aNQUccJaB+mM/ZEOie7galcbZ2
         OXO6mEPGGJpzC/Fz2vA7dBNJhgdYa0vt9ywDezTodLYzm5WHzQluWuf1q4NnFgL/TfAg
         dftYFc5aZo+v7pQPZtkuqxn6+fxiIR7HjlXvoH7Xy7ysip0PuqVLsqYYTC4OA/VBtDVZ
         Zk9hM/cvmEGdj6fHUXu7ooB244bv/AKQEWT0ho0lAfnmBzryx8e7VvMDpFGfC7VgkL+x
         A/CKYf0oN8X1nTakumEBFEc0k5x0VKRBe0HZQSz3Jd8WN2STJRfW4dTcInlBsW0EkHj6
         KuTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774472500; x=1775077300;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PfsfXMqdgYhC1Gejf7iwBsrjRYZqrgxZEAhJ2SsRN7w=;
        b=NxrrWb/ItPQzR+zmMpnD1n0ZnSFwiHKUNijCJfkeS3Uv3sIXZdhJpWErRPkalmyoLQ
         p0sgi0ZxRv4kh1Qo0P/FKUIBr7jGPi//ELOQ8F0G8+Srav8dlVntkt0wIdaaXDGYSX1r
         xMs7PhonRHH/hoCknLIRWJ0RDu2Z5nDVFTwKK61gNHn1mThJIyXlFoqGm1/Vu28W44fN
         a9rSmzgXeZXW07wQG4yyj0O/mDlP8wdChX1It33nONofhES1dLxkg8odPEP6nqbh78Q2
         F1eYQqPJJQ/YoOXWmAnOJ2PzWbrl/9NYxsdw4TBV7O6qJqLsyVSYRpix8F7B7oUMXwRl
         s7/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUmZZDrXKIuCDzRO9HWtrFe74eIzjZ9GGz+ZaYBT/CqrW62yeIuKo4+nDI+D1AahAYBFKa+0LB3mMXn@lists.ettus.com
X-Gm-Message-State: AOJu0YxtZxE/Gy4qGfEBTGwYRIewLzMJY0DXOjf3RXWmXG8dcHkSoZ62
	6QOwB9/8KaDAHmcSoYbSje2S+qUPEByGXL8cU2MYd/NeHUtU8aRuhBTy1TX4RvN+4E79wcIJAsO
	wFHS3k3ZytSr4I2ya+1nM17it89r23pvrsw==
X-Gm-Gg: ATEYQzwWaTge354IRAN/lJo2t9Mb+FTMAGySvBd7HcqzJyFk4c3HEXyy8Ui82ZwndFy
	QOD9F5MXJGZwVDJNgoS3QpK7mlJW3ixHZntkol5118vx4fYPBQ0Ve/jBO+MPhQ/IHpAzh31nnhI
	XA89aANPyHPzgHiwc+lI1ZtrgPAxBqnEBdUckCMbJ1g6lo28kN02F+u1e6igmlsljlXkP8gD9Au
	5faicOqfG9G/0u+DzAwPFmDE7AjeV/hZ/tp0BWlDs5i5UcdkRUQG9IJZCgOx/t4L+BZ27bgUqZA
	N9zgzTvngRSc8vwPZel5CNLGy+nt78S1nT0niPgGS8weeZIO3fyngYHp+GRy6AYeeYPD6g==
X-Received: by 2002:a05:6402:1d4e:b0:66a:39a4:7de5 with SMTP id
 4fb4d7f45d1cf-66a8262b1f9mr3525102a12.9.1774472499417; Wed, 25 Mar 2026
 14:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <k6s7gi3rzof2jtvmn4ygkebhwcnimthsa2rwnwtf3i6zluvslb@3mkudjoa6ac7>
In-Reply-To: <k6s7gi3rzof2jtvmn4ygkebhwcnimthsa2rwnwtf3i6zluvslb@3mkudjoa6ac7>
From: Nick Foster <bistromath@gmail.com>
Date: Wed, 25 Mar 2026 14:01:27 -0700
X-Gm-Features: AQROBzBCgJU4Tm-qWV3X_n0v0T9ELG63c3Kt-mPOU-jMbjYJJlxjR9IbddJw7R4
Message-ID: <CA+JMMq-7yLgn0MiYA34ysmMbjCDq9GP78vFfoKmRX1+Gd480cw@mail.gmail.com>
To: Alexander Huemer <vai1oivahk6l@xx.vu>,
	usrp users mailing list <usrp-users@lists.ettus.com>
Message-ID-Hash: SEL43J5GCXD4VDMD3QV42OXAIQDRS5F5
X-Message-ID-Hash: SEL43J5GCXD4VDMD3QV42OXAIQDRS5F5
X-MailFrom: bistromath@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: WTB MGA-61563 (LNA on WBX grand-daughter-board)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SEL43J5GCXD4VDMD3QV42OXAIQDRS5F5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0135659631964276772=="
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[bistromath@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim]
X-Rspamd-Queue-Id: 531AC32C0F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============0135659631964276772==
Content-Type: multipart/alternative; boundary="000000000000fdd3ac064ddf9295"

--000000000000fdd3ac064ddf9295
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can use Qorvo's TQP369184 as a near-compatible replacement, if you also
replace R68 with a zero-ohm resistor. The noise figure is a little worse
and the gain is a little higher, but it's otherwise comparable.

Nick

On Mon, Mar 23, 2026 at 4:06=E2=80=AFPM Alexander Huemer via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I have a WBX with a broken LNA on the grad-daughter-board, U6 at [1].
> If you have that IC in your inventory, please let me know.
>
> Thanks,
> -Alex
>
> [1] https://files.ettus.com/schematics/wbx/wbx_fe.pdf
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fdd3ac064ddf9295
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can use Qorvo&#39;s=C2=A0TQP369184 as a near-comp=
atible replacement, if you also replace R68 with a zero-ohm resistor. The n=
oise figure is a little worse and the gain is a little higher, but it&#39;s=
 otherwise comparable.</div><div><br></div><div>Nick</div></div><br><div cl=
ass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Mar 23, 2026 at 4:06=E2=80=AFPM Alexander Huemer via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi,<br>
<br>
I have a WBX with a broken LNA on the grad-daughter-board, U6 at [1].<br>
If you have that IC in your inventory, please let me know.<br>
<br>
Thanks,<br>
-Alex<br>
<br>
[1] <a href=3D"https://files.ettus.com/schematics/wbx/wbx_fe.pdf" rel=3D"no=
referrer" target=3D"_blank">https://files.ettus.com/schematics/wbx/wbx_fe.p=
df</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fdd3ac064ddf9295--

--===============0135659631964276772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0135659631964276772==--
