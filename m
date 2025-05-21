Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45788ABF2DB
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 13:31:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F348D38561B
	for <lists+usrp-users@lfdr.de>; Wed, 21 May 2025 07:31:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747827073; bh=HqQFdFhtGY5LJ7EYEmAFUxSwGrPVbrNS/E1in9a0qE4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WYvHV9u900wR+sm9yCxl1LQ9Vv9A8x+VUK4EwP3wqMceIKABSuSNUe4IsL7A8G27t
	 J61vsT3XiMaTzbWaIBh+RaJZuyTRGxMt+zbTLU7h8PzeB3UnJ/zfZLTG+BawnsQKqk
	 1m6yiDmDl+J46lGo6gr3T0gXufTOo2Kc92OfdAWBGGDao3CmDQaAlvPAf+5h60ypzM
	 WSaaijwx85tkgP6AfZch1y29WTzkrDe6rmo6aPaepaqbI1/TyeAXpiPjrjbfWWES6x
	 rDoa0XcMqP9k+Boqk1SOwQ3AHKe9zLzWSlT48ocmeCDBe3ARZu41JjKy47k1n9+aTZ
	 GEAHNBrNpdUMw==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id F319E38545D
	for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 07:30:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="MkTLTytf";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad564b7aea9so675834566b.1
        for <usrp-users@lists.ettus.com>; Wed, 21 May 2025 04:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747827041; x=1748431841; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iAMM4ssAjssz5Ex70JW0mD9dktyYakaNJpKkPw9WHh0=;
        b=MkTLTytfZazNShMju1BziIywJ5CnZkw7cA5tGgfCcFck+Lnyb0rqSIGQvba/28uLQg
         4fE2advV6lCMA2uLG2POxN2OwdgFYdJgk4umFJpBm1OH7zh2lsaxf5yWjEXor5/TO9T9
         oZRXVeebYhO+D9unHHVCGO+ktZMnltzZmEqKBLsVvAKujyf4ry3V9AYRMc7H3Sb7sLwS
         2S3CS4Sp5UVe3KxRJxzE0XNePtWvNzKFlduGtlYnpMXoFCvVZ2bxb2WWRhfbMtF3Ytd5
         sJN0qmnOzPwFDiu/s7iXLnzq+8S6SKG2spqcZbs9cMbOow4tuWdik3+9Itg+uNOeXBWn
         n3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747827041; x=1748431841;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iAMM4ssAjssz5Ex70JW0mD9dktyYakaNJpKkPw9WHh0=;
        b=akkRxbrneIxeC80/hkXk3p/7mDf5CmsTwM0D8X7VRfHnzgZshuQLPF1c4GkIjxt+d9
         L5RhsUIT9PgjOwu9skEM6rw3LtE7EukCuiTDZzivZMC9LQiVjPk+4YhiEY/wchwhFEHf
         QiXdtdWNkYR+L4nslunrug8VbA6jm2PMWd+LC9hyiznrbzar9dJky2dpklm6RhdoXwDw
         x3qsGnSImRHmkKr4lEid4lfOSX7MLX1TYoAER3DHHqTehRc1hiPY2EqMJk4NRWFSvKrq
         sTeglj6LCWu96j31QPG9dQV6VMOUBwoFQ77E3qzPIl4l8iHSR9k6WI1S8Cz5UHrrDejE
         QuxA==
X-Gm-Message-State: AOJu0Yywetvmqp4wTSH3iXpxaTwMNyxnEwMEB/BwAYcBLxTtuWuG7H4I
	rWVobGzHOVKsXdKyOmVHwijj3CaziYNGvvN33o91NMPwOV9Wm1QI7XUI8hPVUasJuVrwmFnBT79
	q0kqAOiemV+f7fqMjCMpCAf0wC7OI5WKPcnGVvTN5XYjcPFaHZ57iSyk=
X-Gm-Gg: ASbGncu4zYvpuPVcRB0iPu6RQttO60kPZeFds0jyFmHU3fPORdsjjeJGhadl8C3DE5u
	BJKmGTH/135JNCQYTa4Lva/R7SoqBnjDc6B4QD88Lkxia8ybLT+4EQXP8nkJnteCALLGGrUnEG2
	CQXjuLMFwI5qaOHIek0gvdcPZjsIcJ3Wq435mGf19DTl2txmRG7LzqN+lH/27dSTC7C598QkhEi
	AU=
