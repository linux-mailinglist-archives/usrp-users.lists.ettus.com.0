Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD3995F187
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 14:40:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7109B385510
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 08:40:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724676025; bh=hUFdsGa7xFcwgkvO5NSpaqXM89OLUIrGSKLUOK07pNE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aAdCB5IVakZS7Ug7xZGoR2ZNQwcA0xNwL/CF1iodf/p1Hc+tU7GWmk5JgDMfuOi9W
	 +/Ywd5bUUKjq2EHUvNdTWvDQyPmqNRQoWnVlb2YAjoy0tax2dIdAeUTOZOELJWgfxp
	 Jyl/psz0gYUZYC4xKkZCi/uW/s0A3iyH47Dqmv5Hx9ESo+aWUM9Gn7pthNhKRQSgmn
	 XltscQSnPieW9ZqtZWiqhqXh1beLbwa/y/9l9uIuiFjRhjxqjcEurWEA2YBMiRJh5E
	 8z+KV6NPgjvZVdaFJwWk9VcFBJnKXsUTl2zHyuQO2ds5sZ7ve26YkX8rRagJMb1dHj
	 9WK3GEOuzh4uA==
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 8FF463842C2
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 08:39:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dI/bcDlR";
	dkim-atps=neutral
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-70b3b62025dso3734791a34.0
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 05:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724675981; x=1725280781; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LeqnHGPDI8PL3aaqbMEOD8+LTjqMnWlW9iPVUx7CO4o=;
        b=dI/bcDlR13vMac0/vWLRitkQzL0Ju43Ymmr716A2s4aEAQ8YkcOUjxvzHp4/dehzQc
         AdlEsPfi9WkFEXzRVa2DK+IaMouHLnAVhnzvAU8d7isYnvSkmDE+5JMSUPtA5Z552Iqe
         /HY2scgdTOlXizxFprfuGYAApYeB+f7byKRG4e1nt7ijNgeP1btJb+PQGz4q93KXsjQp
         A82TDD3CIIloo1vOTjDRz/oECRG9B1xxsmUV/7BjhK7I/TKRvjD9F8S0RuDndq0Bjr2r
         ttekkxo95+DTTnW09PpYksLvOn18xhVkfiTQRZ8dZBcKC36jXNtlmm+Fg6/lppyWrxHn
         OObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724675981; x=1725280781;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LeqnHGPDI8PL3aaqbMEOD8+LTjqMnWlW9iPVUx7CO4o=;
        b=j1bjJrRvMLx4RfP+HFnG+Yn1reATxICldQ5InQzq4B4iHpul6zGhx5qqzm5x+DcwAH
         Iy7pkgB3aS0jQFadhGfpeUC3mlpRmBQyZrMu6cDs6Jpmhscb7ZjBYqNwBcKhS96F3Cg+
         33jfWabEX4IkmGqdVFuG6GLNCRBkiaeSXflyKnE1oqPG+mMyIyOyM31RR0B/FU8gIhlA
         aRNnhqVhpFtyckQwoTUfLrStxazB/gXucIlki+J8yT2CbUAzsCgC+eLjVPNbI+6pGhSV
         izUE8+aYUY/qscUgQrTj+z4i5xKMoERW8KxYn8ckEySW++iZdx9xBKvs+2AKKBonXGfl
         lUxg==
X-Gm-Message-State: AOJu0YycOaVv6VS/hpBLVMnJqu14e9XKJ+UAtzanL3pmB+ci+ldq13RS
	T9gOW9Nqg5NeLluJeR0j8MQHP1ihhJveft3ZVz19hpPRWz4e1M3ykUuAu4h8xJNvKTwnjbqdsHe
	C9sfmRccrA9ftZDrfdICf8C3u2I8=
X-Google-Smtp-Source: AGHT+IHvhqqIL9eJaP3nHFmi/6v+J7JwlZueMHMbSAxfERWnUQRo1cSgvh4JxG8RPZt/51U3mvG6D6Xi98Mw8rmT9mI=
X-Received: by 2002:a05:6870:970b:b0:270:10df:3b63 with SMTP id
 586e51a60fabf-273e6476815mr11922994fac.13.1724675981400; Mon, 26 Aug 2024
 05:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <CABeHafiQq2DoHjTK6nHD9SUgLoWd3BLpLhERGssgwxy_kRv7pA@mail.gmail.com>
 <CAFOi1A7SxYPDEBmHmnU5_3d-MrYYApqqKZHgCkvZks8UGoOyQw@mail.gmail.com>
