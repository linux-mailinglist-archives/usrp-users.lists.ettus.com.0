Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2897780F1D8
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 17:07:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 449AD384C5E
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 11:07:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702397226; bh=vYq+kuZk/gIFdX86oDIUbOjwvAQ7CITYIMA28CTGa+A=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aIIAYZjemiQi7D8S/mFE7wn6tB5sGBkoxin3aTVprqu4dt98USytGPWc0zQ/v3nAO
	 G4ttZ0TiGHdB5vPqbI6VKyklG2G5vjiC/b/hvqFFdezrQI5E3Fmrel4YMOA1Td+VnJ
	 GigBYaBVl+jxd9c1rlHYNI8scATUkAFE8upZEcHm/HMzqNTiMdbbrZ/eSK2tEkjjp/
	 cfggrdt9E9VNXK/IhlH/XLGYjHwAQ0d8hM48hvFG3Y25z/MgmjoOu5aAz29mSPgX0c
	 1EHwL/ItJH3jaoMnS+PZdjYk//LsoSmQa8fSNzg5NvS2+6DFhyN5dYDETPyaISAD6l
	 nT/RR7FWQ+I+A==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 0805738456E
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 11:06:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="qUYpat+O";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a1915034144so774128066b.0
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 08:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1702397209; x=1703002009; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LVe6zm+mVtJK1Q2UcFkDeNvWoUNyix+RZuTRjf3DQ+E=;
        b=qUYpat+Octzjpb07aU/sV7wsIS2OIabWKClHFucj6QgQr/sE4P2Xfn9yrBposhzcJ8
         fJl6jha+tiIGpFdWs2D5QtT7O2bcNCiXqoKzKkxCHZCtTrWOgpULOkb1cc2dg1DTtHpB
         Ia/sh+DKzBz4wDuzaLzPLZ10bRv6lYUt7iVnSLgjbktj6NyTjvNR6wbWM8Z46wKQm2oK
         a1hMiHGM+oy+TXXDDhformkolUQjkb0C3/7j2CulL0odsVgUgi1S2KWWpnLDmLpEsHDw
         hHHqiW2t6kEH/MQxxDtRZHucYBuSW+PKYgP5S2Mg+/2oTA7WBvnx8oVr0GpD18NmrnIj
         Z8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702397209; x=1703002009;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LVe6zm+mVtJK1Q2UcFkDeNvWoUNyix+RZuTRjf3DQ+E=;
        b=wr2BvfMZBkE4nCjlsnyrk1m1kqVg8+hiRx/HlWrtqvhO/PW7/P7jjhwDgz3eLtoqen
         owTwMbkZsJxBj1DHQuwO4EX/3SysDy52UE9bNdTyB6J7+RU8rJp2sGLS94w6RJ6w3GN7
         jByZS7d+Y371fWn9ARZ9zA7GeIcMfBj/v6Oo7m0zxEudnMjF32Ca4wtZRM9Xvc4CECNW
         PdqU+mEJ2cV0NaPYgiUgSD1bw7+S4StZEujpOnhiyq6gI9xo7YjhpvaZH3fT6vWTJaiM
         eT1wovRvucsW8NzuZZE7xyQVaMILxn7nspEjVN08Y+YtH+tt6AwR68Dx176cpfXpSEVP
         FE4g==
X-Gm-Message-State: AOJu0YypLf56cfIWolKDJJUFoQzeyeKgVISrrS9yTMWe6FsIOecNRWYH
	v/gDNu1OJIsL/oCWq8Fi8FjxxfK5SnB9YsEzuL7sGEBGmCV9KY8iCQN2DA==
X-Google-Smtp-Source: AGHT+IFSCZ+F3V1ZJG8Tcv1O0Ysv8PrR6+lC4VT2iIsX5e3Ym4uwaDVgEqdjIN/1UIzD9nnJbYFq7/EIcJDgEFSFyuk=
X-Received: by 2002:a17:907:9718:b0:a1d:2edd:d4ca with SMTP id
 jg24-20020a170907971800b00a1d2eddd4camr4593672ejc.65.1702397208711; Tue, 12
 Dec 2023 08:06:48 -0800 (PST)
