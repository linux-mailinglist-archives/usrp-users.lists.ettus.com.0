Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB2065DDA3
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 21:24:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4353D38435A
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jan 2023 15:24:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672863859; bh=MDE+g2gl7QwjQl23BmBCa0mPWQqx2PRVQwCZPo32rAE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Y6G7fbpkBl5LLQ3qG8Tt9vswNFcLl7mi1hGbAUWvcyxlcULqVMXk4DPl3Y78YJvXN
	 xPpwKtPkRFAKqUBupZ0qFvBpRGm64zIBfS8FEzQnVk9Z+WI0jCpBVvR5r/HrU9vs2N
	 OJqne/nX+IxiwA0cphgcoEPWvolXdnqInBzc2Hb/FeIloepWUVb+0X7PTAreTEzvLo
	 ehggbJolBwdzJSoqXgsXyp8SRwqMq2uC/fOsKpHUFIa+rBy/jTdSruJtxkb98zxWKc
	 mhBg2WYWQZSYzSrtVgjsX6izbleNiiEm8qB09FZsviBZuxG9914X+9yTiG3rgrQZXf
	 MEjBwuG1R8zRA==
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	by mm2.emwd.com (Postfix) with ESMTPS id CD38838434F
	for <usrp-users@lists.ettus.com>; Wed,  4 Jan 2023 15:24:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gCW2tP4X";
	dkim-atps=neutral
Received: by mail-wr1-f44.google.com with SMTP id bk16so21021367wrb.11
        for <usrp-users@lists.ettus.com>; Wed, 04 Jan 2023 12:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8x09oMOtx95d63+n414n3ypG+bwF4ySpxLw5Dt5hLOI=;
        b=gCW2tP4XIBfTVbmnIh+mncutSouUS2ICxMxsjhfdqsbpJRrAk7BWnrAnrqwUuw5XlP
         AhCysGy+biCqcrf6N/QaBLVID4loP9wk1K7Yb/JQ4+Tn/9dythkvA46p38D9/EwZ7kZw
         5Gqj7K+84MyfrKcsM+fLIFnqgqYXDwyjEmBZC/IgtorU0Dc8V61B+KWs56e5MQo+kBS7
         jHWWnfodUmM+8DnD3zgC1gmxSBMHLTHd9eLTpfg3/yVMauGxfXpyzprRDb0Vemf7c+9e
         HJnqTjRBK9vUlSB7as5zFq2N2l8QRvEfZA+kbbMWOg2NFHNdcUnG8k/Qsd9G4bvihBzD
         3AXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8x09oMOtx95d63+n414n3ypG+bwF4ySpxLw5Dt5hLOI=;
        b=wWZ66y13UmqeJ8gD0DFBwvgq8g0ly+F8q6MFe1JP6uRHk3vGX3EMJBT08nV2i0d/9r
         Es/NcMgBEAn2mOwkmQW2a+WKjPXQuwZfFZssNEA1lDi3NXtI8Nqzv/YzN755LDbX1JN6
         MtsrfQ8Ozi7uzpdBhehAsiKUKYLsNOvuQHtP6b0UNSmLqqJLJsf/OZYJeN72nmRKKTNT
         WgwnXUg9mqkGWcWy728v2oUYCUGxWqu1FNEERvAiO8grXpLykmqO6/T3CVliZdSYG4HL
         Ixu1YznJRSZZLza/tJUDkN3yDCj6KmKK5vstTG/XLqqniWIriSrvCMwJZ++s924GlZQt
         W7qA==
X-Gm-Message-State: AFqh2krU2aUT84js/OUkAFDqaQ5Sj05MJIrlHvbAhb/eYwvBPvkNGO3n
	LeMgAofP9LnNzW4fy1qoxhWBnzy/ZcXf6NdaIEY=
