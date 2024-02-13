Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC748853376
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 15:45:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D07C6384B26
	for <lists+usrp-users@lfdr.de>; Tue, 13 Feb 2024 09:45:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707835514; bh=KUo3Z8hV2ruHYVyoyhlUpM1S1UpDYyLRjNwlJK+7KbA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Mrbv6sg+1kCJIlpzbS97PDXWgIJKSaYBURX0v1GuGm0SUYrHu6gVSPCYujKxHuT+o
	 SWnNJTmSpc0CiZq1FCRc1YdPLIlmhIXA8uFjmFTaslyLnm1sJb+Vo1d9MIiSMWdtAn
	 IcFsqljfq3HHHUmGR6oExBCTEfedLsmjNDipN7mkPtjMROkfE3JD0JbAURQv8fWS0G
	 MZ1kNLFYxueEWVzHVkujIFg+Lh+ydagA7EEVDMxKRFhsXYs5wBe/2SEElPdjJqPg5d
	 IKvu8Nif+aFDDFu9AhLb3qXaO0D6lUJ7r12HMbCrNwKj4HSeAC5w5zCkoKonj4cH2u
	 WRVXLWvkfkQ+Q==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 6C58D3848A5
	for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 09:44:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WPxj4TQo";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a3ce44c5ac0so174319866b.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Feb 2024 06:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707835474; x=1708440274; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ve0tyVJm13gw8Vx6m9vZ+Izg2bbnZSdx7mhD2RDLax8=;
        b=WPxj4TQoCR8stM/Eh6OlEudW1wK6OIb5WLtFZOKF8OGNgC0LwM8nZlUfkN3DHC9svO
         KgfS6gipKDV+akJZqiYfQtQcb8XrcZPnwC33/a34FAj5HKOEz0ZV5IKAPO1Tan7FpOUo
         Ro6YiVH1FmKhZ2CHZF+W4gwadJ9A/mPpT7l6dzp7qI6Ao2R4JqO7r6MdppTd6LDRog97
         AOpZtXfq7nIWXLs39fzOom16N1xAkbkOL6AhUJXZf6g1prtnEoHNdpJqDjSkqzmUDjac
         /FJ6bt/eK0mGs9YsYad88DL+XkujUblx1trWqpBPLysqVV8/duzyF26EWGiegqJSvV1M
         nOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707835474; x=1708440274;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ve0tyVJm13gw8Vx6m9vZ+Izg2bbnZSdx7mhD2RDLax8=;
        b=BsQyfAgjK0zQtGEEMroZW3e471wmj8At6s7Oz4Zyi9OlXLz4i6QvvwbNy5tqksnhx/
         wfjdCepIavpNfBeCoLFxcD1Bqm8t824WpcZqCK5xu8XGQ4MsZU9Z0N87OJAoNPxJxClC
         K/s8HQwzVZ+6i9Gn/vZSkU1yre+tiLu5Zc83CWoXn2uyySoLQWFuo62s3JAnRBKMdhiZ
         ZiFSGFaVNhycYQYi3bNWS9HR9tnJyF1Hf8Cg7tiAPkGzXA+I0qmi58mwxJMY+9DZBwEP
         R9GNwGS1XsM07bfk4D9XElufZRFfeFztq8rWprVSpXbKlOm2oAiyitRJkrYKAQFb7AcL
         oPOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpYNgtbNsuk37lCr9gRHiJ6zU3PiGaiHb27mYMtvOBBVg7yrjmXaCwZ/3D2IycWCR+UPCPZ/j7q9i7uK0gd7Kj98R8ZQxWsQbvDQ==
X-Gm-Message-State: AOJu0Yz7my91CX1NHryXjfEvLhGmdGLP3h2knCv3+AEYTxdxWIcnw9As
	678jE7BpyEIp8Dw61gmTd8cHjDNvCoDatMixDUYKGY1128Y/TjBb9FyS5n2I1nGOBfwqCqDWyJL
	oKojNS65RMskhRL8XL0rsOuYNKhA=
X-Google-Smtp-Source: AGHT+IHpRprrhHuPNdDic2GkDEEf472gpFIytM/lTmCGO+9FruXYg3E/fxqO8qK1qssYKEpRQYJp+aDaBUJKmsRigmk=
X-Received: by 2002:a17:906:528f:b0:a35:aadc:a522 with SMTP id
 c15-20020a170906528f00b00a35aadca522mr8492342ejm.57.1707835473872; Tue, 13
 Feb 2024 06:44:33 -0800 (PST)
MIME-Version: 1.0
References: <ydTJtYzwSbHTPd2X7O9RMzkCGwqAlfBUIAKOjVf6RQ@lists.ettus.com>
 <CAKHaR3k90Bn3oXPCckYiNqToGKUmCrfW6GZPNrM+7f0JOx7SoQ@mail.gmail.com>
 <CAEXYVK7XetC__b5vjnoqHAsVqVU1XH-wX2LWEW4mQTJemVbniA@mail.gmail.com>
 <CAKHaR3m81BUmSvJbh-Z3Ob6havhcq8+JNvZc=Q5sTna1_WeV1Q@mail.gmail.com>
 <CAEXYVK76sqhOR2cfyKW8gsVGxaC0y238HWsLPEA41yt5dQc6KA@mail.gmail.com> <CAKHaR3mO7DeyWbjSZsR3z-QdwnULQbvH1SDQCoPFhVWqBBvp0Q@mail.gmail.com>
