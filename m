Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA18638894
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 12:21:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5809D3842FB
	for <lists+usrp-users@lfdr.de>; Fri, 25 Nov 2022 06:21:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669375265; bh=DnZzdd3eA+7j+/LxS0+nDBia2J6sSNZpNnkoR58sbpk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YDusbnfD627175ZeZ6KE1+YKkg3e0qqvzQ3ly1W7sIh7eUIZXV8qIdbtrM0pDzF38
	 mcxVtdrnpXNyI5rwJz5bDGNk5AHYP2y3Pejb33gv6NCovLg3NHdbwRAQafs3/VKcah
	 eKYruKQeeWxIr4/Y02SSu9I3aba3pbORJnPqdP2pnf3AIsyURR0a2Xjglm/4oxukZK
	 g0hvcNLBfCnqauajoLdZTkCSHB1pXCuo99dw/q1Q+7mLcHjglR9EqmptjyhmHfu6OZ
	 LW8Uo0g3hPw8/um50BZaL/r5+YozwjS2n6oJdhdAjqkYKH3FBdyuBTJTm5XthP+2YE
	 BUduE6g1XONdQ==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id E8D8C384157
	for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 06:20:57 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="oKysPgGR";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id g10so2448854qkl.6
        for <usrp-users@lists.ettus.com>; Fri, 25 Nov 2022 03:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7+t7bZh7H0p1ciWEkUwAEbSzTztSG8rB6RZEaIM951c=;
        b=oKysPgGRGKb//Zi8SD5WOcfYQ1XXKYjKUCVijTvOdNKl8bVOjnuTYtVH52uEjaa4Tj
         R7iJEak+gHR2QlDdcOq7LqswCrvxg21fU3u+FXKzZVjhukIxnxl3+3+SkAOyUBx1QDgX
         IE01Tbq6DOQlA311hilDFIlFMvlhEl8qzsj2pHxShWxp//8UNLWuxMOwTSRKV4GMFHgy
         aTASyB+w7F5wNlgkkLeyoOj8X09lLiuEKS5g62DF8ohMDlN9BHclIG0aW2j5JgIRz8X7
         sHSl9n4zg5QYFHCALz+a6WYrG1fAX76U2l2QASIVbx/mCn13SqS0y9Mm5PPQVqwgTd3/
         400g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7+t7bZh7H0p1ciWEkUwAEbSzTztSG8rB6RZEaIM951c=;
        b=hncMd5UI7MHQY1fakwVsADyQv9FwXtsqMawXbhxGbQlcelJbtxhBunobe/Lbvaz0d9
         qRauSUK72ofomuKVUc1PGqMGOkq8nKxLmq3L8FagfhKO7sfjtq0803G91U/bOM+Ujgrq
         liplfFXbuIAvkSj4v4fhiv6xN1QcDgvf4uD7pSmcpNfkR7KIMMvNI8h8fLTWP3WjL+Sc
         lzdkuh7c0CsoaSa8XO8KoXOJgqifhPj49HqEzkpkszuEm94lsYpFrum8OQ7ODpE4Zzvo
         sGmt5C7/gJXVgZSwfnEUZvSE9/+fFpT5aTOy1UEPSziG9yDU96MNnuU24E2HNZuf1Oou
         LeCw==
X-Gm-Message-State: ANoB5pmcwPXh3uYsrvBT7XELlIZwe3+CrY9XEbMIDHXDnSXloqd+Cfyt
	PyGXdrN/0j0dr5SxJpCRyX6xGXWrdM+P5x9pZESXX0KHlZx0fg==
X-Google-Smtp-Source: AA0mqf7MHfos5VzkACCCbUZ49LAfIAShtQrHaTUEELssDfugzWj1GEJ7MP0W8GnsT/Ti17XPZ7Fv3OvOVrJvCN7uo7A=
X-Received: by 2002:a05:620a:13ee:b0:6fb:93cc:4205 with SMTP id
 h14-20020a05620a13ee00b006fb93cc4205mr18146991qkl.131.1669375257109; Fri, 25
 Nov 2022 03:20:57 -0800 (PST)
MIME-Version: 1.0
References: <ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ@lists.ettus.com>
In-Reply-To: <ESKONbmzHUfJHobjSlZu00HJfQA4ligS3KoKlAlb5YQ@lists.ettus.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Fri, 25 Nov 2022 12:20:45 +0100
Message-ID: <CAKHaR3nVrv08sLaGjv_Vv3SngthyP6r4+FKLZG6UwRhTE6Tg=g@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: QZL5B6EA5KBIJHPXD77OFZVVGRLUXJUS
X-Message-ID-Hash: QZL5B6EA5KBIJHPXD77OFZVVGRLUXJUS
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 master clock rate
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QZL5B6EA5KBIJHPXD77OFZVVGRLUXJUS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5533781249908217861=="

--===============5533781249908217861==
Content-Type: multipart/alternative; boundary="000000000000327b2a05ee49b788"

