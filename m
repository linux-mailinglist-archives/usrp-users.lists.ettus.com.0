Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E790F65DC85
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 20:06:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 545C23842C0
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 14:06:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672859187; bh=n+TuTTPrBIDwCqsq11VLNfxUjidlbCygYx1FsilpVgA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=q86byA6kcZLqnBx6xKMPTd/Pz6d6T9yLKTOg2OdOVEUFIt5tU8Feob5iccrRxEYd5
	 GjDuU3QnTBAyMYfiVPbyXdFw3ptWApVfnQYA/jEUkBTEnngYyXSWgO2Rho792DKNEe
	 5Pd/cuTC9qgM8edhK9xsi/docPH2LLUBzZsutn3pYgZRYSyCusnXBunMSeJ3HT2MiI
	 j6bauwvNuVwbyarbQTKJ2srpa4XJp3i7u9k7CnJAeM+WZY880dNpjjT5tSfoX9k/0d
	 MClOhXL9b8CQALjP+Ft6xF4PuakvB+EUPfqKOyFG2iTLbnBLBcxk4GLNdvqXmHtNCq
	 TsPMTAW1BNv8w==
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mm2.emwd.com (Postfix) with ESMTPS id E076F38422A
	for <usrp-users@lists.ettus.com>; Wed,  4 Jan 2023 14:06:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CWovZeWY";
	dkim-atps=neutral
Received: by mail-wr1-f47.google.com with SMTP id h16so33984838wrz.12
        for <usrp-users@lists.ettus.com>; Wed, 04 Jan 2023 11:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xRa0EGt1cfCHk+S4ADiiwCkjd0ACiblL3pwBiXGc0Ms=;
        b=CWovZeWYL8LMDdeiyHfls2W8/PH9PegVGubSpdDtlgLsCa6EZ8k6UfLOmxPIuoMs2g
         AplLdF3FfJq9L/1OWfum67IicJmHDK+1+ywMbUJVcwJWXRY3+X7CDf0e7MjiHwuUlpBP
         lOZ5FAq/cCOXTfYY+kEOYeZeVAHhFk8QrbTp94mnb/2HhJXt4WztOIi8rEsM8ZUR7h4e
         Hr16z17NccCHBFzdXFNP6+AVviRrZ9ez1ZKRDgSOb5bmFKtIjjSN17wTrvncIZD+dEG+
         RtpBoZ/RvLe6NG+Jaw9xziB65oG5NyJwPf/azbK3YlS9ZOoKLPO+AklynzGCKwTfuQZ6
         qZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRa0EGt1cfCHk+S4ADiiwCkjd0ACiblL3pwBiXGc0Ms=;
        b=dus/F4kMeFl+6tHBklH9HKG9SCcaPNpxhcRNNskPTYin5PD0xiVlR/wxbNhQeMGqMy
         WfvC06lQMZdMhWwweeoW5GVpvxd8GvqvYyUEdlS0uavVL6ZTxutseVFZEjrjg1UoYoIq
         5HNEG7gKCC6ANFSAXlnTV67Sq0eJaO4jLVznPl6+O6BwVvzMSV5ThbiCZnMdSubdiZZX
         83/clinehP6o39TBM/hDUbAvfJNeEsRbwpH+dmJD4n37mAcThY5SDegCIgDw1b9h73uc
         KqObQ6wkKPutwZvf/pnSqUF0WJ6+Qs3SxkE3qGmuAjUnE0gmHgR+XeqSQjVJyX5TbuVh
         bMMg==
X-Gm-Message-State: AFqh2kqFWZy4zUosQWKwhS2Fe49cGryubWRvsnV7itPcHNNLOdnpIuxE
	Gps2sDmVTX0cr2yfC7jE1861CpPxFohdPtnXiJs=
X-Google-Smtp-Source: AMrXdXv+qsmepIZkDfSiORh/KSwCsBpktBF9naP2Cq4OcCaQ0WkXmj7WmfVmy0LlnH/h5PNENgpZrSBQYbgSBaq00LY=
X-Received: by 2002:a5d:59c7:0:b0:28d:35a4:efe9 with SMTP id
 v7-20020a5d59c7000000b0028d35a4efe9mr527191wry.166.1672859179863; Wed, 04 Jan
 2023 11:06:19 -0800 (PST)
MIME-Version: 1.0
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com> <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
 <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com> <e0200c7a-b5a2-3466-a995-1c82394de282@gmail.com>
In-Reply-To: <e0200c7a-b5a2-3466-a995-1c82394de282@gmail.com>
From: Pedro Pereira <pedro60132@gmail.com>
Date: Wed, 4 Jan 2023 19:06:08 +0000
Message-ID: <CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 465YVOSMDIUTSUGEM2H2XIKQMTMIZSPB
X-Message-ID-Hash: 465YVOSMDIUTSUGEM2H2XIKQMTMIZSPB
X-MailFrom: pedro60132@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/465YVOSMDIUTSUGEM2H2XIKQMTMIZSPB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5319369951955734875=="