X-Google-Smtp-Source: AGHT+IEJ2Ic2qSwLPke+ilIV2C8RojkXdB+G2+7xVYI1kATcIEAajqvslyDtQBPEibWt6i7LcmY2UVEP2XDQhA+F5Os=
X-Received: by 2002:a17:907:7f1a:b0:ad5:431d:fb32 with SMTP id
 a640c23a62f3a-ad5431dfea5mr1680722666b.14.1747827040403; Wed, 21 May 2025
 04:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <1423256721.28833062.1746688948038.JavaMail.zimbra@univ-poitiers.fr>
In-Reply-To: <1423256721.28833062.1746688948038.JavaMail.zimbra@univ-poitiers.fr>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 21 May 2025 13:30:29 +0200
X-Gm-Features: AX0GCFtsikVCX2HLeFJfOc-r6F_t_Lj-JG_dRMfOiq6mBMMHIO3P2KhEjhg2gTM
Message-ID: <CAFOi1A7m8FzB-iodCLYE-muYSgVXviyjB_tR-0R4CGeJawBsPg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: AC7WZQKRN3JGJREVDICVGIVS3EBJHIK5
X-Message-ID-Hash: AC7WZQKRN3JGJREVDICVGIVS3EBJHIK5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Questions Regarding benchmark_rate.py and Signal Handling in USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AC7WZQKRN3JGJREVDICVGIVS3EBJHIK5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7180526332331443269=="

--===============7180526332331443269==
Content-Type: multipart/alternative; boundary="000000000000df5a200635a3b12d"

--000000000000df5a200635a3b12d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 8, 2025 at 9:23=E2=80=AFAM ZIXIAO YANG <zixiao.yang@univ-poitie=
rs.fr>
wrote:

> Dear Marc,
>
>
> My name is Mike Yang, and I=E2=80=99m currently using the USRP X310 for m=
y
> research.
>
>
> I have a few questions regarding the benchmark_rate.py script that was
> shared in the guide. I'm using Python for all my signal processing tasks.
>
>
> First, I'd like to share some thoughts on the code, if you don't mind.
>
> From what I understand, this script demonstrates simultaneous signal
> transmission and reception. The transmit signal is stored in the
> transmit_buffer, which repeatedly sends a value of 0.
>

To be clear, the reason it transmits zeros is because this example is for
the purpose of checking the throughput to your device. No actual
transmission is intended.


> The signal preparation seems to be handled in the benchmark_tx_rate
> function.
>
> I'm interested in transmitting a sine wave signal, and I foresee two
> potential issues:
>
>    1.
>
>    How can I store a custom signal (like a sine wave) in the
>    transmit_buffer?
>
>
Maybe tx_waveforms.py is the better example to see this done.


>
>    1.
>
>    If the signal is longer than max_samps_per_packet, I assume it needs
>    to be divided into chunks that match the max buffer size, with each ch=
unk
>    sent in sequence. Could you please confirm the best way to do this?
>
>
UHD will do that for you. You can pass any  size buffer to the send() call,
it will transmit until it's all out or an error occurs.

On the reception side, I=E2=80=99m having trouble retrieving the received s=
ignal
> for analysis. I think the approach should be similar to the transmit
> side=E2=80=94collecting each sub-chunk of the received signal from recv_b=
uffer in
> the benchmark_rx_rate function.
>
>
> I=E2=80=99ve attached my current script (test1 in jupyter notebook) to th=
is
> message. The simultaneous transmission part appears to be working
> correctly, but I=E2=80=99m not receiving the expected signal on the recep=
tion side.
> Could you kindly help me identify and fix the issue?
>

Maybe rx_to_file.py is a good example for this.


--M

--000000000000df5a200635a3b12d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 8, =
2025 at 9:23=E2=80=AFAM ZIXIAO YANG &lt;<a href=3D"mailto:zixiao.yang@univ-=
poitiers.fr">zixiao.yang@univ-poitiers.fr</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-family:ari=
al,helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><div><div style=3D=
"font-family:&quot;arial&quot;,&quot;helvetica&quot;,sans-serif;font-size:1=
2pt;color:rgb(0,0,0)"><div style=3D"font-family:&quot;arial&quot;,&quot;hel=
vetica&quot;,sans-serif;font-size:12pt;color:rgb(0,0,0)"> <p style=3D"margi=
n:0px">Dear Marc,</p><p style=3D"margin:0px"><br></p><p style=3D"margin:0px=
">My name is Mike Yang, and I=E2=80=99m currently using the USRP X310 for m=
y research.</p><p style=3D"margin:0px"><br></p><p style=3D"margin:0px">I ha=
ve a few questions regarding the <code>benchmark_rate.py</code> script that=
 was shared in the guide. I&#39;m using Python for all my signal processing=
 tasks.</p><p style=3D"margin:0px"><br></p><p style=3D"margin:0px">First, I=
