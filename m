Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AC26162A3
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 13:22:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 290C2384101
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 08:22:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667391759; bh=5WRMVPJkCUZC7bV2kHOa5/aO6UsAtmaokjLttGTVfag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=EvchAGQjzS+IqHg+L5K1flIpkH/Aak7fVeo2KhBsnILG75lht/B6IOdah7zVY6TSW
	 SMhbSo8usEREJg0v2m0vmB8Z3gSF+a9IHLfiBbVlRMFdq4K2Yq/JENRMTgVC91RlZC
	 l/OWMbzrGX7FfZLmHsux/bmhzwMTJND7GcY1f4RLpkrIuBuh20j+zhwPcJILJCr3f3
	 UjkNN+/gNx6rg0XPtrEcHBxUCtdDjrpYlkzdc0oAtmZixL9kLosyJApRaJ25NUGSQ/
	 zm1NBGVn5jSyEYjVWYowckOY+3IiAjQW6P2WxDhUsc+NRVugjH95ozzcGifIAVJKEC
	 DQH+TrDhYvxZw==
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id DCEB4383F98
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 08:20:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iUymTKyj";
	dkim-atps=neutral
Received: by mail-qv1-f42.google.com with SMTP id n18so12294387qvt.11
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 05:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rQVaUZDD82OR26M2xW1ksq7uD5Zy+qHtG0soHU2NeFA=;
        b=iUymTKyjHF2SL5VLYM4fpKrVRXl2k0YLbUisghJ/wqwW7SsTuPiUe1VCu4j5M9jnuf
         fXGxTdGt4U26VkmrEpl16isgVJB6vxg9lTiC6rfTI9dIDVFjtIWaymAyUupaj45gPqbS
         dFsYaf25CwyjybkyOnhwAzLQ5+hyp510HVq+cDG8vF+2RcWa/gMUqOA4SU37R9XkrODV
         XkIIK3i8Si02Bmvk6GbkUd5RMd0x6hgyvE4iTvjF8kAHpuhFvR8GhDCCcYc5xt5APALZ
         r0ShgbGv5ZSTm9Nq4sKIiZm10DrGT4jEyGHRPovGe+MAwoo+AwID9QHSFlgA8G7mEae8
         hVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rQVaUZDD82OR26M2xW1ksq7uD5Zy+qHtG0soHU2NeFA=;
        b=H4Saz/F/feaNazycChHm4LHPggg28uPPpGeGnHgV7eau42uO+f7awH1SgHznU//BNe
         F5OthKMDFSsByDfj6sY+3UbnUODdfTBd2j7h1kLbovaU4Ln1vNZddxxGn/U7nRQtrXvV
         qB7npFeeBw8fajHt3GzcWhXMpnExG8E/kPWdtT7ud8BPWVN43O7kbXSIKW/uyid+oVfe
         dBWf2rQR5/cg9y+djNj2U1UdV23TnDMZZX2g91LgnnAQwRVsDbyuUpLMS6zwChPavJB9
         Uyd8dcr0yMNzBeMq1SappJfAq1Isl9D9+ZTB/3nIILcReT5GaELTpXMt8H3xoDG6AxMe
         UE+Q==
X-Gm-Message-State: ACrzQf2kw1apz0YjNUMDOU1VuyqHwUSD9LfVaYy9ttaKs/fPmUx9cxRc
	9sacKU7GyHSdJTPdjtogVBRUdaJi9P4=
X-Google-Smtp-Source: AMsMyM6rTJiaMcSD9bM5CMQzUFUGWWVYGIre/UziAxRNbHvEnAPd09ivIxZoapJhDzV7J/5cl+Tzyw==
X-Received: by 2002:ad4:5964:0:b0:4bb:a86e:d758 with SMTP id eq4-20020ad45964000000b004bba86ed758mr20634555qvb.28.1667391652028;
        Wed, 02 Nov 2022 05:20:52 -0700 (PDT)
Received: from [192.168.2.165] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id b15-20020ac8540f000000b0039cc22a2c49sm6440605qtq.47.2022.11.02.05.20.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 05:20:51 -0700 (PDT)
Message-ID: <b1973075-66b8-36d6-e4ae-91bb1803ae37@gmail.com>
Date: Wed, 2 Nov 2022 08:20:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
Message-ID-Hash: AHMWP2NJZU6VCQ6R6E3AUHO6Z4AHD6GE
X-Message-ID-Hash: AHMWP2NJZU6VCQ6R6E3AUHO6Z4AHD6GE
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AHMWP2NJZU6VCQ6R6E3AUHO6Z4AHD6GE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6536416957750655757=="

This is a multi-part message in MIME format.
--===============6536416957750655757==
Content-Type: multipart/alternative;
 boundary="------------hjnmt4v010Ibya7ElSF08F1Z"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------hjnmt4v010Ibya7ElSF08F1Z
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2022 08:11, Jim Palladino wrote:
> Hello,
>
> We have about ten N320s and almost all are exhibiting issues regarding 
> the LO stability. It appears the LO is not locking at certain 
> frequencies, or if it does, it barely maintains lock. We can see this 
> with either a gnuradio flowgraph consisting of nothing more than a 
> usrp_sink and a constant driving it's input, or using the included UHD 
> example "tx_waveforms". The problem frequency I've been focusing on is 
> 1112MHz. So, the following command demonstrates the issue:
>
> ./tx_waveforms --freq=1112000000 --wave-type=CONST --wave-freq=0 
> --rate=1000000 --gain=40
>
> Some of the N320s seem to lock ok, and you can see a reasonable tone 
> at the output. However, other N320's don't lock -- we will see a 
> several MHz-wide "blob" about 4 MHz lower than the requested 
> frequency. Note that they aren't reporting that the synthesizer isn't 
> locked, but that is what it looks like. On units where the LO appears 
> to lock, if I look closely on a spectrum analyzer, the phase noise 
> often looks horrible, or I see large spurs around 106KHz off of center 
> that slowly move up and down by 30 to 40 dB. It looks like it's barely 
> maintaining lock.
>
> This issue varies by N320 and also by channel ("A:0" vs "B:0") on the 
> N320. It doesn't matter if I use an internal or external reference -- 
> the behavior might be very slightly different, but not much. Gain 
> settings, sample rates, etc. don't seem to matter -- it appears to be 
> an RF/synthesizer issue.
>
> I also tried enabling "spur_dodging", since that changes LMX loop 
> parameters and that seemed to help in some cases (units/channels) but 
> hurt in others.
>
> I've been focusing on the TX path, but someone else in my office was 
> mentioning that they have seen the same type of thing when receiving 
> -- the result was that 1 out of several N320s he was using to 
> simultaneously receive a signal showed the same signal several MHz off 
> of what the other N320s saw -- and it looked very distorted. I'm 
> guessing that what he saw was the result of the LO not locking properly.
>
> We're using UHD 4.1.0.5 and associated filesystem, FPGA image.
>
> Any thoughts on this?
>
> Thanks,
> Jim
>
Does the behavior change with newer/older UHD versions?

I don't have an N320 myself, so I cannot reproduce locally.



--------------hjnmt4v010Ibya7ElSF08F1Z
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
    </blockquote>
    Does the behavior change with newer/older UHD versions?<br>
    <br>
    I don't have an N320 myself, so I cannot reproduce locally.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------hjnmt4v010Ibya7ElSF08F1Z--

--===============6536416957750655757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6536416957750655757==--
