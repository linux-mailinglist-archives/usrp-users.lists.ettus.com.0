Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 51977773306
	for <lists+usrp-users@lfdr.de>; Tue,  8 Aug 2023 00:41:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2E18384736
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 18:41:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691448070; bh=ajB1Wo5DkwEBrqq3ncMp6qU0kf/rfh3hX3jAJoOF8yg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=yOZeHZ8UhwX67ogvDibZ6SOG2BpyDFKf+Beu7rwT2FbIBH7xtkUdUfeJBLcNA0ng4
	 bLD7jwpPPmINv79jYvtNxpZMeRX+3ixNbBoHmQpJlYaWVVZRja/qe5TcNa7Eh36LL0
	 lN4xC3RGt8Hvjzcij1+bdGzDVj2H6TquaiITbJY99f5pD5C0/qs6GiNOfTOIyWTiT/
	 O9uo2A2OG8qD5u90fMc/HTVOqAEaRKsDByU7PnWTitOy3zk+hYbWjwXRJOQbU9/YlZ
	 apVSjNzhS6a8yKLm+z7tpVqyFTKs7Tw5UGmCPTkiRcP9Vs5LpCOiUVBgmqYBWmfslo
	 fP8P9LFk+0qNg==
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A7F33841A3
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 18:40:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="L5uHs6E6";
	dkim-atps=neutral
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2b9b50be31aso77268771fa.3
        for <usrp-users@lists.ettus.com>; Mon, 07 Aug 2023 15:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1691448036; x=1692052836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GZaSOePjtOYtbieDNBKh3E//RL+D52ko2pQD8joxmuo=;
        b=L5uHs6E69UlbZ0zl47Q3S4MOZzm1vISfNWBhhoC26BotRlGKZczyoAkydJ6/RdYBLS
         f9S9OmsJ07TPJQLb9LWuzJPNO7wjx+NblXbUM/dHj/MBJFAYaZqD547HSe0yF6q4yWHE
         VvjIrinPVMwHiDUJGmZ8vgtLCWRgFLyNurEg0NT0lIwMNQUdJlEBhsNyO4o2U3O0hmb/
         F7yjgm6hrCAXddoZMDSab+clbWfFhCy4YmNjpFAg0+iDfYaZ4T9qnmg4TPNz3XfTLPSG
         ViTvgMkQJUQyrAMhUzTZylYS7OVWN19yQ5CDoECTPoyFknXsMzJI5hPH8Zg6GFtRQfkY
         jXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691448036; x=1692052836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GZaSOePjtOYtbieDNBKh3E//RL+D52ko2pQD8joxmuo=;
        b=RP5wciOV/WtaFVCO7ea2RJr14+EFlTLXDDkvqlVcmY1wgGT9ZdhjCvbKNDo6hY6nTX
         JTp8SmQpwd0j4PI1M/ER1ytSKrsQSKOOvTqQwycRc9nlIFq3ZrUiexNr8UO9WfsPiV/J
         Z7uqpEKx6njWt8yZRHz6J/XjuKWMj1OoZRuoKYUAX+XAkmqjtoLMqboio75XBoovMiwM
         igaR4BFPjdG73pxpAZRzL75svwanQNDz7CTQig4VOvLhrgNKDB9sXA8Pbci45XWP8K7b
         t6bywPjSDKvodH4Iuwbf3c1ZCAUetjeml8y66GMaXf4+b6YVPiYJQPrPzQP2ixMLlV2r
         Ed9A==
X-Gm-Message-State: AOJu0Yw+tYfL9wMp50v+ZApQ+7ZHxzNYKFoa0cgEwbsGK5t2ZLzonb8u
	TMNCC0WDYzRiiacDLSTuGHsx+TMT/6IIB5znWabpkd7s
X-Google-Smtp-Source: AGHT+IGpnRnGTxwQ01aVWL5Q6ZfD2EjIUKy/xaT+LlPxmQY4rX2NGoqyld4g9HsY+i8OWptCgRLzQx3dEd0XHrNpyCM=
X-Received: by 2002:a2e:9b4d:0:b0:2b9:e93e:65d9 with SMTP id
 o13-20020a2e9b4d000000b002b9e93e65d9mr6783032ljj.40.1691448036336; Mon, 07
 Aug 2023 15:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <5FBD3E80-E24C-42D4-A365-57A1D9DC0F86@apple.com>
In-Reply-To: <5FBD3E80-E24C-42D4-A365-57A1D9DC0F86@apple.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 7 Aug 2023 17:40:20 -0500
Message-ID: <CAFche=iDwo4WHP6+HXQ-EusG4PUO+GaLVysem_zKFuVX9hzMNA@mail.gmail.com>
To: Victor Levin <vlevin@apple.com>
Message-ID-Hash: 7QTZJCNLQFHECHTLY3BS2FCIGFRAU6J7
X-Message-ID-Hash: 7QTZJCNLQFHECHTLY3BS2FCIGFRAU6J7
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: MPM major compat number mismatch even after updating FW to latest on X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7QTZJCNLQFHECHTLY3BS2FCIGFRAU6J7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2505820772355895606=="

--===============2505820772355895606==
Content-Type: multipart/alternative; boundary="0000000000005cc3aa06025cefc7"

