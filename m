Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 859887942B8
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 20:05:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B2DD9385228
	for <lists+usrp-users@lfdr.de>; Wed,  6 Sep 2023 14:05:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694023512; bh=LdK/QZT6WQi/nrxLh4EvyaaONqLnfO1JPuPt8tFPGKE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Dj/VfL5XkkhJnsaE7RU3muM+3b9FD2rmzqUTwOw0lznRBZZBiAamOSZ2H66ot62Tj
	 Txckh/LjhpYa4BK6b9E2knu3C5acHyoD0HCNTgm0bgVFQDTuTfekJvN2S6BI9VCEHj
	 J5RTkhiRzB3kVEppHaF5RK4n4KgNVCr4+EdsB/x3WjwS7JpyQRFKwPq3j9knG/poeM
	 hShFyKgxfyMhX3hMYKsELzCZOCOC1gcaYbnEF+tq1kzHoIB37qHdOLO1pJw1obxUEu
	 9BYpqCmidLx+iiUh+xenJsY061IdT8T61B9yPWbYr2UFNGbR9noCUfoKdz1FFOnX0D
	 bQ9w47AkjdvMQ==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2CFB7383FC0
	for <usrp-users@lists.ettus.com>; Wed,  6 Sep 2023 14:04:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="VXFwo/Bp";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9a65f9147ccso2601266b.1
        for <usrp-users@lists.ettus.com>; Wed, 06 Sep 2023 11:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1694023477; x=1694628277; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z5Ptj8GAewP2EgVcGIEDbuQIxQR7Ca2czl2vMskEgLI=;
        b=VXFwo/BplpgM3Y20P/Y8tHhWhfiFD2JFjONpdnltaYW8dwoZXlwS6uIoC+c3eCU6CA
         GTZH+ItDitns04SLFxOCCSbHASuH+o3spBCI9a7akq52+wpN0F+u8NBAiMReKmz9RNeD
         bwzRefoCYkwl25e8cYZy3kA2K1M69Y30BRB4GP+H+239gRoSppi0dszCt6AY2zgCYpLi
         JeG8+HHcdEuCGGCjFLm+fUW9r28YRe+i+cF6+6AnJjtByk60zj8dKrVttelS2Zfn4Lhz
         8wlTDYXlvdpIHjpHBNNiz73ZBA77LK24rBVZT9uxM2KZ8faMEV/+GSh3R3mO7WVSHc9M
         xq3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694023477; x=1694628277;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z5Ptj8GAewP2EgVcGIEDbuQIxQR7Ca2czl2vMskEgLI=;
        b=J/6ZmSTo7A8kgaUb9DeCe/I6umSmHX65jNeyHT0iGLUQCvfZ5KMBfzNxSU5vwJvqbO
         fuA3nDx32Ye62DOB3GZBdUjKIdJcLb09UegKHGM3mAtm9WoVLH2Cz3U7aGqQewK6uCme
         4RW02Ij6nMPkhZVpcjAAzD1qopfUrLUMsoIYHgodbHXP2qOgCFwstWHw+MveWM1pk56t
         KRqYB9hUczXHFACz+AcX7iVa61qWlDwE7dB/CkMeva1pvKG2OsNeW0Yp1Pj5aX9V9zUh
         BqHs7PT1LKyq/rAZ/yyUNQmXlYHyRSRDFLZKTbmJ7RpanX5y7TyqapGn/bGaxcgEiDbc
         Wprg==
X-Gm-Message-State: AOJu0YwU2Fc6VT8oKrmJbN9Gh2BpqNieBzgoNVjwPVQHjVCLj80NtZyD
	CrC5ql6OyxhTrc6pA206fNgUpNgL5w3JwBRUViNkhBCLMP0lpNVrXKd0Lw==
X-Google-Smtp-Source: AGHT+IEsOFuGcJxJ2xkvrECegrQH+tJo4YrIzSOnuU6ImXeKUD1MPyk+JAIb9sxlGxZbfpdz2qodd1mWrWO0fJ04IuI=
X-Received: by 2002:a17:906:5dce:b0:9a5:c4ae:9fd4 with SMTP id
 p14-20020a1709065dce00b009a5c4ae9fd4mr2573839ejv.59.1694023476889; Wed, 06
 Sep 2023 11:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ@lists.ettus.com>
In-Reply-To: <56U5fQPrSZQQTxt8CwG18eBbpERYg4OFOSFQ2WQ@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 6 Sep 2023 13:04:21 -0500
Message-ID: <CAFche=i9sa2Gev-8hruiqV5trgON_h405Foi4dRuAasJv3LQOA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: E7BWWZS755YESOGUV5YBDEKSS6MHAVJO
X-Message-ID-Hash: E7BWWZS755YESOGUV5YBDEKSS6MHAVJO
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ettus x410, Device is in bad state error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E7BWWZS755YESOGUV5YBDEKSS6MHAVJO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8974182134931879398=="

--===============8974182134931879398==
Content-Type: multipart/alternative; boundary="00000000000094e66d0604b49389"

