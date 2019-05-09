Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2FC183F3
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 05:03:27 +0200 (CEST)
Received: from [::1] (port=48952 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOZL5-0005fj-MO; Wed, 08 May 2019 23:03:19 -0400
Received: from mail-lf1-f44.google.com ([209.85.167.44]:45447)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hOZKX-0005Xn-4H
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 23:03:15 -0400
Received: by mail-lf1-f44.google.com with SMTP id n22so390175lfe.12
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 20:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=47McHdnNfGEdq3NXnEYPdtPyv9FSWjaE8yoGtZvwoak=;
 b=qz8CjlCWndseXBXw9q7kefMUmDFR9VoIHlmrIixQXtuBtCdiPHkS59hljpk0pLzRaA
 iuZ6LXsH+FPdNOo7VXLagP36AajazKp1MOtNfMeVDFvzTsW+cXfhV4tqr+7HezBTxJAp
 tttrFjDlusvBVZtZq8HqGWmREPLRU/NPrkpuDGodf/IHYbXeilP/aDAYcJ9K5SkGBQQy
 5Pv8uqyqhAc4FIbHQBR+6b5wArWcgpBDr//3ggEmNhtBMUQJnGhf2mlJGoFOmmiblOCk
 aWsWdqc1i+S64ZwkXhmkIc9jv4yP4COq1AtznjMRkmEATyb6tqeiadvtAxbnXhOA977o
 q6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=47McHdnNfGEdq3NXnEYPdtPyv9FSWjaE8yoGtZvwoak=;
 b=lNfp9bB8LM+JN/GEdzRxmjKjfaKjpBZYoFZP8z1yXIUPJr9tJnPYkEqc1V+3Hibhfx
 sFXYCqfS2U8yuetytbN92q+Eox5v2i5xDUFJbSa193QEsIysF7sHFM4m2VkQt112NgYB
 EX8RIVPVmVcwlTmDOdwZgY6L2qWNiRytwVhLdxgJZ1Rt5SUOZBVBg8Vh4nX7CpRdHZKI
 +XT/iPIcwnUHx1Z/dAZhE7iu53OvNqiL43V/rDXJHo7zDkLu652XV+mjLjGpRV7BaWDS
 tCWXubnaTXIoUhyHE0EOJG6L47lKNzt7tPRHv8towRCIr4pgRaUVnFFu4bAeViryq5u0
 gmgg==
X-Gm-Message-State: APjAAAUg+wNEv3Co92OHuDdyAXOvXWSSeK2+zyfscDjy/SBsIIjSOzel
 KVNtzmiDU8p+3uTo9a+qo7cT7wf1juqEYjZhp1k3zDI6
X-Google-Smtp-Source: APXvYqyNkRmaep8ZzCgfxnREL9PBz2m7VH+K+JIZokOxMGUesP4ResJWejHNE4jyW0O/sSiWU/7O8ETX6Czx20HdOwM=
X-Received: by 2002:a19:196:: with SMTP id 144mr865455lfb.35.1557370923791;
 Wed, 08 May 2019 20:02:03 -0700 (PDT)
MIME-Version: 1.0
References: <7f08d2de-bc0f-33f6-7b76-448cfae47524@zluudg.xyz>
In-Reply-To: <7f08d2de-bc0f-33f6-7b76-448cfae47524@zluudg.xyz>
Date: Thu, 9 May 2019 12:01:27 +0900
Message-ID: <CAL7q81vM7CO+hh14Dk5xE2OhM5wBJ_dBGmG7t=jp12Y80pfRNw@mail.gmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2871379264492614735=="
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

--===============2871379264492614735==
Content-Type: multipart/alternative; boundary="000000000000b24b0105886bac83"

--000000000000b24b0105886bac83
Content-Type: text/plain; charset="UTF-8"

Hello Leon,

Did you check to see if your custom image failed timing?

Jonathon

On Thu, May 9, 2019 at 12:12 AM zluudg via USRP-users <
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

--000000000000b24b0105886bac83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Leon,<div><br></div><div>Did you check to see if you=
r custom image failed timing?</div><div><br></div><div>Jonathon</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, May 9, 2019 at 12:12 AM zluudg via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hello!<br>
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

--000000000000b24b0105886bac83--


--===============2871379264492614735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2871379264492614735==--