&#39;d like to share some thoughts on the code, if you don&#39;t mind. </p>=
<p style=3D"margin:0px">From what I understand, this script demonstrates si=
multaneous signal transmission and reception. The transmit signal is stored=
 in the <code>transmit_buffer</code>, which repeatedly sends a value of 0.<=
/p></div></div></div></div></div></blockquote><div><br></div><div>To be cle=
ar, the reason it transmits zeros is because this example is for the purpos=
e of checking the throughput to your device. No actual transmission is inte=
nded.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div><div style=3D"font-family:arial,helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)"><div><div style=3D"font-family:&quot;arial&quot;,&quot;h=
elvetica&quot;,sans-serif;font-size:12pt;color:rgb(0,0,0)"><div style=3D"fo=
nt-family:&quot;arial&quot;,&quot;helvetica&quot;,sans-serif;font-size:12pt=
;color:rgb(0,0,0)"><p style=3D"margin:0px"> The signal preparation seems to=
 be handled in the <code>benchmark_tx_rate</code> function.</p><p style=3D"=
margin:0px">I&#39;m interested in transmitting a sine wave signal, and I fo=
resee two potential issues:</p><ol><li><p style=3D"margin:0px">How can I st=
ore a custom signal (like a sine wave) in the <code>transmit_buffer</code>?=
</p></li></ol></div></div></div></div></div></blockquote><div><br></div><di=
v>Maybe tx_waveforms.py is the better example to see this done.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div sty=
le=3D"font-family:arial,helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0=
)"><div><div style=3D"font-family:&quot;arial&quot;,&quot;helvetica&quot;,s=
ans-serif;font-size:12pt;color:rgb(0,0,0)"><div style=3D"font-family:&quot;=
arial&quot;,&quot;helvetica&quot;,sans-serif;font-size:12pt;color:rgb(0,0,0=
)"><ol><li><p style=3D"margin:0px">If the signal is longer than <code>max_s=
amps_per_packet</code>, I assume it needs to be divided into chunks that ma=
tch the max buffer size, with each chunk sent in sequence. Could you please=
 confirm the best way to do this?</p></li></ol></div></div></div></div></di=
v></blockquote><div><br></div><div>UHD will do that for you. You can pass a=
ny=C2=A0 size buffer to the send() call, it will transmit until it&#39;s al=
l out or an error occurs.</div><div><br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div><div style=3D"font-family:arial,helvetica,sans-se=
rif;font-size:12pt;color:rgb(0,0,0)"><div><div style=3D"font-family:&quot;a=
rial&quot;,&quot;helvetica&quot;,sans-serif;font-size:12pt;color:rgb(0,0,0)=
"><div style=3D"font-family:&quot;arial&quot;,&quot;helvetica&quot;,sans-se=
rif;font-size:12pt;color:rgb(0,0,0)"><p style=3D"margin:0px">On the recepti=
on side, I=E2=80=99m having trouble retrieving the received signal for anal=
ysis. I think the approach should be similar to the transmit side=E2=80=94c=
ollecting each sub-chunk of the received signal from <code>recv_buffer</cod=
e> in the <code>benchmark_rx_rate</code> function.</p><p style=3D"margin:0p=
x"><br></p><p style=3D"margin:0px">I=E2=80=99ve attached my current script =
(test1 in jupyter notebook) to this message. The simultaneous transmission =
part appears to be working correctly, but I=E2=80=99m not receiving the exp=
ected signal on the reception side. Could you kindly help me identify and f=
ix the issue?</p></div></div></div></div></div></blockquote><div><br></div>=
<div>Maybe rx_to_file.py is a good example for this.</div><div>=C2=A0</div>=
<div><br></div><div>--M</div></div></div>

--000000000000df5a200635a3b12d--

--===============7180526332331443269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7180526332331443269==--