--000000000000327b2a05ee49b788
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,
thank you very much. i'll look into it. unfortunately it worked at 125 MHz
on UHD 4.0 when most of the stuff was hardcoded... anyway I'll figure out.

Dario Pennisi

On Fri, Nov 25, 2022 at 10:51 AM <perper@o2.pl> wrote:

> Hello,
>
> I recently experimented with adding new master clock definitions for X411
> (my port of X410 code to ZCU111).
>
> Here is a commit that does that:
>
>
> https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c701=
14f5011
>
> But the clocking chips on ZCU111 are different so from you perspective th=
e
> commit might be cluttered with useless stuff.
>
> From my experience the key are =E2=80=98master_to_sample_clk=E2=80=98 dic=
t from
> x4xx_rfdc_ctrl.py
> <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c70=
114f5011#diff-512da83981e88a61c70b093f36b15628ec086f429613f79abc25234548a6c=
fdc>
> (currently there is no master clock rate of 125MS/s or 100MS/s,
> there is 2*125MS/s or 200MS/s) and =E2=80=98prc_clock_map from=E2=80=99 z=
cu111_clk_mgr.py
> <https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c70=
114f5011#diff-d91773ec3db6663fcee00c00022faff9981ec5902f6ae807f09f9519903fe=
276>.
> Maybe legacy mode (is_legacy_mode) is also relevant in your case.
> I don=E2=80=99t what it was for exactly - I just removed it from X411 spe=
cific
> code as I don=E2=80=99t have any =E2=80=98legacy=E2=80=99 stuff that I ne=
ed to support.
>
> Then you need to verify if =E2=80=98config=E2=80=98 function in x4xx_samp=
le_pll.py (and
> maybe x4xx_reference_pll.py) contains everything that it should for
> your needs. After short look it seems that it has what is needed as it ha=
s
> definition of 100MHz VCXO for 3e9 sample clock.
>
> If this used to work once, and you know when it worked, then you task is
> simpler - you need to look for changes in the mentioned files and especia=
lly
> in the structures that I pointed to.
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000327b2a05ee49b788
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Piotr,<div>thank you very much. i&#39;ll look=C2=A0into=
 it. unfortunately it worked at 125 MHz on UHD 4.0 when most of the stuff w=
as hardcoded... anyway I&#39;ll figure out.</div><div><br clear=3D"all"><di=
v><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,s=
ans-serif;font-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0=
,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"></div></div></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Nov 25, 2022 at 10:51 AM &lt;<a href=3D"mailto:perper@o2.pl"=
>perper@o2.pl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><p>Hello,</p><p>I recently experimented with adding new master=
 clock definitions for X411 (my port of X410 code to ZCU111).</p><p>Here is=
 a commit that does that:</p><p><a href=3D"https://github.com/ptrkrysik/uhd=
/commit/719257702b788703e24fa8595d190c70114f5011" target=3D"_blank">https:/=
/github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c70114f5011</=
a></p><p>But the clocking chips on ZCU111 are different so from you perspec=
tive the commit might be cluttered with useless stuff.</p><p>From my experi=
ence the key are =E2=80=98master_to_sample_clk=E2=80=98 dict from <a href=
=3D"https://github.com/ptrkrysik/uhd/commit/719257702b788703e24fa8595d190c7=
0114f5011#diff-512da83981e88a61c70b093f36b15628ec086f429613f79abc25234548a6=
cfdc" title=3D"mpm/python/usrp_mpm/periph_manager/x4xx_rfdc_ctrl.py" target=
=3D"_blank">x4xx_rfdc_ctrl.py</a> (currently there is no master clock rate =
of 125MS/s or 100MS/s,<br>there is 2*125MS/s or 200MS/s) and =E2=80=98prc_c=
lock_map from=E2=80=99 <a href=3D"https://github.com/ptrkrysik/uhd/commit/7=
19257702b788703e24fa8595d190c70114f5011#diff-d91773ec3db6663fcee00c00022faf=
f9981ec5902f6ae807f09f9519903fe276" title=3D"mpm/python/usrp_mpm/periph_man=
ager/zcu111_clk_mgr.py" target=3D"_blank">zcu111_clk_mgr.py</a>. Maybe lega=
cy mode (is_legacy_mode) is also relevant in your case.<br>I don=E2=80=99t =
what it was for exactly - I just removed it from X411 specific code as I do=
n=E2=80=99t have any =E2=80=98legacy=E2=80=99 stuff that I need to support.=
</p><p>Then you need to verify if =E2=80=98config=E2=80=98 function in x4xx=
_sample_pll.py (and maybe x4xx_reference_pll.py) contains everything that i=
t should for<br>your needs. After short look it seems that it has what is n=
eeded as it has definition of 100MHz VCXO for 3e9 sample clock.</p><p>If th=
is used to work once, and you know when it worked, then you task is simpler=
 - you need to look for changes in the mentioned files and especially<br>in=
 the structures that I pointed to.</p><p>Best Regards,<br>Piotr Krysik</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000327b2a05ee49b788--

--===============5533781249908217861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5533781249908217861==--
