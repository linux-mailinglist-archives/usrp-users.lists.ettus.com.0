Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F55F65C411
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 17:36:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 114C13842ED
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 11:36:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672763796; bh=oHPgFIXwEVNfBTaUXuGct5gThtEI187GprI2YvYiqr8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=D9kZKm+fam4PS70cCCueZS3nRixs68wWm8+9eDwAevsVYTwp1BOP0SI1Mo0rBmOgN
	 RK871uHgY/s9IYvb1YrgpJNMuXzlcrGnIh1Yw4t+sy/juNIkb+2K0YWL8SqHqauza+
	 PGqdBsXjyWkLFewXxzhC7o/f10Bqqundn/NMHopBwo7vyqHhx45FVF0xk+zr0wmMCH
	 zbd6BGvevm3yBjAhQuis+2k2OY8djWSZPZ5Cwo/YCXkk8qsmEIlTeQXzfFE5lNI6ZZ
	 Mq+y42W3wi4naxuYD1wZFiLPXg5d+LGYRRbDntlxfMO28z6z76wBmSdVUoRxPX3BxL
	 kRwghFHzyPFLQ==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 74E1638409B
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 11:35:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SpOUGdy3";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id jr11so24915763qtb.7
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 08:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tDgAxdC9bAzTqW8FcmIqRARXWzYa0AxOgnkAbWKpqfY=;
        b=SpOUGdy3Gfux5H1AO8ZZy5qAZO0zZuQb7KwgD+0n7eSk1lu7w9Ual1Rltip0NNyqsl
         1bH6yYAZHTFcJm/JxWsWf9MRiBJbqD2wF5RK4LYJh9o6xfBEnI8fjev1edUpC1ypvKQk
         559ucN/1mibojJuoSmIYnbM58KVMnFWjZPzZZ8QfzL65+z9gK6Jg2GTfW9T+zum9JvVC
         sqm4T4M4Q7DeSvmmgTHfKiEF6oe3SlaVWbfvSJzuii3IyxF3zi0hR2aNmraT2sVqw4ql
         /eKJ0f7z7Vx7ENAXIqUbQbalW6VpjUDd8B/NdWg+vfDLlRRFNypb/vHl9i5gquSw+Nrr
         PsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tDgAxdC9bAzTqW8FcmIqRARXWzYa0AxOgnkAbWKpqfY=;
        b=D/O6n9Dbin2Wlj7/bD3opTZHccpsWyU8ZtG1NLZEYDC3J154uP8/LMcKV1H2rnhkKQ
         uG6O50GdJ2LA9TdQAAGeXBHTRqq5sjbUOfIpY0ytjd5WUZcoSr97ID8GE0UXt36q1h3/
         r9lmxciIS+mLKilRZjYUD6xvn/cKRzs5cdYhriCU7n/RLUSzmxUkxUxRDR2P60wFM27w
         jkEnLuYkZtWDucAfX9msl1ardStK9PAEXdiF+buOl9vt+3uLe1YlkIvPv/o+lOQzms8Q
         CuwxXn/O9KR9BfL3bv75dxLgx8wqmy4s3lxrI18e5s6mHHI2BFZ5w7q1RfoXnn3A1wyd
         TN0A==
X-Gm-Message-State: AFqh2kpyncBkiR0aBWxuPfskwZr7mL+9krl+IZZILtjbllAY2PurNOtp
	3DuiahXOG8IpZYDhcgS4aN1OYySQL5g=
X-Google-Smtp-Source: AMrXdXvwAUTUir+nnZmDVg3mGn0ce55b1kSJ0aSNCqY1rnSfAznvI9Rh+X9ABxAJtGICx1PMjFyQ/g==
X-Received: by 2002:a05:622a:17c5:b0:39c:da21:6bb3 with SMTP id u5-20020a05622a17c500b0039cda216bb3mr52467510qtk.56.1672763743677;
        Tue, 03 Jan 2023 08:35:43 -0800 (PST)
