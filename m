Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB97400479
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 20:02:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C7AE383D89
	for <lists+usrp-users@lfdr.de>; Fri,  3 Sep 2021 14:02:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="V4zK85/5";
	dkim-atps=neutral
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by mm2.emwd.com (Postfix) with ESMTPS id C7E8E3845D7
	for <usrp-users@lists.ettus.com>; Fri,  3 Sep 2021 14:01:33 -0400 (EDT)
Received: by mail-lj1-f180.google.com with SMTP id h1so100165ljl.9
        for <usrp-users@lists.ettus.com>; Fri, 03 Sep 2021 11:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MG48X1HI+X2yVKBdbd+MqQKCsnY3FdcIKTGvxdB71bI=;
        b=V4zK85/5BpWd71gReP9QBCsFIsnznvf5Ajs93nmLEQQry7+tnkM5bNtCllluCGUE05
         HK7TA71OLKL52Rb4ECQbt2htFHA9Zm13vW7qWTkPb1Zc0Mf/SzX4ygqAegB7RGN61ri2
         SSlb3joHsFkNa+WQDqn7NGkd1gXgMqgsL6QNvwAFoKBMW3UMBno7DmUSzpab9Bs7Z92Y
         aB3X3kuJyJqYVP4jGXU0T21h7OARqf9KL1BCUZaaq26/G71T60a6aodyRfmUSB5VDXm7
         SCflmApWucUK9MLzZzyqeVh/fDZu4cgBdhOsw3FIGWPYA7Kh/zMh4oNpvh/F5LMWBP/8
         Nxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MG48X1HI+X2yVKBdbd+MqQKCsnY3FdcIKTGvxdB71bI=;
        b=hcibjIg5qK+UfOP6MuQmFqA3GvR9wJ3J3m65enjRfO/9g28YL0/L7mOlM+cMjEgqP+
         9tjApMd1GcdJA5AzTQOUeEwrIhUHMsRkYwI3alO/VLuRxqKQMI/pmI3PMdWCQzn9jzto
         JPi5xAEkv1PBH91v6Kf4etnZ6p+2zM8qufH3LIDt2j0vTMF5tABDOKz7jG22vISvKtdi
         tnuQFCfY3/rNKZg6Ws8AAwc78FUV/AvVZLSSCzEYB5lPtzuc9YxsnUaCVQa27ad80TbU
         kyHuGb7bWzLcxHUcw7u9lfCzjn52oqJgD9oyyzlwx04WU2AGkkannIIidjzjpWxAasDO
         C64A==
X-Gm-Message-State: AOAM533ZB1Eoqd7ZGt9ttvWFFHOdBDKRlYriqOHTBFz0xL9g28YE4qTN
	YOBc25xEFti3ZOjzuGX5EPxk03CVH3KvAUBObSE=
X-Google-Smtp-Source: ABdhPJyCNAMe7POzSzfhwuL/4vLxU22fp90H9AML/JEiVr/2Ry7Qg1TJEyoEdleQTC4GGKb3DIpNYXSMX433sQDtYSE=
X-Received: by 2002:a2e:86cc:: with SMTP id n12mr186945ljj.384.1630692092206;
 Fri, 03 Sep 2021 11:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAGLr63voh9G8EnOVZMi6phwk+5rPkY7zBnuX5pu9szfdrL_KmQ@mail.gmail.com>
 <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB6653860A9AA24499243B8395BACC9@VE1PR04MB6653.eurprd04.prod.outlook.com>
From: Cameron Matson <ncmatson95@gmail.com>
Date: Fri, 3 Sep 2021 13:01:20 -0500
Message-ID: <CAGLr63tyG4LJkwtAoiY1QNBPr5CN_5Mu6Ygn0R90+vB52OLrOg@mail.gmail.com>
To: Ming You <M.You@lboro.ac.uk>
Message-ID-Hash: CC7AQNDLNUTUKLHN33K2VVGUXASN2ZDR
X-Message-ID-Hash: CC7AQNDLNUTUKLHN33K2VVGUXASN2ZDR
X-MailFrom: ncmatson95@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Cannot Ping SFP port
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CC7AQNDLNUTUKLHN33K2VVGUXASN2ZDR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7514284941127143417=="

--===============7514284941127143417==
Content-Type: multipart/alternative; boundary="000000000000e4e4cd05cb1b16fd"

--000000000000e4e4cd05cb1b16fd
Content-Type: text/plain; charset="UTF-8"

Thanks for the tip Ming.  I have heard that there are some
compatibility issues out there.  We are using the Finsair when trying
copper (ethernet) and 10Gtek AXS85-192-M3 when trying fiber (which is how
it was set and working.)

One thing I've noticed is that when using fiber, there is no link LED if I
use sfp0, but there is in sfp1.  The opposite is true when I'm using copper
(led on when plugged into sfp0, off sfp1.)  This is true on multiple FPGA
flavors (WX and HG).

I'm really at a loss here...

Thanks for your help,

Cameron

