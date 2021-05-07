Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AD8375F26
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 05:27:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5846F384B65
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 23:27:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="s3xjxVUE";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A8083847E1
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 23:26:25 -0400 (EDT)
Received: by mail-yb1-f181.google.com with SMTP id i4so10207028ybe.2
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 20:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UYgpy4b9X7Fb6G97fiB7izM4fzHgKsbeuxoVbO+b5Bw=;
        b=s3xjxVUE4lg8W1aBmFkyUVCL/AEkqussvgeQMHG9FlTFbcNGVFnGT9dxC9RB4Xvs9T
         JSqQacfJnZv2Kdsu/YPIS89FrWxd8mmQpwaj5YGemy259WHGvDsKM5EbBplSASkNGHPJ
         K4Dt+MjxxvGqQJj9DRiccxatOEde0+RisSs/GcSm6G8V18jk/iFSNwHV43CQgO4KT5x8
         vvWts+goqRzJyn7iu5MFgm6MM0ZdsgKJpmryYqb5ngwM5HoX6wAD3NlnU1g/VrzVFkx4
         Fmai5Y14lB8qC1C76MpGw/Wu4CzjrXecSADTwAvtxkZWJppKAuHoR6NGVOSflII6oe5+
         lI4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UYgpy4b9X7Fb6G97fiB7izM4fzHgKsbeuxoVbO+b5Bw=;
        b=pNt8JnaLFfu1uUeJ577AzI644+iMopgZItnaFZiaj8lMZ6qkroJnHxZrJmBpHUPGjT
         sY7PsheIFbs1f00NZQIug3aX23KymuLA2zHn4+nZic8RLxYIwAQJv+xCeAQ3T93ZLqY0
         AKHAovxstHqYfO83Uuy0PZQ+yY4L8TmzCnYU5x1pYweW4aHARHtNE4GkQaHNh1UT2z3X
         QitynDIM5z/VkzQw1oxXHNm3ft+p9qaXfOkL3K8Ed/OoSdsCxQ/AbCzeBQVaDZrVzMKX
         +p9EmrX6kbdRTiJY6nbrcHv3Nct95YIxndv8Uq2esJpaZZUOm+0I3nXZRX0BuwLLHKyT
         gREA==
X-Gm-Message-State: AOAM53291GMueg/zhZxwBOCMROHGoesdonFNH11jWoJc+rsCSnJGlhPi
	9Jk2a8uTxmYV7N2tqfle/yVEpVsmpD+BEiwTi7M=
X-Google-Smtp-Source: ABdhPJzdVt5bosn/jCjd/I5h9FB7+NNVb4vTuvTt5bhqB4WzKL4vabKEMGEyxywhp4WMlf3hyTDAyxLA8dyDnO5zK+A=
X-Received: by 2002:a25:3585:: with SMTP id c127mr10899092yba.494.1620357984644;
 Thu, 06 May 2021 20:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
 <AF007A8C-FBE5-4085-BEA9-B75861E9A6D0@gmail.com>
In-Reply-To: <AF007A8C-FBE5-4085-BEA9-B75861E9A6D0@gmail.com>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Thu, 6 May 2021 23:26:12 -0400
Message-ID: <CAL0m=NarepLb34vCinzTsV7z4oU87LDHxazz26Nes1zLGHYSbQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: EKKNR5T2DUNWKEZISCIZNC74SG7QZZ46
X-Message-ID-Hash: EKKNR5T2DUNWKEZISCIZNC74SG7QZZ46
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 External LO source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EKKNR5T2DUNWKEZISCIZNC74SG7QZZ46/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0417367727407659220=="

--===============0417367727407659220==
Content-Type: multipart/alternative; boundary="0000000000001570ee05c1b4fe3b"

--0000000000001570ee05c1b4fe3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Rob and Marcus,

Thank you for your response. I have a follow up question. Since I do not
have an RF power splitter at hand for the external LO source, do you think
it is fine to use a 1-to-2 SMA cable to connect an N210's output port to
N310's TX and RX External LO ports? Thanks again.

Best regards,
Hua



On Thu, May 6, 2021 at 10:58 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> This should work. Keep in mind that the mixers in the N310 are 2XLO so th=
e
> external LO has to be at twice the desired tuned frequency.
>
> Sent from my iPhone
>
> > On May 6, 2021, at 10:31 PM, Zeng, Huacheng <huacheng.zeng@gmail.com>
> wrote:
> >
> > =EF=BB=BF
> > Hello,
> >
> > I want to use an external LO for N310. I learned that a common case is
> to use a signal generator to produce the external LO and feed it to N310.
> Since I do not have a signal generator at the moment, I was wondering if =
it
> is okay to use an N210 to generate the external LO for N310. I will adjus=
t
> the Tx gain of N210 so that the output power is in the range of 0 to 6 dB=
m.
> >
> > Regards,
> > Hua
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001570ee05c1b4fe3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Rob and Marcus,=C2=A0<div><br></div><div>Thank you=C2=
=A0for your response. I have a follow up question. Since I do not have an R=
F power splitter at hand for the external LO source, do you think it is fin=
e to use a 1-to-2 SMA cable to connect an N210&#39;s output port to N310&#3=
9;s TX and RX External LO ports? Thanks again.</div><div><br></div><div>Bes=
t=C2=A0regards,</div><div>Hua</div><div><br></div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Ma=
y 6, 2021 at 10:58 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">This should work. Keep in mind that the mi=
xers in the N310 are 2XLO so the external LO has to be at twice the desired=
 tuned frequency. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On May 6, 2021, at 10:31 PM, Zeng, Huacheng &lt;<a href=3D"mailto:huac=
heng.zeng@gmail.com" target=3D"_blank">huacheng.zeng@gmail.com</a>&gt; wrot=
e:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I want to use an external LO for N310. I learned that a common case is=
 to use a signal generator to produce the external LO and feed it to N310. =
Since I do not have a signal generator at the moment, I was wondering if it=
 is okay to use an N210 to generate the external LO for N310. I will adjust=
 the Tx gain of N210 so that the output power is in the range of 0 to 6 dBm=
. <br>
&gt; <br>
&gt; Regards,<br>
&gt; Hua<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001570ee05c1b4fe3b--

--===============0417367727407659220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0417367727407659220==--