Received: from [192.168.2.193] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id q27-20020a37f71b000000b006cec8001bf4sm22106186qkj.26.2023.01.03.08.35.43
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 08:35:43 -0800 (PST)
Message-ID: <e0200c7a-b5a2-3466-a995-1c82394de282@gmail.com>
Date: Tue, 3 Jan 2023 11:35:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAD_5BALc9Z85RuZ8hiH4Hao2e2UQWQZ=RN2T-zYCxY2nZxbTyw@mail.gmail.com>
 <e55e5607-13e2-d6a9-6819-9a60c17540b5@ettus.com>
 <5c1a56c3-cf76-4ee9-c3ed-40411a5e0f3b@ettus.com>
 <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmail.com>
Message-ID-Hash: 2IZBXWN2KILN5KFED657SQ3CVXQGEMGJ
X-Message-ID-Hash: 2IZBXWN2KILN5KFED657SQ3CVXQGEMGJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SDR environment with USRP & external FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2IZBXWN2KILN5KFED657SQ3CVXQGEMGJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6543533113562765921=="

This is a multi-part message in MIME format.
--===============6543533113562765921==
Content-Type: multipart/alternative;
 boundary="------------Gik9Xq0y6Qi0T50FWeLS4Zzu"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Gik9Xq0y6Qi0T50FWeLS4Zzu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/01/2023 10:54, Pedro Pereira wrote:
> Thanks for the response.
>
> I don=C2=B4t want to run the software component of the GNSS receiver on=
 my=20
> computer, while connected to the N310 for heterogeneous processing -=20
> if that's what you're saying.
> I want an edge device running embedded linux, like I already have on=20
> my zcu102, to run both sw and hw components.
>
> The first stages of the processing chain are in hardware so I don=C2=B4=
t=20
> want to read samples from the front-end at the application level. I=20
> want to read samples directly from my hardware block design, do some=20
> heavy processing and deliver the results to the software application.
> I can do all of this using AD front-ends and their HDL reference=20
> designs. Is there any support to do this using N210 or N310?
>
> Thanks again.
>
It's still not entirely clear what it is you're asking.

The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network ports.

This makes it somewhat similar to your ZCU102, but with radios already=20
built-in.

If you're asking "can you make your ZCU102 code run on the N310?"=20
possibly.=C2=A0 There's a dual-core ARM CPU running Linux, and
 =C2=A0 a large FPGA fabric.

If you're asking "can I make my ZCU102 acquire samples from either N310=20
or N210?" -- given that your ZCU102 has some SFP+
 =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe in the c=
ase=20
of N310) -- it seems likely that you could port UHD to
 =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk to eithe=
r=20
the N210 or N310 via the network ports from your ZCU102.


> On Tue, 3 Jan 2023 at 15:15, Marcus M=C3=BCller <marcus.mueller@ettus.c=
om>=20
> wrote:
>
>     Note that the N310's FPGA might actually be large enough to fit in
>     (parts of) a GNSS receiver, especially if you remove the DUC chain
>     of the TX path, in case you don't need that. RFNoC is Ettus'
>     framework for extending the FPGA functionality, especially made
>     for such use cases.
>
>     Note that even in RFNoC you get a stream of samples from the radio
>     frontend, which you basically paid NI/Ettus for to design it for
>     you, so that you don't have to worry about how to talk to the
>     physical hardware and can care about signal processing :)
>
>     Cheers,
>     Marcus
>
>
>     On 03.01.23 16:11, Marcus M=C3=BCller wrote:
>>
>>     Hi Mr Pereira,
>>
>>     the directest access you get to samples in the N210 is the
>>     ethernet connection =E2=80=93 and that has no downside for GNSS
>>     applications, as the VITA49 samples fully represent the RF
>>     signal, thanks to Shannon-Nyquist.
>>
>>     That is, of course, unless you start modifying the FPGA image of
>>     the N210, and make it a completely different product. It's kind
>>     of unlikely you want to do that.
>>
>>     Greetings,
>>     Marcus
>>
>>     On 03.01.23 14:25, Pedro Pereira wrote:
>>
>>>     Greetings,
>>>
>>>     I have 2 USRP front-ends - N210 and N310. I want to develop a
>>>     GNSS Receiver inside my FGPA - xilinx ZCU102 - and use one of
>>>     the USRP devices only as the front-end. The receiver is quite
>>>     large so I need an external board for all the signal processing
>>>     chain. The receiver has two implementations - software-only &
>>>     hybrid. In hybrid mode some tasks of the processing chain are
>>>     accelerated in hardware.
>>>
>>>     The software-only version of the receiver running on my ZCU102
>>>     is able to configure the N210 and read packets over ethernet
>>>     correctly. However, with the hybrid version of the receiver, I
>>>     want to read the digital IQ samples from the front end directly
>>>     in hardware.
>>>
>>>     For example, I am able to do this with the ZCU102 connected to
>>>     FMComm2/3 using the FMC connection on the FPGA. AD provides HDL
>>>     reference designs to support communication between multiple
>>>     front-ends and multiple FPGAs.
>>>
>>>     Is there a similar way to read the digital samples directly in
>>>     hardware using the N210? The N210 only has the ethernet and a
>>>     MIMO port.
>>>
>>>     Thanks in advance.
>>>
>>>
>>>
>>>     _______________________________________________
>>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------Gik9Xq0y6Qi0T50FWeLS4Zzu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 03/01/2023 10:54, Pedro Pereira
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks for the response.
        <div><br>
        </div>
        <div>I don=C2=B4t want to run the software component of the GNSS
          receiver on my computer, while connected to the N310 for
          heterogeneous processing - if that's what you're saying.=C2=A0<=
