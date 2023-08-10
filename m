Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E9C777907
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 15:03:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8591C384120
	for <lists+usrp-users@lfdr.de>; Thu, 10 Aug 2023 09:03:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691672628; bh=FQnmLjQ/G9Z5dCyDHebA9po4OwbJez4xSiUEjoKmnV0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=i+o0c8q1o4gSKNrzrE3TkljhI7cdDNdt9exM7Z3LZqOXFaoypqYKYHXXZ5tkye86/
	 OZ3yhKV40XjslAKXGaOD0higarsn7P9jx+p/iOxSNalE/KBeW5KEcBbcQ/XHKZzaEs
	 wIYj89YvDCb07znxbymCu6w1wO3ZwBgE/ufUcWZaqrBkXdCbqbzHX5pZoEePAJrtBh
	 RwgdPNyzc5Jnj039I/5ue2btPKsOKo4umV9JBloh7cyRV4KDTin5Aqk7mFjA5TlhSS
	 sPpi50M0OfSSzMpM0fZIdGzuqrK+2qTHicNrRU+Bm8xFwjRdLSn98wVCMet044Wsba
	 DE1jm/3uhvyLA==
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id AD134384ADB
	for <usrp-users@lists.ettus.com>; Thu, 10 Aug 2023 09:02:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="O88KNLG8";
	dkim-atps=neutral
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-63cef62a944so6018206d6.1
        for <usrp-users@lists.ettus.com>; Thu, 10 Aug 2023 06:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691672575; x=1692277375;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Eqdk6SgOcGxzSmmEm/CObXjflMQhnvs1/B7eJ9io8aY=;
        b=O88KNLG8tFYjLCng8Uq9IZlZ1Sa2Jc153QL21ixnomHGnZ4n6qC3d5haqrG5DeFVZX
         ZP3GBMqZiVn/bjiPX2HilJwEgLRveD0LmyNvsCD4Z9/4Avl+LdSGXONsMGa57I6a0ZXZ
         T/vWN9ux91sNLsM3YE3usKgCfpSqAF2SJ/BcQDcN4QLxYsNTcSmuhgCyB4BfkF410aEl
         OwKcRSc1eddzPqpmJrN6BSjufhHT8PcwA16Vif3Xvq5XR/rjE79nQsCAuruqheqGyTEB
         iCRhDhwsZiVMJVZy//TQak/A2VZsn8QdkBu2yevkwcZjkHBDCST7bdybFOzLEDSe/0EL
         2JDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691672575; x=1692277375;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Eqdk6SgOcGxzSmmEm/CObXjflMQhnvs1/B7eJ9io8aY=;
        b=ME8T7+FTUtlKkWRyhBXfsTEkRU7tWXvUGzOo2e8s8iV8MFi2bQ4JLS3xMUwRRP8PhK
         eJkQQQhHK98vJ/mkPAaVNoBggqshwGYpuP2D20dUs6SsKuIbdroocb7f0pNMCVD8FEzP
         mNmhNyO18pRyYopAuoMCDaYCGcFC75HFytlMFPN7a2XANX8uNbE0oXPU1I8j4mVE5adJ
         agsq8XjK1eN1HBVEMFnuHMw3ZHvlLZ1b0zW96YLNlkrPj0fKjYNatSjjLjIz2ANhme2m
         AkgaIgIYEcOaiyfc2aKZVWGtIgBnezEwL+Vl0mUZ7lZ8oBTFsae7nt7sVnZ3p0VP+LWl
         NNAA==
X-Gm-Message-State: AOJu0Yw+XZdpTNfgcaOFvCjZka7FxCDPNWwCIQa+o+qlaqeTlovZo9Mq
	lA752Vjdj0/B8i4yOPLSQx1q46ii0Ok=
X-Google-Smtp-Source: AGHT+IEz4+W7CnbKcnOaqGAqSoW26CJGPw66FYm8T7uyadSinNPcUkFvVCZMuqGpYNRBznzfPVAK1g==
X-Received: by 2002:a0c:f4d1:0:b0:63d:4813:6a74 with SMTP id o17-20020a0cf4d1000000b0063d48136a74mr1973066qvm.45.1691672574771;
        Thu, 10 Aug 2023 06:02:54 -0700 (PDT)
