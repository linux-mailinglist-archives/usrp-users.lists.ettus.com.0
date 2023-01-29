Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 142CE6800BD
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 19:23:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67FBC383DD1
	for <lists+usrp-users@lfdr.de>; Sun, 29 Jan 2023 13:23:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675016612; bh=kMOIOEqGRneuR+o+VmQk9g1dcH+zyz9oKwZm5pGwX10=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QUAy1dxFNmwyGd5rPay/R+rutuEEm5HSbxI53pdav71p9WUvDiQSZEmMoGTQGxgMD
	 Z4Oup5v5rhlme7XvJrFWoahGI9M81R5631rKGpt74j10hyMGulLsibBsuSaHoF6y8V
	 VCglM6waPIAMdeAadpdkNsDgGVZh9daNliF/tq+3RslNp5srzT2mMcTYdrqhZxKY4q
	 MeEavnVfRfujG+Aqn6aHV7kHGQAX5gW6fooz7CyKCu60Xe3WBiq0RcMgslZ5uoNzor
	 rGDEp/WvxCO/Z2GBLtXyEsNd+7L+obtSyC73olrS7CxVCWcLsC1SLKvWiKGVBSuKFO
	 aVrGCBAW9ttgw==
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by mm2.emwd.com (Postfix) with ESMTPS id C57E4383783
	for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 13:23:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EnF64IhA";
	dkim-atps=neutral
Received: by mail-io1-f49.google.com with SMTP id r6so1258953ioj.5
        for <usrp-users@lists.ettus.com>; Sun, 29 Jan 2023 10:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kwK0PsyGl93Fxn8jiB3GmzJZHZe8UWaUc2TKco4Uuec=;
        b=EnF64IhAOC7WuEbs67UNw3WDpkqYo063EWKv+hzj5dmE8a4FEgKej5U8joWu+0tbqG
         fu4LgJZr7k1UpxpdphTcyqB36iItfk0EFjOV0FaZIlqCCjLQtkmBJ95rKFWuM1Cb2+qT
         vbqAMwpDf2vpdjEqVslwAeiNc3ywNOWOQ8PzPiazz6CVbS6YCBNpAWQ47eZQI0oEvuz0
         /NteD82Z3mavNNQYxxXK7xmkoqN73OqYvTgfR8Y9YGiAYvEURbWHvfelRvaq9EBhaBeD
         KvT91UpL2+oZO/BS+wIhKtbvQokHXOz6MrvJe++1leEZ7jXtMoykWLcYwM07C0SUXesC
         BOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kwK0PsyGl93Fxn8jiB3GmzJZHZe8UWaUc2TKco4Uuec=;
        b=sCjDyU+dNy4dkavQU1qB4ogTXLzBAXqotvpOSkI/IV/fEISdoVruKxVLhe/Z3KYJ+f
         SIbiMwzQm812v9ilQm8qZtMihYtCiy8PWJ5o49s09zc3QKHyKwGMS/ditaFxihYt1+EJ
         iP/c/4zNV4fNhALNj29eqzN4KGyYjWHzIp+r11UgBBIx/whYWtVBMsMdE4cT2+IJiZa7
         EpkjealamG3XfVD6oVVFd6izPbKOH6Mec90irGO/ikswnQ+oCSDOkmcrQqkpxfzo6lnm
         p0pyO/z274zCetEVQunE8CAncBYPJsbR1fteMvzesTb/k6Vf/0RJBDu1mEvvrvAzHpDM
         qYkA==
X-Gm-Message-State: AFqh2krLppBZGMen45PoiknhILDhzuMOm9wxFLINF9cUWBlrbhyobjzg
	7HsEQucH6WbnsoNBoIVeki4LibByyxpY5Pi2VaM=
X-Google-Smtp-Source: AMrXdXvxuM3mRJ4ULGA1MFQN7U2VTR6kMO5l+F+vuGd497rHy08l3yKAhDVfxnSgo6pdQYq5YkihOVEqsNYRMSv7L1o=
X-Received: by 2002:a05:6638:148a:b0:39d:234a:8f18 with SMTP id
 j10-20020a056638148a00b0039d234a8f18mr5666024jak.123.1675016604843; Sun, 29
 Jan 2023 10:23:24 -0800 (PST)
