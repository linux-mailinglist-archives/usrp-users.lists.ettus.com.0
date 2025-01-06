Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B6BA028D7
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2025 16:13:00 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EA185385529
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jan 2025 10:12:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736176378; bh=Jtu8yRQSMM3cUVyWH3F7bqSdBTDenoYvv49cRz3A8Vo=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=l2APvvcEUDxgqqi3gEUkwy1H6E7jqyVkGitdfDQA+WRnxrg+DAPrG/7BzEy7bH/A8
	 lWUX1KAC79r1IK+HxLyASvkQjOudc/zcIDFHWtHe2g7PJXSQoHfmru1VvIH52csUT0
	 q+vYgtmwrQhlwfUsjdMiTww1lDwMghOIpkCHUVVsOe1I/4vVbAU+u0LXU9b31OFtz/
	 De/kAAxZ9jrDW65wHfY6CA6Xdlim+uxvjZNSumEQAQnD327CB6WK5vkbOMLCjRzKjn
	 hzpMW5UlGs/vAKMEdVK7xbrkp831/9VYqMn1XX450pY1DWCPcFlz4Fg5ldlFSKNigf
	 B+059J0hCyy8A==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D1702385250
	for <usrp-users@lists.ettus.com>; Mon,  6 Jan 2025 10:12:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="ZNbu3xqj";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d88c355e0dso6977463a12.0
        for <usrp-users@lists.ettus.com>; Mon, 06 Jan 2025 07:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1736176330; x=1736781130; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R8QC65ncVjurCHivMuUH7E11/swumevGZjsRli4K0Ok=;
        b=ZNbu3xqjccmU3EQ0Bnk1k6ELUbVHJhHhCRq5b3TFcBxwCHWP7NATugGeul+DyQV2hJ
         SVBsruUVIPmQrIltH0+7BhK6+Box6KkvyE6asa2THVJIuA0hDGVoY4UicADGgy7R7/wf
         pDvRF8BuRVenomnNbUimjrmCAGQRsEnxUs5Gf5TrXGc82gNd1QFaYXqW6Fz6NAaFxfpg
         FH4Rb9K/oz9Dhm/Mjx5SeozpfSeWRWwMID4fMiJ9aIlIQeuqkFjA0MN3Ui47FHYfHcnO
         8rKCEJjh+RjFNrnCWGMReIxmqvUZBd8rVm7VBSwlA6GYvKfhYvdsVXKvkJus8tT18PxP
         H9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736176330; x=1736781130;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R8QC65ncVjurCHivMuUH7E11/swumevGZjsRli4K0Ok=;
        b=apr1SMKgLKwJdPDo1wjgejL6/C0BAMuNhnFG2XoulRbPG4xD7eGHaf04TSQIatOJCW
         yiAL0KT5s4TTMMAw7QyEkKWZK2CoC0B0CptpAHT+vvbatCucX415Yyhe5x5tsxKM8X96
         O/7eHpbaYLPcpium6NoiWl74UfA4XwIha9GjPRWAcSPEomNNseur/QZffvVsua10gU00
         uwdcKOc7E0DQlH7MmO3Wuwx6CqeglDbc+YCHT+qG+2MNm14RqPL0eT/KJBVdI8gPGVIE
         Te5MRA1HsgYbXLex0elEp6tW6tcxwsBQ+GT0POG8J3O2enR8EXZsTkdIFRN1gF52Tnyx
         UsGQ==
X-Gm-Message-State: AOJu0YyomL+2RHkG9LpVUoYKZzkUD47siNDFgi62whSbtLfhEiwxSEn3
	urXP00o0/478A6P8AOuJpNHL0U28aAWOiQJF+BUMipXuupnG//mP4x1uhUeKz7D4qEKSo87O9Xe
	IGE1qWgiNG8zSH0LHYGRwVn4q2YmwHKeJZhNXgxPx84dsCV2jAQ==
X-Gm-Gg: ASbGncvwvtWX/c8/5nKVqyUCGr82RBBN6BCemp+WbI4i60T/mZYB3O43SfFGLS9USQP
	AsJJONGcc8OkZ0uANymAGaqIWA5wNxADU3WsBTA==