/div>
        <div>I want an edge device running embedded linux, like I
          already have on my zcu102, to run both sw and hw components.</d=
iv>
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
    It's still not entirely clear what it is you're asking.<br>
    <br>
    The N310 has a Zynq FPGA + 2 AD9371 radios + 2 SFP+ network ports.<br=
>
    <br>
    This makes it somewhat similar to your ZCU102, but with radios
    already built-in.<br>
    <br>
    If you're asking "can you make your ZCU102 code run on the N310?"
    possibly.=C2=A0 There's a dual-core ARM CPU running Linux, and<br>
    =C2=A0 a large FPGA fabric.<br>
    <br>
    If you're asking "can I make my ZCU102 acquire samples from either
    N310 or N210?" -- given that your ZCU102 has some SFP+<br>
    =C2=A0 ports that could be configured for 1GiGe (or even 10GiGe in th=
e
    case of N310) -- it seems likely that you could port UHD to<br>
    =C2=A0 the Linux ARM CPU on the ZCU102, and then you could talk to ei=
ther
    the N210 or N310 via the network ports from your ZCU102.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAD_5BAKmuyaAk2e8kExT1razs3gj31SVmhAm1ijm6dDroTmfGw@mail.gmai=
l.com">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Jan 2023 at 15:15=
,
          Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ettus.c=
om"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">marc=
us.mueller@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Note that the N310's FPGA might actually be large enough
              to fit in (parts of) a GNSS receiver, especially if you
              remove the DUC chain of the TX path, in case you don't
              need that. RFNoC is Ettus' framework for extending the
              FPGA functionality, especially made for such use cases.</p>
            <p>Note that even in RFNoC you get a stream of samples from
              the radio frontend, which you basically paid NI/Ettus for
              to design it for you, so that you don't have to worry
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
                the ethernet connection =E2=80=93 and that has no downsid=
e for
                GNSS applications, as the VITA49 samples fully represent
                the RF signal, thanks to Shannon-Nyquist.</p>
              <p>That is, of course, unless you start modifying the FPGA
                image of the N210, and make it a completely different
                product. It's kind of unlikely you want to do that.</p>
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
                      N210 only has the ethernet and a MIMO port.</span><=
/div>
                  <div><span><br>
                    </span></div>
                  <div><font face=3D"Barlow, Helvetica Neue, Helvetica,
                      Arial, Lucida Grande, sans-serif" color=3D"#11171a"=
><span
                        style=3D"font-size:14px">Thanks in advance.</span=
></font></div>
                  <div><span><br>
                    </span></div>
                  <div><span><br>
                    </span></div>
                </div>
                <br>
                <fieldset></fieldset>
                <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
              </blockquote>
            </blockquote>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------Gik9Xq0y6Qi0T50FWeLS4Zzu--

--===============6543533113562765921==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6543533113562765921==--
