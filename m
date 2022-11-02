Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BEB6162BC
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 13:32:23 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7C9B938094F
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 08:32:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667392341; bh=Y+bS8nmRDofyXUqc707hl6rQ8yTwjp+pZGg0xiyN+1k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Lkmkl4Gd1wlzv5uuEsKOZaI8f4npmIfct+BFleo2jY0r0bVwYdMnOkfd5uMShjfoz
	 LaDxV5r6dCL9l7iQ46TilUFcyYLVMb0IlWHNUV36NzCLUTNDSGwZQ+yOgG6kf4lcWm
	 RBfKtAfLSd9zq2jD5dgWVxx5PSE4oHiK1ANjV0bjgh62UXcoegXNnJJe5mvmLv6UKY
	 8zWTo+HU5faS6DMomCt8nB7hxgeD0FMVfF8zDCbcNKgg6RzcJ5MQVNpA/nAlRRF0Hk
	 HI7jyzZ3Px5x+wMkYS5Bgfz0udDDH+Dhe/2R+7B470pf9D+Pu1+494a9l841xiRlf/
	 RTIURcUfiCMHg==
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 785F03839F8
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 08:31:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OAmXbq8i";
	dkim-atps=neutral
Received: by mail-qk1-f172.google.com with SMTP id k4so8679977qkj.8
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 05:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6vAzNMV5l3N1bTIlV/UXCiUhISRLfw9sk1wF5u4Z/T0=;
        b=OAmXbq8ilHseSUIl87ll4/UfVcR/B3YdMXfHqM0+vF28rw4ZbsdIwP2geomK+FduhF
         rWM4jfwAtcy741ZD4yKahCERNJTlP4BYUyGDqGHvgeDhb4KiPHZ4lsVIy2FBTvOz+4uT
         Ik/sZfjGd7eLdz+UDl5XV/lnRebwEaqQijF04t/YavZmijo9N055kb0VAMasCQM42bM8
         in2fVmnS2USb9aX9QYlr/ZIk0y4Y8T+k7hSqSsXjRA/f3WuWCSeS80bo2VlU1uWeIkqY
         5zOa0pGz+X1x3kNlRZN4BJRua3Tw7end1um7WZc7mRqi3R43CiWaO6fKs2gZguo0Dwwb
         DuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6vAzNMV5l3N1bTIlV/UXCiUhISRLfw9sk1wF5u4Z/T0=;
        b=qL+9Z/b2u9t3kC1YVwHF9k/VUr7EryP4RBei4TsQeUEcqPA7oZ/5Wwta54GbbQ0ynL
         ut0qM4YKgjKrUhnyS1xg6iWAiY3t0IaynrdonVn1xryfMdeBO2Vuu82+ZnNd+TXMNm2p
         qk5IEb1HRvCk6ejz4vMGrx5ifHIK4o2z24Rr4Lqqy9sBgYhy9wyo02ML9C1WvlAcGqN/
         XsNfY5siN4QrzMoKZcU3zfumOdAiUlrTWCdb6Cyf9tSBNa5x19dxG4GEfOQvqgJG31dw
         fEuWIfsTIcJXa1mKI6zRjZ5x2M7+ycUo4wbC6QJ7yub4PIktuNOcUoX57stUUfctn4kx
         EihQ==
X-Gm-Message-State: ACrzQf0SB7sKLaztsfmIHFeWfcqfAe5Z16MrGHuBKeru6sfNQ7uc5H06
	7XXVoHWj/XR7BgpjFffZEc2pzlqagow=
X-Google-Smtp-Source: AMsMyM6Kjnw4dAG3VIdvkNuz51fOVKFjvSiVhokEvYbHetO84/3cW4Blr7B0fqQQJdYx7V01iJ4fEQ==
X-Received: by 2002:a05:620a:1505:b0:6fa:28b4:e921 with SMTP id i5-20020a05620a150500b006fa28b4e921mr12208422qkk.679.1667392289494;
        Wed, 02 Nov 2022 05:31:29 -0700 (PDT)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id c5-20020a05620a268500b006ec62032d3dsm8522082qkp.30.2022.11.02.05.31.28
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 05:31:28 -0700 (PDT)
Message-ID: <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
Date: Wed, 2 Nov 2022 08:31:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
Message-ID-Hash: DZ4B2ABTYSEJTHZQ74XTFHU5RNVE577M
X-Message-ID-Hash: DZ4B2ABTYSEJTHZQ74XTFHU5RNVE577M
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZ4B2ABTYSEJTHZQ74XTFHU5RNVE577M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2010407342181307917=="

This is a multi-part message in MIME format.
--===============2010407342181307917==
Content-Type: multipart/alternative;
 boundary="------------1yzjuZfWGOQdpV0CMSx34FM9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1yzjuZfWGOQdpV0CMSx34FM9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/11/2022 08:11, Jim Palladino wrote:
