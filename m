Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D86EC4DDAC1
	for <lists+usrp-users@lfdr.de>; Fri, 18 Mar 2022 14:43:13 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A720E385076
	for <lists+usrp-users@lfdr.de>; Fri, 18 Mar 2022 09:43:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="1X0vNsEE";
	dkim-atps=neutral
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 78333384678
	for <usrp-users@lists.ettus.com>; Fri, 18 Mar 2022 09:42:15 -0400 (EDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-2db2add4516so91753917b3.1
        for <usrp-users@lists.ettus.com>; Fri, 18 Mar 2022 06:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=njuhXEZ+ICE8WoTwgs4Fq+RA0RwH3gmSa3j/hkVp4uo=;
        b=1X0vNsEEI055AaTNyA13FrwuirTve8sUG+EkbAHYlZQMuJH/AcCHi6FlPcqCHLlnNh
         H8z3eF63cUoXhnQoIN1ue+CCd/p9ISqp+EA6nEnbl/ZLgznCTag3uFCPUP0GQ8H9zREm
         7dHatfMIxlbhXNcqfrOKcdgL1YtYVM7omKLfm2367cnx/uLxtl2oFmnDn+lcCzrWxEZx
         9uGQaPGbdRHj55uiZ/TFBslIlRtYnZv2dHEElkEGvPpNdHAgcIitn09pWgU5agxsYMiU
         zduw1iiu09jxIMvUo1MoIODzgPp5fJyEjtITucwBR20LMuvGtxdrEJyckJybbcoJVGBc
         1aLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=njuhXEZ+ICE8WoTwgs4Fq+RA0RwH3gmSa3j/hkVp4uo=;
        b=mvAAi1ucSDptBSLXz8tgfpHYKlsh55/ou+awDrsliAUHySGzR6nqW99JKK9WVs/Es7
         /FL4b7t2XHCUCpUKk3e9GdIAmKjyWlbmRUj7GdV6fwjBRn3pSN6pxuMwPbX85W/0lcsr
         hzz80pjZtgJNrLv/w0wmwpR4HmnVu4lCNXj5Y1aZi55VlhHp/c/9viibrvb01KGqmmxq
         07Am1esKy9rqVog+Y59HvJKQMJKDS0wUAahYPcTk9yLSJJ/KUkz3vCKBv2M/DIDka1D5
         3dm0ELJ6EgXHr8Z2zE7y7CJHQaT3OTSeM2q1v3btS4KxpDvYqlON1izeMbP2xFUu1p1t
         rRYQ==
X-Gm-Message-State: AOAM532/7ueC8n89YXT6hYOv37Nf/Oq2KlxrbS/6vgpXwj+zQsVs6win
	JYEZIlFCrdyXvwQkHZZvec7DClEXodVP6HwhltF9Fb6U
X-Google-Smtp-Source: ABdhPJwhmAtDzTzrGViA+fPUoUH2sQ0os4/ddkdN3tQfy1WAnTLG2FJFffcnQSp78pgZj78EaRMrFjQpRuhQSsHfQpM=
X-Received: by 2002:a0d:c283:0:b0:2db:c5f9:b519 with SMTP id
 e125-20020a0dc283000000b002dbc5f9b519mr10915620ywd.171.1647610934775; Fri, 18
 Mar 2022 06:42:14 -0700 (PDT)
MIME-Version: 1.0
References: <E1188D158AA7A048AF99B6A05DA3D629DFE93663@SPROMMAIL03.spengtes.space>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D629DFE93663@SPROMMAIL03.spengtes.space>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 18 Mar 2022 09:41:58 -0400
Message-ID: <CAFche=gZK5rdPjQxpwg9Kftw4-Uu_P0RxFHPbMArWEg1vqyveA@mail.gmail.com>
To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>
Message-ID-Hash: CVL4YWW34BNKTBLANDNKTJGNGNLBVFLK
X-Message-ID-Hash: CVL4YWW34BNKTBLANDNKTJGNGNLBVFLK
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CVL4YWW34BNKTBLANDNKTJGNGNLBVFLK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7018643007632431708=="

--===============7018643007632431708==
Content-Type: multipart/alternative; boundary="0000000000007ee6f105da7e5064"

--0000000000007ee6f105da7e5064
Content-Type: text/plain; charset="UTF-8"

Hi Maurizio,

Yes, building all the FPGAs from scratch in a single run takes a long time.
But maybe that's not needed. Let's start with your questions:

   - Are you referring to X3xx? I don't know how to build the FW for the
   embedded CPU but you should not have to rebuild it unless you're changing
   it. That would have no effect on the FPGA contents.
   - If you change even one Verilog file that's used by the FPGA then you
   need to rerun make and build them all. The actual compilation of the
   Verilog files doesn't take very long. It's place and route that takes the
   longest, and there's no way to reuse the place-and-route results from
   previous runs. This is a big difference between software compilation and
   FPGA compilation.
   - We compile all the FPGAs regularly as part of our continuous
   integration testing.
      - We usually build several in parallel, and we will often reuse IP
      build products, so it doesn't take as long. I don't have the numbers with
      me, but there are so many variables that I don't think our CI build times
      would be very meaningful. I would guess most images take about an hour.
      - Sorry, I don't know what machine types.
      - You can build under Windows, using Cygwin, but I don't usually
      recommend it. Sometimes Vivado generates IP file paths that are too long
      for Windows. For building under Windows, I would use WSL. But
Ubuntu is the
      best option because that's what we do most of our testing with.

A few other thoughts that might be helpful:

   - It's not needed to recompile the FPGA images unless you are
   customizing the HDL or RFNoC contents. Use uhd_images_downloader to
   download the latest shipping images from Ettus.
   - The first part of the compile is building the IP, which takes maybe
   1-2 hours. This only has to be done once and subsequent builds will re-use
   the same IP output products.
   - You only need to build the image you plan to use. For example, if
   you're using X310_XG, then only build that one by running "make X310_XG".
   - FPGA builds don't take advantage of multiple CPUs well, but you can
   run multiple FPGA builds in parallel. RAM usually becomes the limiting
   factor. With 16 GiB RAM you should be able to build at least two in
   parallel (for X3xx images). It depends on which images you want to build.

Thanks,

Wade


On Fri, Mar 18, 2022 at 4:32 AM STEFANI, Maurizio (External) via USRP-users
<usrp-users@lists.ettus.com> wrote:

> HI,
>
> thank you for your help on the past question, showing me the error due to
> wrong Vivado release (I was using the 2019.2 instead of 2019.1).
>
>
>
> Now I tried to recompile all ettus fpga, but the recompile time was
> greater than 6 hours on an Ubuntu virtual machine with 3GHz CPU and 16GB
> RAM.
>
>
>
> Due to the high recompile time, I was thinking to:
>
> -          Compile the FW on the internal processors only and download
> just it. Some one give me help about?
>
> -          If I need to change the Verilog files (one or more), is there
> a way to compile and download just them or is it necessary to recompile all?
>
> -          Furthermore, someone tried to recompile all ettus FPGA (X3xx
> family)?
>
> o   How long time to compile?
>
> o   Which PC was used?
>
> o   Is it possible to porting the FPGA environment under Windows OS?
>
>
>
> Thank you for your help in advance
>
>
>
> Maurizio Stefani
>
>
> The information in this e-mail is confidential. The contents may not be
> disclosed or used by anyone other than the addressee. Access to this e-mail
> by anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus immediately
> and delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or completeness
> of this e-mail as it has been sent over public networks. If you have any
> concerns over the content of this message or its Accuracy or Integrity,
> please contact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated virus
> scanning software but you should take whatever measures you deem to be
> appropriate to ensure that this message and any attachments are virus free.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000007ee6f105da7e5064
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto"><div dir=3D"ltr">Hi Maurizio,<div><div><=
br></div></div><div>Yes, building all the FPGAs from scratch in a single ru=
n takes a long time. But maybe that&#39;s not needed. Let&#39;s start with =
your questions:</div><div><ul><li>Are you referring to X3xx? I don&#39;t kn=
ow how to build the FW for the embedded CPU but you should not have to rebu=
ild it unless you&#39;re changing it. That would have no effect on the FPGA=
 contents.</li><li>If you change even one Verilog file that&#39;s used by t=
he FPGA then you need to rerun make and build them all. The actual compilat=
ion of the Verilog files doesn&#39;t take very long. It&#39;s place and rou=
te that takes the longest, and there&#39;s no way to reuse the place-and-ro=
ute results from previous runs. This is a big difference between software c=
ompilation and FPGA compilation.</li><li>We compile all the FPGAs regularly=
 as part of our continuous integration testing.</li><ul><li>We usually buil=
d several in parallel, and we will often reuse IP build products, so it doe=
sn&#39;t take as long. I don&#39;t have the numbers with me, but there are =
so many variables that I don&#39;t think our CI build times would be very m=
eaningful. I would guess most images take about an hour.</li><li>Sorry, I d=
on&#39;t know what machine types.</li><li>You can build under Windows, usin=
g Cygwin, but I don&#39;t usually recommend it. Sometimes Vivado generates =
IP file=C2=A0paths that are too long for Windows. For building under Window=
s, I would=C2=A0use WSL. But Ubuntu is the best option because that&#39;s w=
hat we do most of our testing with.</li></ul></ul><div dir=3D"auto">A few o=
ther thoughts that might be helpful:</div><div dir=3D"auto"><ul><li>It&#39;=
s not needed to recompile the FPGA images unless you are customizing the HD=
L or RFNoC contents. Use uhd_images_downloader to download the latest shipp=
ing images from Ettus.</li><li>The first part of the compile is building th=
e IP, which takes maybe 1-2 hours. This only has to be done once and subseq=
uent builds will re-use the same IP output products.</li><li>You only need =
to build the image you plan to use. For example, if you&#39;re using X310_X=
G, then only build that one by running &quot;make X310_XG&quot;.</li><li>FP=
GA builds don&#39;t take advantage of multiple CPUs well, but you can run m=
ultiple FPGA builds in parallel. RAM usually becomes the limiting factor. W=
ith 16 GiB RAM you should be able to build at least two in parallel (for X3=
xx images). It depends on which images you want to build.</li></ul></div><d=
iv>Thanks,</div><div><br></div><div>Wade</div></div></div><br><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 18, 202=
2 at 4:32 AM STEFANI, Maurizio (External) via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">





<div lang=3D"IT">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">thank you for your help on the =
past question, showing me the error due to wrong Vivado release (I was usin=
g the 2019.2 instead of 2019.1).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now I tried to recompile all et=
tus fpga, but the recompile time was greater than 6 hours on an Ubuntu virt=
ual machine with 3GHz CPU and 16GB RAM.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Due to the high recompile time,=
 I was thinking to:<u></u><u></u></span></p>
<p><u></u><span lang=3D"EN-US"><span>-<span style=3D"font:7pt &quot;Times N=
ew Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-US">Compile the FW on the inte=
rnal processors only and download just it. Some one give me help about?<u><=
/u><u></u></span></p>
<p><u></u><span lang=3D"EN-US"><span>-<span style=3D"font:7pt &quot;Times N=
ew Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-US">If I need to change the Ve=
rilog files (one or more), is there a way to compile and download just them=
 or is it necessary to recompile all?<u></u><u></u></span></p>
<p><u></u><span lang=3D"EN-US"><span>-<span style=3D"font:7pt &quot;Times N=
ew Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-US">Furthermore, someone tried=
 to recompile all ettus FPGA (X3xx family)?
<u></u><u></u></span></p>
<p style=3D"margin-left:72pt">
<u></u><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;"><=
span>o<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-US">How long time to compile? =
<u></u>
<u></u></span></p>
<p style=3D"margin-left:72pt">
<u></u><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;"><=
span>o<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-US">Which PC was used?<u></u><=
u></u></span></p>
<p style=3D"margin-left:72pt">
<u></u><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;"><=
span>o<span style=3D"font:7pt &quot;Times New Roman&quot;">=C2=A0=C2=A0
</span></span></span><u></u><span lang=3D"EN-US">Is it possible to porting =
the FPGA environment under Windows OS?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you for your help in adva=
nce<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Maurizio Stefani<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
</div>
<font style=3D"font-size:9px">The information in this e-mail is confidentia=
l. The contents may not be disclosed or used by anyone other than the addre=
ssee. Access to this e-mail by anyone else is unauthorised.<br>If you are n=
ot the intended recipient, please notify Airbus immediately and delete this=
 e-mail.<br>Airbus cannot accept any responsibility for the accuracy or com=
pleteness of this e-mail as it has been sent over public networks. If you h=
ave any concerns over the content of this message or its Accuracy or Integr=
ity, please contact Airbus immediately.<br>All outgoing e-mails from Airbus=
 are checked using regularly updated virus scanning software but you should=
 take whatever measures you deem to be appropriate to ensure that this mess=
age and any attachments are virus free.</font></div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com<br></a><br>
</blockquote></div>
</div>
</div>

--0000000000007ee6f105da7e5064--

--===============7018643007632431708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7018643007632431708==--
