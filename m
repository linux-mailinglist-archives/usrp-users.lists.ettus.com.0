Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 589E96099E2
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 07:36:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BC988383BC5
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 01:36:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666589794; bh=YRv2rvI1od3p6z4EtoKj7KCizfsiAgEgOCPA/6tOpfQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YfHBTkIlKmWyNT8q/lzQukWSjbqgQJOLWJyyYxqmfSdmMrFdc7pvomTCMJx3nZLhL
	 sr9Jx9NpM5Iwcct5J2awn5asGPU++2XDdSMVVmGaecbBaXXwhodWdLuXSEgbIGqhIx
	 fNICBpA/HW0VRx35BCjfB9JqBQsACH7DyQ3RWCbNXtv1hH3AN/cUSEgneyEiG1suQC
	 XeFAsTe4lkCy6bVv3l2uvuxKkjpJjc3WKmcTBp0MMY3iYVay/pgS/F8bnI3SSOKClw
	 jZF33QF71m/6mv4BogAdfLeaON9c0dFtqSGa1tS+/y7N4q2J/dQZM5YEeTgycAH0Ky
	 5czVrg81s0TOw==
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 003F3381400
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 01:35:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ao2LY798";
	dkim-atps=neutral
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-13b23e29e36so10026238fac.8
        for <usrp-users@lists.ettus.com>; Sun, 23 Oct 2022 22:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bzB1LMNX2JBBKNH7nSyEi6MhKkxoB5Youo5QqF/fuIw=;
        b=ao2LY798VKjiRVptiQlw2G5UbymVC1mzxQLXFQnouUQzpc2O4BY5GlkC6BE+pZXVCC
         Vo3yfJLv/7gI/P47qX0oefD3ZXI3y6pzHWdo5LgGz9rGUYCn7qPhnspYMfpnGxHp7ylY
         IcPF/eWGHoXlIYTSn78E2cZCWt9tQEt3NOei+YjLIcEuQXGlbqeGT/xeo/rRfuBTXZW1
         kuFNkKA0m8kLuD357UwSBPrIMzo68/hyGDAxNl6tw4zpFFp8TYaPnw7G34XguGaEJUto
         Ufylme5aRxc4/NRR02B35g3qIyb/oabnY0RAEE8drwVjvwEauT0C38H3lOFBLLK+7Yuc
         W2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzB1LMNX2JBBKNH7nSyEi6MhKkxoB5Youo5QqF/fuIw=;
        b=2uh3IWc6OpV8GampAkb0xqA3GHYeejFCrW8TNef+etuzPhqR1EBHJtXxwOugi+Kb53
         9zxCDb4m0T+uREXoMoJLm/KSKjmpu1qx2Klpr1N3pC60XhCB0Q5dD91V4V6N3KlOKB7P
         nrbKCBhET7N8N5SWrXSoenEjL5gkGv1IGkxJ+1zeqBxeEw1LfM0PLEbrjHbGdrGkXQbP
         FoJWogIhTQvCP/50zQp73DMZaKVLtvZaqufLcdGCHxWS+S4/6KzJ8Xk02BHdkWscbori
         DYE3Crv2ujrmdMZE056ZJBHBc67SaaH+ZiuBf0YfO8bconD6cpkKQE0JuIpTFUBBfvti
         mOSw==
X-Gm-Message-State: ACrzQf3QwRBDmKMp8OQaqxaHIWYfH+YdbwqaKg4LaHgXq8GLST4aB60J
	a1qk+78XzM/O/UALR1wZuWByiVJr+TRCJq9BJrtsPpA=
X-Google-Smtp-Source: AMsMyM5xrVlhdnXG7VIgU0C54hKPVNtYrR8CCU0z/MaSrlKH2Lz4BdbIk7GKvkmq7n7UPYvM0Zk2hdHbXDLCVxPTRx0=
X-Received: by 2002:a05:6870:659f:b0:132:78e0:6e6b with SMTP id
 fp31-20020a056870659f00b0013278e06e6bmr18884286oab.8.1666589728002; Sun, 23
 Oct 2022 22:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-PGwwXgn5_Q0T_nSXPYm5vXfV+XsNx+i6k=7UCSEnCCQ@mail.gmail.com>
 <CAFche=hGqYWBwGMAhcNbNzcOhC5Uez0WNvu4n59aLZjyestFCg@mail.gmail.com>
In-Reply-To: <CAFche=hGqYWBwGMAhcNbNzcOhC5Uez0WNvu4n59aLZjyestFCg@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Mon, 24 Oct 2022 08:35:17 +0300
Message-ID: <CALooG39+1kJ8wY0ExgDRnRa0oHv-CsO3MSuSAyfOJW2USe1iWw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: 5ZGG3YEQCOL2YEFTA7G3E7WZMZHEAWWW
X-Message-ID-Hash: 5ZGG3YEQCOL2YEFTA7G3E7WZMZHEAWWW
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Debugging E320 with JTAG causes a problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5ZGG3YEQCOL2YEFTA7G3E7WZMZHEAWWW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7786707065304227030=="

--===============7786707065304227030==
Content-Type: multipart/alternative; boundary="000000000000b955fb05ebc128e5"