X-Google-Smtp-Source: AGHT+IH3Cp4JX+ohsA7TwMKGoBvninTENqEfkbhVn7Y/rpgj8uaR4lqillAGC0WwnjJ1z6dg0vNxdxgsZRzgKtRyN5c=
X-Received: by 2002:a05:6402:278c:b0:5d0:214b:9d15 with SMTP id
 4fb4d7f45d1cf-5d81dd54620mr47768908a12.5.1736176329601; Mon, 06 Jan 2025
 07:12:09 -0800 (PST)
MIME-Version: 1.0
References: <LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4@lists.ettus.com>
In-Reply-To: <LHTKNBtLuZTcr70F1GzIWrGa2h8OayrBclRwTJ6To4@lists.ettus.com>
Date: Mon, 6 Jan 2025 10:11:58 -0500
Message-ID: <CAB__hTT7Th2+ECUES7O3uWctqL67LxvqjPX1Ssqq+i5VhT2isA@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: GQZ7FKOULSOUHWZPAKCV2JFOAOCKSQEC
X-Message-ID-Hash: GQZ7FKOULSOUHWZPAKCV2JFOAOCKSQEC
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQZ7FKOULSOUHWZPAKCV2JFOAOCKSQEC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5352131997276607247=="

--===============5352131997276607247==
Content-Type: multipart/alternative; boundary="00000000000064e12f062b0b0d3b"

--00000000000064e12f062b0b0d3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The X310 buffering depends on whether or not you are using the DRAMFIFO as
part of the RFNoC flow.  If so, then this buffer alone is 1GB, I think (250
MSamps).  But, you can't use this if you are running two channels at 200
MS/s, because the DRAM bandwidth is not sufficient.  If you are running the
samples at 100 MS/s or less (into the DUC) or if you are only using one
channel, it should be fine to use this.  If you are not using the DRAMFIFO,
then the amount of buffering is dependent on the FIFOs that are built into
the Streaming Endpoints.  You could check the yaml file that is used for
the X310 FPGA build.

Perhaps you could explain a bit more about your intended application. It's
not clear to me if you are having issues with transmit streaming or if you
are also having issues with receive streaming.  Are you planning to use
gnuradio?  rfnoc (custom graph vs default multi_usrp)?  C++ application?
Rob

On Tue, Dec 24, 2024 at 3:07=E2=80=AFPM <cjohnson@serranosystems.com> wrote=
:

> *Hi,*
>
> *Hopefully you can help me out with some clarification and help on a few
> questions.*
>
> *We are using the X310 all with timestamps as we try to get an
> understanding of the behavior.  We have created several scenarios to try
> out start of burst and end of burst and have noticed different behavior. =
 *
>
> *Scenario 1 is a =E2=80=9Csingle burst=E2=80=9D for a bunch of samples se=
nt (for example
> 1996 samples of std::vector<std::complex<int16_t>>) where
> start_of_burst=3Dend_of_burst=3Dtrue via send(includes timeout).  *
>
> *Scenario 2 is a =E2=80=9Ccontinuous burst=E2=80=9D where we start_of_bur=
st=3Dtrue for the
> first 1996 packet only with end_of_burst=3Dfalse.  All other packets have
> end_of_burst=3Dfalse*
>
>
> *1) What is the difference between the "S" and "L"?  When we see "S" with
> the single-burst case, is that really the same as an "L"?*
>
> *We have overhead to do between sending samples, so we are trying to
> figure out the best way to do the overhead work and still send() on time =
at
> our desired rate (still using timestamps).*
>
> *We noticed through experimentation that the =E2=80=9Csystem=E2=80=9D (PC=
 TCP/IP Stack <->
> USRP buffering) could buffer a very large packet of 1996*65=3D129,740 sam=
ples
> before we received flow-control, which means that we could send a bunch o=
f
> samples with future timestamps to give us some time to do the =E2=80=9Cov=
erhead=E2=80=9D.
> Of course 1996 is used because it is the largest UDP packet before
> fragmentation occurs with UDP on USRP.*
>
> *2) Is our observation about the 129K samples of buffering correct?  Is
> there something we can do to increase this?  For example, maybe some twea=
ks
> to the receive buffer sizes in the TCP/IP stack to make receive work
> reliably.*
>
> *3) What is the recommendation in terms of burst size (to allow us to do
> our =E2=80=9Coverhead=E2=80=9D)*
>
> *Thanks*
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000064e12f062b0b0d3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The X310 buffering depends on whether or not you are =
using the DRAMFIFO as part of the RFNoC flow.=C2=A0 If so, then this buffer=
 alone is 1GB, I think (250 MSamps).=C2=A0 But, you can&#39;t use this if y=
