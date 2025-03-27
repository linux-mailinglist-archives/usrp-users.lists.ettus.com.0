Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D27D3A73DE7
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 19:19:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AE757385898
	for <lists+usrp-users@lfdr.de>; Thu, 27 Mar 2025 14:19:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743099583; bh=pbchWjuBk8K1GkZiu54/0FqlDr5mGHskgoqG9DNec20=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=jt66l3HLySE0PH1TGQgCDLl9OjZk92wAb6VDau0WpHpsCkS2iKgRbfpDFKbXkgem8
	 qWFxMYq5GoNYxyEcg451620l0+4XwBy81akycgYyJCprX4QItPMnsAmrquovIJbgP+
	 LRyDIs8Sw/JI+29H+OHu5fSlw6bRZ/rPdIniz9smgruhKDJOACLVQYjVzpr1C3FOmI
	 EEZrqu3pzdzx1DSVnCI+raufOswOmtMaG68ZmrUjDpcxK8buF+Wcu8rTYXCSLJO8nF
	 Z4+0OF4BF3WjcINpjDXwginGJtqVqOYdUXA1leMEELZu/gdEFF6e2PHpiJG9mot45i
	 v9j3B9mVqPo2w==
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 13D8B38554F
	for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 14:18:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Xs8oAv7d";
	dkim-atps=neutral
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2c1c9b7bd9aso695803fac.0
        for <usrp-users@lists.ettus.com>; Thu, 27 Mar 2025 11:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743099537; x=1743704337; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/W74Uy9ciPyOIyeqfHUmpb8oKugQRKMm2zy1vIojOdc=;
        b=Xs8oAv7d5YJu5C8/+AvvXwDa0mb0B3ASsBjERQJyrEofS8kZo2MIQk9gmpqJ9YXu7l
         LAXvydoSaSxkrVmQKUFbh+JcMywNEzxa5SxxYuu0D8wvmMy20C5bgET6GRJlCT1DeCnM
         KbXL1R0a8aSykCtZmgtbQLg+gKpIn9N6YJR+fANfubn1yOXiXMuOEnQNq7ld8PitbtpS
         HdBM4Ub0OyWM9C+ecE2KJwIso3iRKyrOqryWCRXi3dri9y9QrhDusLEejnQ3peVdztEo
         /xVyCfuDhdzEeAHq2r9kJE4udSvP44dvXBDj1PWb18b7kEdKd9+hj5ipx9kK+XjXc0tn
         QHZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743099537; x=1743704337;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/W74Uy9ciPyOIyeqfHUmpb8oKugQRKMm2zy1vIojOdc=;
        b=SRY8OPr9vWTAIvGtHsOTMDqYiAwtk7V5YJ8go96AX7XQbT3XlyInHm52xdH8TLjWey
         s9wxHjN85tcxmPALCd4p6t2WtIedcWEuqUHulut+uA4GdiXnyPpn1NL3Kc4Dmki4Rxfu
         8RnMoP9JqTObQ2T8g3fiEje/4BPdQ7+itX6hZe/JHA1Beoyb+vvFZZyzSXAju0xieIyG
         W6KogWSgeAd6Hs6i1fOM4TdG57T81rWpRkjWomJw8ytEdxXTMU3lbqnrlWC26qW3SifA
         bJJYiYYVZ3ggqVyfYDLFc6L8FnB4e4ue+sD4NcFjxaCF5AYVAPybK7xsmjWaxNIPTwMj
         Zh4Q==
X-Gm-Message-State: AOJu0YynIyOJ83xRng3hI4DDSDnohD1l9RiHgvvFzf3c1f7I2aOsAykL
	qR46e6Oj+nAcrUgQg/b+44N01dUoYU+hBoCRrqIcYm7WEN6Md/lko2m/qXYl2F9bJT688CQFVJH
	mZjeKu8WypigxzuYiiKDEMeufKHb0gA==
X-Gm-Gg: ASbGncuSq54piuQe3sxl2omSbyXClZNOkej0G0qsXbNlmhWsFUzaqGJostbN8RxnLzp
	xUoivTp83sAgD26fUytC7iZmvXQYH8Aa1lN7DP4CgFN4jN4frTbh6qsT/clVvNDzGMwD2+kcwjF
	DXqcAkUacGNU+ECpzmHHtR/O7+
X-Google-Smtp-Source: AGHT+IFDN4tBDuGJ/QF1LKMj5kjRt+UYx0zyAqoha6E/jIGbWkjLLEKh5STh89vE/pSO4rnSWLhlF489pxBABVPKxQs=
X-Received: by 2002:a05:6871:528d:b0:29e:34ef:bd7d with SMTP id
 586e51a60fabf-2c847f1bc7amr3059375fac.2.1743099537097; Thu, 27 Mar 2025
 11:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI@lists.ettus.com>
In-Reply-To: <h1IGU1dKBSYyzgM0MVJ4UXaEQ5NdM48p061Suc0ucI@lists.ettus.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Thu, 27 Mar 2025 14:18:45 -0400
X-Gm-Features: AQ5f1Jocx-G-tFHGR9CyV7w1auLoO0-TIMK29g_IKBqc7rhUbUrLxmLoOujjHow
Message-ID: <CAOEzSFQX9ziPf52R=rYzyAnpebcu+t1fEt_GTCtTQGVswhsSLg@mail.gmail.com>
To: heath.j.stamm@gmail.com
Message-ID-Hash: HNIN455UPLJR3ZCSDBRRFZ2M62TY7JHB
X-Message-ID-Hash: HNIN455UPLJR3ZCSDBRRFZ2M62TY7JHB
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 Phase Coherent but not Phase Aligned
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HNIN455UPLJR3ZCSDBRRFZ2M62TY7JHB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1226342099728209690=="

--===============1226342099728209690==
Content-Type: multipart/alternative; boundary="000000000000b79e0f063156fc87"

--000000000000b79e0f063156fc87
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Okay but just a reminder, as far as I know only the one example script
"tx_waveforms.cpp" was fixed to address this problem, so it may be easier
to just print the latest version of that and follow that code structure in
your application (since I assume you're not just running tx_waveforms).

On Thu, Mar 27, 2025 at 2:04=E2=80=AFPM <heath.j.stamm@gmail.com> wrote:

> Great, thank you! Will upgrade to UHD 4.8 and give it a shot.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b79e0f063156fc87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Okay but just a reminder, as far as I know only the o=
ne example script &quot;tx_waveforms.cpp&quot; was fixed to address this pr=
oblem, so it may be easier to just print the latest version of that and fol=
low that code structure in your application (since I assume you&#39;re not =
just running tx_waveforms).</div></div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 27, 2025=
 at 2:04=E2=80=AFPM &lt;<a href=3D"mailto:heath.j.stamm@gmail.com">heath.j.=
stamm@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>Great, thank you!  Will upgrade to UHD 4.8 and give it a =
shot.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b79e0f063156fc87--

--===============1226342099728209690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1226342099728209690==--