MIME-Version: 1.0
References: <CACDPEcP9LPJ4XmRFvAXXKSNWgG=dZg=CM19BBTkNwLO_Bs5B4g@mail.gmail.com>
In-Reply-To: <CACDPEcP9LPJ4XmRFvAXXKSNWgG=dZg=CM19BBTkNwLO_Bs5B4g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 12 Dec 2023 10:06:32 -0600
Message-ID: <CAFche=hynB_0vLKLpfDpOkXM_u8PUKNGTskkPZoNdAPfNCgk2Q@mail.gmail.com>
To: Muhammad Hassan <engr.muhd.hassan@gmail.com>
Message-ID-Hash: GDB4LOT6FB72W6PYYBGQHRBGUDHY6DJV
X-Message-ID-Hash: GDB4LOT6FB72W6PYYBGQHRBGUDHY6DJV
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error while running command "rfnoc_image_builder -y ./e310_rfnoc_image_core.yml"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GDB4LOT6FB72W6PYYBGQHRBGUDHY6DJV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7173617989826346558=="

--===============7173617989826346558==
Content-Type: multipart/alternative; boundary="000000000000e4618e060c523c84"

--000000000000e4618e060c523c84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Muhammad,

It says the design doesn't fit in the FPGA. Did you modify the YAML or FPGA
code? If so, you may need to reduce what you're including. If not, maybe
try building the unmodified FPGA:

cd fpga/usrp3/top/e31x
source setupenv.sh
make E310_SG3

Thanks,

Wade

On Tue, Dec 12, 2023 at 9:05=E2=80=AFAM Muhammad Hassan <engr.muhd.hassan@g=
mail.com>
wrote:

> Hi everyone,
>
> I am trying to run this command "rfnoc_image_builder -y
> ./e310_rfnoc_image_core.yml". I am getting plenty of warnings and 3 error=
s.
> for complete terminal output I have also attached a file. Can any one hel=
p
> me resolve this issue?
>
> The errors are
> ERROR: [Place 30-487] The packing of instances into the device could not
> be obeyed. There are a total of 13300 slices in the device, of which 9737
> slices are available, however, the unplaced instances require 10808 slice=
s.
> Please analyze your design to determine if the number of LUTs, FFs, and/o=
r
> control sets can be reduced.
> ERROR: [Place 30-99] Placer failed with error: 'Detail Placement failed
> please check previous errors for details.'
> ERROR: [Common 17-69] Command failed: Placer could not place all instance=
s
> [00:13:44] Current task: Placer +++ Current Phase: 3.6 Small Shape Detail
> Placement
> [00:13:45] Current task: Placer +++ Current Phase: Finished
> [00:13:45] Process terminated. Status: Failure
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e4618e060c523c84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Muhammad,</div><div><br></div><div>It says the des=
ign doesn&#39;t fit in the FPGA. Did you modify the YAML or FPGA code? If s=
o, you may need to reduce what you&#39;re including. If not, maybe try buil=
ding the unmodified FPGA:</div><div><br></div><div>cd fpga/usrp3/top/e31x</=
div><div>source setupenv.sh</div><div>make E310_SG3</div><div><br></div><di=
v>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 12, 2023 at 9:=
05=E2=80=AFAM Muhammad Hassan &lt;<a href=3D"mailto:engr.muhd.hassan@gmail.=
com">engr.muhd.hassan@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi everyone, <br></d=
iv><div><br></div><div>I am trying to run this command &quot;rfnoc_image_bu=
ilder -y ./e310_rfnoc_image_core.yml&quot;. I am getting plenty of warnings=
 and 3 errors. for complete terminal output I have also attached a file. Ca=
n any one help me resolve this issue?</div><div><br></div><div>The errors a=
re <br></div><div>ERROR: [Place 30-487] The packing of instances into the d=
evice could not be obeyed. There are a total of 13300 slices in the device,=
 of which 9737 slices are available, however, the unplaced instances requir=
e 10808 slices. Please analyze your design to determine if the number of LU=
Ts, FFs, and/or control sets can be reduced.<br>ERROR: [Place 30-99] Placer=
 failed with error: &#39;Detail Placement failed please check previous erro=
rs for details.&#39;<br>ERROR: [Common 17-69] Command failed: Placer could =
not place all instances<br>[00:13:44] Current task: Placer +++ Current Phas=
e: 3.6 Small Shape Detail Placement<br>[00:13:45] Current task: Placer +++ =
Current Phase: Finished<br>[00:13:45] Process terminated. Status: Failure</=
div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e4618e060c523c84--

--===============7173617989826346558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7173617989826346558==--