In-Reply-To: <CAKHaR3mO7DeyWbjSZsR3z-QdwnULQbvH1SDQCoPFhVWqBBvp0Q@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 13 Feb 2024 09:44:22 -0500
Message-ID: <CAEXYVK7WL3WnWiWT4zRRb+nOCZe81cz33dqTaCoLb8zPqiOdcA@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: JPRKKEME5FRNE3SRENFFYV6GWAXZNSZV
X-Message-ID-Hash: JPRKKEME5FRNE3SRENFFYV6GWAXZNSZV
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding existing RFNOC blocks in GNU Radio GUI
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JPRKKEME5FRNE3SRENFFYV6GWAXZNSZV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5127098638306455829=="

--===============5127098638306455829==
Content-Type: multipart/alternative; boundary="000000000000c14bac0611446e82"

--000000000000c14bac0611446e82
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 13, 2024 at 3:10=E2=80=AFAM Dario Pennisi <dario@iptronix.com> =
wrote:

> Hi Brian,
> thanks for the clarification, however, if i'm not mistaken, the commit yo=
u
> mention is on main and that should be in gnuradio 3.10, whereas if you
> stick with 3.8 that will still require gr-ettus, as also stated in here: =
gr-ettus/README.md
> at maint-3.8-uhd4.0 =C2=B7 EttusResearch/gr-ettus (github.com)
> <https://github.com/EttusResearch/gr-ettus/blob/maint-3.8-uhd4.0/README.m=
d>
> also, the python script you mention is good but doesn't address completel=
y
> the OOT development flow as it still lacks all the block driver counterpa=
rt
> (python/C) and the OOT tree skeleton which is quite conveniently created
> with rfnocmodtool.
> of course you could just copy the example tree and start modifying it
> however to be honest i've spent some time trying to use gnuradio 3.10/UHD
> 4.x without gr-ettus and several things were not obvious especially due t=
o
> lack of updated documentation and btw i asked a few times what was the
> expected way of handling this and have been told that rfnocmodtool was
> going to be revamped and included in future versions:
>
> [USRP-users] Re: rfnocmodtool (mail-archive.com)
> <https://www.mail-archive.com/usrp-users@lists.ettus.com/msg16935.html>
>
> rfnocmodtool - NI Community
> <https://forums.ni.com/t5/USRP-Software-Radio/rfnocmodtool/td-p/4349614>
>
>
Sorry for the confusion.  My recommendation was to ditch 3.8 as well and go
with 3.10.  In my opinion, there's no reason to start a new project with a
codebase that isn't maintained or supported.

I agree the documentation is lacking, but there seem to be enough examples
out there to understand what to do.

Brian

>

--000000000000c14bac0611446e82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Feb 13, 2024 at 3:10=E2=80=AFAM D=
ario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.com</=
a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr">Hi Brian,<div>thanks for the clar=
ification,=C2=A0however,=C2=A0if i&#39;m not mistaken, the commit you menti=
on is on main and that should be in gnuradio=C2=A03.10, whereas if you stic=
k with 3.8 that will still require gr-ettus, as also stated in here:=C2=A0<=
a href=3D"https://github.com/EttusResearch/gr-ettus/blob/maint-3.8-uhd4.0/R=
EADME.md" target=3D"_blank">gr-ettus/README.md at maint-3.8-uhd4.0 =C2=B7 E=
ttusResearch/gr-ettus (github.com)</a></div><div>also, the python script yo=
u=C2=A0mention is good but doesn&#39;t address completely the OOT developme=
nt flow as it still lacks all the block driver counterpart (python/C) and t=
he OOT tree skeleton which is quite conveniently created with rfnocmodtool.=
</div><div>of course you could just copy the example tree and start modifyi=
ng it however to be honest i&#39;ve spent some time trying to use gnuradio =
3.10/UHD 4.x without gr-ettus and several things were not obvious especiall=
y due to lack of updated documentation and btw i asked a few times what was=
 the expected way of handling this and have been told that rfnocmodtool=C2=
=A0was going to be revamped and included in future versions:</div><div><br>=
</div><div><a href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.c=
om/msg16935.html" target=3D"_blank">[USRP-users] Re: rfnocmodtool (mail-arc=
hive.com)</a><br></div><div><br></div><div><a href=3D"https://forums.ni.com=
/t5/USRP-Software-Radio/rfnocmodtool/td-p/4349614" target=3D"_blank">rfnocm=
odtool - NI Community</a><br></div><div><br></div></div></blockquote><div><=
br></div><div>Sorry for the confusion.=C2=A0 My recommendation was to ditch=
 3.8 as well and go with 3.10.=C2=A0 In my opinion, there&#39;s no reason t=
o start a new project with a codebase that isn&#39;t maintained or supporte=
d.</div><div><br></div><div>I agree the documentation is lacking, but there=
 seem to be enough examples out there to understand what to do.</div><div><=
br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000c14bac0611446e82--

--===============5127098638306455829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5127098638306455829==--