--0000000000005cc3aa06025cefc7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think you checked out the wrong branch. Looking at your [INFO] statement,
it says you're using a2a04e31, which is the latest commit on master. 5.2 is
also the version you should get from the master branch. The "4.4" hasn't
been updated on master yet because it's not released yet.

Wade

On Fri, Aug 4, 2023 at 12:53=E2=80=AFPM Victor Levin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I am using an X410 with X4_200 FPGA and latest FW as downloaded by uhd_im=
ages_downloader -t
> sdimg -t x4xx. This initially was working (uhd_usrp_probe and other calls
> went through fine) using UHD 4.4.0.0 on the host.
>
> In order to use DPDK, I pulled the UHD repo from version branch V4.4.0.0
> and recompiled with the ENABLE_DPDK flag turned on. After doing this, I
> sanity tested the newly compiled and installed UHD without DPDK.
>
> Here is the output from uhd_usrp_probe:
>
> [INFO] [UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11;
> UHD_4.4.0.heads-v4.4.0.0-265-ga2a04e31
> [WARNING] [PREFS] Loaded config from /root/.uhd. This location is
> considered deprecated, consider moving your config file to /root/.config
> instead.
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.15.2,type=3Dx4xx,product=3Dx410,serial=3D3257310,name=
=3Dni-x4xx-3257310,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.15.2
> [ERROR] [MPMD] MPM major compat number mismatch. Expected: 5.2 Actual:
> 4.4. Please update the version of MPM on your USRP device.
> Error: RuntimeError: MPM major compat number mismatch. Expected: 5.2
> Actual: 4.4. Please update the version of MPM on your USRP device.
>
> I don=E2=80=99t understand where 5.2 has come from. It looks like the hos=
t UHD is
> expecting 5.2. However the branch of UHD host that I compiled is definite=
ly
> UHD_4.4 as show in the first line of the output. Running uhd_images_downl=
oader
> again after recompiling still pulls the same sdimg file as before so
> updating the FW again doesn=E2=80=99t help.
>
> Anyone know what=E2=80=99s going on here?
>
> Thanks,
> Victor
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005cc3aa06025cefc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think you checked out the wrong branch. Looking at =
your [INFO] statement, it says you&#39;re using a2a04e31, which is the late=
st commit on master. 5.2 is also the version you should get from the master=
 branch. The &quot;4.4&quot; hasn&#39;t been updated on master yet because =
it&#39;s not released yet.<br></div><div><br></div><div>Wade<br> </div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, Aug 4, 2023 at 12:53=E2=80=AFPM Victor Levin via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi al=
l,<div><br></div><div>I am using an X410 with=C2=A0X4_200 FPGA and latest F=
W as downloaded by <font face=3D"Menlo">uhd_images_downloader=C2=A0-t sdimg=
 -t x4xx. </font>This initially was working (uhd_usrp_probe and other calls=
 went through fine) using UHD 4.4.0.0 on the host.=C2=A0</div><div><br></di=
v><div>In order to use DPDK, I pulled the UHD repo from version branch V4.4=
.0.0 and recompiled with the ENABLE_DPDK flag turned on. After doing this, =
I sanity tested the newly compiled and installed UHD without DPDK.=C2=A0</d=
iv><div><br></div><div>Here is the output from uhd_usrp_probe:</div><div><f=
ont face=3D"Menlo"><br></font></div><div><div><font face=3D"Menlo">[INFO] [=
UHD] linux; GNU C++ version 11.3.0; Boost_107400; DPDK_21.11; UHD_4.4.0.hea=
ds-v4.4.0.0-265-ga2a04e31</font></div><div><font face=3D"Menlo">[WARNING] [=
PREFS] Loaded config from /root/.uhd. This location is considered deprecate=
d, consider moving your config file to /root/.config instead.</font></div><=
div><font face=3D"Menlo">[INFO] [MPMD] Initializing 1 device(s) in parallel=
 with args: mgmt_addr=3D192.168.15.2,type=3Dx4xx,product=3Dx410,serial=3D32=
57310,name=3Dni-x4xx-3257310,fpga=3DX4_200,claimed=3DFalse,addr=3D192.168.1=
5.2</font></div><div><font face=3D"Menlo">[ERROR] [MPMD] MPM major compat n=
umber mismatch. Expected: 5.2 Actual: 4.4. Please update the version of MPM=
 on your USRP device.</font></div><div><font face=3D"Menlo">Error: RuntimeE=
rror: MPM major compat number mismatch. Expected: 5.2 Actual: 4.4. Please u=
pdate the version of MPM on your USRP device.</font></div><div><br></div><d=
iv>I don=E2=80=99t understand where 5.2 has come from. It looks like the ho=
st UHD is expecting 5.2. However the branch of UHD host that I compiled is =
definitely UHD_4.4 as show in the first line of the output. Running=C2=A0<s=
pan style=3D"font-family:Menlo">uhd_images_downloader </span>again after re=
compiling still pulls the same sdimg file as before so updating the FW agai=
n doesn=E2=80=99t help.=C2=A0</div></div><div><br></div><div>Anyone know wh=
at=E2=80=99s going on here?=C2=A0</div><div><br></div><div>Thanks,</div><di=
v>Victor</div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005cc3aa06025cefc7--

--===============2505820772355895606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2505820772355895606==--
