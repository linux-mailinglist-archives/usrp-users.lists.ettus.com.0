Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6681A3F715
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 15:21:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9935B385BFB
	for <lists+usrp-users@lfdr.de>; Fri, 21 Feb 2025 09:21:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740147697; bh=H557MRuOv7nCnZXItK6p+WWR/f29Tu8QeuAItUReb68=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ebH5tEW9z4HjNDw7/dIYqCbGS/I575lunuXaBXJ1GS28fUgQAEYKxAbeGr6TZ4d0L
	 iITOsQ+RGQO+3kB974YiIn2ix9ZUjHzHXsI3FfpyEDlfCiRMmhLr+cVQJy+jU1FiI/
	 NyxGO0uwonmtmcrJYIQ21saNhF1biPUfRuN67SDh4LSnfe4TpVi14ff6z6HTOzr9TP
	 KBBECltaa4XuzeUOKJa9irDDHYLte6RyC6Tww5tuPLx+RSY3tcNGmGWRsFUwEK43bq
	 qIDElnQjGZf/m1iDmggIVAnWpEP2VsU35gJFJ3aRkx7hJmf8W0dZUPKlvPZ1Ekpt0n
	 mUoJdjkvBnIog==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 53E36385A5F
	for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 09:21:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="iWYQrIfe";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5deb956aa5eso2712203a12.2
        for <usrp-users@lists.ettus.com>; Fri, 21 Feb 2025 06:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740147692; x=1740752492; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bg1hkFedy+JwWlxvVtKlKFGZjHXQdWCcmK2X14IWwBc=;
        b=iWYQrIfeK389uMCMZStfTxUBmW/HmpXG3G1aS4pd+0bGHk93nZPdQ0ce7ltKKg2Fz6
         3VSx7wabmsQhLNyHFRGhoUn5eGijqTyycT5U0VH0vQS3Avt69igUW43gf9/No072btzc
         dVUkeb5p1oW7EmI6lS8xt7Pp7W4Ekfg/m/uxm3KoFZD3h9opXFOm8Vwk9t5reyzwVuy0
         OqwcRx+gv+n5DsvOqxe63TLI0UBN7O1Xnsqyk/cWYjZ/ng6Cn5dZnwZGz7kw3rCv+BDl
         RU2xXyGpS31NvfTL4BwN8j8sygNagNFqDXIH6oyQDO61y5EtBAitim1H8GG8zf+VoEf9
         QqTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740147692; x=1740752492;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bg1hkFedy+JwWlxvVtKlKFGZjHXQdWCcmK2X14IWwBc=;
        b=i9hQava363Zp+yLw7+ipMSaajBDfdT8KVeszNhOsp6zKcWZbnEyHz7W0woftiO3VBv
         tEsNQe9OWag/LldR2dvSX6ozYI9f+fw4bksIKyYE4tbCqL9Eq0f4fD4pKsZn6wR2elHC
         nxnIFVZdG3rBC20cACDGNaHA6oB5UVkBWOZ7SzqxfuuToIWPrJE++wp5YL8L7mLD81vI
         B/pYH3sg8pmlCkTGH9B0sxTZgm6zNv+35LjG2t7wjbaByOdX0IozcL8/99LHsrpsk0Yf
         1J6gfhdOrKyNEovqeZYfBc3kaIrXVeKd2ldxdkmq4rT3r+FKBP42tvh1Q5zatdhQ+EAO
         qhCw==
X-Gm-Message-State: AOJu0YwR2yPXFyCVIq182s09TJvCac9B+c7G7BAXDSY8rXQ0SprRGhtV
	tvcGbb5LLwU+kfEuu++vozU8bqrEkhZQ3u6rRs0w4PgFPhi+GOAOdxBQDU5LVNnaNJ7t7hrC8Uv
	Ta1NjEHewcdcOhkFv1OT0XQvVp8Wjgf2uqH9nXs7TIVXxQazxJj+sXQ==
X-Gm-Gg: ASbGncsx9U7YPjKpw3AgoLmhzPRmayUr2IQuuTjeLzpBNe6RwOzMkajJ82TXR0FEFla
	VIOJ5w0QvEbdcocR/FTDs5pLb5oSt9QS3xPed+dFtRkBJ+YU1U7K7ME6EIMy8fbqkKX+qr2NBZ6
	W0+feQhIoIBt0hcYs9GRLkC8ruz/88YW+xZ+Lalg==
