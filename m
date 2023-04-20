Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C084F6E9718
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 16:30:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0EE9B383F2E
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 10:30:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682001026; bh=vNt2EMjRhJcIp0IO8AUD0sfGoKzf2k3wQD/PXDMcgBY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=w3GwXUJX895DQi3G8sPVDQzbderhLwVwIhs8qk81JWtijz59ETsWUQgUOMvUwF+kG
	 zTtibyLzQD9KuCALlcSnuXIGid3Eh3bSAp/vVB1/vphjzHnV6d58jzHBdlB2YKmYPn
	 zOb5WV9ln7Px1TvaaBGiZmAJIeTsfAhUItqWInDhhP+EQX0kzUBFbfnZKq/SGK1ue2
	 4FrYpDZbxGdpzAvU8QxTFVtx/GHm64npz38zM67HG6pyUlyVNCCZkaCfrf0Xm18G6O
	 G9lkIcmn1ONXX3/+I+LQNd+q0PrZ0HQ5bYZKoNcEy04SCKxRDv4fG9rTZIhgnftC53
	 sh2XgWOGy26sA==
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 86AC4383F2E
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 10:30:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RhN3kgIn";
	dkim-atps=neutral
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-5ef51361ff6so3173386d6.0
        for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 07:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682001021; x=1684593021;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wu2jlrbrfQ9o/Re6PXaoPtocEDeMgymsEgy+qjGxsdQ=;
        b=RhN3kgInzwElUFhKP7h4wXXEqo58K1o7ak9kMjAUorZTh5Ti6m8uoELLttb5TRK0Qi
         OOjyV0TR36tKWDdVhYaFESZvh7UMeH6HzpyVCsyC3zrs3ZFqX1ZZKlx6jlGzb6H0Z6Kb
         x9rlnhg+xoSPqZX1jGygTASqMZq1m13fCh4LAZuNvPlhUJkULoRhDrw3aTq4HpUsRBA/
         yaTDBjggBURTLLjjfv6eKqIomR0B3ZS2FNImmnc06Do2SnQRr8AOjdBKzl50LnruJWOz
         iZwsmIsq/nk9fGZZAC8Kf3L/+NbvDgvtu5JCtf/Zh/j9saCwH6SFB6775sQaFLGU9ugX
         zpUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682001021; x=1684593021;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Wu2jlrbrfQ9o/Re6PXaoPtocEDeMgymsEgy+qjGxsdQ=;
        b=WbDBxa5m7ikkt0qyj/T+myGoRIDf0hPNdFACzzJMZpmz7t/jhjA6HS/vytiwQ57vX8
         ol13TyxZk3cfknq8DluvTfryvybDPu4UdnQ5K1/kwR/yzY+KIerf4ZrGdL5H9sLa/JO4
         S0l0CwwcbCNiot2K/TV3UmL8UhGf1rZjGHGzbUloy4PnDedQoe16oKDc8vLwhYImnOYw
         fOQEX7mZvNEKgdR18C7oq1aqfy2sxfCEDGpdAt2x7mMIHSAgKhkZbxeAEVcVvCJoJfmo
         TE7CPjZTRQSpWcYquB4eOmyy+v2K7IWwAGNI8yfaR/aGVCRiwljGkbT/Eg7U+zLo3iiS
         UiDw==
X-Gm-Message-State: AAQBX9f3mZK1/qLAXtekX1B0fAgffb6CfTwwYEEcnyEbxGoQYOtvBmrI
	Ga+70UX9ScDNIprjQqWzch+QiZZJRKY=
X-Google-Smtp-Source: AKy350airnecCJMwvOH/p4YjZNVDkzM9L5vq7PA4BqXljLxh7xKexwRC3/AobwW5d+L1K5KJcDEr3Q==
X-Received: by 2002:ad4:4ee9:0:b0:5ef:1e0a:1b07 with SMTP id dv9-20020ad44ee9000000b005ef1e0a1b07mr2913946qvb.40.1682001019352;
        Thu, 20 Apr 2023 07:30:19 -0700 (PDT)
