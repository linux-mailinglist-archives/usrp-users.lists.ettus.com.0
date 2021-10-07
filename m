Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBDB425A1A
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 19:56:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 419863846D0
	for <lists+usrp-users@lfdr.de>; Thu,  7 Oct 2021 13:56:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BbTBiJGm";
	dkim-atps=neutral
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 6DD4A38440C
	for <usrp-users@lists.ettus.com>; Thu,  7 Oct 2021 13:56:06 -0400 (EDT)
Received: by mail-oi1-f169.google.com with SMTP id n64so10152150oih.2
        for <usrp-users@lists.ettus.com>; Thu, 07 Oct 2021 10:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MoQJNYsxjbYci01zPq21LLDSx3kaWcXrvuNpMmWWxFA=;
        b=BbTBiJGm3mEB1144e3bKc50w1Z/zet+EZafz5P9U+BUEZBJyGSChKXuoVseb2cneND
         FHUqd3Bk1lKhFNuxjInOZAYkIrEGlEMxxrlSArk6hLaKjmZasx6Xdwg5KcoFtOlrGYIF
         2f7vyBVqbzpuDQNaJDiF/fLDrmu+KueQI6hnzietxDFBDJVzTjjWqfXhGnhrkQtgwEh3
         /xlvlSvHAt6D+wYNmjk1GKPBK8MBQHa76WnUXXRWAHoGAlbKF6guckIE65HLmnvUwZFE
         IchzphJhdeScl84tGwkD482OPnfrdf8NBcQYf5lZJFACKx6FEmJvnq/VZCLlBj8cvlYh
         kpEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MoQJNYsxjbYci01zPq21LLDSx3kaWcXrvuNpMmWWxFA=;
        b=DyLYdJqKd5DZfjPIwdgiVCxrU0s6WTVr3Av48ktUXgpsRZwt3UTKLR+ZvYeo+/gK2r
         Xqd78OeZ5QuHXrU0WwXT4rX9tvExEnrBirsRpEWVrm3k/4/j5VfQilJNnjLHnRx3DO4K
         bdsQ1KLZWDP3mNUINWcNJNYYqoTmz78GwNOJbevAW7PtUPk7aYMdcQ4eVXocykRZyFNe
         4Sh9DLQALRvd6ZdMbM6N7QY4ZafC/41gTPq8hFlsvPbaY7RI5K8TBGW3te5vgAmYwdLx
         wk79z6bajVurLfY40wQSAOlnRdCORMK1vrv7aF5ZeABjKKEnXUAcsk4s9C53P3qcWnsL
         B0Ew==
X-Gm-Message-State: AOAM533FxtVZXXAXIIqiXEg9six0rXsayZi1oFb5UH7vACVqYCqNr4Ir
	h8rYtGPK5kV0AhNtCHUOQZ4hQ1tWVH83YK29ca9nhHXoRlk=
X-Google-Smtp-Source: ABdhPJzJ9EyTJ2a+9RT3kwlW7TLMGsRcDEtmLJoSwzvvuvN+e+9bBMRtPJW/GoMoxvOsw+env+WePUgMAyhDvbLE4+A=
X-Received: by 2002:aca:e141:: with SMTP id y62mr7085650oig.124.1633629365522;
 Thu, 07 Oct 2021 10:56:05 -0700 (PDT)
MIME-Version: 1.0
References: <BN7PR05MB4500C27C573EBDAB9A2FD998D5B19@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
In-Reply-To: <CAB__hTQbAiyie8RxsnpE1arSu6sR7Zqxozz4VOpugNK2qSLGMQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 7 Oct 2021 13:55:54 -0400
Message-ID: <CAB__hTR35saQd6PsoATaN93woLe_0g1Bnq2qoLzPATkZmMnz7A@mail.gmail.com>
To: Jonathan Tobin <Tobin@augustusaero.com>
Message-ID-Hash: XUDZMDYY4OQMUCKXAB2SFF3F5BSWN66G
X-Message-ID-Hash: XUDZMDYY4OQMUCKXAB2SFF3F5BSWN66G
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 3.15 on Windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XUDZMDYY4OQMUCKXAB2SFF3F5BSWN66G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5177402509608952237=="

--===============5177402509608952237==
Content-Type: multipart/alternative; boundary="00000000000007093305cdc6fa84"

--00000000000007093305cdc6fa84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also, does the N310 have the 3.15 file system / MPM installed?

