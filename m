Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A1588EE87
	for <lists+usrp-users@lfdr.de>; Wed, 27 Mar 2024 19:50:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88450386746
	for <lists+usrp-users@lfdr.de>; Wed, 27 Mar 2024 14:50:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711565406; bh=dUmJ8jrhvXQaVV1Q4jLu9z25aUST5UV3OdThpEgdqGs=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RSQh9VEhnGgefNQtfhlZ7BIssI4Yq57Q8/6vYPnrBNKqpp9qjZgrYjzlum5fe08sA
	 xGj1gMYshbR8PETcFL3xtb6g7ittuJN1ZuV8NYJzu6dJFIOsKCSmDjFOvC8V/3Zhzh
	 YYxaWLaE8Ub6NDmF0Ul8b1veh4AhMJGljUYsD+w768vidhANSH7yOnWg8NriVXeWNZ
	 g4HvlFEr8s/YFSxGBKlWr/h/WdA5RWL9xamsV3J/OimLPEsdNDgzSiAqt3DgGUfy+K
	 Co1VYFJW9ngpbrht2vOjmUc3IfQ0njZ4cbOaJ5qCm+HB38WkEzq/chidN4xNoPCRFa
	 fkaOh2Lf56EBQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id B55473852D5
	for <usrp-users@lists.ettus.com>; Wed, 27 Mar 2024 14:49:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="eszXNCaV";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-56c36f8f932so2241159a12.0
        for <usrp-users@lists.ettus.com>; Wed, 27 Mar 2024 11:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1711565369; x=1712170169; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OYnnWGr6hHd1SmF5bY+MrXa3QdpH3GJLuGjcGdPq2YY=;
        b=eszXNCaVcs3yL3QHDxVq/VPzXeyWxR7Pmz19qOPiZiScJxkmiGBCo/EB7ZYCae2YVj
         lQzwCUJb8Bue7WFIzQine2B5EKUQdRAKf3Xny9GuP+LHSppTbNHtUoFWYT3Uuj67mv+w
         PMMo+6R8n/VoYsZkxFoyfCTNLl09a8/LF7nqFAKdupUc8Puawh/6hUrMvxUq8PfwtHu9
         snsfhoWJoeEKNpp00z9MsUaTDz8y53Ew08uCLwYQmi0eCm57Mr94mLZt7/SU/aU74bRT
         lZHSYsPVPXbjoNKaI90KSgBupsUeR40VzaAluHq7TKqIGx0nFcr7mGPt85wPjA1Tk0Ik
         Oyig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711565369; x=1712170169;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYnnWGr6hHd1SmF5bY+MrXa3QdpH3GJLuGjcGdPq2YY=;
        b=AHfo71/5ooEYHopxsD4gTKFxxQp3Qn7fD/13C1q9IJQJuPrU5++GJCGfvXnz0nd1qQ
         1zh11fBsEvmph8FSPhGVVN9a7YMAx2f2mMw2rv4uvJz+7x7lVxGIoa+0YnxJln0bidGv
         CtCzAnIp1OoSkNfQ+eZw9e7y6OoZ4kB4VrehQXY53OCjZ6lUoIU43c2JHSrAsJ1HSsWM
         bWadYrKA4f9hj0g69Kfqfrqv9Pbz5NElfjpA4JJnhpf+UTbcabpS1kx9yDfTQ7CpsWq4
         Rn0bq/tF+K6bQoPHYduUngnZU5yIuovGflLt3NBySaGtTXZti6BfwWXUqy6jO7QyKQVI
         1bdg==
X-Gm-Message-State: AOJu0Yxp1c+Teb9FTm4IFn+IilgOyiLJKfOfL/pvg9qBn4DIC4CMGeqL
	T1edOkE3IdBAGnA7Zucr1Z9Xx88m9UWlRkTOyLto6J3hJWsXsOKlTsLbZRaGqPzYNikz125Eaki
	7rwHNeZk/bxlEZmGLdN4hVOOEwS+kqWm8unoEZCqjP7vDCjlIuXg=
