Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C28FF956B19
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 14:44:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18D5B3850EE
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 08:44:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724071449; bh=4mp7M9O2lVxSTI4LfqnWBOMcKCyH9GixzcsOdoHK8FU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=DYGKt+BQjQh/6jPVJm3k2W+z9Cw9jg8TaFuCbr8NdLQmXblb9V9rlE2jUcqHcLeE4
	 fm35pqlbHulUWFfpXpLFF9NnKNavveP5+a97LLvr92rBfhPAyo5m3d3oXl4D9aqup/
	 aZah6J524hJwVft0Z1711nK7pkzMNlv56bSuO0WLNHmHnYTiIrfKQES7Dm9a9Vt/rY
	 k77iCHciwHraKIc7G17tnz94lNWpsa29gUS8rhXdIB1QWAC5mwmI884KX6qVa8uU2v
	 n7SRCqSkP0NRZkv1G4CRLyvahrpS+8sW9oAKFq+IRZqx3mchcWxal5iBXTtilj47/2
	 BWV6c4zyYfVng==
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	by mm2.emwd.com (Postfix) with ESMTPS id A3FE3384E6F
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 08:43:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="BGFJuTSO";
	dkim-atps=neutral
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52f025bc147so5148649e87.3
        for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 05:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724071437; x=1724676237; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1NHDmKViHe4EF9Uv2ucZwCyf6SL72s+zQZqs/rW27w=;
        b=BGFJuTSOLSvYsIh/ihlR5XYSMdZOaYtmiRgq28frTB6n38EewIFy/rwuYzg9RLKF4p
         C488l/oYknn507mfKfrOjfwjC52kSUSAEnIiLRH5aW/1o/V9Yy56o8atSj+u/153omMY
         YZf1d2/kzxtnoP9hzXJU0pWi60YEqfIs9XhjvEUEUYHQsysWXaVKHsq7rllwplVBAU16
         rco+pJxR4DULv8BPsMG/Rt5L+1rik4FIuOdZGegrohR7lf9DsD05Ia2r/aoAu4ub1PWk
         QLhyIxiJiAN2jRBuGYYf23Dt6XeCfTpYrbSwYJnLo/iUPw299dVZMLOIvdh2o5hRRC4M
         CdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724071437; x=1724676237;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1NHDmKViHe4EF9Uv2ucZwCyf6SL72s+zQZqs/rW27w=;
        b=op5k91T2I7S+qCQsTnBXZYcUlDrW3H0Zq3iUGhVJqvwf/EYElSQDOA9kBGZCZ3iixw
         PNxZ/DQ/pvKvWFi5BwQWeBXWguXcdXnaPDpd1tBs3eICKezyKjy90y4hHX3ZpEyTNSI2
         ofUMdgDz2B9OUXuTxqvQF/0CyIwIGA8hPWID9dpE3oeP/oCAgg1mjW4Kn6AvopwkPZQE
         y+/diaLG63ialO7XMY9OsGrEJczduo9NIov5ysWx9OgvvCNvzocvQhWDSsgJV5ralz7p
         UCdkWSnZsIQuCB/8+vjWZxEF4uRFhaROnYhEaj1VI0xNhOfvDI4yndPtUen8lE8NbfvP
         irRg==
X-Gm-Message-State: AOJu0YwWmCzTlD1vrYlecbCNufoltrhXax9omvD2Hw27w22W98lFwaMQ
	en6Oggcxkg4MnNytEiVRGUq80HIuUQQx5/CMAqkDfCxiaNypQQVrbS7LPdNxeth3nYKBRjIheAY
	WO5uAVYOrsrQZWjKE0MnsNznbyNr5Pb4HPgc29Ngs
X-Google-Smtp-Source: AGHT+IEa3McxSht+cyU6QcSQi5V5vDY5WCKVXfn86d+6QS0ZxJ6FJgdf4PFZTknBow5Wg88ZXArCM46XtnQUOfmLBKE=
X-Received: by 2002:a05:6512:b96:b0:533:901:e436 with SMTP id
 2adb3069b0e04-5331c690947mr5525009e87.9.1724071436762; Mon, 19 Aug 2024
 05:43:56 -0700 (PDT)
MIME-Version: 1.0
References: <CABeHafiQq2DoHjTK6nHD9SUgLoWd3BLpLhERGssgwxy_kRv7pA@mail.gmail.com>
In-Reply-To: <CABeHafiQq2DoHjTK6nHD9SUgLoWd3BLpLhERGssgwxy_kRv7pA@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 19 Aug 2024 14:43:44 +0200
Message-ID: <CAFOi1A7SxYPDEBmHmnU5_3d-MrYYApqqKZHgCkvZks8UGoOyQw@mail.gmail.com>
To: Saulo Queiroz <ssaulojorge@gmail.com>
Message-ID-Hash: UF37FP75YTPFVDUE4ZQWTVKSSSH3K74N
X-Message-ID-Hash: UF37FP75YTPFVDUE4ZQWTVKSSSH3K74N
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Patch ?? for RFNoC OFDM Receiver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UF37FP75YTPFVDUE4ZQWTVKSSSH3K74N/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5304068174489539265=="

