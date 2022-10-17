Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E836010ED
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 16:19:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2D505383BEC
	for <lists+usrp-users@lfdr.de>; Mon, 17 Oct 2022 10:19:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666016347; bh=jt9aAfJPea8Hnu56ecFO7pytymkAeuZjeiIKOVBhzWY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=xBJwJ9jbNefPaWHHMoOJQHmOzm9vyj1YgW/dJDgdZzctw456iwfFWBcdlPXCyVVcF
	 4BGxayI4+VptDmeR7xq0Xs913ofLqhQU/VWgwUVhhGsbOXj6ZRCU7PNgtEr/kJwz6N
	 E5BoyE+naVze4DPu6CBQR612WSXP5LJBc1+gKqEHz7GSUpNR7W8Bm9ZESTfY/i18/x
	 /TIT5ZOKjU2lnl7/wAkLHjPJbE0ida4xY8FAV76BoWHRAuYxoHMjQZ92nIxcdhrzPH
	 Za4uV/9SSvNXCuiWzNKWBGXG2hg69FJukVIcwzlW6UQrIIqTAfNTlsoWD5/iUU/nSC
	 npefcFzH4wedQ==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 792373814AD
	for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 10:18:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pPUm/d7M";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id a5so6677330qkl.6
        for <usrp-users@lists.ettus.com>; Mon, 17 Oct 2022 07:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=veOKlNbq97svRUKMF2kIdRvQ6/liY2Ur2Y/loCo3bds=;
        b=pPUm/d7MCMwGvCGNgs/PIrv3sGnBJA3FivoHzhJijduhiULFAG143Y3i6E22PO9jup
         6LecD56FhbhLc11+LQaCt0P/uW9c86YP1vQ7U88LbaVulVjURooLkoccAmzoM/YB7gOX
         HdIzO//6JTIlp9raZUzEQ42w4tQWJgiUQNJ17DzfEPXspi7z4dHpEq1yGhyDgYwUgr9g
         +rby52UmrJfMBve9hoSaZiO0ovKYJ1nQFNsh0mZNMj2BfQMfFYpzYxFGPvbeFFE5+V2s
         njyTP+M4TniuxXG9rdoNVPt8V1j5dpJbeFb/S7lgFJ69I5Lw1Qg6Nr3CvUgqgjFSS1sn
         Modg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=veOKlNbq97svRUKMF2kIdRvQ6/liY2Ur2Y/loCo3bds=;
        b=FTZpyOq4VUpTZLXEo2GY4v2iuIFjovsvgsjdy9QYNbd62QZbIVoT9D9Ntp6UpcFLGe
         DzQum+pxo0iRmTE7VVM9PYvuIKvIPbSNr3ULvs0GENWmGoszKHDYukK0NPIc7yoVpngG
         oerJW38a9zmwU2DPj6VOZhN3ELmoQIPaUcG//sEWvVZ4Z41sJ+f/nsk8dDRGino9J3wu
         VkvxjcLh3yXtEtQ0QDyGc+EFZj+1xRXcVg5/68iKCbJ/7PBt+nLXyaMcV1LG0tsuglLo
         44aMMaf9NuNY0WIMudsK/OhfRdkn8gat0TBX0cw9jNLLHTPGJnl8hXyZyoa80ZcBJFEx
         iQNA==
X-Gm-Message-State: ACrzQf39/UxPeppg+3CD3IFTl7eRTOGsZfrfQFhLfD19T2q2vWgMyz4p
	9hlAfdDq9ZV67QmZTWRzAakBAtpHhdI=