Received: from [192.168.2.196] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id o17-20020a05620a2a1100b0074d1b6a8187sm445202qkp.130.2023.04.20.07.30.18
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 07:30:19 -0700 (PDT)
Message-ID: <6ab98bea-9481-32e0-aef2-4d9dd9394e66@gmail.com>
Date: Thu, 20 Apr 2023 10:30:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB331268F8C3D8C7217ACCCE37B8639@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB331268F8C3D8C7217ACCCE37B8639@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: FMSCYEKVMOWLRNAVT76T4MPWXO3BU5ZQ
X-Message-ID-Hash: FMSCYEKVMOWLRNAVT76T4MPWXO3BU5ZQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 SFP MAC issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FMSCYEKVMOWLRNAVT76T4MPWXO3BU5ZQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7194585038140408976=="

This is a multi-part message in MIME format.
--===============7194585038140408976==
Content-Type: multipart/alternative;
 boundary="------------k01QfKZRsFAK0Snr0W0uuA5b"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------k01QfKZRsFAK0Snr0W0uuA5b
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 20/04/2023 10:17, Jim Palladino wrote:
> Hello,
>
> We have multiple N320's connected to a managed 100Gbps switch. Each=20
> switch port has a QSFP -- so 4 10Gbps connections per port. We're=20
> connecting and using both 10Gbps SFP interfaces on each N320 radio to=20
> the switch. Basically, one 100Gbps port on the switch will handle 2=20
> N320's via the QSFP. This has been working reliably for over a year=20
> using UHD 4.1.0.5.
>
> Recently, we updated to UHD 4.4.0.0. Now, everything seems to work=20
> fine for a finite amount of time (hours/days), but then port security=20
> on our switch gets tripped for one of the ports. That radio's=20
> corresponding SFP interface is then unusable until that port gets=20
> reset on our managed switch. What seems to be happening is that our=20
> switch is configured to only allow 1 MAC address per "interface". If a=20
> different MAC address ever shows up, port security trips. Due to=20
> security constaints, we're required to run with this MAC limitation.
>
> To debug this issue, our network administrators temporarily increased=20
> the number of allowed MAC addresses per 10Gbps interface to be set to=20
> 3 instead of 1. They were able to see in switch logs that eventually a=20
> MAC other than that programmed in the N320s EEPROM showed up on that=20
> port. The offending MAC (not the proper MAC for that SFP N320 SFP=20
> interface) was "00:00:b8:ce:f6:22". We can't figure out where this is=20
> coming from, and haven't been able to determine if this happens when=20
> rebooting a radio, loading the FPGA, bringing up the SFP interfaces,=20
> randomly during streaming, or what.
>
> A thought is that at some point (when the FPGA is programmed and or=20
> the SFP interface comes up) some garbage bits come out of the=20
> interface -- maybe the switch interprets this as some sort of=20
> malformed packet?
>
> I've been running tests at my desk with an N320 connected directly to=20
> a 10Gbps interface on my desk PC trying to somewhat reproduce the=20
> issue. I've been running loops that reboot the N320, stream samples=20
> from the N320, reboot while streaming, try to start streaming before=20
> the SFP interface is up, etc, etc. With wireshark I've been watching=20
> and have not seen any packets with MACs other than the proper MAC that=20
> the N320 should assign to that interface. However we're wondering if=20
> maybe we wouldn't see a malformed packet on wireshark (might get=20
> blocked by the interface and not get passed up the stack?). However,=20
> maybe in our normal setup the CISCO switch might see it? We haven't=20
> been able to get logs from the switch that show anything beyond the=20
> fact that another MAC showed up on that port at some point.
>
> Sorry for all the words, but this has been a tough one to=20
> debug/reproduce. We've had these issues with all 5 N320s we have=20
> connected to the switch. Again, we never saw this before updating to=20
> UHD 4.4.0.0. So either this is related to N320 behavior that changed=20
> when updating UHD 4.4.0.0 or something else coincidentally happened=20
> at/around the same time as the update.
>
> If anyone has any ideas it would be appreciated.
>
> Thanks,
> Jim
>
>
That MAC prefix is assigned to Seikosha -- part of the Seiko group of=20
companies.=C2=A0 I don't believe that anything in the N320
 =C2=A0 uses parts made by them -- and certainly not the MAC bits and pie=
ces,=20
which live inside the FPGA.

Normally, if a device "babbles" a bunch of noise bits, that's an invalid=20
frame, since the CRC won't pass, and tools like
 =C2=A0 WireShark will never see those frames because they'll get dropped=
 at=20
a much lower layer in the stack.=C2=A0 You might want to
 =C2=A0 look at "ifconfig" on the relevant interface to see if RX errors =
