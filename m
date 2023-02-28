Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1E16A5D59
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 17:43:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CDCD384737
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 11:43:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677602614; bh=uOIxlHxUoGtpaSDeNtPLwx9C2I2HtKTh6u6hw3RHkss=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=K9z+O79BPw/9JN5zwEVOgfwi3TpYrG+nn5SCqSbikUaizazvb0T9IrD/frfQ16P8i
	 PiQKgA2MEE4E8dcQQ/bDEGNLH6v0tKBguIt3LIZEYwydKyaMT/+K9ejlPlbCcCeYkf
	 4hbLMFLuHGXeC+mFsztV4nT4DdjXquggfIXiTlnzj1xFqhjRxOvMpbX3gYhWqYjWZ+
	 wIqtIL53mlFicpwbpXPYa35dT8SL+T1hr7Hbjx+fTrMj05UdrxmueTZEvoRn0yIAHH
	 SuiBOcy57UxVztDe/p+8P+YR9W7/8BKKs70edsU7aoAwlMNAFhKQlazOMYD3P0udOc
	 I7Bl5KJUo6vmA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 618A13846AF
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 11:42:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Og2RVhic";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id ee7so42695922edb.2
        for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 08:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y15LYrsw+lpIBL693eSMb4QgT0z9wmRfGDh60smi9DA=;
        b=Og2RVhicDNd8m4JG7Sf9GhnS7exk411Igdn0s8lWXiyaJeFbFbAkTNyVJGDuyEms9I
         F/mz/IdOTrbp+QlkE8/HeTwRK2M7ALUpt4aE87Ay4oSjy4XgaLSxvDghE70R4YEtcVUX
         rU/LDVQN4lT7zzfUdKlVmYE7OZq9LSreBZ1vScUgEtmfjE0hk9toSFogqrNFNSKDOxPv
         npfBypWvQV9mWHOOsKMLMVcmoYjqxDH9+aIf14Ggzgn7kWVr4Bx8AR1iucCg749q/frp
         Df7HCsDazKCSkigCd74ODIJDgFaZxwLuY7XLukF3KPKXWinvW88+tZnmYUNkabWTP1jQ
         MJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y15LYrsw+lpIBL693eSMb4QgT0z9wmRfGDh60smi9DA=;
        b=zGGYFnWkt0h5FbVa415up3dMgQarBdLKQdWxyk/9K1froUZurwrJ+9mir0nz1FAy5b
         PyGl68s2D8dW5lwIXt4N2OXNns0geUiygVuhgrY4J8iQBNpDcO13MLWCp3xplIQw4TX7
         kvzaljxZr4A058Ipd/Qv79Dkhw38TsQpK3oTYKysw/j+07bvV8fZcCuV2o1RR96QI9j3
         M4M7Y4+MC/dfVv+6EiASppPeQ8lphQTD5kA3/BMqPzB9NV9IiJ0HEDaOa17cb6Sg2lNW
         xZNQrIGRMz6X5O3pLFyTPhD3lVKMLUmy/ga5Kdgp8RGT/Cp2B1pPJdlBnqNY5WQfzMfR
         c0XA==
X-Gm-Message-State: AO0yUKVbxvk7mnIxxqDdPglm4sADNaXYnUBLz0BWawweyj0f/PApwA5C
	Cd+lGj3ej/RMD8RhNAy6X4dZQitHnXjHbCA1RVsVcg1TMS4TbQ==
X-Google-Smtp-Source: AK7set/elvMquF14blIyz5l62NugeVFpCyddVhpCW9actn9HzbFatyYj4Q7Cz4x6zLqm8eWovKeXkGrpDgluM43hcnw=
X-Received: by 2002:a17:906:bce9:b0:8b1:3133:d57b with SMTP id
 op9-20020a170906bce900b008b13133d57bmr1541500ejb.14.1677602576028; Tue, 28
 Feb 2023 08:42:56 -0800 (PST)
MIME-Version: 1.0
References: <T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng@lists.ettus.com>
In-Reply-To: <T9ElTbUms9Uy8qRiC9oiPRMRE7HzN2zyqMOvUOrng@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 28 Feb 2023 11:42:44 -0500
Message-ID: <CAB__hTQtLQ-KDhOdRh46moKoCzKA-g2h_1uOk9HUB06r6_KZbw@mail.gmail.com>
To: henry.powell.xx@gmail.com
Message-ID-Hash: DZVG7GJATKKUBHV5DYCDJK6H22LROIMP
X-Message-ID-Hash: DZVG7GJATKKUBHV5DYCDJK6H22LROIMP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Wrong Measurement Results
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZVG7GJATKKUBHV5DYCDJK6H22LROIMP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8193362395545000514=="