In-Reply-To: <CAFOi1A7SxYPDEBmHmnU5_3d-MrYYApqqKZHgCkvZks8UGoOyQw@mail.gmail.com>
From: Saulo Queiroz <ssaulojorge@gmail.com>
Date: Mon, 26 Aug 2024 13:39:31 +0100
Message-ID: <CABeHafg-HPbTnhs18T=1GAxb4g91OkOb+dKD_=Bq9tZa+O13ew@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 7EKJ25DV64UVVSVRIT6N6UQMJAFYGSSL
X-Message-ID-Hash: 7EKJ25DV64UVVSVRIT6N6UQMJAFYGSSL
X-MailFrom: ssaulojorge@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Patch ?? for RFNoC OFDM Receiver
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7EKJ25DV64UVVSVRIT6N6UQMJAFYGSSL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2603337036396345898=="

--===============2603337036396345898==
Content-Type: multipart/alternative; boundary="0000000000003964220620956b84"

--0000000000003964220620956b84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you,

Actually, I'd like to perform a 'quite' simple experiment consisting in
assessing the runtime of a basic OFDM receiver running on FPGA (i.e. RFNoC)
when processing an OFDM symbol (sent through a loopback cable). Searching
the web, we got the impression that there is a version of RFNoC containing
all blocks we need for that experiment (our team acquired X310 recently)
[1]. In summary, is there any git TAG/version of the uhd/RFNoC repo that I
can fetch to get the RFNoC OFDM Receiver blocks demonstrated in [1]?
Thank you in advance,

best regards

[1] Building an OFDM Receiver with RFNoC, 2015.


Em seg., 19 de ago. de 2024 =C3=A0s 13:43, Martin Braun <martin.braun@ettus=
.com>
escreveu:

> Hey Saulo,
>
> we're currently only supporting RFNoC blocks that ship with recent UHD
> versions. That block is from a UHD 3.* version.
>
> Your build will most likely have more warnings/errors further up, maybe
> there's an unconnected wire or something.
>
> Best of luck,
>
> --Martin
>
> On Mon, Aug 5, 2024 at 9:55=E2=80=AFPM Saulo Queiroz <ssaulojorge@gmail.c=
om>
> wrote:
>
>> Hello,
>>
>>
>> I'm getting the below error message when building a image to run an OFDM=
 receiver on X310.
>>
>> ERROR: [Opt 31-2] SRLC32E x300_core/inst_eq/inst_axi_wrapper/header_fifo=
/fifo_short/gen_srlc32e[64].srlc32e is missing a connection on D pin.
>>
>>
>> I patch for that was mentioned before (I copied the emails below) but I =
didn't find it. Is there any solution (including an old functional version)=
?
>>
>> My system (orbit-lab testbed) is
>>
>>  GNU C++ version 7.5.0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de
>>
>>
>> thank you
>>
>>
>>
>> ----------------------------------
>>
>> "*Hi Sarah,
>>
>> I have submitted a pull request with some OFDM improvements including a =
fix
>> for this issue, hopefully it will be merged soon. I'll send you the patc=
h
>> set to try out in the meantime.*"
>>
>> Jonathon
>>
>> On Fri, Sep 28, 2018 at 11:05 AM Sarah Tran via USRP-users <usrp-users@l=
ists.ettus.com> wrote:
>>
>> > Hi all,
>> >
>> >
>> > I am trying to build a custom FPGA image for my X310
>> > (daughterboards=3DUBX-160) using the uhd_image_builder gui and trying =
to use
>> > the following blocks:
>> >
>> > fft
>> >
>> > schmidl_cox
>> >
>> > eq
>> >
>> > ofdm_constellation_demapper
>> >
>> >
>> > as the code is running and building, it always stops on this error:
>> >
>> > '
>> > [00:22:41] Current task: Logic Optimization +++ Current Phase: Finishe=
d
>> > [00:22:41] Starting Connectivity Check Task
>> > ERROR: [Opt 31-2] SRLC32E
>> > x300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[=
64].srlc32e
>> > is missing a connection on D pin.
>> > [00:22:51] Current task: Connectivity Check +++ Current Phase: Startin=
g
>> > [00:22:51] Current task: Connectivity Check +++ Current Phase: Finishe=
d
>> > [00:22:51] Process terminated. Status: Failure
>> >
>> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>> > Warnings:           862
>> > Critical Warnings:  36
>> > Errors:             1
>> >
>> > Makefile.x300.inc:111: recipe for target 'bin' failed
>> > make[1]: *** [bin] Error 1
>> > make[1]: Leaving directory '/home/lsop/rfnoc/fpga/usrp3/top/x300'
>> > Makefile:119: recipe for target 'X310_RFNOC_HG' failed
>> > make: *** [X310_RFNOC_HG] Error 2'
>> >
>> > I can't seem to get it resolved, and I was wondering if there was a tr=
ick
>> > that someone else was able to use to get it to build. Any help or insi=
ght
>> > is appreciated.
>> >
>> > Thank you,
>> > Sarah
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> --
>> Saulo Jorge bq
>> - "...  practical things ...  will improve your theories. ...
>> theoretical things ... will improve your practice."
>> Donald Knuth.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--=20
Saulo Jorge bq
- "...  practical things ...  will improve your theories. ...  theoretical
things ... will improve your practice."
Donald Knuth.

