Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7016E2644
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 16:55:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E118A380EB3
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 10:55:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681484150; bh=0xpT3u6KcGAGdFdRrXH/Rr3yHhA8sx8ltuY8GehA46A=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=AF0SUkLn8tupU7JXMHYNVxuZBLms41DFOxHZrvlyIUxY0/MZqPrA7OobAdNgM3vzp
	 kt8CtrlEKFWyKPScNHB6aLvBBlPDBXyrNRXjXCl2VH7U7TY+e+IF1kZvDgijG5jRZT
	 7mxULsunaxlYZ60fMsHdXmiXydfKFkAz07XCly4QX8Ornj6v2FHQCPi1P/AVlbhJQ4
	 iqLKHOqx6kR+4/7QAskwPlUOE5sw77fLrNafC0bn4ktFNXxkK0TjIV+rK6mGrbW5Q4
	 8Q7g80sNF9Ncz/8ZI2l1rmQbra6zK01YvRyQfyBjrVLP0myrDnARl79W6zU1euBpSH
	 Dn2cPFn6aDIlA==
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by mm2.emwd.com (Postfix) with ESMTPS id ED3E938423B
	for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 10:55:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="r9kTsAhJ";
	dkim-atps=neutral
Received: by mail-qt1-f177.google.com with SMTP id w14so3817301qtv.13
        for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 07:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681484118; x=1684076118;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JJVo/s7Mv9Cmq8Lz421MNU24hvXX58kZyAfKzLDeT1Q=;
        b=r9kTsAhJM/UZEgzIXDrU9TXgv+0Yx/QXhN2iIq4X2wULHmCxQWM4LNk0OtuoJvVCCh
         PI73kfFSaIookJNfDwkbU7Frq1HK/1QxfppDoPYU+njtAtM798Q7C4bHw8ZcJJxmzYO5
         Q9kF53RsjJXL8JYnAS6oC9u5nZ4yKUnCVNQV8sshHlyI1GitXzT96BaCNrpJmj1wq2ew
         XjEV1nSC56UM4Fe4gcwAOcek7It9bXChF8NoHkydp8FbjL38GYsMwCRSKwSRvEvPvxuW
         5idbjA5YGyuQc/E7dDk61RHcv96Sh3hu/qKRwEOXW+3/ivWcsoWHbgiw9Ez+gC2GWBXy
         4u/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681484118; x=1684076118;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JJVo/s7Mv9Cmq8Lz421MNU24hvXX58kZyAfKzLDeT1Q=;
        b=FkSqYTky7MA6AN4aUzJYMoNokE0Yrr50HV/03lM256GtMELLTqpAiam5GBO2XrhHaK
         eS5RnjKXfkvmfwl5PoGGQ5o/GQQvFdY3D88Cr5546DIH2aTHfOcWoxkheYKHcGI1FjXx
         kJ6Mas9wRnc77U3CAKH48TGvfg9EgMZW4Gkon+k0p+5Nplv0SwIGHBKQEOQQiYRaGTs8
         rY5g3M2Qu9FskU/tseWJAUfweYQekKjP2CP35nFQdc8FKvx63rnYsUIsq+/W4uF9cLvf
         SKu9FtlFjGPkFONzrtUPRhRISZRndxFHmxfJVbAKYqsPjS4gERER+OoF07fenk+G6sHy
         IDqg==
X-Gm-Message-State: AAQBX9dyFjsCYOQlVPejo9YJcA7DwOrSgb/DRs8WAIDDcv/z4rRdgAps
	ix2B7GzgwemLGYBkGsV1IxSpObGfDOk=
X-Google-Smtp-Source: AKy350Zu0whcpQWzTWsSl3g5Vo5vmAO1+v//JTcZSP/MfxO8c+bTsBV79DRmcNr+Hu7f4CelgfjGuQ==
X-Received: by 2002:ac8:5fd3:0:b0:3e3:3941:d167 with SMTP id k19-20020ac85fd3000000b003e33941d167mr10591787qta.34.1681484118329;
        Fri, 14 Apr 2023 07:55:18 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id x12-20020ac85f0c000000b003e3895903bfsm1279450qta.8.2023.04.14.07.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 07:55:17 -0700 (PDT)
Message-ID: <1daf5301-d125-bb16-0955-42e2f0e34e55@gmail.com>
Date: Fri, 14 Apr 2023 10:55:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Rob Kossler <rkossler@nd.edu>
References: <20230408021338.994254D94B@mail.futurelabusa.com>
 <d5460510-c3e2-9f3f-31ea-2bf55fedcf7e@gmail.com>
 <20230411011218.5513E4D94B@mail.futurelabusa.com>
 <ec810fb7-3220-4fbb-3ce5-31385a878931@gmail.com>
 <20230413210221.4BED44D905@mail.futurelabusa.com>
 <6633af1b-5726-e020-83f4-24454739e486@gmail.com>
 <20230413225129.0E1C84D94B@mail.futurelabusa.com>
 <e1b58b68-2087-1793-5d6c-89ccdd949ded@gmail.com>
 <CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmail.com>
 <0d43a8a6-f7a7-811b-14bd-42e2981a5957@gmail.com>
 <CAB__hTS+SR2zo4ZMEO1OTzfnxpvhQiE75rQhuuMSonrNYocBJg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTS+SR2zo4ZMEO1OTzfnxpvhQiE75rQhuuMSonrNYocBJg@mail.gmail.com>
Message-ID-Hash: FQZ7MAXW5J7KMMVS3H3GKT3DTB7NLNY5
X-Message-ID-Hash: FQZ7MAXW5J7KMMVS3H3GKT3DTB7NLNY5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jim Schatzman <james.schatzman@futurelabusa.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQZ7MAXW5J7KMMVS3H3GKT3DTB7NLNY5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2961083908378954481=="

