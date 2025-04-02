Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10108A78EC4
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 14:41:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28A59385C8A
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 08:41:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743597708; bh=8N1l8x3GgUcO7+g38AH3KqhwzTk4uR+ElYzi445JRv4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=f8ryCw3VJvyj5iFZugU24IIO1Ytg1+L+hDZY07Il+Yfnaq4QWFzvBdsD2Sln9DY+n
	 FDOVPYj3HXo7AN9R10AjaGtsAY8HQAaPnDLzeF/+EESBpnL+51C35e+m7aFyFQ/EjE
	 w4kL8FCfn/jaO/DK0SWGUq2PDFFgt8dFY+O3wBfaOPEBECUqzHQwz0rJnvpYdIX52F
	 Dpvg9R3mSd4hDl0sN7UzOBrzEr7J4rZ8USydTmzswJfk+GiWwt/EorJrlsRs19/D66
	 HuTw6Y3tYeOg6bQATwztLS+wDbMJtTxIIR/2El/cNs8wnMrZABr8o8ibsrTYTQzJ1c
	 /+kqif/r017qg==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 030BD385174
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 08:40:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="kMgLMpwb";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e66407963fso12645586a12.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Apr 2025 05:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743597651; x=1744202451; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GmN8RtytG3sXV0A+la/0aIRJoV5StOUJ3Ty828+8vGw=;
        b=kMgLMpwb2Gp9u/9xftPlKYV2hodIwVeHlJM+QGL7Z2D+B2s9h6DVimncCnZagNE9ea
         ZGMLyCganoneCFnRn2ZWsRNfMvb2VaqFc5/5LPO+2n16xM6EpP3b98JhRVECfmghbiql
         wlp62gG5djQTnXPQA2Kp3LqbnMHNk4ubWhSRLeXgsO/ZzRcch3H237MS2YLNE/9Jm4oe
         OQcdlwvFiKBWFPUFMSrNllwjdIAahZD/ZwuOEwFGjo6EZPAPdMEpNZljC0T7Nv6XXmwb
         UI6+c6cxLyu8Op426QW3UdTZ9F4KefHHeFKxo34K9SvvFTiKX4b4nD9SgLS45sgw3iaF
         B8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743597651; x=1744202451;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GmN8RtytG3sXV0A+la/0aIRJoV5StOUJ3Ty828+8vGw=;
        b=qxL2frDUqSBxMhdk0xgEw8HQO38if2Tc9jGlN5nn1ql8YOeBbTYypDOQwTwOV91Q+X
         rb1KJp6gdIMVeYSmXSq2g/vm7M+C16r9bCpwIZHZEW/jRGeOuig6ONoxq+ISVyjvFNLD
         t2+sNiifX/Y4nz+nZbE6NxFElcQSe3Ce6F4l/96GUw0/cgJkJK32dwzzHX4GkP9RwhE0
         KvJOL304rDxj6W78FNxsaSZ3yfU8NPE8bLlqYg+ITHJwScIqXIPnPOzdgWz4IEZU39Zn
         FBw+nLIOyhaBHZWwgJjFBFpPDMWS3HEDHoLUJEwIW7/CHg4c4fwFBTXDFj5z48eD8Vx9
         Xwvg==
X-Gm-Message-State: AOJu0Yy5FUeWmVt3Su/FgvJo6QAfjmDGFv2Lhi7O4OJeo3DvEuTHjJNB
	Ub0jfM2SVAFWkDMtKXhP+ui9bLYQJ1Jq3AAqRvDAjsrJDmRnM5q8eem9bbuJL3rhYcYsQOyR1ir
	NaLVNc3PU8/GzAnu36dKp8Ahq4Jb5CCdvQhpmVJUqY8bQIQeGevpKDw==
X-Gm-Gg: ASbGncsz0JqZiwhDQOTvBSB1OgODq2jNusU6qyZ8tjrAPzFpVMvoC1/jCmsyI5cErp5
	1WgYMuJfGyeer0bJpcyv3rEwGgc5OEiLrn/8qFmEJwoOUGbWp0MUjgspLmON1JCPnsmDj+MxADN
	UQ0BR2eYaUKfrujqzdJ2a2Wq0WAQqsdDHDPVzFy+hNNYzxfnmhPDr8z8hLcw==
