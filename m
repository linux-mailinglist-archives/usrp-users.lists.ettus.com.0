Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C03433765A0
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 14:53:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44336384498
	for <lists+usrp-users@lfdr.de>; Fri,  7 May 2021 08:53:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="C2/VB9D4";
	dkim-atps=neutral
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 20D9B383FC8
	for <usrp-users@lists.ettus.com>; Fri,  7 May 2021 08:53:00 -0400 (EDT)
Received: by mail-ot1-f43.google.com with SMTP id g15-20020a9d128f0000b02902a7d7a7bb6eso7792504otg.9
        for <usrp-users@lists.ettus.com>; Fri, 07 May 2021 05:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5eoLFDMQWuiUOsaJJ+p7iMr5ySGBtfM0972OochxUOU=;
        b=C2/VB9D4hCxRZoSWnTw/lKupOs1RwXwA+7mfSucR1SI3EXbtTI4aqlD+X1O45OfRJo
         IXzn+zsi8exCTqYdqG3mO+3vmChJR4IOSGfxajZXiqXTzmp0i6Tu/BC1Q00JhkMxAXtC
         6KnTBEIwuaHoGk1MxIWjZYcYB+VZz4Gbs3fouc0OO2EDWGso1Y6BbAnsO2NirsAISJ81
         1XJ8b6WxT+zcN0/1M+0Dhom2vTBra243103CcIlfzJzX9LEfLBeGQZQA39zzS0mmBtbA
         1tcTKcmbe7C2XHj+/ARymPDxFD20cRB5s/r7zrmqhUh6heu3VBTN5W4A4xQczXv2z5DL
         puQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5eoLFDMQWuiUOsaJJ+p7iMr5ySGBtfM0972OochxUOU=;
        b=N3u47Q/xDwtDj7e+dr+NzIuJSmfTKOt86P6dyskXjQWEBvavcCs0yEnygy4GKj1xHg
         i9B1n/3okuhENu7Hft6TZij32AvxZJZKfz8YqfqEXNR6XJOTJFT9ub5jZVJWfDaEHH98
         ZNE79ubl0pOyMKFBP5srNkQB8TieeKKXiKDtNOEjID8bik3+PRFncZfkL8tj6ySfPrd1
         mSIYvvB4bJ0mDrCopE7nXqE89n63QAFsUFHGQQoFetSIz1SHQo0j7wbtonMoTRSu+Ge9
         YJ4A6ZZpPb4GFOWktF79UxZkqeif5zorhAK/ptsABxRUM6XuRlqz4qOJlc9uRX27CZbq
         zA1Q==
X-Gm-Message-State: AOAM530LBo2UezHS75dWkHttgtf5AJsdHBGRBSbuU8lzG+uzBoYWa5Da
	vxK5DxIaUE/TCpXLBDfk78Fvcof+7sW+Wolj7A0QNQ==
X-Google-Smtp-Source: ABdhPJzjJtWqRdTtg2jZ05ETOPcrgBCz0K6y9/aKAwtlPkapN66MrXOokyU5DnAcXwAy9OXK/pew2IvxJlMCwBYhBz0=
X-Received: by 2002:a05:6830:456:: with SMTP id d22mr4746118otc.301.1620391979289;
 Fri, 07 May 2021 05:52:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NZBNAaqr2co+eqbwmy_nkYLr7ghdhG+ZBL+LiaO1FSC0Q@mail.gmail.com>
 <AF007A8C-FBE5-4085-BEA9-B75861E9A6D0@gmail.com> <CAL0m=NarepLb34vCinzTsV7z4oU87LDHxazz26Nes1zLGHYSbQ@mail.gmail.com>
In-Reply-To: <CAL0m=NarepLb34vCinzTsV7z4oU87LDHxazz26Nes1zLGHYSbQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 7 May 2021 08:52:48 -0400
Message-ID: <CAB__hTS1kbqivr5827StjRJBRVkdvD5FKvyLyZopL4Tnn4iQJw@mail.gmail.com>
To: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Message-ID-Hash: 2XOAL6XUC2J27DUS7LYY2MDO5IESAJNU
X-Message-ID-Hash: 2XOAL6XUC2J27DUS7LYY2MDO5IESAJNU
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 External LO source
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2XOAL6XUC2J27DUS7LYY2MDO5IESAJNU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8429728398783046692=="

--===============8429728398783046692==
Content-Type: multipart/alternative; boundary="00000000000052c36405c1bce819"

--00000000000052c36405c1bce819
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This doesn't sound like a good idea to me.

On Thu, May 6, 2021 at 11:26 PM Zeng, Huacheng <huacheng.zeng@gmail.com>
wrote:

> Dear Rob and Marcus,
>
> Thank you for your response. I have a follow up question. Since I do not
> have an RF power splitter at hand for the external LO source, do you thin=
k
> it is fine to use a 1-to-2 SMA cable to connect an N210's output port to
> N310's TX and RX External LO ports? Thanks again.
>
> Best regards,
> Hua
>
>
>
> On Thu, May 6, 2021 at 10:58 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> This should work. Keep in mind that the mixers in the N310 are 2XLO so
>> the external LO has to be at twice the desired tuned frequency.
>>
>> Sent from my iPhone
>>
>> > On May 6, 2021, at 10:31 PM, Zeng, Huacheng <huacheng.zeng@gmail.com>
>> wrote:
>> >
>> > =EF=BB=BF
>> > Hello,
>> >
>> > I want to use an external LO for N310. I learned that a common case is
>> to use a signal generator to produce the external LO and feed it to N310=
.
>> Since I do not have a signal generator at the moment, I was wondering if=
 it
>> is okay to use an N210 to generate the external LO for N310. I will adju=
st
>> the Tx gain of N210 so that the output power is in the range of 0 to 6 d=
Bm.
>> >
>> > Regards,
>> > Hua
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000052c36405c1bce819
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This doesn&#39;t sound like a good idea to me.=C2=A0<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, May 6, 2021 at 11:26 PM Zeng, Huacheng &lt;<a href=3D"mailto:huachen=
g.zeng@gmail.com">huacheng.zeng@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear Rob and Marc=
us,=C2=A0<div><br></div><div>Thank you=C2=A0for your response. I have a fol=
low up question. Since I do not have an RF power splitter at hand for the e=
xternal LO source, do you think it is fine to use a 1-to-2 SMA cable to con=
nect an N210&#39;s output port to N310&#39;s TX and RX External LO ports? T=
hanks again.</div><div><br></div><div>Best=C2=A0regards,</div><div>Hua</div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Thu, May 6, 2021 at 10:58 PM Marcus D Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">This should work. Keep in mind that the mixers in the N310 =
are 2XLO so the external LO has to be at twice the desired tuned frequency.=
 <br>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000052c36405c1bce819--

--===============8429728398783046692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8429728398783046692==--