Received: from [192.168.2.217] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id t8-20020a05620a034800b007671cfe8a18sm462835qkm.13.2023.08.10.06.02.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Aug 2023 06:02:54 -0700 (PDT)
Message-ID: <a66e2e0a-47a3-2b16-6a42-79bea9c34b4c@gmail.com>
Date: Thu, 10 Aug 2023 09:02:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Bachmaier, Luca" <luca.bachmaier@iis.fraunhofer.de>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <44131bcc179c44f8975efeb8097fb30c@iis.fraunhofer.de>
 <b6bbe756-529c-742c-516f-a67e134b5a79@gmail.com>
 <dc5fa6894b6a4d448242e77f0378a60d@iis.fraunhofer.de>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <dc5fa6894b6a4d448242e77f0378a60d@iis.fraunhofer.de>
Message-ID-Hash: JFECF27KV6AK3KYRGOQ5GZXLVM4VG6BZ
X-Message-ID-Hash: JFECF27KV6AK3KYRGOQ5GZXLVM4VG6BZ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 uhd_image_loader: two errors
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JFECF27KV6AK3KYRGOQ5GZXLVM4VG6BZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3808651933819951723=="

This is a multi-part message in MIME format.
--===============3808651933819951723==
Content-Type: multipart/alternative;
 boundary="------------PxxIP0MtW7myjePv05bGcvJk"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------PxxIP0MtW7myjePv05bGcvJk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 10/08/2023 03:44, Bachmaier, Luca wrote:
>
> Thanks for your quick reply.
>
> I should=E2=80=99ve mentioned that I=E2=80=99ve already done that. At t=
he time when=20
> the first error occured, there was a factory image on the uSD card in=20
> the device.
>
> [ERROR] [UHD] An unexpected exception was caught in a task loop. The=20
> task loop will now exit, things may not work.rpc::timeout: Timeout of=20
> 10000ms while calling RPC function 'get_log_buf'
>
> Is there anything you can tell me about this problem? I was not able=20
> to find anything closely related in the mailing list here.
>
> Regards
>
> Luca
>
SO, with a factory uSD image in the device, can we get back to a point=20
where=C2=A0 'uhd_usrp_probe' runs normally?


> *Von:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Gesendet:* Dienstag, 8. August 2023 16:37
> *An:* usrp-users@lists.ettus.com
> *Betreff:* [USRP-users] Re: N310 uhd_image_loader: two errors
>
> On 08/08/2023 10:29, Bachmaier, Luca wrote:
>
>     Hi all,
>
>     I=E2=80=99m currently building an image for the USRP N310 and while=
 using
