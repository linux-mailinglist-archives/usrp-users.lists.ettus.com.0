Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C962A1DD7B
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 21:39:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EF44385F11
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2025 15:39:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738010382; bh=SYh6/JpxlBmbYfLF7UMHGGXtf5Vj4IJJ0gPtcC6YkU0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YJgq1pd40ePLBQu9N/dkps1zv8vHUKz2uWmynTVRcokOy7RxviBQAOrniYutwv9uK
	 Y5h7aoT9npFb4XW50AugQuPDo1F+bqiwQ4h81AcbvthH2Bb7sA49hFJ9j9tuhu20BK
	 Hr5l9SKwSofyPnQFtUJn+BR+0V0mcxXEzW5eP1fSvq725FQyNsDNZxrx19hWNaoipx
	 4PBQz56CK4iA/BNzcdGfGNGU+6Tn4PWIj+xCBWJ+dl11zISavsnJihx2TegUCJ1cMH
	 mW0fvs8dA4FJ9fsqFTqkM29RlO1+HPRKAOuH/+i7PSHlUcydke/D0K/gakqLjXs03q
	 jmfiw3i7/BDnQ==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id C5BD3385F80
	for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 15:39:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UChtCAR3";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d7e3f1fdafso9364712a12.0
        for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2025 12:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1738010346; x=1738615146; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7feDUQHj2CU+1HHfnPof9/mkNRxmj4Fv9Q05zpBBNQA=;
        b=UChtCAR3Wz+fabMg3in3ERtJZtwJd9Khj2H4VjXCUTqXlzt70wnjT6YJMiNbGjUeHA
         AHRZaXhQKlBgcX78lQXMs96Atd5X6N41TBry4aU65bwtbRvQo6JJUIN46QpoTbNGpcGC
         nTPm8RNRySNNrigq8mzicJXjOTf1krbkLeO6GZW6uJy87pFqfbdeCsJdtAiNMyMAw7+E
         S0i1IcfyZf9v4ZCOacsSj/OOvVnMYTGdey7hQbxoq0K/Ekmm2ZefacG+layVcCb8Q5ak
         W0ORPtLoPVvAVfNCEhmpr+BVaQcRGSI8nAg2jXZhT5Nb0yCKOrClIy7DhrqLcLLOkZz8
         /ttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738010346; x=1738615146;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7feDUQHj2CU+1HHfnPof9/mkNRxmj4Fv9Q05zpBBNQA=;
        b=NWPGBWZ3RBO4t1BpeMULfnVVlISv80lgG/BlYptizpHBgb3Gk5O7vstYfF2DImRmMP
         oYqt62SlqiBshCgUOu0S4/+UmCbJVuqZJ04UHH1F4BhVOlyk4Hfv8i259e6Nn59UR098
         xumMNPqcGETyQx1HpuRZjl+1J7nGer238SACfNNNGbD38I4TEK3fj0XzsUOzMSJGZpM8
         7IuKk9UuXxJl1XHDQPpBUKBL/hJZZJk+36Ypuekzh+gae8eCbvkb1hkfi9GLKqdC44Tz
         EnzJT98/fm4xzesVwI99lOGGLuC3Gci+CUBnHacXZl/fPLo7toGR0b9lnQYSRyFTU5qD
         iE7A==
X-Gm-Message-State: AOJu0YxRr5dmc8s8EFEMN1vkBkwgr4P7AZdU9NkJUCBwt0GT5UwEAXUT
	1JwM8YEDfLliazB+sJUFHOM7bRaQG0LoDJP5IQ+17DndR8s0eWmDViq4oL+fLBqVFiWkoMugwnz
	MzXZ27K2i6BDJRnKajghZ/wmN2y/J+7NO4vgqUyeU
X-Gm-Gg: ASbGnctUGJdlB3/RZxCv5PatjxADAYa4AEm8sfWaFmvchkRhiKqPMjkIr370jBemaFy
	xm2kQyf/DfnQ6m9BxKtaQwct2eHgL+3aPWD2rNkr75vvtj45zR12usV+aBiaAHm8dZpYs9LUxwg
	hZkcHEHU4hgn1RYyWC/w==