On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler <rkossler@nd.edu> wrote:

> Perhaps you are just finding the address of the N310 RJ45 Ethernet port,
> but not the address of the SFP+ ports? These are needed for UHD (at least
> one of them). Are you only connected via 1GB?  Do you have a direct link
> between host PC and one of the SFP+ ports?
> Rob
>
> On Thu, Oct 7, 2021 at 1:37 PM Jonathan Tobin <Tobin@augustusaero.com>
> wrote:
>
>> Hello =E2=80=93 I am attempting to install UHD 3.15 on my Windows 10 PC.=
 I am
>> able to ping and find the device, but currently unable to probe. Not sur=
e
>> what the issue is =E2=80=93 any recommendations?
>>
>>
>>
>> Command Prompt output:
>>
>>
>>
>> C:\Program Files\UHD3\bin>uhd_find_devices
>>
>> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;
>> UHD_3.15.0.HEAD-0-gaea0e2de
>>
>> --------------------------------------------------
>>
>> -- UHD Device 0
>>
>> --------------------------------------------------
>>
>> Device Address:
>>
>>     serial: 3218B5F
>>
>>     claimed: False
>>
>>     mgmt_addr: 192.168.10.2
>>
>>     product: n310
>>
>>     reachable: No
>>
>>     type: n3xx
>>
>>
>>
>> C:\Program Files\UHD3\bin>uhd_usrp_probe
>>
>> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.2; Boost_107200;
>> UHD_3.15.0.HEAD-0-gaea0e2de
>>
>> [INFO] [MPMD FIND] Found MPM devices, but none are reachable for a UHD
>> session. Specify find_all to find all devices.
>>
>> Error: LookupError: KeyError: No devices found for ----->
>>
>> Empty Device Address
>>
>>
>>
>>
>>
>> Thanks,
>>
>> Jonathan
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000007093305cdc6fa84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, does the N310 have the 3.15 file system / MPM instal=
led?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Oct 7, 2021 at 1:54 PM Rob Kossler &lt;<a href=3D"mailto:rkossl=
er@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Perhaps you are=
 just finding the address of the N310 RJ45 Ethernet port, but not the addre=
ss of the SFP+ ports? These are needed for UHD (at least one of them). Are =
you only connected via 1GB?=C2=A0 Do you have a direct=C2=A0link between ho=
st PC and one of the SFP+ ports?<div>Rob</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 7, 2021 at 1:37 P=
M Jonathan Tobin &lt;<a href=3D"mailto:Tobin@augustusaero.com" target=3D"_b=
lank">Tobin@augustusaero.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div>
<p class=3D"MsoNormal">Hello =E2=80=93 I am attempting to install UHD 3.15 =
on my Windows 10 PC. I am able to ping and find the device, but currently u=
nable to probe. Not sure what the issue is =E2=80=93 any recommendations?<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Command Prompt output:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_find_devices<u></u>=
<u></u></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<u></u><u></u></p>
<p class=3D"MsoNormal">--------------------------------------------------<u=
></u><u></u></p>
<p class=3D"MsoNormal">-- UHD Device 0<u></u><u></u></p>
<p class=3D"MsoNormal">--------------------------------------------------<u=
></u><u></u></p>
<p class=3D"MsoNormal">Device Address:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 serial: 3218B5F<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 claimed: False<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 =C2=A0=C2=A0mgmt_addr: 192.168.10.2<u></u><u>=
</u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 product: n310<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 reachable: No<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0 type: n3xx<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">C:\Program Files\UHD3\bin&gt;uhd_usrp_probe<u></u><u=
></u></p>
<p class=3D"MsoNormal">[INFO] [UHD] Win32; Microsoft Visual C++ version 14.=
2; Boost_107200; UHD_3.15.0.HEAD-0-gaea0e2de<u></u><u></u></p>
<p class=3D"MsoNormal">[INFO] [MPMD FIND] Found MPM devices, but none are r=
eachable for a UHD session. Specify find_all to find all devices.<u></u><u>=
</u></p>
<p class=3D"MsoNormal">Error: LookupError: KeyError: No devices found for -=
----&gt;<u></u><u></u></p>
<p class=3D"MsoNormal">Empty Device Address<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Jonathan<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--00000000000007093305cdc6fa84--

--===============5177402509608952237==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5177402509608952237==--
