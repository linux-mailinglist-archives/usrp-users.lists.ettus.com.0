Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5DE17E52
	for <lists+usrp-users@lfdr.de>; Wed,  8 May 2019 18:43:04 +0200 (CEST)
Received: from [::1] (port=49072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOPeg-0008LE-6q; Wed, 08 May 2019 12:42:54 -0400
Received: from mail-it1-f170.google.com ([209.85.166.170]:52310)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOPe7-0008BJ-Kx
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 12:42:49 -0400
Received: by mail-it1-f170.google.com with SMTP id q65so5129460itg.2
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 09:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JOC4jR3u30evdChB7EF16KfaytGOllkNytglPbrD1Cs=;
 b=CxC5xwokzgABYgYkf1hko9Qd/3yT+yc2tKUbTSlOA0fVUYGlmzmHLSanq01Bt/xFnQ
 o9yshdhZqMo4TYLgvASEZ/+DUpHek7GlngyGS2yNZoyLb9gp9j5wEiejXAd+laJd5Qqn
 6O5KLfjNNXknGqIrmJ5AeYAC74sgpDkMQiDUA2uT0hqkbm9SCTTVzv5DEn5lzxh0roUb
 52zldGwqEAZ6E4coOLDLfwtRjvTauC+YFEmWTAHppQ7urAzME9KLdCf/JAfyGAPHMT4u
 O4BJcOtjMVaHwgGA9ooyOOrSGbo7aeF0RGgyo9eITsCsko+MYbIxXC/RAfwGN68pZDFk
 XzAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JOC4jR3u30evdChB7EF16KfaytGOllkNytglPbrD1Cs=;
 b=BdrIU+JKp5DjW/BpRtvuyl4lVbVsk9MrTx2TpCnzY0Z87fJnMG1huKlulXxJSFewH7
 1kAjjYvOsKzWrdeW9v1aDoctTyeVHQg2cAYurgOEQvZtr6PrkieubxO4nKFYsxSYcyRB
 ChuE3gIxewwxtwhw7ahGKmXwzDI2iHf0DzBYoDFCS6oIzmh1g6jnJuy1GbUNNa1tn+NQ
 Efr+nWbiwwejYe9S0OplKpaUV3/6Ze58+3r95t/uudGbJ/Yc7xtXCiQr+7SPvjNq1RG3
 O6/1cANOEOYk4+RjAOxCqUQ677GkQhKWlscP4rBEDXhbvzZfXwC/Aq+vy8PHAEqi6Fnl
 UXWg==
X-Gm-Message-State: APjAAAXQjF4YETeKJivjyhG4bQIHetYoxhyMFwdnvGOQCySNP2UEffjp
 ltlV2PvtBVxORSHr1IMmP9j82lpvlbekQ17kd1GGBQ==
X-Google-Smtp-Source: APXvYqzQEisRUMMG6ccBzhA9dtjg4UH9uAMOYq8RUhmGskMWM5T5R2BSbZiuvhrA5kdPgMVINWxAk0nu8qKOyUeWUz4=
X-Received: by 2002:a24:85d4:: with SMTP id r203mr4239584itd.3.1557333698806; 
 Wed, 08 May 2019 09:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <7f08d2de-bc0f-33f6-7b76-448cfae47524@zluudg.xyz>
In-Reply-To: <7f08d2de-bc0f-33f6-7b76-448cfae47524@zluudg.xyz>
Date: Wed, 8 May 2019 09:41:27 -0700
Message-ID: <CA+JMMq_3AtWFOwLq8rGyEDsJC7Q+4Zq=mcnx-+DnWWu3jvka-w@mail.gmail.com>
To: zluudg <zluudg@zluudg.xyz>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 RFNoC transmission issues
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8838784778165145969=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8838784778165145969==
Content-Type: multipart/alternative; boundary="000000000000ea0cff058863016c"

--000000000000ea0cff058863016c
Content-Type: text/plain; charset="UTF-8"

Have you simulated your RFNoC CEs with Verilog testbenches?

On Wed, May 8, 2019 at 8:12 AM zluudg via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello!
>
> I'm having some issues while trying to transmit a signal using the
> RFNoC: Radio block in Gnuradio. My block diagram is:
>
>
>          Signal Source (constant) -> RFNoC: DmaFIFO -> RFNoC: Radio (in
> TX mode).
>
>
> I run the block diagram by calling "python top_block.py" from the
> command line and I'm not getting any errors while it's running .
> However, I'm unable to quit it properly without having to close the
> terminal window and power-cycle the USRP. When connecting the USRP to a
> spectrum analyzer I see no signal whatsoever (I expect to see a peak at
> 2.4 GHz).
>
>
> Removing the DmaFIFO does not seem to make any difference. My FPGA image
> is a custom image with some of my CEs, but it was built smoothly using
> the "uhd_image_builder.py" script. I've also experienced similar
> problems while having a RFNoC: DUC between the DmaFIFO and the Radio
> block, also with a custom FPGA image. With the stock FPGA image I was
> able to get a signal with more or less the same Gnuradio block diagram.
>
>
> Why am I not seeing any output with my custom FPGA images? All
> suggestions appreciated.
>
>
> I'll happily provide more info if needed, so don't hesitate to ask. For
> know, I'll just provide the basics:
>
>
>          OS: Ubuntu 18.04
>
>          uhd: rfnoc-devel, eec24d7b0
>
>          gnuradio: maint-3.7, c6c575309
>
>          gr-ettus: master, a909447
>
>
> Thanks in advance!
>
> //
>
> Leon
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ea0cff058863016c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you simulated your RFNoC CEs with Verilog testbenches=
?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Wed, May 8, 2019 at 8:12 AM zluudg via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello!<br>
<br>
I&#39;m having some issues while trying to transmit a signal using the <br>
RFNoC: Radio block in Gnuradio. My block diagram is:<br>
<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Signal Source (constant) -=
&gt; RFNoC: DmaFIFO -&gt; RFNoC: Radio (in <br>
TX mode).<br>
<br>
<br>
I run the block diagram by calling &quot;python top_block.py&quot; from the=
 <br>
command line and I&#39;m not getting any errors while it&#39;s running . <b=
r>
However, I&#39;m unable to quit it properly without having to close the <br=
>
terminal window and power-cycle the USRP. When connecting the USRP to a <br=
>
spectrum analyzer I see no signal whatsoever (I expect to see a peak at <br=
>
2.4 GHz).<br>
<br>
<br>
Removing the DmaFIFO does not seem to make any difference. My FPGA image <b=
r>
is a custom image with some of my CEs, but it was built smoothly using <br>
the &quot;uhd_image_builder.py&quot; script. I&#39;ve also experienced simi=
lar <br>
problems while having a RFNoC: DUC between the DmaFIFO and the Radio <br>
block, also with a custom FPGA image. With the stock FPGA image I was <br>
able to get a signal with more or less the same Gnuradio block diagram.<br>
<br>
<br>
Why am I not seeing any output with my custom FPGA images? All <br>
suggestions appreciated.<br>
<br>
<br>
I&#39;ll happily provide more info if needed, so don&#39;t hesitate to ask.=
 For <br>
know, I&#39;ll just provide the basics:<br>
<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 OS: Ubuntu 18.04<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 uhd: rfnoc-devel, eec24d7b=
0<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gnuradio: maint-3.7, c6c57=
5309<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gr-ettus: master, a909447<=
br>
<br>
<br>
Thanks in advance!<br>
<br>
//<br>
<br>
Leon<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ea0cff058863016c--


--===============8838784778165145969==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8838784778165145969==--