X-Google-Smtp-Source: AGHT+IH7yTRplcL01ScIRbg4nvNdDjKpNgCC0XfioHrIah1f8I4oC5Q6eB6ZYbHFxBAEiNgkKI1CILXllZWVWgsxU6I=
X-Received: by 2002:a05:6402:5110:b0:5da:ce9:43ae with SMTP id
 4fb4d7f45d1cf-5db7d2ff893mr40945515a12.15.1738010345535; Mon, 27 Jan 2025
 12:39:05 -0800 (PST)
MIME-Version: 1.0
References: <J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw@lists.ettus.com>
In-Reply-To: <J5WMXdykR30mvVE3rfXO0gExnlsTYuEOvqRviFMPxw@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 27 Jan 2025 21:38:55 +0100
X-Gm-Features: AWEUYZk0fBWlBmoXCMCJBJvnGsjVzks7mctxz2RzSIN-7bHoFe6AsW2mjCZG1CI
Message-ID: <CAFOi1A7Lkk08WjdkJj_T0PnyhQpjZdjzUeyBc_4EZsrX5-ozyg@mail.gmail.com>
To: cyberphox@gmail.com
Message-ID-Hash: 7ZXFMXM7ZCRYG5WVVXYPHODPH34HIGMT
X-Message-ID-Hash: 7ZXFMXM7ZCRYG5WVVXYPHODPH34HIGMT
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sample alignment between 2x UBX160 using USRP-2794
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7ZXFMXM7ZCRYG5WVVXYPHODPH34HIGMT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4678137351646263147=="

--===============4678137351646263147==
Content-Type: multipart/alternative; boundary="000000000000431d86062cb6114c"

--000000000000431d86062cb6114c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can theoretically connect the radio0 and radio1 I/O ports directly to
your block, and keep the ctrlport connections so that you can do tunes etc.
I would *not* recommend this. We've done loads of tests regarding
time/phase alignment on X310. If you feed data into the radio blocks with
identical timestamps, and your USRPs are properly time- and frequency
aligned (using an Octoclock), they will come out at the same time (or at
least deterministic offset). If you try and do this yourself, you basically
have to reproduce everything that's already in the radio blocks.

Which AXI bus are you referring to?

--M

On Mon, Jan 27, 2025 at 10:09=E2=80=AFAM <cyberphox@gmail.com> wrote:

> Hi Ettus
>
> We are having a real challenge trying to align two identical streams
> feeding the ubx160 on a usrp-2974. It is a problem we have had for a long
> time.
>
> The data entering the axi bus is aligned but at the output it can be
> misaligned by 5 to 15ns or so.
>
> Is it possible to completely bypass this bus and feed the DACs directly?
> FYI, We have tried this but other stuff doesn=E2=80=99t function quite ri=
ght, as
> you may expect. It was just to experiment. Definitely somewhere between w=
e
> get misaligned.
>
> Any tips would be appreciated
>
> thank you for your help
>
> Marino
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000431d86062cb6114c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can theoretically connect the radio0 and radio1 I=
/O ports directly to your block, and keep the ctrlport connections so that =
you can do tunes etc. I would *not* recommend this. We&#39;ve done loads of=
 tests regarding time/phase alignment on X310. If you feed data into the ra=
dio blocks with identical timestamps, and your USRPs are properly time- and=
 frequency aligned (using an Octoclock), they will come out at the same tim=
e (or at least deterministic offset). If you try and do this yourself, you =
basically have to reproduce everything that&#39;s already in the radio bloc=
ks.<br></div><div><br></div><div>Which AXI bus are you referring to?</div><=
div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2025 =
at 10:09=E2=80=AFAM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><p>Hi Ettus </p><p>We are having a real challenge trying to align tw=
o identical streams feeding the ubx160 on a usrp-2974. It is a problem we h=
ave had for a long time.</p><p>The data entering the axi bus is aligned but=
 at the output it can be misaligned by 5 to 15ns or so.</p><p>Is it possibl=
e to completely bypass this bus and feed the DACs directly?  FYI, We have t=
ried this but other stuff doesn=E2=80=99t function quite right, as you may =
expect.  It was just to experiment.  Definitely somewhere between we get mi=
saligned. </p><p>Any tips would be appreciated </p><p>thank you for your he=
lp</p><p>Marino</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000431d86062cb6114c--

--===============4678137351646263147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4678137351646263147==--
