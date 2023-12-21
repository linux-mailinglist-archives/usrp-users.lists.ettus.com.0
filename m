Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CB481BCEC
	for <lists+usrp-users@lfdr.de>; Thu, 21 Dec 2023 18:20:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B686238523C
	for <lists+usrp-users@lfdr.de>; Thu, 21 Dec 2023 12:20:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1703179235; bh=RKchV6xWgrfNMuC4AfwbWRyxFxQkHyzC66B4kEYLNNA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=D2BUUnkFET4ywrq+Pk888wDtHkfh9qhupwVnLmcn06W+H8N36ULrzPe9j6c53RxEZ
	 983gVmSpgBgNJkyvdhNEr63Ldxa4XetRa5YGLCbr2hpZDWHrB+wEs9DLjzugVp6ggB
	 7AoPb/RWVYxqdAr2V0e+68NNa4DOGQT+SNYfyfjK4lkJeUx/ZrirqujftbD7WTAhaa
	 QrIHy9yC590IpYKvOOUoNB0nWM70/Q0hT9UTiGm1IfP5eCES2EMwXgkWnWi8tc1ct8
	 e6BR2a1tMxhi4mYO+c11Yn4a3wsNBavtZnXUZzblebz7klWH0YmoLog6BvMUoTYdt4
	 3+f6onuiKB4Cw==
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 88D753851E2
	for <usrp-users@lists.ettus.com>; Thu, 21 Dec 2023 12:19:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XeLgmKUL";
	dkim-atps=neutral
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3ba46a19689so826468b6e.3
        for <usrp-users@lists.ettus.com>; Thu, 21 Dec 2023 09:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703179193; x=1703783993; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HiTpuvnlj3r9m0+unnHKTjx5YvSL2oPhnl3pHDoybbk=;
        b=XeLgmKUL9N3uTrmUF1X9deGp4TMvsVWPTji1jOHJ0Am+H4ilLftWGnzNiAclzhuNVA
         D5doJWRkv8nzdtQ2o6vnyzixSSfLy5O+f7NMw8V0yu2YtQdq39A4xuVSvaRY24IgdUj3
         sHQzFAoOCu1WDHdyCYqm+N0dlzFfmFm9GbQ0MYLuncCv6bXDvD0StEDEX5B23EP8PEH3
         whAcIEYbLWzdi/SbB6Xa+vcIAyJJHxVXcQMgQrHyVoqKxGSogSqZVdKn2/7wocTFz+cN
         d1+mLbKiHfXqmj2J/MnNOmsZu3E0tEGK8XREcJNMFx6RPDpW4CCe7pdI0LIwql3GNylZ
         yZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703179193; x=1703783993;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HiTpuvnlj3r9m0+unnHKTjx5YvSL2oPhnl3pHDoybbk=;
        b=tnd+c9hnCccnbe+9NVi03RpA9+bd932imSyLpEnjfuBT0fAbUZAFjbT/EJ6TpMtsZ0
         TcXnI0hmoxXKnXctDQ0/WCOM0Rx0B2CeQR9C3m4ghRrWue58xCyXQr1SKwQbTgv5BqKl
         eJrQqllq6MIbbsj1VK5AQNfcgtOxxY24nhA4dzMSwgOoSJ+Eg+FNkF1VEnbWUXLauBDz
         7R+XSRW9qB3yu3RjrPi38kie2CnzkVYIvurM3r2oijDIVlXAXlfAIc6Z9n1PyTaDV4XI
         ToFRhWgKkedPuS01WBYxGaGmFAw9iEt7gefRgsGL52L8axqe+Wkf7vm4olr4uuAk+Skw
         Oaqw==
X-Gm-Message-State: AOJu0Yzi74HbSEPoaZivg6TN/WJg2BAarGgRpmxk5Xdp+xAWD/a8grbE
	aIJS7V6a6SxDd2hpBIxZ3t54FzqlSC7U/IAt6rbD9eWDKOnxy5gm
