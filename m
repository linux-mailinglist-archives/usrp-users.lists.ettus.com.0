Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F1591B33C
	for <lists+usrp-users@lfdr.de>; Fri, 28 Jun 2024 02:16:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D9873858D1
	for <lists+usrp-users@lfdr.de>; Thu, 27 Jun 2024 20:16:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719533760; bh=0vNUvz/RBuDDvjPelqKPZVMke8rQhllMQJWZY57qwI8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mgdnXzcQ94j4z01q0Qv3TEqtIsNiBUfjWsbZay6ZYW9LQky7D1Br1Md1TxGvzELoh
	 NNpsiKJ6Uy69NjlzdSYXA7nHMgt4rSE1Rb/rXfDeGZ56+RirAkALtl/en7XKRT+XKo
	 k5q6awdKMsUAtfkfYKLbZk8OTLqQ5gueCJ00CYBr6gSFpiTCynY/ZH2Si3q0YD9MA9
	 RG1Q+LKRNGjtcKjnz1X9SJp1D+OylwTlRRXL4Wte5a2n4DLE3OA9DSl8ynTQFeGg/T
	 C25wiTnAdUqR+npTWLdXU/ZcTsg19Mrnj2hFT1I2rOSPeSbx1F4v4RGZDCw0pXsIDe
	 Ikvde0t3VGDYA==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AD95385837
	for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 20:15:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XeorcwTL";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6b42574830fso462016d6.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Jun 2024 17:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719533718; x=1720138518; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nftMvaTrxIwvQO64x6kXnUA5kDArrdPRcIl05gQkRao=;
        b=XeorcwTL2OHUI4oi0ujI0Bc9q+d1ZBVGT1/btIn8Tcp1rw4mWXyj3gZ1U0h3g7nEON
         YB5moMTfACk8a6TOo0UHlbcD6o9/9CL5HJkTCa4P3hXQ/hK0eS4H2kBCSAjVQXnio9xp
         Gr87rGDBbevvtM3dOpesPKkkTYGZ2LvEO6coSFfynh3spDmxsSXsU5DJ5IhzAOdJwH+i
         h8TTfkVdiRuPQrzAXbIm8uWzA9mYMhJaSZ4l5PRzmNSR5GpnqcQ1TC8wwqAIzkb91TcM
         EtQrpy4uj9x5FT0kdW8oGzeu3WD4EHApPBRKibqlFs+88R0YD4iOrUq8p4aKN5612Loz
         MpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719533718; x=1720138518;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nftMvaTrxIwvQO64x6kXnUA5kDArrdPRcIl05gQkRao=;
        b=ZKnndGiPJLn+cNJ6SApFVniZozra/EVdtPfCM+1WyT6p4odQDCGZUvXtUyr/qjFBTN
         JPZou4e05vxIOh49MWtuCwZPngAW0NxewFU31LTA/2NfuDmrVMzADG+/58cJvkm4+Wlm
         DbuxW4Pj+LlhAkMDuSKoDtp+GHPvs5KpgpNMKAxNO51dwA4e9mb0k3z7w3dNzBU/87DR
         rBe4gRtOILR2J06z47KhzeC3Eu5iHUwbK2A1GJD9XY6ThdcarXIbSHVRzLoTmN24Cm+7
         YKZojrPIjJ7vACIzVEktWZauaApbDkgRKXvNClnpenyABf0aLBXHOSIHmCdIOBvYrPXY
         TywQ==
X-Gm-Message-State: AOJu0Yx9GoqTuoMcrXAf+cU1/Wz0u0EXFgTzgfWoGDIqmhwe09BOdB0/
	dFkmrwr+W+UmKWgg8kR0EyCZAFB9r3dJHhuPKUPsbzZR38g/e0P/n7lOUg==
X-Google-Smtp-Source: AGHT+IFJEg81AMCqbEl1DvP850AjcbhmoKyfJ7be8iUgkpn9dHUTohGIeFG9K9IPSItN+J0hRXK1jg==
X-Received: by 2002:a05:6214:8c2:b0:6b5:4e07:2a59 with SMTP id 6a1803df08f44-6b54e072a7cmr128114286d6.9.1719533718258;
        Thu, 27 Jun 2024 17:15:18 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6b59e57e0a8sm3225436d6.64.2024.06.27.17.15.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 17:15:17 -0700 (PDT)
Message-ID: <7c8d266a-fc9e-489d-a93b-5661d7b24324@gmail.com>
Date: Thu, 27 Jun 2024 20:15:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU@lists.ettus.com>
Message-ID-Hash: TTOZVW54TQFSPPJQVYX73AEYRH6PRTZU
X-Message-ID-Hash: TTOZVW54TQFSPPJQVYX73AEYRH6PRTZU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x310 Not Sending Jumbo Packets (>8000 bytes) as 1 Packet on 10GigE
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTOZVW54TQFSPPJQVYX73AEYRH6PRTZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3717147217903119947=="

