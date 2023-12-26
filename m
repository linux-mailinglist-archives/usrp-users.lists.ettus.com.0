Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B1D81E917
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 19:59:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D129E38455A
	for <lists+usrp-users@lfdr.de>; Tue, 26 Dec 2023 13:59:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703617142; bh=uh8n6Unba9ISrnB4iyTwZUyHCCIpxzm/jKXao/8tJ5g=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ttSW5Q8MuNgtqJMRTftuUxXp6uNsoTuaaSoEniPdPZp2JQqwCoKO1iSz1OXyVpihx
	 x6fH4jL0IBfHJqlKWb6Nbc8+xicpaLfo+JPoRtijUl4ys/O6S7UbIf3rh5vN1SRazI
	 umVLkzrdexSzA5YpHYLcrZUnm148QhlFbhn01fSLNBk17G+ucVO6/3xpi8ZLaA5/r3
	 TCSi3P/paap5vPMh2kczuQu/G7TG0hKGj6a0ghQBaVy6ejZVj3cT8np/os3taig3g9
	 fG3sWaarfyhD1vmMT1bC6HnZWGibD+LTJ4gzwc+ypF1PifPlalEHSW2wkk75pr4ZbC
	 MEkCJPS7dWGFQ==
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 6797D3812C4
	for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 13:58:36 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W3LTvS1m";
	dkim-atps=neutral
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-20400d5b54eso3359040fac.1
        for <usrp-users@lists.ettus.com>; Tue, 26 Dec 2023 10:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703617115; x=1704221915; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zrE6jY46CjjMe/PkKvBm/nZAn1kbbHr8v87AczheFyw=;
        b=W3LTvS1mn2DlUNr18zalzLW38BbCTJZ+4y3N/s5MJjPObQbe+hcJ0eRYbyiDTTGrj7
         MlunxpXiEVK11dnACzNASVF+BbQfRydXPADQFLB+7I99JIy196OZnijAVWRlyFNNSGkD
         wpon5C3Laawwud/7NBDYTtEnPhtxWDRK59ragWEwVxb4MtvUjPuT20NnYYA39w2X3fkc
         7Ck9Eg51+UL3pPlKKfAXGiC3F4cZLmZnRX0nP/Ha133UeYhtWJL65P2kob0/1+3fszII
         oXfXFPUrgdwJqC+ag25vuLI3i5RqaVRVf6BPHGxC1GX46iLYP825oEhkwuMCLQD4r7kI
         9COA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703617115; x=1704221915;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zrE6jY46CjjMe/PkKvBm/nZAn1kbbHr8v87AczheFyw=;
        b=i4UyWDCqb4QzGGcIECFvAUjhiylMSyNEEn2jPKfrwE3eY071iDv+qrOoSVG70aSOPr
         6uXwrMY+XnzYlroSwjsmfcuu3oZbOh5HzZMVPJMGl/cMMAqHwBGO33NnVJEax64IJXFb
         1MpZE7ywYfZry264tZKCmxN/+CTbPCqAZMFMYVrKw8jNJRnIHfMPCgCaCKi9Ae6YION6
         uXftGxxB8PvBVf3RvQxM4VJ8el6MvptNraaj5I2rxPIkwjRTjbUHwb4fxy9YqzOriyGP
         DQmmzG33nNAOaDIYZZkLwq0tNb8nKcvAuHgoMoCLbrl6ewexNL3aih63MxYrC4L/jLl2
         px4A==
X-Gm-Message-State: AOJu0YwClGmywSyYZ1anXfKMHUCGj4p8mrzaHW1IcFtAGF6NLnfMK9zI
	YdUwFflzTYqk2r8JN3xgdJUsicZuHsUZqAVPolY=
X-Google-Smtp-Source: AGHT+IGua/kBRY5rEV53yUyjNdBy9OknCYCR9Ob9IDk7V5h4IyVf6rJkBxWiFYSjuqhxugxIBWuCL2j+F36BW1GlJSo=
X-Received: by 2002:a05:6870:b50c:b0:204:f0b:3bfd with SMTP id
 v12-20020a056870b50c00b002040f0b3bfdmr8904177oap.43.1703617115291; Tue, 26
 Dec 2023 10:58:35 -0800 (PST)
MIME-Version: 1.0
References: <CAJx0LdUcyGiZ8MP+-TOrt+xXZHBV7dZvaUzZHcDAwFq-b+Af=Q@mail.gmail.com>
 <CAJx0LdUVDmit9OQbUyViFhSg5Wo8oJVVv6mFov6B6z7OVFcONw@mail.gmail.com> <CAFche=hBP5ru=szta3YRgq7_C8M8+6f4d9OO99WKiE84asM0NA@mail.gmail.com>