X-Google-Smtp-Source: AGHT+IE/ydTozU8QaCNM/3/PCwPqMSZxYELWJaP0fFk8tPPh0ccuWov1EmrLdksZprlDSaZqFI+4UCTjY5I4EJ6rDNc=
X-Received: by 2002:a05:6870:41d5:b0:1fb:a96:bd76 with SMTP id
 z21-20020a05687041d500b001fb0a96bd76mr157666oac.15.1703179193356; Thu, 21 Dec
 2023 09:19:53 -0800 (PST)
MIME-Version: 1.0
References: <CAJx0LdUcyGiZ8MP+-TOrt+xXZHBV7dZvaUzZHcDAwFq-b+Af=Q@mail.gmail.com>
In-Reply-To: <CAJx0LdUcyGiZ8MP+-TOrt+xXZHBV7dZvaUzZHcDAwFq-b+Af=Q@mail.gmail.com>
From: German Farinas <german.farinas@gmail.com>
Date: Thu, 21 Dec 2023 12:19:42 -0500
Message-ID: <CAJx0LdUVDmit9OQbUyViFhSg5Wo8oJVVv6mFov6B6z7OVFcONw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: FJIU4IEEABBLEOJKYCH2FLTCDQJJMSJI
X-Message-ID-Hash: FJIU4IEEABBLEOJKYCH2FLTCDQJJMSJI
X-MailFrom: german.farinas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design contains one or more evaluation cores that will cease to function after a certain period of time. This design should NOT be used in production systems.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FJIU4IEEABBLEOJKYCH2FLTCDQJJMSJI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4771759880364513630=="

--===============4771759880364513630==
Content-Type: multipart/alternative; boundary="000000000000cf1931060d084e84"

--000000000000cf1931060d084e84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Update on this. Looking at the build log I found this:

Evaluation cores found in this design:
    IP core 'ten_gig_eth_pcs_pma' (ten_gig_eth_pcs_pma_v6_0_19) was
generated using a design_linking license.

Resolution: If a new IP Core license was added, in order for the new
license to be picked up, the current netlist needs to be updated by
resetting and re-generating the IP output products before bitstream
generation.

How do I regenerate the IP core?

Best,
German

On Wed, Dec 20, 2023 at 10:48=E2=80=AFPM German Farinas <german.farinas@gma=
il.com>
wrote:

> Hello,
>
> I ran the example in this guide (
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0) to add a new
> FFT RFNoC block. I modify the default yaml file and run the following
> command:
>
> rfnoc_image_builder -y x300_with_fft.yml -t X300_HG -F ../../../
>
> Everything went well and the bitstream file was successfully generated. I
> uploaded to my USRP X300 with the following command: uhd_image_loader
> --args "type=3Dx300,addr=3D192.168.10.2" --fpga-path
> ./build/usrp_x300_fpga_HG.bin
>
> after loading the new image this is the output to the *uhd_usrp_probe
> --args type=3Dx300* command:
>
> RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DDC#1
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/FFT#0
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |   |   * 0/Replay#0
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
> |   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
> |   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
> |   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
> |   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
> |   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
> |   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
> |   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
> |   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
> |   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
> |   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
> |   |   * 0/SEP#6:0=3D=3D>0/FFT#0:0
> |   |   * 0/FFT#0:0=3D=3D>0/SEP#6:0
>
> Everything apparently looks good because the FFT was inserted. However
> during the last phase of the vivado tools flow, after synthesis, place,
> route, etc, during the *BUILDER: Writing bitfile *phase it issues the
> following supposedly critical warning:
>
> *CRITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This
> design contains one or more evaluation cores that will cease to function
> after a certain period of time. This design should NOT be used in
> production systems.*
>
> I think it may be the FFT IP core but I am not sure. I have Vivado
> v2021.1_AR76780 ML with an Enterprise Edition license. The version is 202=
1
> because this is the version supported by Ettus for building FPGA images. =
My
> license goes up to 2023.1 limit, but this should not affect me because I =
am
> using the 2021 version. I compiled the default images and I don't recall
> receiving this critical warning.
>
> Anyone had the same issue? Any help or explanation to this? Is this
> something I should worry about ?
>
> Best regards,
> German
>
>