This is a multi-part message in MIME format.
--===============3717147217903119947==
Content-Type: multipart/alternative;
 boundary="------------007n0P0e0ErvKO2yiuKKTZrW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------007n0P0e0ErvKO2yiuKKTZrW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/06/2024 19:47, cjohnson@serranosystems.com wrote:
>
> Hi Marcus,
>
> Anyone else able to look at this with ability to Tx on x310?
>
> I have looked at all the counters on the server, and it I don=E2=80=99t=
 see=20
> anything unusual.
> Let me know if you need me to up/down the interface (to reset) and=20
> provide you some counters=E2=80=A6.
>
> Here is more info:
>
> |~$ sudo ethtool -i eno2 driver: ixgbe version:=20
> 5.19.0-1010-nvidia-lowlatency firmware-version: 0x80001743, 1.3082.0=20
> expansion-rom-version: bus-info: 0000:04:00.1 supports-statistics: yes=20
> supports-test: yes supports-eeprom-access: yes supports-register-dump:=20
> yes supports-priv-flags: yes ~$ lspci -v -s 000:04:00.1 04:00.1=20
> Ethernet controller: Intel Corporation Ethernet Controller 10G X550T=20
> (rev 01) DeviceName: Intel Ethernet X550 #2 Subsystem: Super Micro=20
> Computer Inc Ethernet Controller 10G X550T Flags: bus master, fast=20
> devsel, latency 0, IRQ 16, NUMA node 0 Memory at 200fff400000 (64-bit,=20
> prefetchable) [size=3D4M] Memory at 200fffc00000 (64-bit, prefetchable)=
=20
> [size=3D16K] Expansion ROM at 9a100000 [disabled] [size=3D512K]=20
> Capabilities: <access denied> Kernel driver in use: ixgbe Kernel=20
> modules: ixgbe |
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You haven't specified a timeout on your "send()" calls, so it defaults=20
to 0.1 seconds.=C2=A0 Which on the *first* send is
 =C2=A0 inadequate, which is why there's that "timeout" calculation -- to=
=20
account for the fact that the call will block until
 =C2=A0 your desired send time.=C2=A0 So, I don't know what happens in th=
is case,=20
whether data still gets thrown into kernel
 =C2=A0 buffers, or what.




--------------007n0P0e0ErvKO2yiuKKTZrW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/06/2024 19:47,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:cjohnson@serra=
nosystems.com">cjohnson@serranosystems.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:XiMeTIPyS8b30RyY29feLvzn60akLei8Mlcixue7WNU@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi Marcus,</p>
      <p>Anyone else able to look at this with ability to Tx on x310?</p>
      <p>I have looked at all the counters on the server, and it I don=E2=
=80=99t
        see anything unusual.<br>
        Let me know if you need me to up/down the interface (to reset)
        and provide you some counters=E2=80=A6.<br>
        <br>
        Here is more info:</p>
      <pre><code>~$ sudo ethtool -i eno2
driver: ixgbe
version: 5.19.0-1010-nvidia-lowlatency
firmware-version: 0x80001743, 1.3082.0
expansion-rom-version:=20
bus-info: 0000:04:00.1
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

~$ lspci -v -s 000:04:00.1
04:00.1 Ethernet controller: Intel Corporation Ethernet Controller 10G X5=
50T (rev 01)
        DeviceName: Intel Ethernet X550 #2
        Subsystem: Super Micro Computer Inc Ethernet Controller 10G X550T
        Flags: bus master, fast devsel, latency 0, IRQ 16, NUMA node 0
        Memory at 200fff400000 (64-bit, prefetchable) [size=3D4M]
        Memory at 200fffc00000 (64-bit, prefetchable) [size=3D16K]
        Expansion ROM at 9a100000 [disabled] [size=3D512K]
        Capabilities: &lt;access denied&gt;
        Kernel driver in use: ixgbe
        Kernel modules: ixgbe

</code></pre>
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
    You haven't specified a timeout on your "send()" calls, so it
    defaults to 0.1 seconds.=C2=A0 Which on the *first* send is<br>
    =C2=A0 inadequate, which is why there's that "timeout" calculation --=
 to
    account for the fact that the call will block until<br>
    =C2=A0 your desired send time.=C2=A0 So, I don't know what happens in=
 this
    case, whether data still gets thrown into kernel<br>
    =C2=A0 buffers, or what.<br>
    <br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------007n0P0e0ErvKO2yiuKKTZrW--

--===============3717147217903119947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3717147217903119947==--
