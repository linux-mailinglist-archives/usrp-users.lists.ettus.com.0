Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8244D81CF95
	for <lists+usrp-users@lfdr.de>; Fri, 22 Dec 2023 22:56:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B0AB384EB0
	for <lists+usrp-users@lfdr.de>; Fri, 22 Dec 2023 16:56:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703282178; bh=pEu7KzGA/HA6nebeClXDMBFZIX96zKhOJFMYeMazblI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wvuIVT3unLO7wPnimoS3SvEhq8DUW9mj0iQ79HicjJstbdNjY4SyYlgg4W4ZreLRe
	 G/PpEAkHBRfr9YmPWD7mOVAqqDVn10YiJ0Kw+5irAmA6n825scwN2QeFqroK1ZPGsT
	 EVIGz3wjRerrkDjrSTz0c3pI05ys7RgrLmlG85qB8r/YdfK+uvg6E4W/A7a3dITLMf
	 itR14cw2FU8999jGe3KmH3atBkaaBsGSsKhNPBo5+A6MajmMsZeBNsYQd2p9F1/tt4
	 Vsdr+shIR86s97Lvu3n2S8ugRusRhHnFnggVwQn3mYv4+KbjzarN4f8IHy96l2b3es
	 CaYa6Hy48WKKQ==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 9417D3844C4
	for <usrp-users@lists.ettus.com>; Fri, 22 Dec 2023 16:55:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2W7VpxuV";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a2331e7058aso266630766b.2
        for <usrp-users@lists.ettus.com>; Fri, 22 Dec 2023 13:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1703282146; x=1703886946; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KoeGVy3gBTXkgHnrL9IbA0ggXaiTZhgJswaJbjHnfkw=;
        b=2W7VpxuVchKVMVNzJ4aqATy3A/rSR9H3Ut7rWJ21ANAoUoj+UR5P4h6HFMCj7OIAEQ
         F4TP10f9TBwe2gGlLJC8Ug3pNa/j2d3TiS5QwT4TOdv3bKhsyEvrfpnbvfic7wbbzmq1
         tF/eIjio2snlFm/wYvLvTB6PojEHrSE+8xpc2wqOV/udEGX0FfOIb6421c6MNsN1tiTB
         cf8Gjq+wDCd4dYHQ+LpW+9MRKRz8OkogAocGkECNTczM+c5G117h/3x9HpBiVrZZ0Oda
         tkno9XI4qN+dE4SuCH51NnZ7PKlYnwC6s04fpDdb4kcdHiSSYjhvF4lERfIlfSgM+us8
         ykeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703282146; x=1703886946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KoeGVy3gBTXkgHnrL9IbA0ggXaiTZhgJswaJbjHnfkw=;
        b=WWm1waR7kBY+srCMU5Dw2DenLDRABvp0nXCgQv30nfqm+tog6k6YXEwgCDO4OtnQhR
         lA8l89umoBoF9ALohut49+O7DRGKjRet2tJeVruLRntpCyicLN5q6NxrzmKmt1aSTVCl
         nFkoyama4Q7aV4Ubloq2EJbaa9SeSmvhk61pWsVBp7Uw2PoflKFNgBHr5CL/+naJYsJd
         nawL1oYy5WUV5Sp4cArfVWB+/nxiQ2LQ/xwlvun1LtZ/HgHGE95AGhNj5zhO6stszEC3
         3Uwbk9xOuBTHY+uizl53hkYaC5rdtrFu/LLeBsOMOeHZvUmEJ5qNH+zYFGRMdNmsa5V3
         4QMA==
X-Gm-Message-State: AOJu0Yw/eUOVllLZrmpy6aE+kSb3Mqfeqco8jj5ObYjkrqUGoxNr/WKT
	3CXZI/YWX5hdQ77LVV8vc40v5dec2BmKhrb3lVKM56OYnBOE9/btuX4ipJCHHzI=
X-Google-Smtp-Source: AGHT+IH3nhmfzd6YFw7R5DprTtWX9zuBKiBA08nOT4/ur2ZtpCX4KfKCxSyGwp+S1OeieqC4QTLXSmA8y+erHYVE5U4=
X-Received: by 2002:a17:906:7496:b0:a26:8856:958 with SMTP id
 e22-20020a170906749600b00a2688560958mr655863ejl.14.1703282146340; Fri, 22 Dec
 2023 13:55:46 -0800 (PST)