--000000000000cf1931060d084e84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update on this. Looking at the build log I found this:<div=
><br></div><div>Evaluation cores found in this design:<br>=C2=A0 =C2=A0 IP =
core &#39;ten_gig_eth_pcs_pma&#39; (ten_gig_eth_pcs_pma_v6_0_19) was genera=
ted using a design_linking license.<br><br>Resolution: If a new IP Core lic=
ense was added, in order for the new license to be picked up, the current n=
etlist needs to be updated by resetting and re-generating the IP output pro=
ducts before bitstream generation.<br></div><div><br></div><div>How do I re=
generate the IP core?</div><div><br></div><div>Best,</div><div>German</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Dec 20, 2023 at 10:48=E2=80=AFPM German Farinas &lt;<a href=3D"mail=
to:german.farinas@gmail.com">german.farinas@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello=
,<div><br></div><div>I ran the example in this guide (<a href=3D"https://kb=
.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0" target=3D"_blank">https:/=
/kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a>) to add a new FFT R=
FNoC block. I modify the default yaml file and run the following command:</=
div><div><br></div><div>rfnoc_image_builder -y x300_with_fft.yml -t X300_HG=
 -F ../../../<br></div><div><br></div><div>Everything went well and the bit=
stream=C2=A0file was successfully=C2=A0generated. I uploaded=C2=A0to my USR=
P X300 with the following command: uhd_image_loader --args &quot;type=3Dx30=
0,addr=3D192.168.10.2&quot; --fpga-path ./build/usrp_x300_fpga_HG.bin</div>=
<div><br></div><div>after loading the new image this is the output to the <=
i>uhd_usrp_probe --args type=3Dx300</i> command:</div><div><br></div><div>R=
FNoC blocks on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/=
DDC#0<br>| =C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DUC#0<br>| =
=C2=A0 | =C2=A0 * 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/FFT#0<br>| =C2=A0 | =C2=
=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<br>| =C2=A0 | =C2=A0 * 0/R=
eplay#0<br>| =C2=A0 =C2=A0 ________________________________________________=
_____<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connect=
ions on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=
=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<b=
r>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 *=
 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&gt;0=
/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =
=C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DUC#1:0<br>| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=
=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br=
>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/=
Radio#1:1=3D=3D&gt;0/DDC#1:1<br>| =C2=A0 | =C2=A0 * 0/DDC#1:1=3D=3D&gt;0/SE=
P#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Replay#0:0<br>| =C2=A0 | =
=C2=A0 * 0/Replay#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =C2=A0 * 0/SEP#5:0=
=3D=3D&gt;0/Replay#0:1<br>| =C2=A0 | =C2=A0 * 0/Replay#0:1=3D=3D&gt;0/SEP#5=
:0<br>| =C2=A0 | =C2=A0 * 0/SEP#6:0=3D=3D&gt;0/FFT#0:0<br>| =C2=A0 | =C2=A0=
 * 0/FFT#0:0=3D=3D&gt;0/SEP#6:0<br></div><div><br></div><div>Everything app=
arently=C2=A0looks good because the FFT was inserted. However during the<b>=
=C2=A0</b>last phase of the vivado tools flow, after synthesis, place, rout=
e, etc, during the=C2=A0<b>BUILDER: Writing bitfile </b>phase it issues the=
 following supposedly=C2=A0critical warning:</div><div><br></div><div><i>CR=
ITICAL WARNING: [Vivado 12-1790] Evaluation License Warning: This design co=
ntains one or more evaluation cores that will cease to function after a cer=
tain period of time. This design should NOT be used in production systems.<=
/i><br></div><div><i><br></i></div><div>I think it may be the FFT IP core b=
ut I am not sure. I have Vivado v2021.1_AR76780 ML with an Enterprise Editi=
on license. The version is 2021 because this is the version supported by Et=
tus for building FPGA images. My license goes up to 2023.1 limit, but this =
should not affect me because I am using the 2021 version. I compiled the de=
fault images and I don&#39;t=C2=A0recall receiving this critical warning.</=
div><div><br></div><div>Anyone had the same issue? Any help or explanation=
=C2=A0to this? Is this something I should worry about ?</div><div><br></div=
><div>Best regards,</div><div>German</div><div><br></div></div>
</blockquote></div>

--000000000000cf1931060d084e84--

--===============4771759880364513630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4771759880364513630==--