X-Google-Smtp-Source: AGHT+IG1oN5Zv8JTOcn5wYkE+b6jhvGLSFXRqBulSjBhZdrlKcI4LknicYpaJrhqVw331/jRRuuAOdK/o/Qzl6qM9yM=
X-Received: by 2002:a17:906:1145:b0:a4d:f673:7f30 with SMTP id
 i5-20020a170906114500b00a4df6737f30mr131432eja.11.1711565369482; Wed, 27 Mar
 2024 11:49:29 -0700 (PDT)
MIME-Version: 1.0
References: <6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY@lists.ettus.com>
In-Reply-To: <6Wg9f0m3WGsyTFzQnMRPh3SyzNWjlInMVKoDSPkoY@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 27 Mar 2024 13:49:13 -0500
Message-ID: <CAFche=iRArTvaQ0igauyN0gD_43Jt_d997T4-mW8Th0QHTkGBw@mail.gmail.com>
To: chris.pineda@chaosinc.com
Message-ID-Hash: NOU475SLMD4I3VYCYPYJ6F5FWSU2NDVC
X-Message-ID-Hash: NOU475SLMD4I3VYCYPYJ6F5FWSU2NDVC
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to Simulate RFNoC FFT Module in Questa/Modelsim
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NOU475SLMD4I3VYCYPYJ6F5FWSU2NDVC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8369615378188193968=="

--===============8369615378188193968==
Content-Type: multipart/alternative; boundary="000000000000dbc1160614a8dd5f"

--000000000000dbc1160614a8dd5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hmm. If the library path is correctly added in the modelsim.ini being
referenced, then it should find it, or at least the error would be
different. You could check the [Library] section of your modelsim.ini to
make sure everything looks correct.

As another option, have you tried "make modelsim" to run ModelSim directly
without Vivado?

For what it's worth, this simulation is working for me, in Vivado, in
ModelSim through Vivado, or running ModelSim directly. When I run vsim (the
ModelSim GUI) I can see the xfft_v9_1_6 library under the Library tab (View
-> Library).

Wade

On Tue, Mar 26, 2024 at 8:54=E2=80=AFPM chris.pineda--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I did follow all those steps, and it still comes up with that error. I
> also wanted to note that this only happens for the FFT simulation, all
> other simulations appear to be working. I have a sneaking suspicion that
> it=E2=80=99s not linking all the files correctly, because I manually impo=
rted the
> aforementioned xfft_v9_1_vh_rfs.vhd file, and it gave new but similar
> errors about not finding other libraries. It also works when I use make
> xsim, which I presume Vivado is handling all file decencies properly.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000dbc1160614a8dd5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hmm. If the library path is correctly added in the mo=
delsim.ini being referenced, then it should find it, or at least the error =
would be different. You could check the [Library] section of your modelsim.=
ini to make sure everything looks correct.</div><div><br></div><div>As anot=
her option, have you tried &quot;make modelsim&quot; to run ModelSim direct=
ly without Vivado?<br></div><div><br></div><div>For what it&#39;s worth, th=
is simulation is working for me, in Vivado, in ModelSim through Vivado, or =
running ModelSim directly. When I run vsim (the ModelSim GUI) I can see the=
 xfft_v9_1_6 library under the Library tab (View -&gt; Library).<br></div><=
div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 26, 2024 at 8:54=E2=80=AFPM ch=
ris.pineda--- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><p>I did follow all those steps, and it still=
 comes up with that error. I also wanted to note that this only happens for=
 the FFT simulation, all other simulations appear to be working. I have a s=
neaking suspicion that it=E2=80=99s not linking all the files correctly, be=
cause I manually imported the aforementioned xfft_v9_1_vh_rfs.vhd file, and=
 it gave new but similar errors about not finding other libraries. It also =
works when I use make xsim, which I presume Vivado is handling all file dec=
encies properly. </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000dbc1160614a8dd5f--

--===============8369615378188193968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8369615378188193968==--
