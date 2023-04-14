Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6EC6E2571
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 16:18:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D3D09383E77
	for <lists+usrp-users@lfdr.de>; Fri, 14 Apr 2023 10:18:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1681481913; bh=bzbUwPFE4/nvSngbMKMVKAXd0evBWnf1WIcyKERDFZE=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=nkAJQzf90Ls/nq3oSFioD0p/vh+AFxUliRJhYrgNx7ZYfpbrZsk9s/EDZnhnt4f/Q
	 iMw/fiS3j4hyro1oMqxo8YbMYV07b6JhHZl5Mb4uNuc5vSfKPuNAh8UiPvxC4c4wud
	 dTATlaAKNBdabzzhHR8AcB6bsVOx45gAONLOvjDXQZXMpd670/pPdMH+xwsfwru4nk
	 0ETsWnN5mizPgTreaXl+9PwMctcov7mHSKyvdOV3rLzfhwSTVdpVRQtAL3d2rmWiv2
	 +yu5oYLBiY2TfdUOSJfPu3nCDpF+EQmosMAcxOsHWjzUlDRinNZkH0oFUftaQZ1VoO
	 K3YKC93W38yig==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 88340380E3C
	for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 10:18:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="S4UayYId";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id o7so14248572qvs.0
        for <usrp-users@lists.ettus.com>; Fri, 14 Apr 2023 07:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681481880; x=1684073880;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f2+fkv8h1aH6RIrat78eHVACNBw0U2DzKyOOwuSaWFY=;
        b=S4UayYIdLEPGrRhxQie+ti/p4eeJUhU/N4qTe/e4xJJ2nL/gyU8YgkmO72JLBgWOqO
         TFh7SSTOxc8KTDgmK4XhAwySrH22jDKZ/yDOoIB5ji5dH516f8HTa61zW83rfuDrKNAX
         4QImeOO9S8Fa03X5bBgxytJ6xjjVxXpCrZXfIIihtiHsUbJ25Tq9zE/4IN9CpMLUGYgW
         EBCTsRPo5YHxA7oaH4pXJ3yNQixR/oovZgbxC6M3hXy/7fIHjAGD6Oq6ViR+Og3iUQkG
         xLZzMrr6Fg+WQsOh4OnO8GcbCDq1/N8vun5YlCtXfsnMUbUKwEz9p+TKNqMpA4oe+fAC
         EpiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681481880; x=1684073880;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f2+fkv8h1aH6RIrat78eHVACNBw0U2DzKyOOwuSaWFY=;
        b=C8Lb/0sewVDjvY+fST7wq5DpxDCssCY2JRlXyriOWzNuHi22bXdwjVNLxDHnFpcxpK
         TomnuK2sRfWZV+VdET9NP9K2VIySn28w/vQH+5BWuwRWXgLWiGtSWuE2xQSpZ33kR+Gw
         Z2zF9+iVHVfZIDOJz77yg0RlSchDkl+TbM4D/qj5Ko5NssfbAqOdv4JtD6tkpE908CcI
         //6rHkhpx3+0qErM6e7Q4ywuLx3yTK9eLmP2KUw76/HaEJfijs6iY3J+XrZgbpXjmPI9
         FxvNORzMpMP0JgBkaniO5yZzHjVmhZMgp6Z+kAyU3mpwQ6V6lTYF4dc6/v11/6yWSfl1
         PwYQ==
X-Gm-Message-State: AAQBX9eMCvGnYeDCszL+LJNOxfuqy+dQ48RLwJgduS7R5UC8uUzqb+/c
	2B034PloSUgbWyeOaqjXlWI=
X-Google-Smtp-Source: AKy350a6rwG8UC39oy9WQwCeyYwRqNEW3PJF2dCzOAII/mLdlN6u0/UH6k/tLqs6vgAKTdZhRxjIUA==
X-Received: by 2002:a05:6214:20c5:b0:5e6:eaae:e60e with SMTP id 5-20020a05621420c500b005e6eaaee60emr4711376qve.5.1681481879651;
        Fri, 14 Apr 2023 07:17:59 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id ph30-20020a0562144a5e00b005ef5aea0536sm290378qvb.49.2023.04.14.07.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 07:17:59 -0700 (PDT)
Message-ID: <0d43a8a6-f7a7-811b-14bd-42e2981a5957@gmail.com>
Date: Fri, 14 Apr 2023 10:17:58 -0400
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
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmail.com>
Message-ID-Hash: WR5Z3IWZ6BYVOVEADTA56PEH6SF3ETAK
X-Message-ID-Hash: WR5Z3IWZ6BYVOVEADTA56PEH6SF3ETAK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jim Schatzman <james.schatzman@futurelabusa.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Halting issue with USRP socket connection - how to set SO_PRIORITY?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WR5Z3IWZ6BYVOVEADTA56PEH6SF3ETAK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4285574885440263547=="

This is a multi-part message in MIME format.
--===============4285574885440263547==
Content-Type: multipart/alternative;
 boundary="------------6WR1LvPS1j6Vn3L0vbkHvLaA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6WR1LvPS1j6Vn3L0vbkHvLaA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 14/04/2023 10:08, Rob Kossler wrote:
> Jim, Marcus,
> I *believe* that "skip_dram=3D1" will have no effect on the N310 becaus=
e=20
> it does not use DRAM in the stock image (or even populate the=20
> dram-fifo RFNoC block). The definition of the stock RFNoC graph for=20
> the N310 is here=20
> <https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n3xx/n=
310_rfnoc_image_core.yml>.=20
>
I was surfing a lot of the N3xx docs yesterday, and was left with the=20
impression, reinforced by the "skip_dram" device
 =C2=A0 argument, that there was DRAM FIFO in the N3xx by default.=C2=A0 =