X-Google-Smtp-Source: AMrXdXtDEiETvUT/CjWdRvrIj2THri50/OVzJc3Gj+kDnOLvCtVWm8O89oYH4XZQc03+j/UhWTu2HdCGAL6cHyZ8A8E=
X-Received: by 2002:a5d:59c7:0:b0:28d:35a4:efe9 with SMTP id
 v7-20020a5d59c7000000b0028d35a4efe9mr533440wry.166.1672863851678; Wed, 04 Jan
 2023 12:24:11 -0800 (PST)
MIME-Version: 1.0
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com> <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
 <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com>
 <e0200c7a-b5a2-3466-a995-1c82394de282@gmail.com> <CAD_5BALryiGS7JBX04WADkLt_55J+eqjvodiBmsq97puX-ZTxQ@mail.gmail.com>
 <d9c39cdd-73fb-2d4a-99b0-df5fd45d9057@gmail.com> <CAD_5BA+uNfC-DYS+BJMk9F8wDwdtMEqCzd3WvsdU+8iSMDejBg@mail.gmail.com>
In-Reply-To: <CAD_5BA+uNfC-DYS+BJMk9F8wDwdtMEqCzd3WvsdU+8iSMDejBg@mail.gmail.com>
From: Pedro Pereira <pedro60132@gmail.com>
Date: Wed, 4 Jan 2023 20:24:00 +0000
Message-ID: <CAD_5BALRn3QuPW=bXxbZV6XYKi0LQweNfCv6Z18XGTTHg643SA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: VHELGMMNPM4GBKEDHVUV5ZGCIBAJKWHX
X-Message-ID-Hash: VHELGMMNPM4GBKEDHVUV5ZGCIBAJKWHX
X-MailFrom: pedro60132@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VHELGMMNPM4GBKEDHVUV5ZGCIBAJKWHX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4001380537214015040=="

--===============4001380537214015040==
Content-Type: multipart/alternative; boundary="000000000000a312d405f175f74a"

--000000000000a312d405f175f74a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> You effectively want to implement what UHD does, but in FPGA code on your
> ZCU102.


Yes, I could replicate the UHD HDL implementation and try to config and
read the samples from the N310, without using the UHD c++ driver.

Essentially the receiver has a SW and HW component. The data source of the
HW component is the front-end (N310), and the data source for the SW
component is the output of the HW component.

On Wed, 4 Jan 2023 at 19:31, Pedro Pereira <pedro60132@gmail.com> wrote:

> What role, then, would the N310 play?
>
> The N310 will be the front end, and the ZCU102 the backbone of the
> receiver. Having a very large implementation in hardware to track signals
> from all satellite constellations at various frequency bands. I doubt tha=
t
> the N310's FPGA could accommodate all the hardware designs.
>
>
> On Wed, 4 Jan 2023 at 19:26, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 04/01/2023 14:06, Pedro Pereira wrote:
>>
>> If you're asking "can you make your ZCU102 code run on the N310?"
>>> possibly.  There's a dual-core ARM CPU running Linux, and
>>>   a large FPGA fabric.
>>>
>>
>> Is there any documentation for doing this? My receiver is implemented in
>> c++, I think I would have to implement device drivers to read data from =
the
>> hardware to the software application.
>> I only found documentation for importing standard/custom hardware IP
>> blocks to gnuradio.
>>
>> I'm still confused.  You still want to use the ZCU102 hardware?  What
>> role, then, would the N310 play?  This is a use-case that
>>   nobody at Ettus/NI has addressed, and, indeed, it's unlikely that
>> anyone on this list has tried to address this (confusing)
>>   use case.
>>
>>
>>
>> On Tue, 3 Jan 2023 at 16:36, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 03/01/2023 10:54, Pedro Pereira wrote:
>>>
>>> Thanks for the response.
>>>
>>> I don=C2=B4t want to run the software component of the GNSS receiver on=
 my