>     uhd_image_loader I ran into the following error (see below for
>     entire output):
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 [INFO] [MPM.PeriphManager] Installing component `dts'
>
>     [ERROR] [UHD] An unexpected exception was caught in a task
>     loop.The task loop will now exit, things may not
>     work.rpc::timeout: Timeout of 10000ms while calling RPC function
>     'get_log_buf'
>
>     After this happened, the RJ45 connection with the USRP seems to
>     have stopped working. Running uhd_usrp_find_devices can=E2=80=99t f=
ind any
>     devices. However I can still log in to the USRP over the Console
>     JTAG interface through screen. When calling =E2=80=9Cip a=E2=80=9D =
on my host
>     device and the USRP the Ethernet interfaces seem to be down, even
>     after rebooting the USRP.
>
>     When I tried executing uhd_image_loader again I received this error=
:
>
>     =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 [ERROR] [MPMD IMAGE LOADER] mpmd_image_loader only
>     supports a single device.
>
>     Unfortunately I wasn=E2=80=99t able to find a lot of information ab=
out
>     these errors online or in this mailing list. I=E2=80=99d be happy t=
o hear
>     any input about both of these errors.
>
>     Thank you and regards
>
>     Luca
>
>     Full ouput:
>
>     $ uhd_image_loader --args "type=3Dn3xx,addr=3D192.168.10.2"
>     --fpga-path ./build/usrp_n310_fpga_XG.bit
>
>     [INFO] [UHD] linux; GNU C++ version 12.2.0; Boost_107400;
>     UHD_4.3.0.0+ds1-5
>
>     [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>     mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31E9FA=
6,name=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1
>
>     [INFO] [MPMD] Claimed device without full initialization.
>
>     [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
>     [INFO] [MPM.PeriphManager] Installing component `fpga'
>
>     [INFO] [MPM.PeriphManager] Installing component `dts'
>
>     [ERROR] [UHD] An unexpected exception was caught in a task
>     loop.The task loop will now exit, things may not
>     work.rpc::timeout: Timeout of 10000ms while calling RPC function
>     'get_log_buf'
>
>     [ERROR] [UHD] Exception caught in safe-call.
>
>     =C2=A0 in ~mpmd_mboard_impl
>
>     =C2=A0at ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320
>
>     dump_logs(); _claimer_task.reset(); if (not
>     rpc->request_with_token<bool>("unclaim")) {
>     uhd::_log::log(uhd::log::warning,
>     "./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 322, "MPMD",
>     std::this_thread::get_id()) << "Failure to ack unclaim!";; } ->
>     rpc::timeout: Timeout of 10000ms while calling RPC function
>     'get_log_buf'
>
>     Error: rpc::timeout: Timeout of 120000ms while calling RPC
>     function 'update_component'
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list -- usrp-users@lists.ettus.com  <mailto:usrp=
-users@lists.ettus.com>
>
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com  <=
mailto:usrp-users-leave@lists.ettus.com>
>
> Well, I guess the first thing to do is to run a factory system image=20
> on the device and make sure that it is sane--just program
> =C2=A0 an uSD card with the factory image and run that to make sure it =
is sane.
>

--------------PxxIP0MtW7myjePv05bGcvJk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 10/08/2023 03:44, Bachmaier, Luca
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:dc5fa6894b6a4d448242e77f0378a60d@iis.fraunhofer.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}p.MsoListParagraph, li.MsoListParagraph, div.=
MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-MailFormatvorlage21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-MailFormatvorlage22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Thanks
            for your quick reply.<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US"><o:p>=C2=A0</o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">I
            should=E2=80=99ve mentioned that I=E2=80=99ve already done th=
at. At the time
            when the first error occured, there was a factory image on
            the uSD card in the device.<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
            style=3D"color:#1F497D" lang=3D"EN-US">[ERROR] [UHD] An
            unexpected exception was caught in a task loop. The task
            loop will now exit, things may not work.rpc::timeout:
            Timeout of 10000ms while calling RPC function 'get_log_buf'<o=
:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Is
            there anything you can tell me about this problem? I was not
            able to find anything closely related in the mailing list
            here.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Regards<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S">Luca</span></p>
      </div>
    </blockquote>
    SO, with a factory uSD image in the device, can we get back to a
    point where=C2=A0 'uhd_usrp_probe' runs normally?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:dc5fa6894b6a4d448242e77f0378a60d@iis.fraunhofer.de">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-U=
S"><o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></sp=
an></p>
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0c=
m
          0cm 0cm 4.0pt">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class=3D"MsoNormal"><b><span
                    style=3D"mso-fareast-language:DE">Von:</span></b><spa=
n
                  style=3D"mso-fareast-language:DE"> Marcus D. Leech
                  <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patch=
vonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a>
                  <br>
                  <b>Gesendet:</b> Dienstag, 8. </span><span
                  style=3D"mso-fareast-language:DE" lang=3D"EN-US">August
                  2023 16:37<br>
                  <b>An:</b> <a class=3D"moz-txt-link-abbreviated" href=3D=
"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                  <b>Betreff:</b> [USRP-users] Re: N310
                  uhd_image_loader: two errors<o:p></o:p></span></p>
            </div>
          </div>
          <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</o:p></=
span></p>
          <div>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">On 08/08/2023 10:=
29,
                Bachmaier, Luca wrote:</span><span
                style=3D"font-size:12.0pt;mso-fareast-language:DE"
                lang=3D"EN-US"><o:p></o:p></span></p>
          </div>
          <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<o:p></o:p=
></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m curre=
ntly
                building an image for the USRP N310 and while using
                uhd_image_loader I ran into the following error (see
                below for entire output):<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [INFO]
                [MPM.PeriphManager] Installing component `dts'<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span
                lang=3D"EN-US">[ERROR] [UHD] An unexpected exception was
                caught in a task loop.The task loop will now exit,
                things may not work.rpc::timeout: Timeout of 10000ms
                while calling RPC function 'get_log_buf'<o:p></o:p></span=
></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">After this happen=
ed,
                the RJ45 connection with the USRP seems to have stopped
                working. Running uhd_usrp_find_devices can=E2=80=99t find=
 any
                devices. However I can still log in to the USRP over the
                Console JTAG interface through screen. When calling =E2=80=