are=20
being logged.

If the CISCO switch is showing "invalid MAC received" for "babble=20
frames", I don't think that's correct behavior, but not having
 =C2=A0 played in that space for many years, I'm not sure.


--------------k01QfKZRsFAK0Snr0W0uuA5b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 20/04/2023 10:17, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331268F8C3D8C7217ACCCE37B8639@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        We have multiple N320's connected to a managed 100Gbps switch.
        Each switch port has a QSFP -- so 4 10Gbps connections per port.
        We're connecting and using both 10Gbps SFP interfaces on each
        N320 radio to the switch. Basically, one 100Gbps port on the
        switch will handle 2 N320's via the QSFP. This has been working
        reliably for over a year using UHD 4.1.0.5.=C2=A0</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        Recently, we updated to UHD 4.4.0.0. Now, everything seems to
        work fine for a finite amount of time (hours/days), but then
        port security on our switch gets tripped for one of the ports.
        That radio's corresponding SFP interface is then unusable until
        that port gets reset on our managed switch. What seems to be
        happening is that our switch is configured to only allow 1 MAC
        address per "interface". If a different MAC address ever shows
        up, port security trips. Due to security constaints, we're
        required to run with this MAC limitation.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        To debug this issue, our network administrators temporarily
        increased the number of allowed MAC addresses per 10Gbps
        interface to be set to 3 instead of 1. They were able to see in
        switch logs that eventually a MAC other than that programmed in
        the N320s EEPROM showed up on that port. The offending MAC (not
        the proper MAC for that SFP N320 SFP interface) was
        "00:00:b8:ce:f6:22". We can't figure out where this is coming
        from, and haven't been able to determine if this happens when
        rebooting a radio, loading the FPGA, bringing up the SFP
        interfaces, randomly during streaming, or what.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        A thought is that at some point (when the FPGA is programmed and
        or the SFP interface comes up) some garbage bits come out of the
        interface -- maybe the switch interprets this as some sort of
        malformed packet?</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        I've been running tests at my desk with an N320 connected
        directly to a 10Gbps interface on my desk PC trying to somewhat
        reproduce the issue. I've been running loops that reboot the
        N320, stream samples from the N320, reboot while streaming, try
        to start streaming before the SFP interface is up, etc, etc.
        With wireshark I've been watching and have not seen any packets
        with MACs other than the proper MAC that the N320 should assign
        to that interface. However we're wondering if maybe we wouldn't
        see a malformed packet on wireshark (might get blocked by the
        interface and not get passed up the stack?). However, maybe in
        our normal setup the CISCO switch might see it? We haven't been
        able to get logs from the switch that show anything beyond the
        fact that another MAC showed up on that port at some point.=C2=A0=
</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        Sorry for all the words, but this has been a tough one to
        debug/reproduce. We've had these issues with all 5 N320s we have
        connected to the switch. Again, we never saw this before
        updating to UHD 4.4.0.0. So either this is related to N320
        behavior that changed when updating UHD 4.4.0.0 or something
        else coincidentally happened at/around the same time as the
        update.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        If anyone has any ideas it would be appreciated.=C2=A0=C2=A0</div=
>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        Jim</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0); background-color: rgb(255,
        255, 255);" class=3D"elementToProof ContentPasted0">
        <br>
      </div>
      <br>
    </blockquote>
    That MAC prefix is assigned to Seikosha -- part of the Seiko group
    of companies.=C2=A0 I don't believe that anything in the N320<br>
    =C2=A0 uses parts made by them -- and certainly not the MAC bits and
    pieces, which live inside the FPGA.<br>
    <br>
    Normally, if a device "babbles" a bunch of noise bits, that's an
    invalid frame, since the CRC won't pass, and tools like<br>
    =C2=A0 WireShark will never see those frames because they'll get drop=
ped
    at a much lower layer in the stack.=C2=A0 You might want to<br>
    =C2=A0 look at "ifconfig" on the relevant interface to see if RX erro=
rs
    are being logged.<br>
    <br>
    If the CISCO switch is showing "invalid MAC received" for "babble
    frames", I don't think that's correct behavior, but not having<br>
    =C2=A0 played in that space for many years, I'm not sure.<br>
    <br>
    <br>
  </body>
</html>

--------------k01QfKZRsFAK0Snr0W0uuA5b--

--===============7194585038140408976==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7194585038140408976==--