In-Reply-To: <CAFche=hBP5ru=szta3YRgq7_C8M8+6f4d9OO99WKiE84asM0NA@mail.gmail.com>
From: German Farinas <german.farinas@gmail.com>
Date: Tue, 26 Dec 2023 13:58:23 -0500
Message-ID: <CAJx0LdWhBOcBX4MABWRbM28BK_+zGp50uyw4QJ5OS79g-MaNFg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: B7OBOXADIPUUHXTNJA7NVV6TUGN5G7MA
X-Message-ID-Hash: B7OBOXADIPUUHXTNJA7NVV6TUGN5G7MA
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design contains one or more evaluation cores that will cease to function after a certain period of time. This design should NOT be used in production systems.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B7OBOXADIPUUHXTNJA7NVV6TUGN5G7MA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1144106451464382275=="

--===============1144106451464382275==
Content-Type: multipart/alternative; boundary="000000000000fd851c060d6e440d"

--000000000000fd851c060d6e440d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, thanks for the clarification.

German

On Fri, Dec 22, 2023, 4:55 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi German,
>
> The critical warning sounds ominous but can be safely ignored. The
> licenses are included with Vivado, but Vivado gives the warning anyway. A=
s
> long as you have a Vivado license, and a bitstream was generated, the 10
> GbE IP should work fine.
>
> Wade
>
> On Thu, Dec 21, 2023 at 11:20=E2=80=AFAM German Farinas <german.farinas@g=
mail.com>
> wrote:
>
>> Update on this. Looking at the build log I found this:
>>
>> Evaluation cores found in this design:
>>     IP core 'ten_gig_eth_pcs_pma' (ten_gig_eth_pcs_pma_v6_0_19) was
>> generated using a design_linking license.
>>
>> Resolution: If a new IP Core license was added, in order for the new
>> license to be picked up, the current netlist needs to be updated by
>> resetting and re-generating the IP output products before bitstream
>> generation.
>>
>> How do I regenerate the IP core?
>>
>> Best,
>> German
>>
>> On Wed, Dec 20, 2023 at 10:48=E2=80=AFPM German Farinas <german.farinas@=
gmail.com>
>> wrote:
>>
>>> Hello,
>>>
>>> I ran the example in this guide (
>>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) to add a
>>> new FFT RFNoC block. I modify the default yaml file and run the followi=
ng
>>> command:
>>>
>>> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG -F ../../../
>>>
>>> Everything went well and the bitstream file was successfully generated.
>>> I uploaded to my USRP X300 with the following command: uhd_image_loader
>>> --args "type=3Dx300,addr=3D192.168.10.2" --fpga-path
>>> ./build/usrp_x300_fpga_HG.bin
>>>
>>> after loading the new image this is the output to the *uhd_usrp_probe
>>> --args type=3Dx300* command:
>>>
>>> RFNoC blocks on this device:
>>> |   |
>>> |   |   * 0/DDC#0
>>> |   |   * 0/DDC#1
>>> |   |   * 0/DUC#0
>>> |   |   * 0/DUC#1
>>> |   |   * 0/FFT#0
>>> |   |   * 0/Radio#0
>>> |   |   * 0/Radio#1
>>> |   |   * 0/Replay#0
>>> |     _____________________________________________________
>>> |    /
>>> |   |       Static connections on this device:
>>> |   |
>>> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
>>> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>>> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>>> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>>> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
>>> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
>>> |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
>>> |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
>>> |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
>>> |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
>>> |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
>>> |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
>>> |   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
>>> |   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
>>> |   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
>>> |   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
>>> |   |   * 0/SEP#6:0=3D=3D>0/FFT#0:0
>>> |   |   * 0/FFT#0:0=3D=3D>0/SEP#6:0
>>>
>>> Everything apparently looks good because the FFT was inserted. However
>>> during the last phase of the vivado tools flow, after synthesis, place,
>>> route, etc, during the *BUILDER: Writing bitfile *phase it issues the
>>> following supposedly critical warning:
>>>
>>> *CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This
>>> design contains one or more evaluation cores that will cease to functio=
n
>>> after a certain period of time. This design should NOT be used in
>>> production systems.*
>>>
>>> I think it may be the FFT IP core but I am not sure. I have Vivado
>>> v2021.1_AR76780 ML with an Enterprise Edition license. The version is 2=
021
>>> because this is the version supported by Ettus for building FPGA images=
. My
>>> license goes up to 2023.1 limit, but this should not affect me because =
I am
>>> using the 2021 version. I compiled the default images and I don't recal=
l
>>> receiving this critical warning.
>>>
>>> Anyone had the same issue? Any help or explanation to this? Is this
>>> something I should worry about ?
>>>
>>> Best regards,
>>> German
>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000fd851c060d6e440d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, thanks for the clarification.=C2=A0<div dir=3D"auto">=
<br></div><div dir=3D"auto">German=C2=A0</div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 22, 2023, 4:55 PM=
 Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div=
