Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C61C68F2EA
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 17:13:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3267F383CF1
	for <lists+usrp-users@lfdr.de>; Wed,  8 Feb 2023 11:13:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675872803; bh=awmZIAkv8JOid51yjND2CvA5epykOBTUE6LoGdhm3Hc=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XxzwbbJ1XqkCbT+judd0M/MVwIY2bkmMqaGNwHF5vvSuMLzfs+M/mdcpp2f2/lTTb
	 pEoyDKtMdQC9UcsmYvF2nIGQOMGQmQeSbl66gPxToulXVXc2uyG99Xejmr15oS2E4c
	 vYQX9r0F6XZVxrcTAfKiJE4vd85011sA3xGOw7TWSx9e1G6DEjRQScbpkDP8Cf+ODG
	 umQp3Fg9eH8t85kH8qiPU12bPL+Hvso1+OeHuT644tf7HH/JbseN1DYsBjXQoSFwBW
	 /BLCcelo5t/gWPSzI665Bs66KChvuKvbZsVn0TDS0D+Toh5Jw5LGheqzKvyNyP0hTW
	 B6Pbdzf7q10Bg==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 290CF383BD1
	for <usrp-users@lists.ettus.com>; Wed,  8 Feb 2023 11:12:20 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EeFVNoFW";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id u27so19884608ljo.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Feb 2023 08:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bxUHPxGwFB8t5V2252h3ehUDmE0c2ddsF1D+H/mjlUE=;
        b=EeFVNoFWCBSByEOT5Nx3wOhYCxUqHJGJ46Z27Ee9ykd1hv/z5aHeCceeRxUq8m+6jk
         4u9yG/hYo/o219nHKuzBdwLRGucostNVfCRkpSUj7R9f6tudB0Y12k+TAe3+KHVDu0d0
         e80bSlEVuh7No0jAUCV0SLhpMoVZkKFnkThp0AJAWG1h54rqwuE6/YuYFShuAc081yUX
         oIqKNB465wI/f+l0gEPeNowirf8Zz301UIeXJ3ZunuxzQxuG7M2kDAa2BQBJFImDDYTy
         EFllz1IXmaZNHkVR7Fuo/5cKXysAbZ2bz3hMhhdtr2M2C7csK1iZEwgORpTkiCCXRS4M
         rHKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bxUHPxGwFB8t5V2252h3ehUDmE0c2ddsF1D+H/mjlUE=;
        b=cKfu/upPiEF1Weqhv+hzzMnEBGc6om2FPTaTCpIrktkccqsYmRwK4JWeh0FNlsZuxi
         OKm57uYI/EnmChC7AzP9w6cl4kF1wNhVJGCk+EQP4cGUhFeQrGJ2+wAv50jV5AQnhwgO
         y7sypxiO/0JCVs2Rj/8qeEDM4UvnIGJ1ut4gqb3S8rPD9EWXw1b1fQOXM+3wRJqIJm5j
         nEJRxP8e+U/UivC8HjCDO/yZJb5s+OVD38OHhUGhrzuZUnzrVl1NdOPLf0x8BkVlGdJu
         rqenvZalanwBRT1jgbVWBEtXX05atmACR8W6NuZweh82O2Iw49VMooJGFEzoW3bKyFNM
         pXnA==
X-Gm-Message-State: AO0yUKVHS3pj+nB31h68mbGJaNwbcndxZ97mWNY8jCvKSzMNhkPmkPpO
	yTTfkfQCrPnc/92rdKMj9DhGE4CKbCgmu4tlpwQjEM+gH+U9VpCS0yY=
X-Google-Smtp-Source: AK7set+O0QLK5fyJPvrkarIpiHknRCRFAJcene3jPrhAsugLXQDloLXnRJSHvyw3hbAmbcpVQNAHnb/zSzaboD13QDU=
X-Received: by 2002:a2e:9802:0:b0:28f:fa00:4c03 with SMTP id
 a2-20020a2e9802000000b0028ffa004c03mr1426162ljj.94.1675872738473; Wed, 08 Feb
 2023 08:12:18 -0800 (PST)
MIME-Version: 1.0
From: Melissa Lind <melissawlind@gmail.com>
Date: Wed, 8 Feb 2023 11:12:06 -0500
Message-ID: <CADhJKjdHYYzX_XoGRdnhW1pnff-E9QoQ+O_QuKePdyURh39EyA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: KQGOSYYIFKXCV5JH4CISVEFQYTJJRHAN
X-Message-ID-Hash: KQGOSYYIFKXCV5JH4CISVEFQYTJJRHAN
X-MailFrom: melissawlind@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] MATLAB support for N320?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KQGOSYYIFKXCV5JH4CISVEFQYTJJRHAN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5491764257931191305=="

--===============5491764257931191305==
Content-Type: multipart/alternative; boundary="00000000000043f8f705f43287ed"

--00000000000043f8f705f43287ed
Content-Type: text/plain; charset="UTF-8"

I needed to do some 5G work with MATLAB's 5G Toolbox, and was wondering if
someone could clarify:

https://www.mathworks.com/hardware-support/usrp.html claims:
N300 series from Ettus Research LLC

https://www.mathworks.com/hardware-support/ni-usrp-radios.html claims:
seems to have a picture of an N320

There isn't any description of what is different between N320 support for:

   - NI USRP Radio Support from Wireless Testbench
   - USRP Support from Communications Toolbox

Thanks
M

--00000000000043f8f705f43287ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I needed to do some 5G work with MATLAB&#39;s 5G Toolbox, =
and was wondering if someone could clarify:<div><br></div><div><a href=3D"h=
ttps://www.mathworks.com/hardware-support/usrp.html">https://www.mathworks.=
com/hardware-support/usrp.html</a> claims:</div><div>N300 series from Ettus=
 Research LLC<br></div><div><br></div><div><a href=3D"https://www.mathworks=
.com/hardware-support/ni-usrp-radios.html">https://www.mathworks.com/hardwa=
re-support/ni-usrp-radios.html</a> claims:<br></div><div>seems to have a pi=
cture of an N320</div><div><br></div><div>There isn&#39;t any description o=
f what is different between N320 support for:</div><div><ul><li>NI USRP Rad=
io Support from Wireless Testbench<br></li><li>USRP Support from Communicat=
ions Toolbox<br></li></ul><div>Thanks</div></div><div>M</div><div><br><div>=
<br></div></div></div>

--00000000000043f8f705f43287ed--

--===============5491764257931191305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5491764257931191305==--
