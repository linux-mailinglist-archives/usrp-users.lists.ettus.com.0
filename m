Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F12060F703
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 14:18:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2C5B383D00
	for <lists+usrp-users@lfdr.de>; Thu, 27 Oct 2022 08:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666873134; bh=V8zri7DI6XcCmwYmP9eK3/UNwIYeVONx8t7IcDmWEzM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=n/EmtEdeLs9+Kfjj0lLnVSMOSocFMEpGHgjB8P7HKuylcuS3l0WH5jUf1dzS9tXK0
	 rYFwP9+3eyqlbxgEh5p/QbASZCotB1T2NdkXlqKzFAiIR2lVW5/AZw4sn8XkRD44M1
	 5rjaEIRG4A1TxKAbWDhni7kmMNjp3DUN4tylExnfnt8WsTWIKWMDlnUrYJlA/tgsuL
	 Ug8IO6nDMkdmMkSljFA73yE7B8mOR4tfBp1kGdoyrbvqVplx2C3pX426SpnTy/5htI
	 ovCqqmmwCQOUP7G8RMhKxytjqCyrLuByBkkUUog0hfHt8O3CUqbL7lcYeliDpH2XB5
	 06hG3o1q2yexg==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A23A0380DDC
	for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 08:17:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CCaWyzHU";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id t25so3958031ejb.8
        for <usrp-users@lists.ettus.com>; Thu, 27 Oct 2022 05:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YrlBdyHyHwhrVucPTveSXv3HLo72UTaHv/7IrJ17EcM=;
        b=CCaWyzHU0Atd4zZo4l8VKX9NEy7VNnbFwqT26aW5IeiQRJ0mDCuYPVEDVEyb2w1mxe
         8iCvHuZNxOpdfD9xL/5SMDU/ZhY87wrVUObcyPMSRvteN1I9lskHpIygbdRCI1ERAg2Z
         UvPr1KoADkhIj0euXRTrMHMV6o1qMnvZnTb1lqdZCJnW97zQQZTFa0RkvjSFKrIEZKXj
         SJ1d9OKRK4s+gEE5JPvfQAV5zAYMiydmlKyd027eVVoHZ1QMPNW7YFQOkQFqukva1x5Q
         wyUMxTm6vlcGwmmfFclI3peUgKrom9Z/k8wm4xnNUznAHA/g7/quIyvJQO/yE7fXWAog
         N3cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YrlBdyHyHwhrVucPTveSXv3HLo72UTaHv/7IrJ17EcM=;
        b=nS5wQm3VOZpoW+WVuTLYUCEzNg5Njnycn3+0V79nWyN14hM6HYWZJhH2ALIU67AoKo
         zBj4DOnHNGs2Wb26Llk+56VJQasA/hAHBViUlqvqsvUE6T+sY+t8dE0hc4UAxt9hFihj
         91SkcEDd4xm7ENCzY0PAxHWGv0HHscHPPIsGZ+Ie+LVs2aw6YODA92HXQ1J9Nw+iSEKv
         7nBppdvyg37TkW9XEl7c2HFzHkm5Mef2W65QJ66W7flssKGXBftHQEwfxk03kinrsve2
         pv2CBQINAdfiEurhu1j/BUCjGjOoIX+ACgLnNBuG98LAS/PZM0Mv7yt2kATtVDU6PY4C
         YkUA==
X-Gm-Message-State: ACrzQf2BJRWCaoxrDWXI/Jd3NoRcEHzvmsh6j2A8czB2MiOPHQWUlbo5
	lmiywW7YUZiwA0tZaik2KLKc9zGt6UkGa+IF8yDmbaa63NA=
X-Google-Smtp-Source: AMsMyM7Ilo/5R2yaCPLW4jN0Vgsca8y69waDFUio3Nmhb/rlvg9vCsD1Fyr1LIisVmrvis3NsAAL7xFLneq0D3OtLk0=
X-Received: by 2002:a17:906:5a6a:b0:7a6:bad5:8295 with SMTP id
 my42-20020a1709065a6a00b007a6bad58295mr20049791ejc.647.1666873059334; Thu, 27
 Oct 2022 05:17:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUZdQCE8UvxQgb3_cZ+6W-YsL-DLGNvd0VVdOBzF-irUQ@mail.gmail.com>
 <CAFche=igeFLR8XLE+Q3H_0UOTYbBbbqig10K1Atn-HJxhYOAWg@mail.gmail.com>
In-Reply-To: <CAFche=igeFLR8XLE+Q3H_0UOTYbBbbqig10K1Atn-HJxhYOAWg@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 27 Oct 2022 14:17:27 +0200
Message-ID: <CAG16vQVAOVYQzuDeGtVK-XX01SBHQKB_AUHodBSNqdXz8yvxSw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: EE3PJABDLWZ6ORROCZYKVGBROBDYSVS7
X-Message-ID-Hash: EE3PJABDLWZ6ORROCZYKVGBROBDYSVS7
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI-RAM memory width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EE3PJABDLWZ6ORROCZYKVGBROBDYSVS7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7855084612137955069=="

--===============7855084612137955069==
Content-Type: multipart/alternative; boundary="000000000000965fe405ec0320fd"

--000000000000965fe405ec0320fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,

Thanks for the answer and sorry for the late reply.