But the=20
.yml you pointed at seems pretty definitive.
>
> Most of the "buffering" for the N310 transmit path is in the buff_size=20
> of the streaming end points=C2=A0attached to the DUC (32768 samples) al=
ong=20
> with a small amount of buffering at the DUC (defined here=20
> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfno=
c/blocks/duc.yml>)=20
> and at the Radio (perhaps here=20
> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfno=
c/blocks/radio.yml>)=20
> . The easiest way to increase buffering is to increase the buff_size=20
> of the end points ep0 through ep3.=C2=A0 But, it is possible that doing=
 so=20
> will cause the build to fail. I don't know if Ettus max-ed these out=20
> or not. But, if the build fails, another option is to get rid of the=20
> Replay block (and associated end points) and the DDC (if you don't=20
> need it) to free up resources.=C2=A0 Then you might be able to increase=
 the=20
> end point buff_sizes.
>
> But, if you want to use the DRAM as a FIFO (which will provide much=20
> larger FIFOs), you should be able to just replace the 4 channel Replay=20
> block with a 4 channel DRAM fifo (defined here=20
> <https://github.com/EttusResearch/uhd/blob/master/host/include/uhd/rfno=
c/blocks/axi_ram_fifo.yml>),=20
> making sure to get the RAM address width (and perhaps other=20
> parameters) correct for the N310 (will be same as Replay block uses).=C2=
=A0=20
> The DRAM is 2GB so each FIFO "channel" could be configured for=20
> 125MSamples.
>
> And, back to one of my previous comments, if you have a lot of host=20
> RAM such that it would be a possibility to stream from a RAM-disk=20
> based file, I believe it would be worth a try.
> Rob
>
One of the things that puzzles me is that 12.5Msps just isn't that high=20
a streaming rate, in fact it's totally supported over
 =C2=A0 a *1* GBit interface.

At 12.5Msps, that buffer fills(drains) in about 2.5ms. =C2=A0 There's ple=
nty=20
of buffering on the host to buffer application scheduling
 =C2=A0 issues, so I don't know where these underruns would be coming fro=
m.


--------------6WR1LvPS1j6Vn3L0vbkHvLaA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 14/04/2023 10:08, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Jim, Marcus,
        <div>I *believe* that "skip_dram=3D1" will have no effect on the
          N310 because it does not use DRAM in the stock image (or even
          populate the dram-fifo RFNoC block). The definition of the
          stock RFNoC graph for the N310 is <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/top/n=
3xx/n310_rfnoc_image_core.yml"
            moz-do-not-send=3D"true">here</a>.=C2=A0 <br>
        </div>
      </div>
    </blockquote>
    I was surfing a lot of the N3xx docs yesterday, and was left with
    the impression, reinforced by the "skip_dram" device<br>
    =C2=A0 argument, that there was DRAM FIFO in the N3xx by default.=C2=A0=
 But
    the .yml you pointed at seems pretty definitive.<br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQpM0UjbqmTy1SewrsvE2CS3hjZ84OQXPdsz5eW++QAfA@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
        <div>Most of the "buffering" for the N310 transmit path is in
          the buff_size of the streaming end points=C2=A0attached to the =
DUC
          (32768 samples) along with a small amount of buffering at the
          DUC (defined <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd=
/rfnoc/blocks/duc.yml"
            moz-do-not-send=3D"true">here</a>) and at the Radio (perhaps =
<a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd=
/rfnoc/blocks/radio.yml"
            moz-do-not-send=3D"true">here</a>) . The easiest way to
          increase buffering is to increase the buff_size of the end
          points ep0 through ep3.=C2=A0 But, it is possible that doing so
          will cause the build to fail. I don't know if Ettus max-ed
          these out or not. But, if the build fails, another option is
          to get rid of the Replay block (and associated end points) and
          the DDC (if you don't need it) to free up resources.=C2=A0 Then=
 you
          might be able to increase the end point buff_sizes.</div>
        <div><br>
        </div>
        <div>But, if you want to use the DRAM as a FIFO (which will
          provide much larger FIFOs), you should be able to just replace
          the 4 channel Replay block with a 4 channel DRAM fifo (defined
          <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/include/uhd=
/rfnoc/blocks/axi_ram_fifo.yml"
            moz-do-not-send=3D"true">here</a>), making sure to get the RA=
M
          address width (and perhaps other parameters) correct for the
          N310 (will be same as Replay block uses).=C2=A0 The DRAM is 2GB=
 so
          each FIFO "channel" could be configured for 125MSamples.</div>
        <div><br>
        </div>
        <div>And, back to one of my previous comments, if you have a lot
          of host RAM such that it would be a possibility to stream from
          a RAM-disk based file, I believe it would be worth a try.</div>
        <div>Rob</div>
      </div>
      <br>
    </blockquote>
    One of the things that puzzles me is that 12.5Msps just isn't that
    high a streaming rate, in fact it's totally supported over<br>
    =C2=A0 a *1* GBit interface.<br>
    <br>
    At 12.5Msps, that buffer fills(drains) in about 2.5ms. =C2=A0 There's
    plenty of buffering on the host to buffer application scheduling<br>
    =C2=A0 issues, so I don't know where these underruns would be coming
    from.<br>
    <br>
    =C2=A0 <br>
  </body>
</html>

--------------6WR1LvPS1j6Vn3L0vbkHvLaA--

--===============4285574885440263547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4285574885440263547==--
