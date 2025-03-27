Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AEDA73E35
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 19:56:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6CEF0385812
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 14:56:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743101807; bh=oDHFKyblffqFINOpW6cU0PotcOmrCx8/VHLZjUaTs2I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jobP5/Pe4YB5WXAQZygbC9TSgFvQDXBdQ9jM/NgYBoBXrJH4c62UXwHqRRSdsi3MG
	 YjzCpTmkYtjaxgrEk6cw1SNYjavCOQqs3kAN43WKHL29AdOg21/W/c5XPiCEaw1KYo
	 WkFBsHSTJf4GP5kW+eWG4u0LLFjSqhQ07p22tNWMfoj2Cm/Xh8Es1uMvdZBfKT4hji
	 DvTCQzC857mcSKQybgxp0XuocnAIggOE49s63y307kts14mJ9UCB14W1HJJCVzS5Ns
	 PfWt0+2b/M5MKghH/O6EbMn6DqlssCZPygGUEjZ0MaDdc8P4Unr5DQMT+St2s7smt9
	 EM8g+zA3Ff33A==
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 658193859E9
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 14:56:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZyHV/THG";
	dkim-atps=neutral
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2c77a5747e0so716066fac.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 11:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743101763; x=1743706563; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sn0/4U89MDjHAxyHBSXH1Amj3iHZpSWBX7V6HfloeIY=;
        b=ZyHV/THGJ7NUJGnVAd2O+2wkUuHJ9VeEFM0+gnikLisvb+5aJ/XC6Ofls6SwPJOPPp
         LXpQmJAtyDJultS5MsszD8l5Gt3Hz+XITyX5FhJi8VeUpAWkUWF18z7JyFUfKkl2Yv7q
         A0zTgt05cn9drRikj6IsbhykMyZyXwS0nHc25gTDpfoNJ18jhUokC+GsiR5zExqItxQj
         ZpF6sgcw48MPi74UkFK2r5uV9MvA6LS1PmZxFNTvzxyuwClOW8gvZMWX5EJCV8FUCIap
         YJLfjU4X8b+e7z7pFyS7z0oDZIX665d7pAxsI6T+bVCHMek7vJU+Ty13tRNNjZnPYKqW
         bY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743101763; x=1743706563;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sn0/4U89MDjHAxyHBSXH1Amj3iHZpSWBX7V6HfloeIY=;
        b=lK/88kRO3NvvgDcVPzieQHHHRqnkdb53LYpB6PAfMd6840c2MAUA7KoJ1mmpoYYeAH
         SuXQgl8lndODVDSdLZ1Rf31m4LrY8bnRV6t69ltrovhlV+bSlW74BnbAjWY6cyhWJRtE
         QTsSXii2zDTTK2JVa0tt+q0g1q9Yc5ECt51TgWyDysIHxq6GDjKTapL6oN3caaOatHzb
         XnjBOm4Dc0dj9vA0fXm6c9NPfyUKnRvL+UyGtJkSuHlOUK+jWXXIXg6bLJ9vFiCOTRe7
         lKAUYLJt5r5KJ9S2NwlhGr+lwyqvRix06sFJCYuhzT27o4XPdWzTxVFO/1/4AiTABk9n
         Ke2g==
X-Gm-Message-State: AOJu0Yws8GV0g2SD4XaSFeM6RF+Ke/FqLgQSsRTMcMf9R7XHdPZ/bc94
	Xq8CsaITgO1858ob7d5nD+lsvhft6+Hh8un469MiFF9sd0EFzr3+zDJsYwt/OSpTv2TfCJMXYWI
	mJ1RqMTpe8sU0SmnoNKUp3uCJE3g=
X-Gm-Gg: ASbGncvEVt3Efh/ibp8bPQFy48Oohdtofze8B7MjbVAvizHek/fycXfwxcRBjj7TgCm
	t7EkH95aosqkHImDee1qBe+Hh3uGAefzPwtknaKGfqYWbxhLXEXMMYv/0hbQ0bVnFs7+iVCyz7a
	jSYrGLIfODEeY/P2Fyt6gm/3FemkP0nu89e0I=
X-Google-Smtp-Source: AGHT+IFinjksuR3q9C4tp295CUVtixzAfxhIthZEw73FkbX8+L2phF7H7du5SLdcg02dEDNuKsGHzv2V5qQyk/lh7Os=
X-Received: by 2002:a05:6870:7d8b:b0:29d:c832:7ef6 with SMTP id
 586e51a60fabf-2c84828ebf1mr2613448fac.39.1743101763562; Thu, 27 Mar 2025
 11:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4@lists.ettus.com>
In-Reply-To: <AGvxBfikcSfEUTgSd5kHd5ySwZFjhgUeDmuDlI4@lists.ettus.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Thu, 27 Mar 2025 14:55:51 -0400
X-Gm-Features: AQ5f1JpqGET3mDIaxcmN3LcxEczffodQMy2I3Cu1N52IHKhmPfyRKplQwscVCaE
Message-ID: <CAOEzSFQn-35=T7LUEimkT2cjWmTpGg0Z_5ACjTHPWtpLHwqDdg@mail.gmail.com>
To: heath.j.stamm@gmail.com
Message-ID-Hash: ZKERCRLB7MPR5LP6NCDUOJLIZHY7ZKDT
X-Message-ID-Hash: ZKERCRLB7MPR5LP6NCDUOJLIZHY7ZKDT
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZKERCRLB7MPR5LP6NCDUOJLIZHY7ZKDT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4783405362925378580=="

--===============4783405362925378580==
Content-Type: multipart/alternative; boundary="0000000000006cb3ef0631578114"

--0000000000006cb3ef0631578114
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm not super familiar with the RFNoC stuff or the python workflow, but the
real key is to do timed frequency tuning of each channel, as seen in the
changes from this commit :
https://github.com/EttusResearch/uhd/commit/de1542331ff5f9dc29e252814ddeaa6=
45f5641f3

As long as the API you're using provides the flexibility to do this - which
I'm pretty sure it does - then you should be good. It could also be worth a
shot to just run the fixed tx_waveforms example program to prove it does
what you want.

On Thu, Mar 27, 2025 at 2:44=E2=80=AFPM <heath.j.stamm@gmail.com> wrote:

> Thanks for that reminder. I took a look at that example. We are using the
> RFNoC API (using the python bindings) and not the MultiUSRP API. I assume
> the same sequence can be achieved setting up the SDR through RFNoC?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006cb3ef0631578114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m not super familiar with the RFNoC stuff or th=
e python workflow, but the real key is to do timed frequency tuning of each=
 channel, as seen in the changes from this commit : <a href=3D"https://gith=
ub.com/EttusResearch/uhd/commit/de1542331ff5f9dc29e252814ddeaa645f5641f3">h=
ttps://github.com/EttusResearch/uhd/commit/de1542331ff5f9dc29e252814ddeaa64=
5f5641f3</a></div><div><br></div><div>As long as the API you&#39;re using p=
rovides the flexibility to do this - which I&#39;m pretty sure it does - th=
en you should be good. It could also be worth a shot to just run the fixed =
tx_waveforms example program to prove it does what you want.</div></div><br=
><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Mar 27, 2025 at 2:44=E2=80=AFPM &lt;<a href=3D"mailto:=
heath.j.stamm@gmail.com">heath.j.stamm@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><p>Thanks for that reminder=
.  I took a look at that example.  We are using the RFNoC API (using the py=
thon bindings) and not the MultiUSRP API.  I assume the same sequence can b=
e achieved setting up the SDR through RFNoC?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006cb3ef0631578114--

--===============4783405362925378580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4783405362925378580==--