X-Google-Smtp-Source: AGHT+IEC1Hhq6JeQqJr1YWD3avhDTTbGPQLzf4gC2Xp8pb63MsmP822+crZpeux0SvtSo1zRl/s8ZpDc6rB4xomD4Bs=
X-Received: by 2002:a05:6402:26d2:b0:5dc:80ba:dda1 with SMTP id
 4fb4d7f45d1cf-5e0b70df049mr6522033a12.9.1740147692038; Fri, 21 Feb 2025
 06:21:32 -0800 (PST)
MIME-Version: 1.0
References: <8637a4f585a741779e8e57b01ac12f75@vastech.co.za>
In-Reply-To: <8637a4f585a741779e8e57b01ac12f75@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 21 Feb 2025 15:21:19 +0100
X-Gm-Features: AWEUYZnvjPkIfcWJtZ-5SfSbNlXx5QPpXTVdoHFm5roLPpyRoF1sbYSuLFt5SDM
Message-ID: <CAFOi1A4YNrE3jzepMjZhDtT0rhn+=jzML4xmy5SOg66gi2iapA@mail.gmail.com>
To: Kevin Williams <kevin.williams@vastech.co.za>
Message-ID-Hash: RRWARAI3YWWFATNWJLSGCLVDBL7WMWTP
X-Message-ID-Hash: RRWARAI3YWWFATNWJLSGCLVDBL7WMWTP
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: register custom rfnoc block names
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRWARAI3YWWFATNWJLSGCLVDBL7WMWTP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5069330776748250347=="

--===============5069330776748250347==
Content-Type: multipart/alternative; boundary="0000000000000a9d5f062ea7b5e9"

--0000000000000a9d5f062ea7b5e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Kevin,

yes, you need that macro, as here:
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain/l=
ib/gain_block_control.cpp#L55-L56

Are you using rfnoc_modtool? Because rfnoc_modtool add should create all
the relevant boilerplate.

If you're using the latest rfnoc_modtool, then the OOT module will also
have all the hooks in place to automatically register your OOT with UHD, no
need for LD_PRELOAD.

--M

On Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Everyone,
>
> I think this is my last hurdle.
>
> I have a C++ application using my custom rfnoc block drivers, but the
> "LD_PRELOAD" variable does not help when resolving the block names in the
> image.
>
> I do see my rfnoc driver shared library being linked to the app binary.
>
> Its not clear how to do this.
>
> In the docs I see the "UHD_REGISTER_EXTENSION" macro which has left me
> wondering if this is perhaps the answer.
>
> If this is correct is there an example I could follow? (I don't see this
> macro used in the UHD repo, and it doesn't appear in my web search
> results.)
>
> Kind regards, Kevin
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000a9d5f062ea7b5e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Kevin,</div><div><br></div><div>yes, you need tha=
t macro, as here: <a href=3D"https://github.com/EttusResearch/uhd/blob/mast=
er/host/examples/rfnoc-gain/lib/gain_block_control.cpp#L55-L56">https://git=
hub.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-gain/lib/gain_blo=
ck_control.cpp#L55-L56</a></div><div><br></div><div>Are you using rfnoc_mod=
tool? Because rfnoc_modtool add should create all the relevant boilerplate.=
</div><div><br></div><div>If you&#39;re using the latest rfnoc_modtool, the=
n the OOT module will also have all the hooks in place to automatically reg=
ister your OOT with UHD, no need for LD_PRELOAD.</div><div><br></div><div>-=
-M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 21, 2025 at 4:50=E2=80=AFAM Kevin=
 Williams &lt;<a href=3D"mailto:kevin.williams@vastech.co.za">kevin.william=
s@vastech.co.za</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi Everyone,<br>
<br>
I think this is my last hurdle.<br>
<br>
I have a C++ application using my custom rfnoc block drivers, but the<br>
&quot;LD_PRELOAD&quot; variable does not help when resolving the block name=
s in the<br>
image.<br>
<br>
I do see my rfnoc driver shared library being linked to the app binary.<br>
<br>
Its not clear how to do this.<br>
<br>
In the docs I see the &quot;UHD_REGISTER_EXTENSION&quot; macro which has le=
ft me<br>
wondering if this is perhaps the answer.<br>
<br>
If this is correct is there an example I could follow? (I don&#39;t see thi=
s<br>
macro used in the UHD repo, and it doesn&#39;t appear in my web search resu=
lts.)<br>
<br>
Kind regards, Kevin<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000a9d5f062ea7b5e9--

--===============5069330776748250347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5069330776748250347==--