MIME-Version: 1.0
References: <CAJx0LdUcyGiZ8MP+-TOrt+xXZHBV7dZvaUzZHcDAwFq-b+Af=Q@mail.gmail.com>
 <CAJx0LdUVDmit9OQbUyViFhSg5Wo8oJVVv6mFov6B6z7OVFcONw@mail.gmail.com>
In-Reply-To: <CAJx0LdUVDmit9OQbUyViFhSg5Wo8oJVVv6mFov6B6z7OVFcONw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 22 Dec 2023 15:55:31 -0600
Message-ID: <CAFche=hBP5ru=szta3YRgq7_C8M8+6f4d9OO99WKiE84asM0NA@mail.gmail.com>
To: German Farinas <german.farinas@gmail.com>
Message-ID-Hash: PBONC7NOB6NT3S3CDN7TQLXH3FTFVHZ5
X-Message-ID-Hash: PBONC7NOB6NT3S3CDN7TQLXH3FTFVHZ5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design contains one or more evaluation cores that will cease to function after a certain period of time. This design should NOT be used in production systems.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PBONC7NOB6NT3S3CDN7TQLXH3FTFVHZ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3845182284624511565=="

--===============3845182284624511565==
Content-Type: multipart/alternative; boundary="000000000000490261060d20479a"

--000000000000490261060d20479a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi German,

The critical warning sounds ominous but can be safely ignored. The licenses
are included with Vivado, but Vivado gives the warning anyway. As long as
you have a Vivado license, and a bitstream was generated, the 10 GbE IP
should work fine.

Wade

On Thu, Dec 21, 2023 at 11:20=E2=80=AFAM German Farinas <german.farinas@gma=
il.com>
wrote:

> Update on this. Looking at the build log I found this:
>
> Evaluation cores found in this design:
>     IP core 'ten_gig_eth_pcs_pma' (ten_gig_eth_pcs_pma_v6_0_19) was
> generated using a design_linking license.
>
> Resolution: If a new IP Core license was added, in order for the new
> license to be picked up, the current netlist needs to be updated by
> resetting and re-generating the IP output products before bitstream
> generation.
>
> How do I regenerate the IP core?
>
> Best,
> German
>
> On Wed, Dec 20, 2023 at 10:48=E2=80=AFPM German Farinas <german.farinas@g=
mail.com>
> wrote:
>
>> Hello,
>>
>> I ran the example in this guide (
>> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) to add a new
>> FFT RFNoC block. I modify the default yaml file and run the following
>> command:
>>
>> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG -F ../../../
>>
>> Everything went well and the bitstream file was successfully generated. =
I
>> uploaded to my USRP X300 with the following command: uhd_image_loader
>> --args "type=3Dx300,addr=3D192.168.10.2" --fpga-path
>> ./build/usrp_x300_fpga_HG.bin
>>
>> after loading the new image this is the output to the *uhd_usrp_probe
>> --args type=3Dx300* command:
>>
>> RFNoC blocks on this device:
>> |   |
>> |   |   * 0/DDC#0
>> |   |   * 0/DDC#1
>> |   |   * 0/DUC#0
>> |   |   * 0/DUC#1
>> |   |   * 0/FFT#0
>> |   |   * 0/Radio#0
>> |   |   * 0/Radio#1
>> |   |   * 0/Replay#0
>> |     _____________________________________________________
>> |    /
>> |   |       Static connections on this device:
>> |   |
>> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
>> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
>> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
>> |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
>> |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
>> |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
>> |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
>> |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
>> |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
>> |   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
>> |   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
>> |   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
>> |   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
>> |   |   * 0/SEP#6:0=3D=3D>0/FFT#0:0
>> |   |   * 0/FFT#0:0=3D=3D>0/SEP#6:0
>>
>> Everything apparently looks good because the FFT was inserted. However
>> during the last phase of the vivado tools flow, after synthesis, place,
>> route, etc, during the *BUILDER: Writing bitfile *phase it issues the
>> following supposedly critical warning:
>>
>> *CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This
>> design contains one or more evaluation cores that will cease to function
>> after a certain period of time. This design should NOT be used in
>> production systems.*
>>
>> I think it may be the FFT IP core but I am not sure. I have Vivado
>> v2021.1_AR76780 ML with an Enterprise Edition license. The version is 20=
21
>> because this is the version supported by Ettus for building FPGA images.=
 My
>> license goes up to 2023.1 limit, but this should not affect me because I=
 am