I had seen that UHD 4.3 has this line in the io_signatures.yml (axi_4mm
part):
"# AXI4 memory-mapped interface (up to 4 x 512-bit data and 48-bit
address)" So that's why I had asked if more than 64-bit width was possible.
Anyway, 64-bits is okay for my application. Thanks again!

Kind regards,
Maria.

El vie, 21 oct 2022 a las 19:28, Wade Fife (<wade.fife@ettus.com>) escribi=
=C3=B3:

> Right, it needs to be 64 bits to work without other changes. That's the
> width of the AXI Interconnect to which the axi_ram block connects. Howeve=
r,
> the connection to the DRAM is 256 bits. That gets shared across 4 ports b=
y
> the AXI Interconnect, and each port could potentially be reading and
> writing simultaneously. This is why the default is to provide four 64-bit
> ports.
>
> It would be unusual to need more than 64 bits per port, since you're
> limited to 64-bits per port by RFNoC on E320. However, you could make it
> wider if you modify the AXI Interconnect appropriately and update the IO
> signatures.
>
>
> https://github.com/EttusResearch/uhddev/tree/UHD-4.0/fpga/usrp3/top/e320/=
ip/axi_intercon_4x64_256_bd
>
> https://github.com/EttusResearch/uhddev/blob/UHD-4.0/fpga/usrp3/top/e320/=
e320_core.v#L610
>
> Wade
>
> On Thu, Oct 20, 2022 at 5:27 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wro=
te:
>
>> Hi all,
>>
>> I am using UHD 4.0 in an E320 USRP.
>> I would like to use the axi_ram_fifo block to communicate with the DMA,
>> but I have some doubts about it.
>> I notice that the maximum width I can test is 64, if I try 128 or 256 it
>> fails. The io_signatures.yml file has this line:
>>
>> Axi_ram:
>> Type: axi4_mm_4x64_4g
>>
>> Does this mean it only supports 64-bit width? Is there any way to
>> increase the width?
>>
>> Kind Regards,
>> Maria
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000965fe405ec0320fd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div><br></div><div>Thanks for the answer and sorr=
y for the late reply.=C2=A0</div><div><br></div><div>I had seen that UHD 4.=
3 has this line in the io_signatures.yml (axi_4mm part):<br><span class=3D"=
gmail-pl-c" style=3D"box-sizing:border-box;color:rgb(110,119,129);font-fami=
ly:ui-monospace,SFMono-Regular,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Lib=
eration Mono&quot;,monospace;font-size:12px;white-space:pre">&quot;#</span>=
<span style=3D"color:rgb(110,119,129);font-family:ui-monospace,SFMono-Regul=
ar,&quot;SF Mono&quot;,Menlo,Consolas,&quot;Liberation Mono&quot;,monospace=
;font-size:12px;white-space:pre"> AXI4 memory-mapped interface (up to 4 x 5=
12-bit data and 48-bit address)&quot;
</span>So that&#39;s why I had asked if more than 64-bit width was possible=
. Anyway, 64-bits is okay for my application. Thanks again!<br><br>Kind=C2=
=A0regards,<br>Maria.</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">El vie, 21 oct 2022 a las 19:28, Wade Fife (&lt;=
<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.co=
m</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Right, it needs to be 64 bits to work with=
out other changes. That&#39;s the width of the AXI Interconnect to which th=
e axi_ram block connects. However, the connection to the DRAM is 256 bits. =
That gets shared across 4 ports by the AXI Interconnect, and each port coul=
d potentially be reading and writing simultaneously. This is why the defaul=
t is to provide four 64-bit ports.<br></div><div><br></div><div></div><div>=
It would be unusual to need more than 64 bits per port, since you&#39;re li=
mited to 64-bits per port by RFNoC on E320. However, you could make it wide=
r if you modify the AXI Interconnect appropriately and update the IO signat=
ures.</div><div><br></div><div>

<a href=3D"https://github.com/EttusResearch/uhddev/tree/UHD-4.0/fpga/usrp3/=
top/e320/ip/axi_intercon_4x64_256_bd" target=3D"_blank">https://github.com/=
EttusResearch/uhddev/tree/UHD-4.0/fpga/usrp3/top/e320/ip/axi_intercon_4x64_=
256_bd</a> <br></div><div><a href=3D"https://github.com/EttusResearch/uhdde=
v/blob/UHD-4.0/fpga/usrp3/top/e320/e320_core.v#L610" target=3D"_blank">http=
s://github.com/EttusResearch/uhddev/blob/UHD-4.0/fpga/usrp3/top/e320/e320_c=
ore.v#L610</a></div><div></div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oc=
t 20, 2022 at 5:27 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail=
.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<br><br>I=
 am using UHD 4.0 in an E320 USRP.<br>I would like to use the axi_ram_fifo =
block to communicate with the DMA, but I have some doubts about it.<br>I no=
tice that the maximum width I can test is 64, if I try 128 or 256 it fails.=
 The io_signatures.yml file has this line:<br><br>Axi_ram:<br>Type: axi4_mm=
_4x64_4g<br><br>Does this mean it only supports 64-bit width? Is there any =
way to increase the width?<br><br>Kind Regards,<br>Maria<br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000965fe405ec0320fd--

--===============7855084612137955069==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7855084612137955069==--