--===============5304068174489539265==
Content-Type: multipart/alternative; boundary="0000000000008e6272062008a986"

--0000000000008e6272062008a986
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Saulo,

we're currently only supporting RFNoC blocks that ship with recent UHD
versions. That block is from a UHD 3.* version.

Your build will most likely have more warnings/errors further up, maybe
there's an unconnected wire or something.

Best of luck,

--Martin

On Mon, Aug 5, 2024 at 9:55=E2=80=AFPM Saulo Queiroz <ssaulojorge@gmail.com=
> wrote:

> Hello,
>
>
> I'm getting the below error message when building a image to run an OFDM =
receiver on X310.
>
> ERROR: [Opt 31-2] SRLC32E x300_core/inst_eq/inst_axi_wrapper/header_fifo/=
fifo_short/gen_srlc32e[64].srlc32e is missing a connection on D pin.
>
>
> I patch for that was mentioned before (I copied the emails below) but I d=
idn't find it. Is there any solution (including an old functional version)?
>
> My system (orbit-lab testbed) is
>
>  GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de
>
>
> thank you
>
>
>
> ----------------------------------
>
> "*Hi Sarah,
>
> I have submitted a pull request with some OFDM improvements including a f=
ix
> for this issue, hopefully it will be merged soon. I'll send you the patch
> set to try out in the meantime.*"
>
> Jonathon
>
> On Fri, Sep 28, 2018 at 11:05 AM Sarah Tran via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>
> > Hi all,
> >
> >
> > I am trying to build a custom FPGA image for my X310
> > (daughterboards=3DUBX-160) using the uhd_image_builder gui and trying t=
o use
> > the following blocks:
> >
> > fft
> >
> > schmidl_cox
> >
> > eq
> >
> > ofdm_constellation_demapper
> >
> >
> > as the code is running and building, it always stops on this error:
> >
> > '
> > [00:22:41] Current task: Logic Optimization +++ Current Phase: Finished
> > [00:22:41] Starting Connectivity Check Task
> > ERROR: [Opt 31-2] SRLC32E
> > x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[6=
4].srlc32e
> > is missing a connection on D pin.
> > [00:22:51] Current task: Connectivity Check +++ Current Phase: Starting
> > [00:22:51] Current task: Connectivity Check +++ Current Phase: Finished
> > [00:22:51] Process terminated. Status: Failure
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
> > Warnings:           862
> > Critical Warnings:  36
> > Errors:             1
> >
> > Makefile.x300.inc:111: recipe for target 'bin' failed
> > make[1]: *** [bin] Error 1
> > make[1]: Leaving directory '/home/lsop/rfnoc/fpga/usrp3/top/x300'
> > Makefile:119: recipe for target 'X310_RFNOC_HG' failed
> > make: *** [X310_RFNOC_HG] Error 2'
> >
> > I can't seem to get it resolved, and I was wondering if there was a tri=
ck
> > that someone else was able to use to get it to build. Any help or insig=
ht
> > is appreciated.
> >
> > Thank you,
> > Sarah
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> --
> Saulo Jorge bq
> - "...  practical things ...  will improve your theories. ...
> theoretical things ... will improve your practice."
> Donald Knuth.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008e6272062008a986
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Saulo,</div><div><br></div><div>we&#39;re current=
ly only supporting RFNoC blocks that ship with recent UHD versions. That bl=
ock is from a UHD 3.* version.</div><div><br></div><div>Your build will mos=
t likely have more warnings/errors further up, maybe there&#39;s an unconne=
cted wire or something.</div><div><br></div><div>Best of luck,</div><div><b=
r></div><div>--Martin<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2024 at 9:55=E2=80=AFPM Saulo=
 Queiroz &lt;<a href=3D"mailto:ssaulojorge@gmail.com">ssaulojorge@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><pre style=3D"font-family:courier,&quot;courier new&quot;,=
monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)"=
>Hello,<br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,=
monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)"=
><br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,monosp=
ace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">I&#39=
;m getting the below error message when building a image to run an OFDM rec=
eiver on X310.</pre><pre style=3D"font-family:courier,&quot;courier new&quo=
t;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,=
0)"><pre style=3D"font-family:courier,&quot;courier new&quot;,monospace;mar=
gin-top:0px;margin-bottom:0px">ERROR: [Opt 31-2] SRLC32E x300_core/inst_eq/=
inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].srlc32e is missing =
a connection on D pin.</pre></pre><pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;=
color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:=
rgb(0,0,0)">I patch for that was mentioned before (I copied the emails belo=
w) but I didn&#39;t find it. Is there any solution (including an old functi=
onal version)?</pre><pre style=3D"font-family:courier,&quot;courier new&quo=
t;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,=
0)">My system (orbit-lab testbed) is<br></pre><pre style=3D"font-family:cou=
rier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin=
-bottom:0px;color:rgb(0,0,0)">=C2=A0GNU C++ version 7.5.0; Boost_106501; UH=
D_3.15.0.HEAD-0-gaea0e2de<br></pre><pre style=3D"font-family:courier,&quot;=
courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px=
;color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courie=
r new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color=
:rgb(0,0,0)">thank you</pre><pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:=
rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier new&q=
uot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,=
0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier new&quot;,m=
onospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">=
----------------------------------</pre><pre style=3D"font-family:courier,&=
quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-botto=
m:0px;color:rgb(0,0,0)">&quot;<i>Hi Sarah,

I have submitted a pull request with some OFDM improvements including a fix
for this issue, hopefully it will be merged soon. I&#39;ll send you the pat=
ch
set to try out in the meantime.</i>&quot;</pre><pre style=3D"font-family:co=
urier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margi=
n-bottom:0px;color:rgb(0,0,0)">Jonathon

On Fri, Sep 28, 2018 at 11:05 AM Sarah Tran via USRP-users &lt;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:

&gt; Hi all,
&gt;
&gt;
&gt; I am trying to build a custom FPGA image for my X310
&gt; (daughterboards=3DUBX-160) using the uhd_image_builder gui and trying =
to use
&gt; the following blocks:
&gt;
&gt; fft
&gt;
&gt; schmidl_cox
&gt;
&gt; eq
&gt;
&gt; ofdm_constellation_demapper
&gt;
&gt;
&gt; as the code is running and building, it always stops on this error:
&gt;
&gt; &#39;
&gt; [00:22:41] Current task: Logic Optimization +++ Current Phase: Finishe=
d
&gt; [00:22:41] Starting Connectivity Check Task
&gt; ERROR: [Opt 31-2] SRLC32E
&gt; x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[=
64].srlc32e
&gt; is missing a connection on D pin.
&gt; [00:22:51] Current task: Connectivity Check +++ Current Phase: Startin=
g
&gt; [00:22:51] Current task: Connectivity Check +++ Current Phase: Finishe=
d
&gt; [00:22:51] Process terminated. Status: Failure
&gt;
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
&gt; Warnings:           862
&gt; Critical Warnings:  36
&gt; Errors:             1
&gt;
&gt; Makefile.x300.inc:111: recipe for target &#39;bin&#39; failed
&gt; make[1]: *** [bin] Error 1
&gt; make[1]: Leaving directory &#39;/home/lsop/rfnoc/fpga/usrp3/top/x300&#=
39;
&gt; Makefile:119: recipe for target &#39;X310_RFNOC_HG&#39; failed
&gt; make: *** [X310_RFNOC_HG] Error 2&#39;
&gt;
&gt; I can&#39;t seem to get it resolved, and I was wondering if there was =
a trick
&gt; that someone else was able to use to get it to build. Any help or insi=
ght
&gt; is appreciated.
&gt;
&gt; Thank you,
&gt; Sarah
&gt;
&gt; _______________________________________________
&gt; USRP-users mailing list
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a>
&gt; <a rel=3D"nofollow" href=3D"http://lists.ettus.com/mailman/listinfo/us=
rp-users_lists.ettus.com" style=3D"color:rgb(0,80,150)" target=3D"_blank">h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
&gt;
</pre><pre style=3D"font-family:courier,&quot;courier new&quot;,monospace;f=
ont-size:14px;margin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">__________=
_____________________________________
USRP-users mailing list
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>
<a rel=3D"nofollow" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" style=3D"color:rgb(0,80,150)" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></pre><div>=
<br></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"=
ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=
Saulo Jorge bq<br>-=C2=A0<span style=3D"font-size:12.8px">&quot;</span><spa=
n style=3D"font-family:sans-serif;font-size:14px">...=C2=A0 practical thing=
s ...=C2=A0 will improve your theories. ...=C2=A0 theoretical things ... wi=
ll improve your practice.</span><span style=3D"font-size:12.8px">&quot;=C2=
=A0</span></div><div>Donald Knuth.<br></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008e6272062008a986--

--===============5304068174489539265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5304068174489539265==--