=9Cip
                a=E2=80=9D on my host device and the USRP the Ethernet
                interfaces seem to be down, even after rebooting the
                USRP.<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">When I tried
                executing uhd_image_loader again I received this error:<o=
:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [ERROR]
                [MPMD IMAGE LOADER] mpmd_image_loader only supports a
                single device.<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Unfortunately I
                wasn=E2=80=99t able to find a lot of information about th=
ese
                errors online or in this mailing list. I=E2=80=99d be hap=
py to
                hear any input about both of these errors.<o:p></o:p></sp=
an></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you and
                regards<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Luca<o:p></o:p></=
span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Full ouput:<o:p><=
/o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">$ uhd_image_loade=
r
                --args "type=3Dn3xx,addr=3D192.168.10.2" --fpga-path
                ./build/usrp_n310_fpga_XG.bit<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] linu=
x;
                GNU C++ version 12.2.0; Boost_107400; UHD_4.3.0.0+ds1-5<o=
:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD]
                Initializing 1 device(s) in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31E9FA6,name=
=3Dni-n3xx-31E9FA6,fpga=3DHG,claimed=3DFalse,skip_init=3D1<o:p></o:p></sp=
an></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD]
                Claimed device without full initialization.<o:p></o:p></s=
pan></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [MPMD IMAG=
E
                LOADER] Starting update. This may take a while.<o:p></o:p=
></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO]
                [MPM.PeriphManager] Installing component `fpga'<o:p></o:p=
></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO]
                [MPM.PeriphManager] Installing component `dts'<o:p></o:p>=
</span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [UHD] An
                unexpected exception was caught in a task loop.The task
                loop will now exit, things may not work.rpc::timeout:
                Timeout of 10000ms while calling RPC function
                'get_log_buf'<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">[ERROR] [UHD]
                Exception caught in safe-call.<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0 in
                ~mpmd_mboard_impl<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0at
                ./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp:320<o:p></o:p><=
/span></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">dump_logs();
                _claimer_task.reset(); if (not
                rpc-&gt;request_with_token&lt;bool&gt;("unclaim")) {
                uhd::_log::log(uhd::log::warning,
                "./host/lib/usrp/mpmd/mpmd_mboard_impl.cpp", 322,
                "MPMD", std::this_thread::get_id()) &lt;&lt; "Failure to
                ack unclaim!";; } -&gt; rpc::timeout: Timeout of 10000ms
                while calling RPC function 'get_log_buf'<o:p></o:p></span=
></p>
            <p class=3D"MsoNormal"><span lang=3D"EN-US">Error: rpc::timeo=
ut:
                Timeout of 120000ms while calling RPC function
                'update_component'<o:p></o:p></span></p>
            <p class=3D"MsoNormal"><span
                style=3D"font-size:12.0pt;font-family:&quot;Times New
                Roman&quot;,serif;mso-fareast-language:DE" lang=3D"EN-US"=
><br>
                <br>
                <o:p></o:p></span></p>
            <pre><span lang=3D"EN-US">___________________________________=
____________<o:p></o:p></span></pre>
            <pre><span lang=3D"EN-US">USRP-users mailing list -- </span><=
a href=3D"mailto:usrp-users@lists.ettus.com" moz-do-not-send=3D"true"><sp=
an lang=3D"EN-US">usrp-users@lists.ettus.com</span></a><span lang=3D"EN-U=
S"><o:p></o:p></span></pre>
            <pre><span lang=3D"EN-US">To unsubscribe send an email to </s=
pan><a href=3D"mailto:usrp-users-leave@lists.ettus.com" moz-do-not-send=3D=
"true"><span lang=3D"EN-US">usrp-users-leave@lists.ettus.com</span></a><s=
pan lang=3D"EN-US"><o:p></o:p></span></pre>
          </blockquote>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:DE" lang=3D"EN-US">W=
ell,
              I guess the first thing to do is to run a factory system
              image on the device and make sure that it is sane--just
              program<br>
              =C2=A0 an uSD card with the factory image and run that to m=
ake
              sure it is sane.<br>
              <br>
              <o:p></o:p></span></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------PxxIP0MtW7myjePv05bGcvJk--

--===============3808651933819951723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3808651933819951723==--