>>> computer, while connected to the N310 for heterogeneous processing - if
>>> that's what you're saying.
>>> I want an edge device running embedded linux, like I already have on my
>>> zcu102, to run both sw and hw components.
>>>
>>> The first stages of the processing chain are in hardware so I don=C2=B4=
t want
>>> to read samples from the front-end at the application level. I want to =
read
>>> samples directly from my hardware block design, do some heavy processin=
g
>>> and deliver the results to the software application.
>>> I can do all of this using AD front-ends and their HDL reference
>>> designs. Is there any support to do this using N210 or N310?
>>>
>>> Thanks again.
>>>
>>> It's still not entirely clear what it is you're asking.
>>>
>>> The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network ports.
>>>
>>> This makes it somewhat similar to your ZCU102, but with radios already
>>> built-in.
>>>
>>> If you're asking "can you make your ZCU102 code run on the N310?"
>>> possibly.  There's a dual-core ARM CPU running Linux, and
>>>   a large FPGA fabric.
>>>
>>> If you're asking "can I make my ZCU102 acquire samples from either N310
>>> or N210?" -- given that your ZCU102 has some SFP+
>>>   ports that could be configured for 1GiGe (or even 10GiGe in the case
>>> of N310) -- it seems likely that you could port UHD to
>>>   the Linux ARM CPU on the ZCU102, and then you could talk to either th=
e
>>> N210 or N310 via the network ports from your ZCU102.
>>>
>>>
>>> On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>
>>> wrote:
>>>
>>>> Note that the N310's FPGA might actually be large enough to fit in
>>>> (parts of) a GNSS receiver, especially if you remove the DUC chain of =
the
>>>> TX path, in case you don't need that. RFNoC is Ettus' framework for
>>>> extending the FPGA functionality, especially made for such use cases.
>>>>
>>>> Note that even in RFNoC you get a stream of samples from the radio
>>>> frontend, which you basically paid NI/Ettus for to design it for you, =
so
>>>> that you don't have to worry about how to talk to the physical hardwar=
e and
>>>> can care about signal processing :)
>>>>
>>>> Cheers,
>>>> Marcus
>>>>
>>>> On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>>>>
>>>> Hi Mr Pereira,
>>>>
>>>> the directest access you get to samples in the N210 is the ethernet
>>>> connection =E2=80=93 and that has no downside for GNSS applications, a=
s the VITA49
>>>> samples fully represent the RF signal, thanks to Shannon-Nyquist.
>>>>
>>>> That is, of course, unless you start modifying the FPGA image of the
>>>> N210, and make it a completely different product. It's kind of unlikel=
y you
>>>> want to do that.
>>>>
>>>> Greetings,
>>>> Marcus
>>>>
>>>> On 03.01.23 14:25, Pedro Pereira wrote:
>>>>
>>>> Greetings,
>>>>
>>>> I have 2 USRP front-ends - N210 and N310. I want to develop a GNSS
>>>> Receiver inside my FGPA - xilinx ZCU102 - and use one of the USRP devi=
ces
>>>> only as the front-end. The receiver is quite large so I need an extern=
al
>>>> board for all the signal processing chain. The receiver has two
>>>> implementations - software-only & hybrid. In hybrid mode some tasks of=
 the
>>>> processing chain are accelerated in hardware.
>>>>
>>>> The software-only version of the receiver running on my ZCU102 is able
>>>> to configure the N210 and read packets over ethernet correctly. Howeve=
r,
>>>> with the hybrid version of the receiver, I want to read the digital IQ
>>>> samples from the front end directly in hardware.
>>>>
>>>> For example, I am able to do this with the ZCU102 connected to FMComm2=
/3
>>>> using the FMC connection on the FPGA. AD provides HDL reference design=
s to
>>>> support communication between multiple front-ends and multiple FPGAs.
>>>>
>>>> Is there a similar way to read the digital samples directly in hardwar=
e
>>>> using the N210? The N210 only has the ethernet and a MIMO port.
>>>>
>>>> Thanks in advance.
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
>>