--000000000000b955fb05ebc128e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wade,
thank you very much for your answer. I have successfully debugged it. Can
you also help me with my original problem?
I am using the E320 and UHD 4.0 version. I want to save 2 ADC samples into
block ram and read them later. For that reason, I have a trigger which
starts the saving process. When I saved 2 ADC samples into block ram and
read them later, I realized that some samples are zero. I debugged it and I
saw that valid signals of ADCs are not always 1. They sometimes switch back
to 0. While doing that, I have used the RFNoC-example as a starting point.
I don't know what the real problem is, but I examined different examples
and I realized that they used different files in their noc_shell files. For
example, the gain example used chdr_to_axis_pyld_ctxt which generates
payload and context data. But, ddc example used chdr_to_axis_data which
generates only axis datas. Therefore; I have tried different files in
noc_shell, but none of them worked as  I expected. I don't want to take all
the examples to the host or anywhere else. I just want all ADC samples to
go into my custom RFNoC-block. I don't want any other datas such as
metadatas or anything else, but only ADC samples.

My System:
Device : E320
OS : Ubuntu 20.04.4
UHD: 4.0

Kind Regards,
Yasir.

Wade Fife <wade.fife@ettus.com>, 21 Eki 2022 Cum, 20:34 tarihinde =C5=9Funu
yazd=C4=B1:

> Hi Yasir,
>
> The E320 runs Linux on the SoC of FPGA. There are devices in the FPGA
> which are visible to the Linux kernel, so updating the FPGA without first
> bringing down those devices causes problems. uhd_image_loader takes care =
of
> all this for you. You can use uhd_image_loader to first load your bitstre=
am
> (the one you want to debug over JTAG), then use the Vivado hardware manag=
er
> to connect to that bitstream via JTAG after it is already loaded.
>
> Wade
>
> On Thu, Oct 20, 2022 at 3:31 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneou=
s11@gmail.com>
> wrote:
>
>> Hi everyone,
>> I am trying to debug E320 with JTAG. I connected to the E320 JTAG consol=
e
>> with Vivado 2019.1 hardware manager. Vivado successfully recognized E320=
.
>> Then, I loaded my custom bitfile. The problem is E320 started to give me
>> errors saying that "IO Error during GSM initialization." I thought that
>> might be because of the bit file. Therefore; I tried to load the default
>> bit file, but the same problem occurred again. When I use uhd_image_load=
er,
>> bitfiles work without problem. But when I wanted to debug it with JTAG a=
nd
>> loaded the bit file with jtag, uhd_usrp_probe gave me an error message. =
Can
>> anyone help me with this, please? What might be the problem?
>>
>> Kind Regards,
>> Yasir.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000b955fb05ebc128e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Wade,<div>thank you very much for your answer. I have s=
uccessfully debugged it. Can you also help me with my original problem?</di=
v><div>I am using the E320 and UHD 4.0 version. I want to save 2 ADC sample=
s into block ram and read them later. For that reason, I have a trigger whi=
ch starts the saving process. When I saved 2 ADC samples into block ram and=
 read them later, I realized that some samples are zero. I debugged it and =
I saw that valid signals of ADCs are not always 1. They sometimes switch ba=
ck to 0. While doing=C2=A0that, I have used the RFNoC-example as a starting=
 point. I don&#39;t know what the real problem is, but I examined different=
 examples and I realized that they used different files in their noc_shell =
files. For example, the gain example used chdr_to_axis_pyld_ctxt which gene=
rates payload and context data. But, ddc example used chdr_to_axis_data whi=
ch=C2=A0 generates=C2=A0only axis datas. Therefore; I have tried different =
files in noc_shell, but none of them worked as=C2=A0 I expected. I don&#39;=
t want to take all the examples to the host or anywhere else. I just want a=
ll ADC samples to go into my custom RFNoC-block. I don&#39;t want any other=
 datas such as metadatas or anything else, but only ADC samples.</div><div>=
<br></div><div>My System:</div><div>Device : E320</div><div>OS : Ubuntu 20.=
04.4</div><div>UHD: 4.0</div><div><br></div><div>Kind Regards,</div><div>Ya=
sir.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@et=
tus.com</a>&gt;, 21 Eki 2022 Cum, 20:34 tarihinde =C5=9Funu yazd=C4=B1:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Hi Yasir,</div><div><br></div><div>The E320 runs Linux on the SoC of FPG=
A. There are devices in the FPGA which are visible to the Linux kernel, so =
updating the FPGA without first bringing down those devices causes problems=
. uhd_image_loader takes care of all this for you. You can use uhd_image_lo=
ader to first load your bitstream (the one you want to debug over JTAG), th=
en use the Vivado hardware manager to connect to that bitstream via JTAG af=
ter it is already loaded.<br></div><div><br></div><div>Wade<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Oct 20, 2022 at 3:31 AM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailt=
o:simultaneous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hi everyone,=C2=A0<div>I am trying=C2=A0to debug E320 with JTAG=
. I connected to the E320 JTAG console with Vivado 2019.1=C2=A0hardware man=
ager. Vivado successfully recognized=C2=A0E320. Then, I loaded my custom bi=
tfile. The problem is E320 started to give me errors saying that &quot;IO E=
rror during GSM initialization.&quot; I thought that might be because=C2=A0=
of the bit file. Therefore; I tried to load the default bit file, but the s=
ame problem occurred=C2=A0again. When I use uhd_image_loader, bitfiles work=
 without problem. But when I wanted to debug it with JTAG and loaded the bi=
t file with jtag, uhd_usrp_probe gave me an error message. Can anyone help =
me with this, please? What might be the problem?</div><div><br></div><div>K=
ind Regards,</div><div>Yasir.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000b955fb05ebc128e5--

--===============7786707065304227030==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7786707065304227030==--