>Hi German,</div><div><br></div><div>The critical warning sounds ominous bu=
t can be safely ignored. The licenses are included with Vivado, but Vivado =
gives the warning anyway. As long as you have a Vivado license, and a bitst=
ream was generated, the 10 GbE IP should work fine.</div><div><br></div><di=
v>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Dec 21, 2023 at 11:20=E2=80=AFAM German Farinas &lt=
;<a href=3D"mailto:german.farinas@gmail.com" target=3D"_blank" rel=3D"noref=
errer">german.farinas@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Update on this. Looking a=
t the build log I found this:<div><br></div><div>Evaluation cores found in =
this design:<br>=C2=A0 =C2=A0 IP core &#39;ten_gig_eth_pcs_pma&#39; (ten_gi=
g_eth_pcs_pma_v6_0_19) was generated using a design_linking license.<br><br=
>Resolution: If a new IP Core license was added, in order for the new licen=
se to be picked up, the current netlist needs to be updated by resetting an=
d re-generating the IP output products before bitstream generation.<br></di=
v><div><br></div><div>How do I regenerate the IP core?</div><div><br></div>=
<div>Best,</div><div>German</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 20, 2023 at 10:48=E2=80=AFPM G=
erman Farinas &lt;<a href=3D"mailto:german.farinas@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">german.farinas@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div=
><br></div><div>I ran the example in this guide (<a href=3D"https://kb.ettu=
s.com/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank" rel=3D"noref=
errer">https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>) to a=
dd a new FFT RFNoC block. I modify the default yaml file and run the follow=
ing command:</div><div><br></div><div>rfnoc_image_builder -y x300_with_fft.=
yml -t X300_HG -F ../../../<br></div><div><br></div><div>Everything went we=
ll and the bitstream=C2=A0file was successfully=C2=A0generated. I uploaded=
=C2=A0to my USRP X300 with the following command: uhd_image_loader --args &=
quot;type=3Dx300,addr=3D192.168.10.2&quot; --fpga-path ./build/usrp_x300_fp=
ga_HG.bin</div><div><br></div><div>after loading the new image this is the =
output to the <i>uhd_usrp_probe --args type=3Dx300</i> command:</div><div><=
br></div><div>RFNoC blocks on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=
=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 =
* 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/FFT#0<br>=
| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<br>| =C2=A0 =
| =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 __________________________________=
___________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
Static connections on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=
=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&g=
t;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =
=C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/Rad=
io#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1=
:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 | =C2=A0=
 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&=
gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>| =C2=
=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0/DDC#=
1:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0=
:0<br>| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =C2=
=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#0:1=
=3D=3D&gt;0/SEP#5:0<br>| =C2=A0 | =C2=A0 * 0/SEP#6:0=3D=3D&gt;0/FFT#0:0<br>=
| =C2=A0 | =C2=A0 * 0/FFT#0:0=3D=3D&gt;0/SEP#6:0<br></div><div><br></div><d=
iv>Everything apparently=C2=A0looks good because the FFT was inserted. Howe=
ver during the<b>=C2=A0</b>last phase of the vivado tools flow, after synth=
esis, place, route, etc, during the=C2=A0<b>BUILDER: Writing bitfile </b>ph=
ase it issues the following supposedly=C2=A0critical warning:</div><div><br=
></div><div><i>CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warnin=
g: This design contains one or more evaluation cores that will cease to fun=
ction after a certain period of time. This design should NOT be used in pro=
duction systems.</i><br></div><div><i><br></i></div><div>I think it may be =
the FFT IP core but I am not sure. I have Vivado v2021.1_AR76780 ML with an=
 Enterprise Edition license. The version is 2021 because this is the versio=
n supported by Ettus for building FPGA images. My license goes up to 2023.1=
 limit, but this should not affect me because I am using the 2021 version. =
I compiled the default images and I don&#39;t=C2=A0recall receiving this cr=
itical warning.</div><div><br></div><div>Anyone had the same issue? Any hel=
p or explanation=C2=A0to this? Is this something I should worry about ?</di=
v><div><br></div><div>Best regards,</div><div>German</div><div><br></div></=
div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000fd851c060d6e440d--

--===============1144106451464382275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1144106451464382275==--
