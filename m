Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 181F290C005
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2024 02:04:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D2D1438545A
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2024 20:04:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718669040; bh=uERWWcVJbFbx3zr1e6H5XNbAR9HbMYXrOLcpXPu8IvI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MSzocf09FQ/3cInACoyPvyYJ6umOSEPD8TbbgF1D4ccziWBlH1BO0KJhmW6VfyEpV
	 CTqdBgycrLIgkKio84zSMHBBxQUKsgl8uWLisNzJ+Xvzb2nHrg33ts21wNDuWU/xmd
	 U57H+zr9AgPshhJOet7Y6myvcMilnhzNVTYCZ3UoR3zBrMQYULooy9lN1pu6aiDkmV
	 UaC+gTplw9BEtEXgp33dKMFrmvA+jMa5kGi9HIGpgi1PELwi3LJR14TZw8E7PspB6n
	 AHedkbxsCADWuzkb9YcxiSASxC+6t0waroO0M0xIxo0coFCqLr7ItjPxmhi5IblDxg
	 ZuMWbOlF4ltEg==
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	by mm2.emwd.com (Postfix) with ESMTPS id BB73A380AC7
	for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 20:02:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Pl3NihJ6";
	dkim-atps=neutral
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-797a8cfc4ecso304967985a.3
        for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2024 17:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718668976; x=1719273776; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Qun18IIy9gKhFD7qkrSkqkc+T33TcGSW6SAcDxKoFA=;
        b=Pl3NihJ6Y8PwbMB5jWNkly/HFuz9R5oUK35N4UZrYvZHtFBFBL7WW/azKoOQGDv+fR
         SR/cHQxa0isc9LBQ4OONBzejIi4vv8vqQ76BMqtHer09EOrxVaejsjQsAD3MxduVUmNL
         yZYkb3SIXaAtUEycCZRbuPKWihtGP9YcmhGirtTKWQRnm4QODoXSnMAQFfnBVfAYaR+Z
         7HZpnl9JfysWKUiuBFlgJb3Y0wBc91GTaCVpearUfmlH2YMogFeTMipz+NnNW9mnJlqT
         vDONdcyeIsYHue9ZGmuMU2nkyr2N/6we7i5PHNglCSDvDThdMiP+a7jstCZCK6qqRKyc
         iFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718668976; x=1719273776;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2Qun18IIy9gKhFD7qkrSkqkc+T33TcGSW6SAcDxKoFA=;
        b=r1pGxniSAetbwy6Q0Wy6R3j3uR2LNU3VZFhxVD2BIGmm0M1bQ64Ui7WCMNMqFZNwIu
         KAH70zpLPtJmgOHdop7nmv9paYAVrsnt/p88CpaXobt4FlugXau72VBXufXNvQ6MB1ie
         Eo44TtRJI1tHW0JauyaMy4M17u5vp4l6VP3OtQaFF5x5CA8oa3W9ON2krOQpUR4GoSdT
         qZ1j7jFSlR2W8W9MqMxPNjQv/XT1wYNnikCn+4q8tedw6u6V8GU73B6Ldr9Io+cR9LbN
         9fOCNF3lpGkDPg2ULt0g+CgDnm/ZkQfFdDPTfMVw60KXVO6obzvmgrXR9dmG4pnlc7ZU
         df4w==
X-Gm-Message-State: AOJu0YxO0B51ABgOejg14d4VEhxe/nF3OZnlopYmJv2IFfCLGaotulnZ
	QVdHRzvON+qxW876tmR0C1u46nnbjDltfusKZA4ks8U0aa9NP0UAxQZ0+g==
X-Google-Smtp-Source: AGHT+IFPhIgg3oc78CsXplCidV9/jarsypQZZlmHsGqOH3Mbh6OeitOHjL2M67dvoHK2ZWiisJsFsA==
X-Received: by 2002:a05:620a:460e:b0:795:5a9d:278 with SMTP id af79cd13be357-798d24129f5mr1321609585a.22.1718668975684;
        Mon, 17 Jun 2024 17:02:55 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-07-174-93-0-192.dsl.bell.ca. [174.93.0.192])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-798abc0719fsm473955885a.83.2024.06.17.17.02.55
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 17:02:55 -0700 (PDT)
Message-ID: <3e7f7c87-14d4-46b1-a858-8d8cdd53c7f4@gmail.com>
Date: Mon, 17 Jun 2024 20:02:54 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU@lists.ettus.com>
Message-ID-Hash: BIGYA5AGVUMBSJRKA7D57U37EVJMSRPT
X-Message-ID-Hash: BIGYA5AGVUMBSJRKA7D57U37EVJMSRPT
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIGYA5AGVUMBSJRKA7D57U37EVJMSRPT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2469137489151577938=="