--===============8193362395545000514==
Content-Type: multipart/alternative; boundary="0000000000009eb65205f5c54969"

--0000000000009eb65205f5c54969
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Henry,
I am unsure if you tried with an "LO offset" or if you just changed your
center frequency.  Changing the center frequency will not avoid the
problems which can occur at the LO frequency.

There are two ways you can create a CW signal that is offset from the LO
frequency.  You can either change the "LO offset" setting of the tuning
options or you can use a waveform that inherently has an offset frequency.
Rob

On Tue, Feb 28, 2023 at 1:21 AM <henry.powell.xx@gmail.com> wrote:

> Hello, again.
>
> I tried with step attenuators and the result is there was difference
> around 2dB between 0 degree and 180 degree rotation of horn without
> attenuator. When I connected the attenuators to rx and tx paths, the
> difference raised around 10dB. When I change step of attenuator, I can
> decrease difference at 2, 3dB. But I can=E2=80=99t fix this.
>
> Yes my signal is CW wiothout offset. I tried to shift the center frequenc=
y
> of receiver. But the result is same. But I discovered something, When I
> switch the center frequency with 10MHz step, like starting 4GHz to 4.4GHz
> with 10MHz step, there is no difference at 0 and 180 degree of horn in so=
me
> frequencies. And also, If change the antenna location, I can find the
> location which is no difference at 0 and 180 degree in same frequency lik=
e
> just 4GHz.
>
> VNA is using swept technique. I know the values are uncalibrated in GNU
> Radio, I don=E2=80=99t care about the actual values at this stage, maybe =
i can
> improve the systems in the coming days but not now. Actually, When I rota=
te
> the Horn 45 degree in roll-axes, I can see 3dB decrease. In cross positio=
n,
> I mean 90 degree, Values are sensible. I can see the same result in VNA a=
t
> the same degree except 180 degree. That doesn=E2=80=99t make sense.
>
> Thanks for all answers.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009eb65205f5c54969
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Henry,<div>I am unsure if you tried with an &quot;LO of=
fset&quot; or if you just changed your center frequency.=C2=A0 Changing the=
 center frequency will not avoid the problems which can occur at the LO fre=
quency.</div><div><br></div><div>There are two ways you can create a CW sig=
nal that is offset from the LO frequency.=C2=A0 You can either change the &=
quot;LO offset&quot; setting of the tuning options or you can use a wavefor=
m that inherently has an offset frequency.=C2=A0</div><div>Rob</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Feb 28, 2023 at 1:21 AM &lt;<a href=3D"mailto:henry.powell.xx@gmail.com">h=
enry.powell.xx@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><p>Hello, again.</p><p>I tried with step attenuator=
s and the result is there was difference around 2dB between 0 degree and 18=
0 degree rotation of horn without attenuator. When I connected the attenuat=
ors to rx and tx paths, the difference raised around 10dB. When I change st=
ep of attenuator, I can decrease difference at 2, 3dB. But I can=E2=80=99t =
fix this.</p><p>Yes my signal is CW wiothout offset. I tried to shift the c=
enter frequency of receiver. But the result is same. But I discovered somet=
hing, When I switch the center frequency with 10MHz step, like starting 4GH=
z to 4.4GHz with 10MHz step, there is no difference at 0 and 180 degree of =
horn in some frequencies. And also, If change the antenna location, I can f=
ind the location which is no difference at 0 and 180 degree in same frequen=
cy like just 4GHz.</p><p>VNA is using swept technique. I know the values ar=
e uncalibrated in GNU Radio, I don=E2=80=99t care about the actual values a=
t this stage, maybe i can improve the systems in the coming days but not no=
w. Actually, When I rotate the Horn 45 degree in roll-axes, I can see 3dB d=
ecrease. In cross position, I mean 90 degree, Values are sensible. I can se=
e the same result in VNA at the same degree except 180 degree. That doesn=
=E2=80=99t make sense.</p><p>Thanks for all answers.</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009eb65205f5c54969--

--===============8193362395545000514==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8193362395545000514==--