--0000000000003964220620956b84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you,<div><br></div><div>Actually, I&#39;d like to pe=
rform a &#39;quite&#39; simple experiment consisting in assessing the runti=
me of a basic OFDM receiver running on FPGA (i.e. RFNoC) when processing an=
 OFDM symbol (sent through a loopback cable). Searching the web, we got the=
 impression that there is a version of RFNoC containing all blocks we need =
for that experiment (our team acquired X310 recently) [1]. In summary, is t=
here any git TAG/version of the uhd/RFNoC repo that I can=C2=A0fetch to get=
 the RFNoC OFDM Receiver blocks demonstrated in [1]?</div><div>Thank you in=
 advance,</div><div><br></div><div>best regards</div><div><br></div><div>[1=
] Building an OFDM Receiver with RFNoC, 2015.</div><div>=C2=A0</div><div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">Em seg., 19 de ago. de 2024 =C3=A0s 13:43, Martin Braun &lt;<a href=3D"=
mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>=
&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Hey Saulo,</div><div><br></div><div>we&#39;re currentl=
y only supporting RFNoC blocks that ship with recent UHD versions. That blo=
ck is from a UHD 3.* version.</div><div><br></div><div>Your build will most=
 likely have more warnings/errors further up, maybe there&#39;s an unconnec=
ted wire or something.</div><div><br></div><div>Best of luck,</div><div><br=
></div><div>--Martin<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Aug 5, 2024 at 9:55=E2=80=AFPM Saulo =
Queiroz &lt;<a href=3D"mailto:ssaulojorge@gmail.com" target=3D"_blank">ssau=
lojorge@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;=
color:rgb(0,0,0)">Hello,<br></pre><pre style=3D"font-family:courier,&quot;c=
ourier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;=
color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;courier=
 new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px;color:=
rgb(0,0,0)">I&#39;m getting the below error message when building a image t=
o run an OFDM receiver on X310.</pre><pre style=3D"font-family:courier,&quo=
t;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0=
px;color:rgb(0,0,0)"><pre style=3D"font-family:courier,&quot;courier new&qu=
ot;,monospace;margin-top:0px;margin-bottom:0px">ERROR: [Opt 31-2] SRLC32E x=
300_core/inst_eq/inst_axi_wrapper/header_fifo/fifo_short/gen_srlc32e[64].sr=
lc32e is missing a connection on D pin.</pre></pre><pre style=3D"font-famil=
y:courier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;m=
argin-bottom:0px;color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:cour=
ier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-=
bottom:0px;color:rgb(0,0,0)">I patch for that was mentioned before (I copie=
d the emails below) but I didn&#39;t find it. Is there any solution (includ=
ing an old functional version)?</pre><pre style=3D"font-family:courier,&quo=
t;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0=
px;color:rgb(0,0,0)">My system (orbit-lab testbed) is<br></pre><pre style=
=3D"font-family:courier,&quot;courier new&quot;,monospace;font-size:14px;ma=
rgin-top:0px;margin-bottom:0px;color:rgb(0,0,0)">=C2=A0GNU C++ version 7.5.=
0; Boost_106501; UHD_3.15.0.HEAD-0-gaea0e2de<br></pre><pre style=3D"font-fa=
mily:courier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0p=
x;margin-bottom:0px;color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:c=
ourier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;marg=
in-bottom:0px;color:rgb(0,0,0)">thank you</pre><pre style=3D"font-family:co=
urier,&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margi=
n-bottom:0px;color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,=
&quot;courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bott=
om:0px;color:rgb(0,0,0)"><br></pre><pre style=3D"font-family:courier,&quot;=
courier new&quot;,monospace;font-size:14px;margin-top:0px;margin-bottom:0px=
;color:rgb(0,0,0)">----------------------------------</pre><pre style=3D"fo=
nt-family:courier,&quot;courier new&quot;,monospace;font-size:14px;margin-t=
op:0px;margin-bottom:0px;color:rgb(0,0,0)">&quot;<i>Hi Sarah,

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
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div>Saulo Jorge bq<br>-=C2=A0<span st=
yle=3D"font-size:12.8px">&quot;</span><span style=3D"font-family:sans-serif=
;font-size:14px">...=C2=A0 practical things ...=C2=A0 will improve your the=
ories. ...=C2=A0 theoretical things ... will improve your practice.</span><=
span style=3D"font-size:12.8px">&quot;=C2=A0</span></div><div>Donald Knuth.=
<br></div></div></div></div></div>

--0000000000003964220620956b84--

--===============2603337036396345898==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2603337036396345898==--