This is a multi-part message in MIME format.
--===============2469137489151577938==
Content-Type: multipart/alternative;
 boundary="------------q1IQ5gy8yQLpJqoNxRyY0hNQ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------q1IQ5gy8yQLpJqoNxRyY0hNQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 17/06/2024 19:54, cjohnson@serranosystems.com wrote:
>
> We have followed all instructions on the website and searched the=20
> forums with no solutions. I have provided much evidence below that=20
> USRP/UHD driver is not behaving properly in this case.
>
> We are trying to send a 8192 byte packet to the x310 with the latest=20
> UHD 4.6 (FPGA 39.2) which also didn=E2=80=99t seem to work with UHD 4.3=
 using=20
> the 10GigE interface. We technically have a USRP-2974, but I think it=20
> is irrelevant.
>
>
> The 8192 data is being fragmented into 2 packets (Length 8042 and 266=20
> on the wire using tcpdump).
>
> *You will be able to demonstrate very similar behavior by making the=20
> following change to host/examples/tx_samples_c.c (which sends a Length=20
> 8034 and 258 on the the wire).*
> // Set up buffer
> #if 1
> samps_per_buff =3D 2048; // (~8192 bytes)
> #else
> EXECUTE_OR_GOTO(
> free_tx_streamer, uhd_tx_streamer_max_num_samps(tx_streamer,=20
> &samps_per_buff))
> fprintf(stderr, =E2=80=9CBuffer size in samples: %zu\n=E2=80=9D, samps_=
per_buff);#endif
> *Please note, the interface has been configured to MTU 9000 along with=20
> the other changes mentioned in=20
> https://files.ettus.com/manual/page_usrp_x3x0_config.html*
> enp1s0f0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>=C2=A0 mtu 9000in=
et=20
> 192.168.40.1 netmask 255.255.255.0 broadcast 192.168.40.255
> *When I run the program, you can see an indication of a USRP=20
> problem*=C2=A0=E2=80=9CMaximum frame size: 8000 bytes.=E2=80=9D
> >: ~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c
> Creating USRP with args =E2=80=9C=E2=80=9D...
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
> UHD_4.6.0.0-1-ga9f0b4c7
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 8000 bytes.
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
> [INFO] [X300] Radio 1x clock: 200 MHz
> Setting TX Rate: 200000000.000000...
> Actual TX Rate: 200000000.000000...
> Setting TX Gain: 0.000000 db...
> Actual TX Gain: 0.000000...
> Setting TX frequency: 2000.000000 MHz...
> Actual TX frequency: 2000.000000 MHz...
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> Press Ctrl+C to stop streaming...
> *I have change parameters (*send_frame_size)*=C2=A0to force the tx pack=
et=20
> to 9000 in USRP stream, but I get this message which makes no sense.=C2=
=A0=20
> Also tried 8500, same complaint.*
> [WARNING] [X300] You requested a send frame size of (9000) but your=20
> NIC=E2=80=99s max frame size is (8000).Please verify your NIC=E2=80=99s=
 MTU setting=20
> using =E2=80=98ip link=E2=80=99 or set the send_frame_size argument app=
ropriately.UHD=20
> will use the auto-detected max frame size for this connection.
> Interesting enough, at 8000 it does not complain.=C2=A0 Of course we ar=
e=20
> fragmenting because 8192 bytes packet.
> ------
> *I have confirmed that ping with larger size packet doesn=E2=80=99t wor=
k.*
> cjohnson@USRP-1:~$ ping -s 8200 192.168.40.2
> PING 192.168.40.2 (192.168.40.2) 8200(8228) bytes of data.
> ^C
> --- 192.168.40.2 ping statistics ---
> 33 packets transmitted, 0 received, 100% packet loss, time 32758ms
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
I have run into a similar issue, years ago, with a *1Gig* interface=20
blindly accepting a jumbo-frame MTU request, but
 =C2=A0 actually being unable to in reality honor it.

Now, that would be unusual with a 10GiG card--what card type do you=20
have?=C2=A0=C2=A0 Are you running direct, or through a
 =C2=A0 switch?