--000000000000a312d405f175f74a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You effe=
ctively want to implement what UHD does, but in FPGA code on your ZCU102.</=
blockquote><div><br></div><div>Yes, I could replicate the UHD HDL implement=
ation and try to config and read the samples from the N310, without using t=
he UHD c++ driver.</div><div><br></div><div>Essentially the receiver has a =
SW and HW component. The data source of the HW component is the front-end (=
N310), and the data source for the SW component is the output of the HW com=
ponent.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, 4 Jan 2023 at 19:31, Pedro Pereira &lt;<a href=3D"mail=
to:pedro60132@gmail.com">pedro60132@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">What role, then, would the N310 play?<=
/blockquote><div>The N310 will be the front end, and the ZCU102 the backbon=
e of the receiver. Having a very large implementation in hardware to track =
signals from all satellite constellations at various frequency bands. I dou=
bt that the N310&#39;s FPGA could accommodate all the hardware designs.=C2=
=A0</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, 4 Jan 2023 at 19:26, Marcus D. Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
 =20
   =20
 =20
  <div>
    <div>On 04/01/2023 14:06, Pedro Pereira
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">If
          you&#39;re asking &quot;can you make your ZCU102 code run on the =
N310?&quot;
          possibly.=C2=A0 There&#39;s a dual-core ARM CPU running Linux, an=
d<br>
          =C2=A0 a large FPGA fabric.<br>
        </blockquote>
        <div><br>
        </div>
        <div>Is there any documentation for doing this? My receiver is
          implemented in c++, I think I would have to implement device
          drivers to read data from the hardware to the software
          application.</div>
        <div>I only found documentation for importing standard/custom
          hardware IP blocks to gnuradio. <br>
        </div>
      </div>
    </blockquote>
    I&#39;m still confused.=C2=A0 You still want to use the ZCU102 hardware=
?=C2=A0
    What role, then, would the N310 play?=C2=A0 This is a use-case that<br>
    =C2=A0 nobody at Ettus/NI has addressed, and, indeed, it&#39;s unlikely=
 that
    anyone on this list has tried to address this (confusing)<br>
    =C2=A0 use case.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at 16:36,
          Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" ta=
rget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 03/01/2023 10:54, Pedro Pereira wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Thanks for the response.
                <div><br>
                </div>
                <div>I don=C2=B4t want to run the software component of the
                  GNSS receiver on my computer, while connected to the
                  N310 for heterogeneous processing - if that&#39;s what
                  you&#39;re saying.=C2=A0</div>
                <div>I want an edge device running embedded linux, like
                  I already have on my zcu102, to run both sw and hw
                  components.</div>
                <div><br>
                </div>
                <div>The first stages of the processing chain are in
                  hardware so I don=C2=B4t want to read samples from the
                  front-end at the application level. I want to read
                  samples directly from my hardware block design, do
                  some heavy processing and deliver the results to the
                  software application.=C2=A0</div>
                <div>I can do all of this using AD front-ends and their
                  HDL reference designs. Is there any support to do this
                  using N210 or N310?</div>
                <div><br>
                </div>
                <div>Thanks again.</div>
              </div>
              <br>
            </blockquote>
            It&#39;s still not entirely clear what it is you&#39;re asking.=
<br>
            <br>
            The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network
            ports.<br>
            <br>
            This makes it somewhat similar to your ZCU102, but with
            radios already built-in.<br>
            <br>
            If you&#39;re asking &quot;can you make your ZCU102 code run on=
 the
            N310?&quot; possibly.=C2=A0 There&#39;s a dual-core ARM CPU run=