ou are running two channels at 200 MS/s, because the DRAM bandwidth=C2=A0is=
 not sufficient.=C2=A0 If you are running the samples at 100 MS/s or less (=
into the DUC) or if you are only using=C2=A0one channel, it should be fine =
to use this.=C2=A0 If you are not using the DRAMFIFO, then the amount of bu=
ffering is dependent on the FIFOs that are built into the Streaming Endpoin=
ts.=C2=A0 You could check the yaml file that is used for the X310 FPGA buil=
d.</div><div><br></div><div>Perhaps you could explain a bit more about your=
 intended application. It&#39;s not clear to me if you are having issues wi=
th transmit streaming or if you are also having issues with receive streami=
ng.=C2=A0 Are you planning to use gnuradio?=C2=A0 rfnoc (custom graph vs de=
fault multi_usrp)?=C2=A0 C++ application?</div><div>Rob</div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Dec 24, 2024 at 3:07=E2=80=AFPM &lt;<a href=3D"mailto:cjohnson@se=
rranosystems.com">cjohnson@serranosystems.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><p><strong>Hi,</strong></p><p>=
<strong>Hopefully you can help me out with some clarification and help on a=
 few questions.</strong></p><p><strong>We are using the X310 all with times=
tamps as we try to get an understanding of the behavior.=C2=A0 We have crea=
ted several scenarios to try out start of burst and end of burst and have n=
oticed different behavior.=C2=A0=C2=A0</strong></p><p><strong>Scenario 1 is=
 a =E2=80=9Csingle burst=E2=80=9D for a bunch of samples sent (for example =
1996 samples of std::vector&lt;std::complex&lt;int16_t&gt;&gt;) where start=
_of_burst=3Dend_of_burst=3Dtrue via send(includes timeout).=C2=A0=C2=A0</st=
rong></p><p><strong>Scenario 2 is a =E2=80=9Ccontinuous burst=E2=80=9D wher=
e we start_of_burst=3Dtrue for the first 1996 packet only with end_of_burst=
=3Dfalse.=C2=A0 All other packets have end_of_burst=3Dfalse</strong></p><p>=
<strong><br>1) What is the difference between the &quot;S&quot; and &quot;L=
&quot;?=C2=A0 When we see &quot;S&quot; with the single-burst case, is that=
 really the same as an &quot;L&quot;?</strong></p><p><strong>We have overhe=
ad to do between sending samples, so we are trying to figure out the best w=
ay to do the overhead work and still send() on time at our desired rate (st=
ill using timestamps).</strong></p><p><strong>We noticed through experiment=
ation that the =E2=80=9Csystem=E2=80=9D (PC TCP/IP Stack &lt;-&gt; USRP buf=
fering) could buffer a very large packet of 1996*65=3D129,740 samples befor=
e we received flow-control, which means that we could send a bunch of sampl=
es with future timestamps to give us some time to do the =E2=80=9Coverhead=
=E2=80=9D. =C2=A0 Of course 1996 is used because it is the largest UDP pack=
et before fragmentation occurs with UDP on USRP.</strong></p><p><strong>2) =
Is our observation about the 129K samples of buffering correct?=C2=A0 Is th=
ere something we can do to increase this?=C2=A0 For example, maybe some twe=
aks to the receive buffer sizes in the TCP/IP stack to make receive work re=
liably.</strong></p><p><strong>3) What is the recommendation in terms of bu=
rst size (to allow us to do our =E2=80=9Coverhead=E2=80=9D)</strong></p><p>=
<strong>Thanks</strong></p><p><br><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000064e12f062b0b0d3b--

--===============5352131997276607247==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5352131997276607247==--