--===============5319369951955734875==
Content-Type: multipart/alternative; boundary="0000000000002cd13905f174e192"

--0000000000002cd13905f174e192
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> If you're asking "can you make your ZCU102 code run on the N310?"
> possibly.  There's a dual-core ARM CPU running Linux, and
>   a large FPGA fabric.
>

Is there any documentation for doing this? My receiver is implemented in
c++, I think I would have to implement device drivers to read data from the
hardware to the software application.
I only found documentation for importing standard/custom hardware IP blocks
to gnuradio.

On Tue, 3 Jan 2023 at 16:36, Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 03/01/2023 10:54, Pedro Pereira wrote:
>
> Thanks for the response.
>
> I don=C2=B4t want to run the software component of the GNSS receiver on m=
y
> computer, while connected to the N310 for heterogeneous processing - if
> that's what you're saying.
> I want an edge device running embedded linux, like I already have on my
> zcu102, to run both sw and hw components.
>
> The first stages of the processing chain are in hardware so I don=C2=B4t =
want
> to read samples from the front-end at the application level. I want to re=
ad
> samples directly from my hardware block design, do some heavy processing
> and deliver the results to the software application.
> I can do all of this using AD front-ends and their HDL reference designs.
> Is there any support to do this using N210 or N310?
>
> Thanks again.
>
> It's still not entirely clear what it is you're asking.
>
> The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network ports.
>
> This makes it somewhat similar to your ZCU102, but with radios already
> built-in.
>
> If you're asking "can you make your ZCU102 code run on the N310?"
> possibly.  There's a dual-core ARM CPU running Linux, and
>   a large FPGA fabric.
>
> If you're asking "can I make my ZCU102 acquire samples from either N310 o=
r
> N210?" -- given that your ZCU102 has some SFP+
>   ports that could be configured for 1GiGe (or even 10GiGe in the case of
> N310) -- it seems likely that you could port UHD to
>   the Linux ARM CPU on the ZCU102, and then you could talk to either the
> N210 or N310 via the network ports from your ZCU102.
>
>
> On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller <marcus.mueller@ettus.com=
>
> wrote:
>
>> Note that the N310's FPGA might actually be large enough to fit in (part=
s
>> of) a GNSS receiver, especially if you remove the DUC chain of the TX pa=
th,
>> in case you don't need that. RFNoC is Ettus' framework for extending the
>> FPGA functionality, especially made for such use cases.
>>
>> Note that even in RFNoC you get a stream of samples from the radio
>> frontend, which you basically paid NI/Ettus for to design it for you, so
>> that you don't have to worry about how to talk to the physical hardware =
and
>> can care about signal processing :)
>>
>> Cheers,
>> Marcus
>>
>> On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>>
>> Hi Mr Pereira,
>>
>> the directest access you get to samples in the N210 is the ethernet
>> connection =E2=80=93 and that has no downside for GNSS applications, as =
the VITA49
>> samples fully represent the RF signal, thanks to Shannon-Nyquist.
>>
>> That is, of course, unless you start modifying the FPGA image of the
>> N210, and make it a completely different product. It's kind of unlikely =
you
>> want to do that.
>>
>> Greetings,
>> Marcus
>>
>> On 03.01.23 14:25, Pedro Pereira wrote:
>>
>> Greetings,
>>
>> I have 2 USRP front-ends - N210 and N310. I want to develop a GNSS
>> Receiver inside my FGPA - xilinx ZCU102 - and use one of the USRP device=
s
>> only as the front-end. The receiver is quite large so I need an external
>> board for all the signal processing chain. The receiver has two
>> implementations - software-only & hybrid. In hybrid mode some tasks of t=
he
>> processing chain are accelerated in hardware.
>>
>> The software-only version of the receiver running on my ZCU102 is able t=
o
>> configure the N210 and read packets over ethernet correctly. However, wi=
th
>> the hybrid version of the receiver, I want to read the digital IQ sample=
s
>> from the front end directly in hardware.
>>
>> For example, I am able to do this with the ZCU102 connected to FMComm2/3
>> using the FMC connection on the FPGA. AD provides HDL reference designs =
to
>> support communication between multiple front-ends and multiple FPGAs.
>>
>> Is there a similar way to read the digital samples directly in hardware
>> using the N210? The N210 only has the ethernet and a MIMO port.
>>
>> Thanks in advance.
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002cd13905f174e192
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">If you&#=
39;re asking &quot;can you make your ZCU102 code run on the N310?&quot; pos=
sibly.=C2=A0 There&#39;s a dual-core ARM CPU running Linux, and<br>=C2=A0 a=
 large FPGA fabric.<br></blockquote><div><br></div><div>Is there any docume=