This is a multi-part message in MIME format.
--===============2961083908378954481==
Content-Type: multipart/alternative;
 boundary="------------aG0Rv7f40T9lZ863820mWXQ4"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------aG0Rv7f40T9lZ863820mWXQ4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/04/2023 10:30, Rob Kossler wrote:
>
>>
>     One of the things that puzzles me is that 12.5Msps just isn't that
>     high a streaming rate, in fact it's totally supported over
>     =C2=A0 a *1* GBit interface.
>
>     At 12.5Msps, that buffer fills(drains) in about 2.5ms. There's
>     plenty of buffering on the host to buffer application scheduling
>     =C2=A0 issues, so I don't know where these underruns would be comin=
g from.
>
> I don't really know what the OS does in terms of "transmit" buffering=20
> (I'm slightly more confident on the OS behavior for the receive=20
> packets). I can say that avoiding "U" has always been harder for me=20
> than avoiding "O".=C2=A0 My concern is that the OS is not doing much of=
 any=20
> buffering on the Tx side (perhaps none) such that if things pause for=20
> the 2.5ms you mentioned, then "U" occurs.
>
> But, one more comment about incorporating the DRAM fifo: I noticed=20
> that Ettus has a BIST image that uses=C2=A0this FIFO for the N310 (see =
here=20
> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n=
310_bist_image_core.yml>).=20
> So, this would be a great example to use for creating a custom image.
> Rob
The OS networking stack has buffering at various layers--including most=20
NIC cards have buffering in both directions.

In linux, some of this is controlled through sysctl:

https://files.ettus.com/manual/page_usrp_x3x0_config.html#x3x0cfg_hostpc_=
netcfg_sockbuff

Last time I worked on a 1GBit ethernet hardware driver (10+ years ago),=20
there was absolutely considerable buffering in
 =C2=A0 either direction.=C2=A0=C2=A0 Consider that an application may be=
 presenting=20
data at a rate much higher than the hardware can actually
 =C2=A0 "move those bits", the kernel will place the application in a WAI=
T=20
state not when the hardware says "can't do it right now", but
 =C2=A0 when the buffers become full.

When the NIC driver TXRDY (I'm paraphrasing here, it has been 10+ years)=20
interrupt happens, the code pulls the next buffer
 =C2=A0 off the FIFO and sends it to the hardware.

So, yes, there's buffering in both directions.=C2=A0=C2=A0 Which, you wou=
ld=20
entirely expect, would be able to "smooth over" small latency
 =C2=A0 non-determinism in the application scheduling.



--------------aG0Rv7f40T9lZ863820mWXQ4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/04/2023 10:30, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTS+SR2zo4ZMEO1OTzfnxpvhQiE75rQhuuMSonrNYocBJg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <blockquote type=3D"cite"><br>
              </blockquote>
              One of the things that puzzles me is that 12.5Msps just
              isn't that high a streaming rate, in fact it's totally
              supported over<br>
              =C2=A0 a *1* GBit interface.<br>
              <br>
              At 12.5Msps, that buffer fills(drains) in about 2.5ms. =C2=A0
              There's plenty of buffering on the host to buffer
              application scheduling<br>
              =C2=A0 issues, so I don't know where these underruns would =
be
              coming from.<br>
              <br>
            </div>
          </blockquote>
          <div>I don't really know what the OS does in terms of
            "transmit" buffering (I'm slightly more confident on the OS
            behavior for the receive packets). I can say that avoiding
            "U" has always been harder for me than avoiding "O".=C2=A0 My
            concern is that the OS is not doing much of any buffering on
            the Tx side (perhaps none) such that if things pause for the
            2.5ms you mentioned, then "U" occurs.</div>
          <div><br>
          </div>
          <div>But, one more comment about incorporating the DRAM fifo:
            I noticed that Ettus has a BIST image that uses=C2=A0this FIF=
O
            for the N310 (see <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n=
3xx/n310_bist_image_core.yml"
              moz-do-not-send=3D"true">here</a>). So, this would be a
            great example to use for creating a custom image.</div>
          <div>Rob</div>
        </div>
      </div>
    </blockquote>
    The OS networking stack has buffering at various layers--including
    most NIC cards have buffering in both directions.<br>
    <br>
    In linux, some of this is controlled through sysctl:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/page_usrp_x3x0_config.html#x3x0cfg_hostpc_netcfg_sockbuff">https://files=
.ettus.com/manual/page_usrp_x3x0_config.html#x3x0cfg_hostpc_netcfg_sockbu=
ff</a><br>
    <br>
    Last time I worked on a 1GBit ethernet hardware driver (10+ years
    ago), there was absolutely considerable buffering in<br>
    =C2=A0 either direction.=C2=A0=C2=A0 Consider that an application may=
 be presenting
    data at a rate much higher than the hardware can actually<br>
    =C2=A0 "move those bits", the kernel will place the application in a =
WAIT
    state not when the hardware says "can't do it right now", but<br>
    =C2=A0 when the buffers become full.<br>
    <br>
    When the NIC driver TXRDY (I'm paraphrasing here, it has been 10+
    years) interrupt happens, the code pulls the next buffer<br>
    =C2=A0 off the FIFO and sends it to the hardware.<br>
    <br>
    So, yes, there's buffering in both directions.=C2=A0=C2=A0 Which, you=
 would
    entirely expect, would be able to "smooth over" small latency<br>
    =C2=A0 non-determinism in the application scheduling.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------aG0Rv7f40T9lZ863820mWXQ4--

--===============2961083908378954481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2961083908378954481==--