MIME-Version: 1.0
References: <2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0@lists.ettus.com>
In-Reply-To: <2wBXj4nv5K7A7e8Q4J9iuugzkREIr3WvSZ0xDUbnm0@lists.ettus.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Sun, 29 Jan 2023 20:23:13 +0200
Message-ID: <CAAxXO2EHwekMGS47nXfAcH+C=TtMYh2qhhJKZn4XULHKSBOK=w@mail.gmail.com>
To: seckinoncu80@gmail.com
Message-ID-Hash: X3GYWUQF5STEXCUOLOGOQE27CCBGIN2A
X-Message-ID-Hash: X3GYWUQF5STEXCUOLOGOQE27CCBGIN2A
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD C++ API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X3GYWUQF5STEXCUOLOGOQE27CCBGIN2A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8374825441786610773=="

--===============8374825441786610773==
Content-Type: multipart/alternative; boundary="000000000000b985a205f36b3118"

--000000000000b985a205f36b3118
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

These are programming questions for your application, unrelated to uhd.
Your language is also a bit strange. Let me explain:

1) You take the output signal from your usrp and if it is larger than a
threshold value you store their index to a vector.
I imagine that the threshold is some kind of amplitute. To compare it to
your samples, you need to find the corresponding amplitude: log10(hypot(Q,
I))
Where Q is the real component of your sample, and I the imaginary. You can
store that value to a new vector. Or simpler you can compare Q^2 +
I^2,since log10 and sqrt do not add anything useful.To read from usrp use:
uhd_rx_streamer_recv

On Wed, Jan 25, 2023 at 9:49 AM <seckinoncu80@gmail.com> wrote:

> Hello USRP Users,
>
> I am new to UHD C++ API. I have some questions about the application that
> I planned to develop. I have N320 and I got the signal from one channel a=
nd
> keep it in a vector as =E2=80=9Cbuff=E2=80=9D. As you may know form examp=
les.
>
> 1) How to take the envelope of the signal, then assign a threshold value
> and keep the index of the sample which is greater than threshold value in=
 a
> vector?
>
> 2) After getting pulse=E2=80=99s TOA(time of arrival) and TOD(Time of Dep=
arture),
> how to take the fft and keep the frequency shift in a vector?
>
> 3) Buff get 2000 samples in one cycle in my configuration. How to arrange
> the fft size and buff size to have a real time operations? Can processing
> delay be fixed for each cycle?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b985a205f36b3118
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi,=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">These are programming qu=
estions for your application, unrelated to uhd. Your language is also a bit=
 strange. Let me explain:</div><div class=3D"gmail_default" style=3D"font-s=
ize:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small"=
>1) You take the output signal from your usrp and if it is larger than a th=
reshold value you store their index to a vector.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">I imagine that the threshold is some kind=
 of amplitute. To compare it to your samples, you need to find the correspo=
nding amplitude: log10(hypot(Q, I))</div><div class=3D"gmail_default" style=
=3D"font-size:small">Where Q is the real component of your sample, and I th=
e imaginary. You can store that value to a new vector. Or simpler you can c=
ompare Q^2 + I^2,since log10 and sqrt do not add anything useful.To read fr=
om usrp use:</div><div class=3D"gmail_default" style=3D"font-size:small">uh=
d_rx_streamer_recv<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jan 25, 2023 at 9:49 AM &lt;<a href=
=3D"mailto:seckinoncu80@gmail.com">seckinoncu80@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello USRP User=
s,</p><p>I am new to UHD C++ API. I have some questions about the applicati=
on that I planned to develop. I have N320 and I got the signal from one cha=
nnel and keep it in a vector as =E2=80=9Cbuff=E2=80=9D.  As you may know fo=
rm examples.</p><p>1) How to take the envelope of the signal, then assign a=
 threshold value and keep the index of the sample which is greater than thr=
eshold value in a vector?</p><p>2) After getting pulse=E2=80=99s TOA(time o=
f arrival) and TOD(Time of Departure), how to take the fft and keep the fre=
quency shift in a vector?</p><p>3) Buff get 2000 samples in one cycle in my=
 configuration. How to arrange the fft size and buff size to have a real ti=
me operations? Can processing delay be fixed for each cycle?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b985a205f36b3118--

--===============8374825441786610773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8374825441786610773==--