X-Google-Smtp-Source: AMsMyM5TsS02zPTFAfOONQCscyCtrsB2VEgupmxhTvqp1y5zgGronKU2ZeJwmfONP+deopr96Nvp+Q==
X-Received: by 2002:a05:620a:4626:b0:6ee:b43:d2bc with SMTP id br38-20020a05620a462600b006ee0b43d2bcmr7404799qkb.764.1666016293759;
        Mon, 17 Oct 2022 07:18:13 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id ez4-20020a05622a4c8400b00398a7c860c2sm7889522qtb.4.2022.10.17.07.18.12
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 07:18:13 -0700 (PDT)
Message-ID: <522294f8-ad68-c2b0-c6a0-dcc683ffd730@gmail.com>
Date: Mon, 17 Oct 2022 10:18:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CABfZwcdmTTvRjhnPn-qrEy57B8CdnbTfA1x3rw44=0s4VuqfvA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CABfZwcdmTTvRjhnPn-qrEy57B8CdnbTfA1x3rw44=0s4VuqfvA@mail.gmail.com>
Message-ID-Hash: POL7IVQWWZR2BKSLCSVTNBG5R4NMQ5L7
X-Message-ID-Hash: POL7IVQWWZR2BKSLCSVTNBG5R4NMQ5L7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: fifo ctrl timed out error (LFRX on a N210)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POL7IVQWWZR2BKSLCSVTNBG5R4NMQ5L7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3406964819131968888=="

This is a multi-part message in MIME format.
--===============3406964819131968888==
Content-Type: multipart/alternative;
 boundary="------------3slhqVPhABhKECGGrbBA0Ql9"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3slhqVPhABhKECGGrbBA0Ql9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-17 03:41, Mikio Fukushima wrote:
> Hi,
> I want to use one or two channels on one LFRX on a N210 on Windows.
> but fifo ctrl timeout error occured.
> uhd_usrp_probe, uhd_find_device and ping are OK.
> Why?
>
> - Environment
>
> Windows 10
> UHD 4.3.0.0 (x64, VS2019)
> LFRX on USRP2(r4)
>
> - error message
>
> C:\Program Files\UHD\lib\uhd\examples>rx_samples_to_file.exe --args=20
> "addr=3D192.168.1.52" --rate 1e6 =C2=A0--freq 1e6
>
> Creating the usrp device with: addr=3D192.168.1.52...
> [INFO] [UHD] Win32; Microsoft Visual C++ version 1925; Boost_107000;=20
> UHD_4.2.0.0-release
> [INFO] [USRP2] Opening a USRP2/N-Series device...
> [INFO] [USRP2] Current recv frame size: 1472 bytes
> [INFO] [USRP2] Current send frame size: 1472 bytes
> Using Device: Single USRP:
> =C2=A0 Device: USRP2 / N-Series Device
> =C2=A0 Mboard 0: USRP2 r4
> =C2=A0 RX Channel: 0
> =C2=A0 =C2=A0 RX DSP: 0
> =C2=A0 =C2=A0 RX Dboard: A
> =C2=A0 =C2=A0 RX Subdev: LFRX (AB)
> =C2=A0 TX Channel: 0
> =C2=A0 =C2=A0 TX DSP: 0
> =C2=A0 =C2=A0 TX Dboard: A
> =C2=A0 =C2=A0 TX Subdev: LFTX (AB)
>
> Setting RX Rate: 1.000000 Msps...
> [ERROR] [UHD] Exception caught in safe-call.
> =C2=A0 in usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl
> =C2=A0 at=20
> C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uh=
d\host\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:51
> this->peek32(0); -> RuntimeError: fifo ctrl timed out looking for acks
> Error: LookupError: IndexError: multi_usrp: RX channel 12 out of range=20
> for configured RX frontends
>
The "fifo ctrl timed out" message usually happens when the network=20
buffering is inadequate, and UHD is losing packets--although
 =C2=A0 at 1Msps, it surely shouldn't be.=C2=A0 But this is a windows dep=
loyment,=20
and I'm much less familiar with its quirks.

The MORE concerning thing is the message about RX channel 12 out of=20
range.=C2=A0=C2=A0 I'm not sure what it's trying to convey,
 =C2=A0 but there's no way to have 12 channels on a single USRP N210.

Could you try dropping back to an older version of UHD (3.15 perhaps?)=20
to see if this is still present?