On Tue, Aug 31, 2021 at 7:45 AM Ming You <M.You@lboro.ac.uk> wrote:

> Hi Cameron,
>
> If you have ruled out the soft-issues, then it might be hardware
> compatible issues. As far as I know, there are some compatible issues of
> the usrp with "some" sfp+ adaptors.
>
> I've used a few kinds, some working ones are:
>
> 1. Avago ABCU-5730ARZ (provided along with the USRP purchases, for some
> models)
> 2. FINSAR FCLF8522P2BTL
>
> One not working after all efforts (similar problem as your description,
> green light on, no ping through)
> 1. ProLabs MC3208411-T-C
>
> Hope this info is also helpful to anyone reading this message, at least to
> rule out one bad choice and a heads-up about the potential compatible
> issues.
>
> Thanks,
> Ming
>
>
>
>
> ________________________________________
> From: Cameron Matson <ncmatson95@gmail.com>
> Sent: 31 August 2021 00:41
> To: usrp-users
> Subject: [USRP-users] Cannot Ping SFP port
>
> Hello everyone,
>
> We recently moved our setup, and ever since setting up in the new place
> we've been unable to ping/connect over the sfp+ port.  We're using N310s
> with the WX fpga image and Ubuntu 20.04.  I've checked and as far as I can
> tell both the N310 and the nic on the server have ip addresses on the same
> subnet with the same subnet mask.  When I use a sfp+/fiber transceiver at
> both the green "link" led lights up on sfp1 at the N310, so something is
> working.
>
> I've tried going through the steps here to no avail:
> https://kb.ettus.com/Troubleshooting_N310/N320_Device_Discovery_Issues
>
> Does anybody have any ideas of things to try out?
>
> Thank you,
> Cameron
>

--000000000000e4e4cd05cb1b16fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the tip Ming.=C2=A0 I have heard that there are=
 some compatibility=C2=A0issues out there.=C2=A0 We are using the Finsair w=
hen trying copper (ethernet) and 10Gtek AXS85-192-M3 when trying fiber (whi=
ch is how it was set and working.)<div><br></div><div>One thing I&#39;ve no=
ticed is that when using fiber, there is no link LED if I use sfp0, but the=
re is in sfp1.=C2=A0 The opposite is true when I&#39;m using copper (led on=
 when plugged into sfp0, off sfp1.) =C2=A0This is true on multiple FPGA fla=
vors (WX and HG).</div><div><br></div><div>I&#39;m really at a loss here...=
</div><div><br></div><div>Thanks for your help,</div><div><br></div><div>Ca=
meron</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Aug 31, 2021 at 7:45 AM Ming You &lt;<a href=3D"mailto:M=
.You@lboro.ac.uk">M.You@lboro.ac.uk</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;=
border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex=
">Hi Cameron,<br>
<br>
If you have ruled out the soft-issues, then it might be hardware compatible=
 issues. As far as I know, there are some compatible issues of the usrp wit=
h &quot;some&quot; sfp+ adaptors. <br>
<br>
I&#39;ve used a few kinds, some working ones are:<br>
<br>
1. Avago ABCU-5730ARZ (provided along with the USRP purchases, for some mod=
els)<br>
2. FINSAR FCLF8522P2BTL <br>
<br>
One not working after all efforts (similar problem as your description, gre=
en light on, no ping through)<br>
1. ProLabs MC3208411-T-C<br>
<br>
Hope this info is also helpful to anyone reading this message, at least to =
rule out one bad choice and a heads-up about the potential compatible issue=
s.<br>
<br>
Thanks,<br>
Ming<br>
<br>
<br>
<br>
<br>
________________________________________<br>
From: Cameron Matson &lt;<a href=3D"mailto:ncmatson95@gmail.com" target=3D"=
_blank">ncmatson95@gmail.com</a>&gt;<br>
Sent: 31 August 2021 00:41<br>
To: usrp-users<br>
Subject: [USRP-users] Cannot Ping SFP port<br>
<br>
Hello everyone,<br>
<br>
We recently moved our setup, and ever since setting up in the new place we&=
#39;ve been unable to ping/connect over the sfp+ port.=C2=A0 We&#39;re usin=
g N310s with the WX fpga image and Ubuntu 20.04.=C2=A0 I&#39;ve checked and=
 as far as I can tell both the N310 and the nic on the server have ip addre=
sses on the same subnet with the same subnet mask.=C2=A0 When I use a sfp+/=
fiber transceiver at both the green &quot;link&quot; led lights up on sfp1 =
at the N310, so something is working.<br>
<br>
I&#39;ve tried going through the steps here to no avail:<br>
<a href=3D"https://kb.ettus.com/Troubleshooting_N310/N320_Device_Discovery_=
Issues" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Troublesh=
ooting_N310/N320_Device_Discovery_Issues</a><br>
<br>
Does anybody have any ideas of things to try out?<br>
<br>
Thank you,<br>
Cameron<br>
</blockquote></div>

--000000000000e4e4cd05cb1b16fd--

--===============7514284941127143417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7514284941127143417==--
