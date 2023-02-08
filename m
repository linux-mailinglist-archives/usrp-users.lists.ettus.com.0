Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9386068F0FD
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 15:40:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1BF3B3830EC
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 09:40:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675867226; bh=m1SfgXgfLcCi5kidO1otaI4RITLg6/i/T3h+YkXO6D0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bs0ebeVw4mLK7Um4To75xUobwQur9plqSFxyMH2XmLaCJnBeH+QdJ65YGGAA/S1Jz
	 ClKSUvlSg/y01NTFwOEPpWQEVm2mHqAbaQ8fxpw6lkxhujyRWo17VnIPWon3GHMAB8
	 iMbXc/BM8m2EXfKqfOG5xtjjC+pBZBwuxjqth26k5Ib8x7UwYAH+NFoWOtqOtvGSLn
	 Flu4XEcZZ9slSg00xdNaIIFx/vIcIiWLMVVEwlwgu6Z4dgzq7iIugb7fZNrG3SbO5c
	 yczriHwTNNLWuW0N3HJ9hL5GhyspH3Q5bhMgUVhK4x0c3ladcNe42OSbpds3Z2b+9K
	 /LgpEy5k8RuiQ==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D2F238115C
	for <usrp-users@lists.ettus.com>; Wed,  8 Feb 2023 09:40:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="FYham8XJ";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id gr7so51709668ejb.5
        for <usrp-users@lists.ettus.com>; Wed, 08 Feb 2023 06:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KSwpJ3cP3q48nYyZc/V7q+ouK1lrTVtKwlFilZbRSWw=;
        b=FYham8XJ67kiz5kGoNOBtoaymcLmGF0hQcQApOPojzAneDBvpUTrK/TQwcONRNZoUU
         t6oHhxdFFxPZvx828buSYiXwkSnVHXIkKOrumnvjM/9IW24oKnVGF6kJUzJV2xhHTFNg
         Mr7ssOT42lpg7y0e3m+K9L4QUMGqRt0tUbi/K7RMBA0B7iTImN4pPm2zcNVK3psVm/JU
         ztimGP7pgx6zB8SbDkmwQbpSFw7xTbR7X1i8ZReANe0OKxScmzEHcw867YfCars0DsIt
         6cNBRxLTCYIwxPLrFN6rOYRZ2XFdGBZVHkVudIh8tQQjyPLM8RFOBxpDDDc6FkGtdhPF
         igCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KSwpJ3cP3q48nYyZc/V7q+ouK1lrTVtKwlFilZbRSWw=;
        b=6hYcSGrQyWcjbEEfMA3sav6NHRYo/3M+/x3FL0U5mGVw8X2KhVqbIDt/RjzWxWnbT8
         6t3n2XdWuZfCDz9C7PGUX/BArtjUGb1KhI09tr/s5nADGc1APaNEdazPO8/SkYFdu6pL
         HrQ1CeZ4ZG6zvDFg7PCa5wLM/bUGdfLzlhv2pMjd/8+xTDmC9UzkduaVVNBhRIKmxYbu
         W1JccgZ3H94Z6iCYRYvnQHpsq6YF5FwTo/G4NYTpWIwFdzMsXcLweLu3YDRr2ZqHc2BC
         ZNmEtjR5EyIcew/L559wwSSx+0mctcRlIhxbPQ/d00PRQlwaKTiAgdjbYrbcEFvwuk1o
         HMwQ==
X-Gm-Message-State: AO0yUKUomGj1DDM2qW+SzR3eChkwVqT/MlleivrIxV6QDlureiA+jWvG
	i0YCztGAjGk36UDmHLF0B0Zt86ibzbaQA+r3hRH2vtDFULvpmFT8oLQ=
X-Google-Smtp-Source: AK7set9Cs3Uy0eExZ6QqaV79+Kv0h6MZx44GGw2QMntABZX+OnoBUhNdultLt8jRvgN1zj1DsCNTk3Ia85YXTZUAECA=
X-Received: by 2002:a17:906:8245:b0:878:4d11:2694 with SMTP id
 f5-20020a170906824500b008784d112694mr1663223ejx.26.1675867217151; Wed, 08 Feb
 2023 06:40:17 -0800 (PST)
MIME-Version: 1.0
References: <85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY@lists.ettus.com>
In-Reply-To: <85LoDkgi1CbUBr5a72OCeKf2EbJsW0hWZo7oUNzS3JY@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 8 Feb 2023 08:40:00 -0600
Message-ID: <CAFche=iL_=f0R0h_5eEO6rbai1nqOzdOuWzyzeLFSH8XW_uNFg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: NYUZGUC3SL2VZWLHMWVBXDHMU6E4HGIM
X-Message-ID-Hash: NYUZGUC3SL2VZWLHMWVBXDHMU6E4HGIM
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Module not found when creating OOT module
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NYUZGUC3SL2VZWLHMWVBXDHMU6E4HGIM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5470778774229491988=="

--===============5470778774229491988==
Content-Type: multipart/alternative; boundary="0000000000002b579d05f4313ef7"

--0000000000002b579d05f4313ef7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My initial guess was that the module in rfnoc_block_trigger.v wasn't named
rfnoc_block_trigger. Vivado says it found the file "rfnoc_block_trigger.v"
but not the module named "rfnoc_block_trigger". Or perhaps there was
something else wrong with the module that caused it to not compile? But
then I don't know why using `include to pull it in would work. Maybe it
could also be something wrong in the Makefile.

Wade

On Tue, Feb 7, 2023 at 5:05 PM <jmaloyan@umass.edu> wrote:

> I found explicitly including the verilog in the testbench using =E2=80=9C=
`include=E2=80=9D
> worked. However, I found it to be the case that for any module that is
> needed, even if it was =E2=80=9Cadded=E2=80=9D by the builder.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002b579d05f4313ef7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My initial guess was that the module in rfnoc_block_t=
rigger.v wasn&#39;t named rfnoc_block_trigger. Vivado says it found the fil=
e &quot;rfnoc_block_trigger.v&quot; but not the module named &quot;rfnoc_bl=
ock_trigger&quot;.=20
Or perhaps there was something else wrong with the module that caused it to=
 not compile?

But then I don&#39;t know why using `include to pull it in would work. Mayb=
e it could also be something wrong in the Makefile.<br></div><div><br></div=
><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Feb 7, 2023 at 5:05 PM &lt;<a href=3D"mailto:jm=
aloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><p>I found explicitly including the ver=
ilog in the testbench using =E2=80=9C`include=E2=80=9D worked. However, I f=
ound it to be the case that for any module that is needed, even if it was =
=E2=80=9Cadded=E2=80=9D by the builder.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002b579d05f4313ef7--

--===============5470778774229491988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5470778774229491988==--