X-Google-Smtp-Source: AGHT+IFDhvqbI5yRlaOUfHhITtSH2hnqG34TetRB/vL3T7vGl25d6VKKuoWlbTkNY0ezJnMlUd08yPR116K/maQG60k=
X-Received: by 2002:a05:6402:2794:b0:5ed:17d9:91db with SMTP id
 4fb4d7f45d1cf-5edfce76d09mr12172710a12.12.1743597651215; Wed, 02 Apr 2025
 05:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4@lists.ettus.com>
In-Reply-To: <mHHEUclnZ0Q50RZbHoVcmJazbMv2NSMZAFn1DYL8uZ4@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 2 Apr 2025 14:40:39 +0200
X-Gm-Features: AQ5f1JoqnqH4dJXQNun7WMGHs7Zux3K8ffG24GUFFwbtqpKjIYqDUKDSq2HL1yw
Message-ID: <CAFOi1A60ycL4eRXeYoMauWFiVLCjvBbLzqhb3AZHa_tbSpaVag@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: KW4LXJCIOTDKV67YNQTAD62TZASN33TC
X-Message-ID-Hash: KW4LXJCIOTDKV67YNQTAD62TZASN33TC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KW4LXJCIOTDKV67YNQTAD62TZASN33TC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6070418319440798786=="

--===============6070418319440798786==
Content-Type: multipart/alternative; boundary="000000000000a1e7e70631caf64f"

--000000000000a1e7e70631caf64f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That is interesting. Not sure what it tells us, but interesting. There is a
potentially related issue posted on github:
https://github.com/EttusResearch/uhd/issues/514. The author suggested
bumping MIN_DUR to 100us. If you're able to modify UHD, then that might be
something to try.

--M

On Fri, Mar 21, 2025 at 12:01=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Hi Martin
>
> I am still trying to investigate this issue, recreating it is difficult a=
s
> it can take long time.
>
> However, on a system that crashed I observed a thread =E2=80=9Cuhd_ctrl_e=
p0001=E2=80=9D
> specifically its CPU utilisation (I have isolated this to use a single CP=
U
> and not share it). Normally it is below ~20%, (when first starting our
> application is is < 10%) once there is a failure (as per the discussion
> here), this thread has a higher utilisation (not 100%), around 30-40%. Wh=
en
> kill our process, and restart, the CPU utilisation is still high from the
> start. The only way to recover is to power off the USRP-2974 and on again=
.
>
> Kind regards
>
> Marino
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a1e7e70631caf64f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That is interesting. Not sure what it tells us, but i=
nteresting. There is a potentially related issue posted on github: <a href=
=3D"https://github.com/EttusResearch/uhd/issues/514">https://github.com/Ett=
usResearch/uhd/issues/514</a>. The author suggested bumping MIN_DUR to 100u=
s. If you&#39;re able to modify UHD, then that might be something to try.</=
div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 21, 2025=
 at 12:01=E2=80=AFPM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><p>Hi Martin</p><p>I am still trying to investigate this issue, rec=
reating it is difficult as it can take long time. </p><p>However, on a syst=
em that crashed I observed a thread =E2=80=9Cuhd_ctrl_ep0001=E2=80=9D speci=
fically its CPU utilisation (I have isolated this to use a single CPU and n=
ot share it). Normally it is below ~20%, (when first starting our applicati=
on is is &lt; 10%) once there is a failure (as per the discussion here), th=
is thread has a higher utilisation (not 100%), around 30-40%. When kill our=
 process, and restart, the CPU utilisation is still high from the start.   =
The only way to recover is to power off the USRP-2974 and on again.</p><p>K=
ind regards</p><p>Marino</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a1e7e70631caf64f--

--===============6070418319440798786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6070418319440798786==--