> Hello,
>
> We have about ten N320s and almost all are exhibiting issues regarding=20
> the LO stability. It appears the LO is not locking at certain=20
> frequencies, or if it does, it barely maintains lock. We can see this=20
> with either a gnuradio flowgraph consisting of nothing more than a=20
> usrp_sink and a constant driving it's input, or using the included UHD=20
> example "tx_waveforms". The problem frequency I've been focusing on is=20
> 1112MHz. So, the following command demonstrates the issue:
>
> ./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0=20
> --rate=3D1000000 --gain=3D40
>
> Some of the N320s seem to lock ok, and you can see a reasonable tone=20
> at the output. However, other N320's don't lock -- we will see a=20
> several MHz-wide "blob" about 4 MHz lower than the requested=20
> frequency. Note that they aren't reporting that the synthesizer isn't=20
> locked, but that is what it looks like. On units where the LO appears=20
> to lock, if I look closely on a spectrum analyzer, the phase noise=20
> often looks horrible, or I see large spurs around 106KHz off of center=20
> that slowly move up and down by 30 to 40 dB. It looks like it's barely=20
> maintaining lock.
>
> This issue varies by N320 and also by channel ("A:0" vs "B:0") on the=20
> N320. It doesn't matter if I use an internal or external reference --=20
> the behavior might be very slightly different, but not much. Gain=20
> settings, sample rates, etc. don't seem to matter -- it appears to be=20
> an RF/synthesizer issue.
>
> I also tried enabling "spur_dodging", since that changes LMX loop=20
> parameters and that seemed to help in some cases (units/channels) but=20
> hurt in others.
>
> I've been focusing on the TX path, but someone else in my office was=20
> mentioning that they have seen the same type of thing when receiving=20
> -- the result was that 1 out of several N320s he was using to=20
> simultaneously receive a signal showed the same signal several MHz off=20
> of what the other N320s saw -- and it looked very distorted. I'm=20
> guessing that what he saw was the result of the LO not locking properly=
.
>
> We're using UHD 4.1.0.5 and associated filesystem, FPGA image.
>
> Any thoughts on this?
>
> Thanks,
> Jim
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Also, if you try sending a tone at other than DC (perhaps 10kHz), do you=20
get different results?=C2=A0 This might just be the
 =C2=A0 DC-offset removal algorithm producing results that look like lack=
 of=20
synthesizer lock.


--------------1yzjuZfWGOQdpV0CMSx34FM9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/11/2022 08:11, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        We have about ten N320s and almost all are exhibiting issues
        regarding the LO stability. It appears the LO is not locking at
        certain frequencies, or if it does, it barely maintains lock. We
        can see this with either a gnuradio flowgraph consisting of
        nothing more than a usrp_sink and a constant driving it's input,
        or using the included UHD example "tx_waveforms". The problem
        frequency I've been focusing on is 1112MHz. So, the following
        command demonstrates the issue:<br>
        <br>
        ./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-fre=
q=3D0
        --rate=3D1000000 --gain=3D40<br>
        <br>
        Some of the N320s seem to lock ok, and you can see a reasonable
        tone at the output. However, other N320's don't lock -- we will
        see a several MHz-wide "blob" about 4 MHz lower than the
        requested frequency. Note that they aren't reporting that the
        synthesizer isn't locked, but that is what it looks like. On
        units where the LO appears to lock, if I look closely on a
        spectrum analyzer, the phase noise often looks horrible, or I
        see large spurs around 106KHz off of center that slowly move up
        and down by 30 to 40 dB. It looks like it's barely maintaining
        lock.<br>
        <br>
        This issue varies by N320 and also by channel ("A:0" vs "B:0")
        on the N320. It doesn't matter if I use an internal or external
        reference -- the behavior might be very slightly different, but
        not much. Gain settings, sample rates, etc. don't seem to matter
        -- it appears to be an RF/synthesizer issue. <br>
        <br>
        I also tried enabling "spur_dodging", since that changes LMX
        loop parameters and that seemed to help in some cases
        (units/channels) but hurt in others.<br>
        <br>
        I've been focusing on the TX path, but someone else in my office
        was mentioning that they have seen the same type of thing when
        receiving -- the result was that 1 out of several N320s he was
        using to simultaneously receive a signal showed the same signal
        several MHz off of what the other N320s saw -- and it looked
        very distorted. I'm guessing that what he saw was the result of
        the LO not locking properly.=C2=A0<br>
        <br>
        We're using UHD 4.1.0.5 and associated filesystem, FPGA image.<br=
>
        <br>
        Any thoughts on this?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof
        ContentPasted0">
        <br>
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
    Also, if you try sending a tone at other than DC (perhaps 10kHz), do
    you get different results?=C2=A0 This might just be the<br>
    =C2=A0 DC-offset removal algorithm producing results that look like l=
ack
    of synthesizer lock.<br>
    <br>
    <br>
  </body>
</html>

--------------1yzjuZfWGOQdpV0CMSx34FM9--

--===============2010407342181307917==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2010407342181307917==--
