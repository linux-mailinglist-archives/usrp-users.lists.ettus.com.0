Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4454E32A1
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 23:24:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EBD11385379
	for <lists+usrp-users@lfdr.de>; Mon, 21 Mar 2022 18:24:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="FlHat88M";
	dkim-atps=neutral
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 24B4B384D3F
	for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 18:23:55 -0400 (EDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-2e5827a76f4so171824127b3.6
        for <usrp-users@lists.ettus.com>; Mon, 21 Mar 2022 15:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cYP8ff5+BjCVe+nzRn1zj0nBiKkYF6MrVfI5yZS94ow=;
        b=FlHat88MX3w+6YzvUZeIhKU0IQSVUNxAMDjFrnKlcVSfS/AAxD0aBwIzhiQmEwKEnh
         WB6H+2xTKT6veAIsMqvDrv+JzQnDUJCU5S0I1cIwEaKVoC4TBIcnXWs8JCcvrBfb566o
         Iln9LH+HJdBQV6bLCWb55XNvGOx6y79AsqkwXOQrHmmkBIPKzohN9AbBMH7IWagnsa3c
         x0NgrK6jB5JP/K45yMHhP9HzYSGvu+2Hpnl3h/yW0PIh1DRO9e9jseCFaxOgAUpCwTJi
         MuEJT4KSstsKNOpu5LHvoB/yItaoWbXmk008bmWEq/yS6AgLY+hc/xTqLo6uhRzURXiL
         Gt0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cYP8ff5+BjCVe+nzRn1zj0nBiKkYF6MrVfI5yZS94ow=;
        b=WV68uUld4XOUYYE2vpTpc/rN/CdpenxpMV+32fUpKxtXlONiS9BNTiD8UAsi9s90WL
         BM/pUkIuBj7nNpoNp5bT/NF3s1IR2Tn3DA+36IDKXBkmOH9e3PlzJDQp7EGTGjyFVoCq
         WiOrnY2eeL0weeE8X7JVYd+q35mLnaOvrKfcjK+F69LAmtYDZOCvL9JDI4CQPfSXvgUa
         ZNPrAEyULFLJ2UGLrmjEuCcY2qkwWBdDX896uetMvAstbngZJJY75mwkCKDYQAVB0h6A
         LdhTNYRXShzJzc+jvpAfLRA+hVE7ymENZ4aqeMfGUr8mogsNdAFxQwF5LIblmEWzvrxd
         lZDw==
X-Gm-Message-State: AOAM530EhLArj0AFjOh4ZDj8tHa2Ql/xaBlArIdcoFMnbCmEy+uvqu7m
	g9TVZPXdr2FSb8ZWkgomC/bnkPI5WIBos/Mx8Ta4lIGoW5fK5g==
X-Google-Smtp-Source: ABdhPJwAAwqIBr1Y2sci0gLtwAjKwEJ1niZ4YDwo20NNsuezPnpqpNs18cy33kDfLvKcUDWcUUXaqAUCFE4BWiW8rEo=
X-Received: by 2002:a0d:dcc3:0:b0:2d1:44a4:14be with SMTP id
 f186-20020a0ddcc3000000b002d144a414bemr26188394ywe.76.1647901435271; Mon, 21
 Mar 2022 15:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsQ7758e5AzDEyNuAsgA6xwm1NQXMZHzAgzfgqDXVB8xQ@mail.gmail.com>
 <8d8335b8-bf02-af1e-3493-b0f4063409c4@ettus.com> <CAA=S3PuRq4X17Ba0xKSoNZnheQ_YFsXGE7K4iFdm3yBM9AsMLA@mail.gmail.com>
 <CAA=S3PtO-NgrrQVjQBtY5PAFDBYKb2qTB+X7jtZSObw+EA_VTA@mail.gmail.com> <692cec7e-04ff-0b17-f7ef-ef5b0248b01f@ettus.com>
In-Reply-To: <692cec7e-04ff-0b17-f7ef-ef5b0248b01f@ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 21 Mar 2022 18:23:44 -0400
Message-ID: <CAB__hTREoirpaVP+1TTaiYEUwyqd1dBBAvhdmmu=7fQmp6hPAw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Message-ID-Hash: V3ZJFFQJINPKRMS6O6QNGMJT6IOOLOGF
X-Message-ID-Hash: V3ZJFFQJINPKRMS6O6QNGMJT6IOOLOGF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Default CHDR_W is 64 for a RFNOC blocks, How can increased samples buffer in RFNOC block to 4096...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V3ZJFFQJINPKRMS6O6QNGMJT6IOOLOGF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4396884385951919127=="

--===============4396884385951919127==
Content-Type: multipart/alternative; boundary="000000000000acf7d905dac1f36f"

--000000000000acf7d905dac1f36f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi sp h,
I think that the numbers and the terminology need to be tightened up a bit
for anyone to help
- 32 is the number of bits in a sample (I do not know if this is the source
of confusion relating to your comment "for RFNOC we faced 32 samples")
- the RFNoC CHDR width is not important if you are working in gnuradio
rather than implementing DSP algorithms on the FPGA
- data transfer from the FPGA to CPU (gnuradio) occurs in "packets",
typically a bit less than 2000 samples long
- gnuradio has functions to convert incoming sample streams into vectors of
4096 (if that is what you need for your DSP)

Rob

On Mon, Mar 21, 2022 at 5:43 PM Marcus M=C3=BCller <marcus.mueller@ettus.co=
m>
wrote:

> Hi!
>
> I'm a bit confused, because in your original email you wrote that **in GN=
U
> Radio** you
> process blocks of 4096 items.
>
> So, where *exactly* does the requirement to have blocks of 4096 items
> arise from? What's
> the reason for 4096? I'm a really unsure what you need!
>
> Best regards,
>
> Marcus
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 21.03.22 15:41, sp h wrote:
> >
> > But I need to add samples to a buffer. when 4096 sample is received for
> block, do an
> > operation like correlate and convolution, and so on.
> >
> > Can we use RAM in an RFNOC block that enables us to work with specific
> count samples??
> > It is possible?
> >
> > any example or guide thanks
> >
> >
> > On Mon, Mar 21, 2022 at 6:01 PM sp h <stackprogramer@gmail.com> wrote:
> >
> >     But I need to add samples to a buffer. when 4096 sample is received
> for block, do an
> >     operation like correlate and convolution, and so on.
> >
> >     Can we use RAM in an RFNOC block that enables us to work with
> specific count samples??
> >     It is possible?
> >
> >     any example or guide thanks
> >
> >     On Mon, Mar 21, 2022 at 1:16 PM Marcus M=C3=BCller <
> marcus.mueller@ettus.com> wrote:
> >
> >         Hi!
> >
> >         > In Gnuradio when we want to work with samples buffer samples
> is 4096 ...
> >
> >         No, it's not! GNU Radio has a variable workload length approach=
,
> so you **must
> >         not**
> >         assume any fixed length buffer. Especially not 4096.
> >
> >         > but for RFNOC we faced 32 samples........
> >         > How can increased samples buffer in RFNOC block to 4096...?
> >
> >         You don't!
> >
> >         Best regards,
> >
> >         Marcus
> >         _______________________________________________
> >         USRP-users mailing list -- usrp-users@lists.ettus.com
> >         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000acf7d905dac1f36f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi sp h,<div>I think that the numbers and=
 the terminology need to be tightened up a bit for anyone to help</div><div=
>- 32 is the number of bits in a sample (I do not know if this is the sourc=
e of confusion relating to your comment &quot;for RFNOC we faced 32 samples=
&quot;)</div><div>- the RFNoC CHDR width is not important if you are workin=
g in gnuradio rather than implementing DSP algorithms on the FPGA</div><div=
>- data transfer from the FPGA to CPU (gnuradio) occurs in &quot;packets&qu=
ot;, typically a bit less than 2000 samples long</div><div>- gnuradio has f=
unctions to convert incoming sample streams into vectors of 4096 (if that i=
s what you need for your DSP)</div><div><br></div><div>Rob</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar=
 21, 2022 at 5:43 PM Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.muelle=
r@ettus.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hi!<br>
<br>
I&#39;m a bit confused, because in your original email you wrote that **in =
GNU Radio** you <br>
process blocks of 4096 items.<br>
<br>
So, where *exactly* does the requirement to have blocks of 4096 items arise=
 from? What&#39;s <br>
the reason for 4096? I&#39;m a really unsure what you need!<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer" target=3D"_blank">https://www.ettus.com/sdr-software/licenses/</a>.<=
br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 21.03.22 15:41, sp h wrote:<br>
&gt;<br>
&gt; But I need to add samples to a buffer. when 4096 sample is received fo=
r block, do an <br>
&gt; operation like correlate and convolution, and so on.<br>
&gt;<br>
&gt; Can we use RAM in an RFNOC block that enables us to work with specific=
 count samples??<br>
&gt; It is possible?<br>
&gt;<br>
&gt; any example or guide thanks<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Mar 21, 2022 at 6:01 PM sp h &lt;<a href=3D"mailto:stackprogra=
mer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0But I need to add samples to a buffer. when 4096 sa=
mple is received for block, do an<br>
&gt;=C2=A0 =C2=A0 =C2=A0operation like correlate and convolution, and so on=
.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Can we use RAM in an RFNOC block that enables us to=
 work with specific count samples??<br>
&gt;=C2=A0 =C2=A0 =C2=A0It is possible?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0any example or guide thanks<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On Mon, Mar 21, 2022 at 1:16 PM Marcus M=C3=BCller =
&lt;<a href=3D"mailto:marcus.mueller@ettus.com" target=3D"_blank">marcus.mu=
eller@ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Hi!<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; In Gnuradio when we want to work=
 with samples buffer samples is 4096 ...<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0No, it&#39;s not! GNU Radio has a var=
iable workload length approach, so you **must<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0not**<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0assume any fixed length buffer. Espec=
ially not 4096.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; but for RFNOC we faced=C2=A032 s=
amples........<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; How can increased samples=C2=A0b=
uffer in RFNOC block to 4096...?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0You don&#39;t!<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Best regards,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Marcus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_____________________________________=
__________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0USRP-users mailing list -- <a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0To unsubscribe send an email to <a hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users=
-leave@lists.ettus.com</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000acf7d905dac1f36f--

--===============4396884385951919127==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4396884385951919127==--