--00000000000094e66d0604b49389
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

Update the filesystem on the X410 to match the UHD version you're using on
your host computer (and the bitstream you're trying to load):

https://kb.ettus.com/USRP_X410_Getting_Started_Guide#Updating_Filesystems

Thanks,

Wade

On Wed, Sep 6, 2023 at 12:30=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I am currently trying to update the FPGA on the ettus, but I am getting
> the following error
>
> mirsl102b@mirsl102b-Legion-T7-34IMZ5:~/workarea/august_bitstreams/sep5$
> uhd_image_loader --args type=3Dx4xx,mgmt_addr=3D192.168.10.2,fpga=3DX4_20=
0
>
> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;
> UHD_4.4.0.HEAD-0-g5fac246b
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D329053B,name=
=3Dni-x4xx-329053B,fpga=3Dn/a,claimed=3DFalse,skip_init=3D1
>
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully
> initialized!
>
> [INFO] [MPMD] Claimed device without full initialization.
>
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
>
> [INFO] [MPM.PeriphManager] Installing component `fpga'
>
> [INFO] [MPM.PeriphManager] Installing component `dts'
>
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
>
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
>
> [ERROR] [MPM.RPCServer] Error in update_component while resetting:
> 'NoneType' object has no attribute 'tear_down'
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D329053B,name=
=3Dni-x4xx-329053B,fpga=3Dn/a,claimed=3DFalse,find_all=3D1
>
> [WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fully
> initialized!
>
> Error: RuntimeError: Device is in bad state: Major compat number mismatch
> for component 'FPGA': Expected: 7.9 Actual: 8.0
>
> How do I resolve this =E2=80=9Cbad state=E2=80=9D error.
>
> Thanks
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000094e66d0604b49389
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Joe,</div><div><br></div><div>Update the filesyste=
m on the X410 to match the UHD version you&#39;re using on your host comput=
er (and the bitstream you&#39;re trying to load):</div><div><br></div><div>=
<a href=3D"https://kb.ettus.com/USRP_X410_Getting_Started_Guide#Updating_Fi=
lesystems">https://kb.ettus.com/USRP_X410_Getting_Started_Guide#Updating_Fi=
lesystems</a></div><div><br></div><div>Thanks,</div><div><br></div><div>Wad=
e<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Sep 6, 2023 at 12:30=E2=80=AFPM &lt;<a href=3D"mailto:jm=
aloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p><br></p><p>I am current=
ly trying to update the FPGA on the ettus, but I am getting the following e=
rror </p><p>mirsl102b@mirsl102b-Legion-T7-34IMZ5:~/workarea/august_bitstrea=
ms/sep5$ uhd_image_loader --args type=3Dx4xx,mgmt_addr=3D192.168.10.2,fpga=
=3DX4_200</p><p><code>[INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_1071=
00; UHD_4.4.0.HEAD-0-g5fac246b</code></p><p><code>[INFO] [MPMD] Initializin=
g 1 device(s) in parallel with args: mgmt_addr=3D192.168.10.2,type=3Dx4xx,p=
roduct=3Dx410,serial=3D329053B,name=3Dni-x4xx-329053B,fpga=3Dn/a,claimed=3D=
False,skip_init=3D1</code></p><p><code>[WARNING] [MPM.PeriphManager] Cannot=
 run deinit(), device was never fully initialized!</code></p><p><code>[INFO=
] [MPMD] Claimed device without full initialization.</code></p><p><code>[IN=
FO] [MPMD IMAGE LOADER] Starting update. This may take a while.</code></p><=
p><code>[INFO] [MPM.PeriphManager] Installing component `fpga&#39;</code></=
p><p><code>[INFO] [MPM.PeriphManager] Installing component `dts&#39;</code>=
</p><p><code>[INFO] [MPMD IMAGE LOADER] Update component function succeeded=
.</code></p><p><code>[INFO] [MPM.RPCServer] Resetting peripheral manager.</=
code></p><p><code>[ERROR] [MPM.RPCServer] Error in update_component while r=
esetting: &#39;NoneType&#39; object has no attribute &#39;tear_down&#39;</c=
ode></p><p><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with ar=
gs: mgmt_addr=3D192.168.10.2,type=3Dx4xx,product=3Dx410,serial=3D329053B,na=
me=3Dni-x4xx-329053B,fpga=3Dn/a,claimed=3DFalse,find_all=3D1</code></p><p><=
code>[WARNING] [MPM.PeriphManager] Cannot run deinit(), device was never fu=
lly initialized!</code></p><p><code>Error: RuntimeError: Device is in bad s=
tate: Major compat number mismatch for component &#39;FPGA&#39;: Expected: =
7.9 Actual: 8.0</code></p><p>How do I resolve this =E2=80=9Cbad state=E2=80=
=9D error.</p><p>Thanks</p><p>Joe</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000094e66d0604b49389--

--===============8974182134931879398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8974182134931879398==--