--------------3slhqVPhABhKECGGrbBA0Ql9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-17 03:41, Mikio Fukushima
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CABfZwcdmTTvRjhnPn-qrEy57B8CdnbTfA1x3rw44=3D0s4VuqfvA@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr" class=3D"gmail_signature"
          data-smartmail=3D"gmail_signature">
          <div dir=3D"ltr">
            <div dir=3D"ltr">
              <div dir=3D"ltr">
                <div>Hi,<br>
                  I want to use one or two channels on one LFRX on a
                  N210 on Windows.<br>
                  but fifo ctrl timeout error occured. <br>
                  uhd_usrp_probe, uhd_find_device and ping are OK.<br>
                  Why?</div>
                <div><br>
                </div>
                <div>
                  <div>- Environment</div>
                  <div><br>
                  </div>
                  <div>Windows 10</div>
                  <div>UHD 4.3.0.0 (x64, VS2019)</div>
                  <div>LFRX on USRP2(r4)</div>
                  <div><br>
                  </div>
                  <div>- error message</div>
                  <div><br>
                  </div>
                  C:\Program
                  Files\UHD\lib\uhd\examples&gt;rx_samples_to_file.exe
                  --args "addr=3D192.168.1.52" --rate 1e6 =C2=A0--freq 1e=
6<br>
                  <br>
                  Creating the usrp device with: addr=3D192.168.1.52...<b=
r>
                  [INFO] [UHD] Win32; Microsoft Visual C++ version 1925;
                  Boost_107000; UHD_4.2.0.0-release<br>
                  [INFO] [USRP2] Opening a USRP2/N-Series device...<br>
                  [INFO] [USRP2] Current recv frame size: 1472 bytes<br>
                  [INFO] [USRP2] Current send frame size: 1472 bytes<br>
                  Using Device: Single USRP:<br>
                  =C2=A0 Device: USRP2 / N-Series Device<br>
                  =C2=A0 Mboard 0: USRP2 r4<br>
                  =C2=A0 RX Channel: 0<br>
                  =C2=A0 =C2=A0 RX DSP: 0<br>
                  =C2=A0 =C2=A0 RX Dboard: A<br>
                  =C2=A0 =C2=A0 RX Subdev: LFRX (AB)<br>
                  =C2=A0 TX Channel: 0<br>
                  =C2=A0 =C2=A0 TX DSP: 0<br>
                  =C2=A0 =C2=A0 TX Dboard: A<br>
                  =C2=A0 =C2=A0 TX Subdev: LFTX (AB)<br>
                  <br>
                  Setting RX Rate: 1.000000 Msps...<br>
                  [ERROR] [UHD] Exception caught in safe-call.<br>
                  =C2=A0 in usrp2_fifo_ctrl_impl::~usrp2_fifo_ctrl_impl<b=
r>
                  =C2=A0 at
C:\Users\buildbot\worker0\Builder_uhdPackage_Windows_x64_vs2019\work\uhd\=
host\lib\usrp\usrp2\usrp2_fifo_ctrl.cpp:51<br>
                  this-&gt;peek32(0); -&gt; RuntimeError: fifo ctrl
                  timed out looking for acks<br>
                  Error: LookupError: IndexError: multi_usrp: RX channel
                  12 out of range for configured RX frontends<br>
                </div>
                <br>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    The "fifo ctrl timed out" message usually happens when the network
    buffering is inadequate, and UHD is losing packets--although<br>
    =C2=A0 at 1Msps, it surely shouldn't be.=C2=A0 But this is a windows
    deployment, and I'm much less familiar with its quirks.<br>
    <br>
    The MORE concerning thing is the message about RX channel 12 out of
    range.=C2=A0=C2=A0 I'm not sure what it's trying to convey,<br>
    =C2=A0 but there's no way to have 12 channels on a single USRP N210.<=
br>
    <br>
    Could you try dropping back to an older version of UHD (3.15
    perhaps?) to see if this is still present?<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------3slhqVPhABhKECGGrbBA0Ql9--

--===============3406964819131968888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3406964819131968888==--