>> using the 2021 version. I compiled the default images and I don't recall
>> receiving this critical warning.
>>
>> Anyone had the same issue? Any help or explanation to this? Is this
>> something I should worry about ?
>>
>> Best regards,
>> German
>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000490261060d20479a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi German,</div><div><br></div><div>The critical warn=
ing sounds ominous but can be safely ignored. The licenses are included wit=
h Vivado, but Vivado gives the warning anyway. As long as you have a Vivado=
 license, and a bitstream was generated, the 10 GbE IP should work fine.</d=
iv><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 21, 2023 at 11:20=E2=80=AF=
AM German Farinas &lt;<a href=3D"mailto:german.farinas@gmail.com">german.fa=
rinas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Update on this. Looking at the build log I =
found this:<div><br></div><div>Evaluation cores found in this design:<br>=
=C2=A0 =C2=A0 IP core &#39;ten_gig_eth_pcs_pma&#39; (ten_gig_eth_pcs_pma_v6=
_0_19) was generated using a design_linking license.<br><br>Resolution: If =
a new IP Core license was added, in order for the new license to be picked =
up, the current netlist needs to be updated by resetting and re-generating =
the IP output products before bitstream generation.<br></div><div><br></div=
><div>How do I regenerate the IP core?</div><div><br></div><div>Best,</div>=
<div>German</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Dec 20, 2023 at 10:48=E2=80=AFPM German Farinas &l=
t;<a href=3D"mailto:german.farinas@gmail.com" target=3D"_blank">german.fari=
nas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>I ran the example i=
n this guide (<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in=
_UHD_4.0" target=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC=
_in_UHD_4.0</a>) to add a new FFT RFNoC block. I modify the default yaml fi=
le and run the following command:</div><div><br></div><div>rfnoc_image_buil=
der -y x300_with_fft.yml -t X300_HG -F ../../../<br></div><div><br></div><d=
iv>Everything went well and the bitstream=C2=A0file was successfully=C2=A0g=
enerated. I uploaded=C2=A0to my USRP X300 with the following command: uhd_i=
mage_loader --args &quot;type=3Dx300,addr=3D192.168.10.2&quot; --fpga-path =
./build/usrp_x300_fpga_HG.bin</div><div><br></div><div>after loading the ne=
w image this is the output to the <i>uhd_usrp_probe --args type=3Dx300</i> =
command:</div><div><br></div><div>RFNoC blocks on this device:<br>| =C2=A0 =
| =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0 | =C2=A0 * 0/DDC#1<br>=
| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#1<br>| =C2=A0 | =
=C2=A0 * 0/FFT#0<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/=
Radio#1<br>| =C2=A0 | =C2=A0 * 0/Replay#0<br>| =C2=A0 =C2=A0 ______________=
_______________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>| =C2=A0 | =C2=
=A0 <br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=
=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=
=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =
=C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/D=
DC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1=
:0<br>| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=
=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D=
&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =
=C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP=
#4:0=3D=3D&gt;0/Replay#0:0<br>| =C2=A0 | =C2=A0 * 0/Replay#0:0=3D=3D&gt;0/S=
EP#4:0<br>| =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 |=
 =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5:0<br>| =C2=A0 | =C2=A0 * 0/SEP#6:0=
=3D=3D&gt;0/FFT#0:0<br>| =C2=A0 | =C2=A0 * 0/FFT#0:0=3D=3D&gt;0/SEP#6:0<br>=
</div><div><br></div><div>Everything apparently=C2=A0looks good because the=
 FFT was inserted. However during the<b>=C2=A0</b>last phase of the vivado =
tools flow, after synthesis, place, route, etc, during the=C2=A0<b>BUILDER:=
 Writing bitfile </b>phase it issues the following supposedly=C2=A0critical=
 warning:</div><div><br></div><div><i>CRITICAL WARNING: [Vivado 12-1790] Ev=
aluation License Warning: This design contains one or more evaluation cores=
 that will cease to function after a certain period of time. This design sh=
ould NOT be used in production systems.</i><br></div><div><i><br></i></div>=
<div>I think it may be the FFT IP core but I am not sure. I have Vivado v20=
21.1_AR76780 ML with an Enterprise Edition license. The version is 2021 bec=
ause this is the version supported by Ettus for building FPGA images. My li=
cense goes up to 2023.1 limit, but this should not affect me because I am u=
sing the 2021 version. I compiled the default images and I don&#39;t=C2=A0r=
ecall receiving this critical warning.</div><div><br></div><div>Anyone had =
the same issue? Any help or explanation=C2=A0to this? Is this something I s=
hould worry about ?</div><div><br></div><div>Best regards,</div><div>German=
</div><div><br></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000490261060d20479a--

--===============3845182284624511565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3845182284624511565==--