--------------q1IQ5gy8yQLpJqoNxRyY0hNQ
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 17/06/2024 19:54,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:K0J14kPDEKsSActmBPQKdgOmqBrpgTukA2HVpSZUU@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>We have followed all instructions on the website and searched
        the forums with no solutions. I have provided much evidence
        below that USRP/UHD driver is not behaving properly in this
        case.<br>
        <br>
        We are trying to send a 8192 byte packet to the x310 with the
        latest UHD 4.6 (FPGA 39.2) which also didn=E2=80=99t seem to work=
 with
        UHD 4.3 using the 10GigE interface. We technically have a
        USRP-2974, but I think it is irrelevant.</p>
      <p><br>
        The 8192 data is being fragmented into 2 packets (Length 8042
        and 266 on the wire using tcpdump).<br>
        <br>
      </p>
      <p><strong>You will be able to demonstrate very similar behavior
          by making the following change to host/examples/tx_samples_c.c
          (which sends a Length 8034 and 258 on the the wire).</strong><b=
r>
        // Set up buffer<br>
        #if 1<br>
        samps_per_buff =3D 2048; // (~8192 bytes)<br>
        #else<br>
        EXECUTE_OR_GOTO(<br>
        free_tx_streamer, uhd_tx_streamer_max_num_samps(tx_streamer,
        &amp;samps_per_buff))<br>
        fprintf(stderr, =E2=80=9CBuffer size in samples: %zu\n=E2=80=9D,
        samps_per_buff);#endif<br>
        <strong>Please note, the interface has been configured to MTU
          9000 along with the other changes mentioned in=C2=A0<a
href=3D"https://files.ettus.com/manual/page_usrp_x3x0_config.html"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://files.ettus.com/manual/page_usrp_x3x0_config.html</a></strong><br>
        enp1s0f0: flags=3D4163&lt;UP,BROADCAST,RUNNING,MULTICAST&gt;=C2=A0=
 mtu
        9000inet 192.168.40.1 netmask 255.255.255.0 broadcast
        192.168.40.255<br>
        <strong>When I run the program, you can see an indication of a
          USRP problem</strong>=C2=A0=E2=80=9CMaximum frame size: 8000 by=
tes.=E2=80=9D<br>
        &gt;: ~/uhd-4.6.0.0/host/build/examples$ ./tx_samples_c<br>
        Creating USRP with args =E2=80=9C=E2=80=9D...<br>
        [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
        UHD_4.6.0.0-1-ga9f0b4c7<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Maximum frame size: 8000 bytes.<br>
        [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a<=
br>
        [INFO] [X300] Radio 1x clock: 200 MHz<br>
        Setting TX Rate: 200000000.000000...<br>
        Actual TX Rate: 200000000.000000...<br>
        Setting TX Gain: 0.000000 db...<br>
        Actual TX Gain: 0.000000...<br>
        Setting TX frequency: 2000.000000 MHz...<br>
        Actual TX frequency: 2000.000000 MHz...<br>
        [WARNING] [0/Radio#0] Attempting to set tick rate to 0.
        Skipping.<br>
        Press Ctrl+C to stop streaming...<br>
        <strong>I have change parameters (</strong>send_frame_size)<stron=
g>=C2=A0to
          force the tx packet to 9000 in USRP stream, but I get this
          message which makes no sense.=C2=A0 Also tried 8500, same
          complaint.</strong><br>
        [WARNING] [X300] You requested a send frame size of (9000) but
        your NIC=E2=80=99s max frame size is (8000).Please verify your NI=
C=E2=80=99s MTU
        setting using =E2=80=98ip link=E2=80=99 or set the send_frame_siz=
e argument
        appropriately.UHD will use the auto-detected max frame size for
        this connection.<br>
        Interesting enough, at 8000 it does not complain.=C2=A0 Of course=
 we
        are fragmenting because 8192 bytes packet.<br>
        ------<br>
        <strong>I have confirmed that ping with larger size packet
          doesn=E2=80=99t work.</strong><br>
        cjohnson@USRP-1:~$ ping -s 8200 192.168.40.2<br>
        PING 192.168.40.2 (192.168.40.2) 8200(8228) bytes of data.<br>
        ^C<br>
        --- 192.168.40.2 ping statistics ---<br>
        33 packets transmitted, 0 received, 100% packet loss, time
        32758ms</p>
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
    I have run into a similar issue, years ago, with a *1Gig* interface
    blindly accepting a jumbo-frame MTU request, but<br>
    =C2=A0 actually being unable to in reality honor it.<br>
    <br>
    Now, that would be unusual with a 10GiG card--what card type do you
    have?=C2=A0=C2=A0 Are you running direct, or through a<br>
    =C2=A0 switch?<br>
    <br>
    <br>
  </body>
</html>

--------------q1IQ5gy8yQLpJqoNxRyY0hNQ--

--===============2469137489151577938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2469137489151577938==--