ntation for doing this? My receiver is implemented in c++, I think I would =
have to implement device drivers to read data from the hardware to the soft=
ware application.</div><div>I only found documentation for importing standa=
rd/custom hardware IP blocks to gnuradio.=C2=A0</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 a=
t 16:36, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 03/01/2023 10:54, Pedro Pereira
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thanks for the response.
        <div><br>
        </div>
        <div>I don=C2=B4t want to run the software component of the GNSS
          receiver on my computer, while connected to the N310 for
          heterogeneous processing - if that&#39;s what you&#39;re saying.=
=C2=A0</div>
        <div>I want an edge device running embedded linux, like I
          already have on my zcu102, to run both sw and hw components.</div=
>
        <div><br>
        </div>
        <div>The first stages of the processing chain are in hardware so
          I don=C2=B4t want to read samples from the front-end at the
          application level. I want to read samples directly from my
          hardware block design, do some heavy processing and deliver
          the results to the software application.=C2=A0</div>
        <div>I can do all of this using AD front-ends and their HDL
          reference designs. Is there any support to do this using N210
          or N310?</div>
        <div><br>
        </div>
        <div>Thanks again.</div>
      </div>
      <br>
    </blockquote>
    It&#39;s still not entirely clear what it is you&#39;re asking.<br>
    <br>
    The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network ports.<br>
    <br>
    This makes it somewhat similar to your ZCU102, but with radios
    already built-in.<br>
    <br>
    If you&#39;re asking &quot;can you make your ZCU102 code run on the N31=
0?&quot;
    possibly.=C2=A0 There&#39;s a dual-core ARM CPU running Linux, and<br>
    =C2=A0 a large FPGA fabric.<br>
    <br>
    If you&#39;re asking &quot;can I make my ZCU102 acquire samples from ei=
ther
    N310 or N210?&quot; -- given that your ZCU102 has some SFP+<br>
    =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe in the
    case of N310) -- it seems likely that you could port UHD to<br>
    =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk to eith=
er
    the N210 or N310 via the network ports from your ZCU102.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at 15:15,
          Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.com=
" target=3D"_blank">marcus.mueller@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Note that the N310&#39;s FPGA might actually be large enough
              to fit in (parts of) a GNSS receiver, especially if you
              remove the DUC chain of the TX path, in case you don&#39;t
              need that. RFNoC is Ettus&#39; framework for extending the
              FPGA functionality, especially made for such use cases.</p>
            <p>Note that even in RFNoC you get a stream of samples from
              the radio frontend, which you basically paid NI/Ettus for
              to design it for you, so that you don&#39;t have to worry
              about how to talk to the physical hardware and can care
              about signal processing :)</p>
            <p>Cheers,<br>
              Marcus<br>
            </p>
            <br>
            <div>On 03.01.23 16:11, Marcus M=C3=BCller wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <p>Hi Mr Pereira,</p>
              <p>the directest access you get to samples in the N210 is
                the ethernet connection =E2=80=93 and that has no downside =
for
                GNSS applications, as the VITA49 samples fully represent
                the RF signal, thanks to Shannon-Nyquist.</p>
              <p>That is, of course, unless you start modifying the FPGA
                image of the N210, and make it a completely different
                product. It&#39;s kind of unlikely you want to do that.</p>
              <p>Greetings,<br>
                Marcus<br>
              </p>
              <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">Greetings,
                  <div><br>
                  </div>
                  <div>I have 2 USRP front-ends - N210 and N310. I want
                    to develop a GNSS Receiver inside my FGPA - xilinx
                    ZCU102 - and use one of the USRP devices only as the
                    front-end. The receiver is quite large so I need an
                    external board for all the signal processing chain.
                    The receiver has two implementations - software-only
                    &amp; hybrid. In hybrid mode some tasks of the
                    processing chain are accelerated in hardware.</div>
                  <div><br>
                  </div>
                  <div>The software-only version of the receiver running
                    on my ZCU102 is able to configure the N210 and read
                    packets over ethernet correctly. However, with the
                    hybrid version of the receiver, I want to read the
                    digital IQ samples from the front end directly in
                    hardware.=C2=A0</div>
                  <div><br>
                  </div>
                  <div>For example, I am able to do this with the ZCU102
                    connected to=C2=A0<span>FMComm2/3 using the FMC
                      connection on the FPGA. AD provides HDL reference
                      designs to support communication between multiple
                      front-ends and multiple FPGAs.=C2=A0</span></div>
                  <div><span><br>
                    </span></div>
                  <div><span>Is there a similar way to read the digital
                      samples directly in hardware using the N210? The
                      N210 only has the ethernet and a MIMO port.</span></d=
iv>
                  <div><span><br>
                    </span></div>
                  <div><font face=3D"Barlow, Helvetica Neue, Helvetica,
                      Arial, Lucida Grande, sans-serif" color=3D"#11171a"><=
span style=3D"font-size:14px">Thanks in advance.</span></font></div>
                  <div><span><br>
                    </span></div>
                  <div><span><br>
                    </span></div>
                </div>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002cd13905f174e192--

--===============5319369951955734875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5319369951955734875==--