ning Linux,
            and<br>
            =C2=A0 a large FPGA fabric.<br>
            <br>
            If you&#39;re asking &quot;can I make my ZCU102 acquire samples=
 from
            either N310 or N210?&quot; -- given that your ZCU102 has some
            SFP+<br>
            =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe
            in the case of N310) -- it seems likely that you could port
            UHD to<br>
            =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk
            to either the N210 or N310 via the network ports from your
            ZCU102.<br>
            <br>
            <br>
            <blockquote type=3D"cite">
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at
                  15:15, Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mu=
eller@ettus.com" target=3D"_blank">marcus.mueller@ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div>
                    <p>Note that the N310&#39;s FPGA might actually be larg=
e
                      enough to fit in (parts of) a GNSS receiver,
                      especially if you remove the DUC chain of the TX
                      path, in case you don&#39;t need that. RFNoC is Ettus=
&#39;
                      framework for extending the FPGA functionality,
                      especially made for such use cases.</p>
                    <p>Note that even in RFNoC you get a stream of
                      samples from the radio frontend, which you
                      basically paid NI/Ettus for to design it for you,
                      so that you don&#39;t have to worry about how to talk
                      to the physical hardware and can care about signal
                      processing :)</p>
                    <p>Cheers,<br>
                      Marcus<br>
                    </p>
                    <br>
                    <div>On 03.01.23 16:11, Marcus M=C3=BCller wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <p>Hi Mr Pereira,</p>
                      <p>the directest access you get to samples in the
                        N210 is the ethernet connection =E2=80=93 and that =
has
                        no downside for GNSS applications, as the VITA49
                        samples fully represent the RF signal, thanks to
                        Shannon-Nyquist.</p>
                      <p>That is, of course, unless you start modifying
                        the FPGA image of the N210, and make it a
                        completely different product. It&#39;s kind of
                        unlikely you want to do that.</p>
                      <p>Greetings,<br>
                        Marcus<br>
                      </p>
                      <p>On 03.01.23 14:25, Pedro Pereira wrote:</p>
                      <blockquote type=3D"cite">
                        <div dir=3D"ltr">Greetings,
                          <div><br>
                          </div>
                          <div>I have 2 USRP front-ends - N210 and N310.
                            I want to develop a GNSS Receiver inside my
                            FGPA - xilinx ZCU102 - and use one of the
                            USRP devices only as the front-end. The
                            receiver is quite large so I need an
                            external board for all the signal processing
                            chain. The receiver has two implementations
                            - software-only &amp; hybrid. In hybrid mode
                            some tasks of the processing chain are
                            accelerated in hardware.</div>
                          <div><br>
                          </div>
                          <div>The software-only version of the receiver
                            running on my ZCU102 is able to configure
                            the N210 and read packets over ethernet
                            correctly. However, with the hybrid version
                            of the receiver, I want to read the digital
                            IQ samples from the front end directly in
                            hardware.=C2=A0</div>
                          <div><br>
                          </div>
                          <div>For example, I am able to do this with
                            the ZCU102 connected to=C2=A0<span>FMComm2/3
                              using the FMC connection on the FPGA. AD
                              provides HDL reference designs to support
                              communication between multiple front-ends
                              and multiple FPGAs.=C2=A0</span></div>
                          <div><span><br>
                            </span></div>
                          <div><span>Is there a similar way to read the
                              digital samples directly in hardware using
                              the N210? The N210 only has the ethernet
                              and a MIMO port.</span></div>
                          <div><span><br>
                            </span></div>
                          <div><font face=3D"Barlow, Helvetica Neue,
                              Helvetica, Arial, Lucida Grande,
                              sans-serif" color=3D"#11171a"><span style=3D"=
font-size:14px">Thanks in
                                advance.</span></font></div>
                          <div><span><br>
                            </span></div>
                          <div><span><br>
                            </span></div>
                        </div>
                        <br>
                        <fieldset></fieldset>
                        <pre>______________________________________________=
_
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                      </blockquote>
                    </blockquote>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
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
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>

--000000000000a312d405f175f74a--

--===============4001380537214015040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4001380537214015040==--
