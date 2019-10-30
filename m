Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D846CEA2E3
	for <lists+usrp-users@lfdr.de>; Wed, 30 Oct 2019 18:59:28 +0100 (CET)
Received: from [::1] (port=60246 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iPsFd-0005Kt-Tr; Wed, 30 Oct 2019 13:59:21 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:36686)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1iPsFa-0005EX-6I
 for usrp-users@lists.ettus.com; Wed, 30 Oct 2019 13:59:18 -0400
Received: by mail-qt1-f179.google.com with SMTP id x14so4469099qtq.3
 for <usrp-users@lists.ettus.com>; Wed, 30 Oct 2019 10:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=pAey8ohe3/teJp5Ijlvf+xvEKAZG6cEYTn8tejyPvc4=;
 b=WRKyXbFMKY8CBjIPzuGoxxlRYKIMP9apitxLj7Vh6bSAdHCt7oevg2vrznFsjRAY8e
 6JHwAmjy/GMBxGJe57SHo8mvr+1TSUj3gj94XhIYgVp1SbOWeyvFI9zaHSM3A/GPIqlb
 CDuoat4ku9P3FBGizyxrGlRXnLwNR1/kV0KyhkkOwcVo64iUc60BV+eW8waTtqhhCshK
 LfG0xfFtaPdXv3oBAa+ZAxd/zBIdEE5/uBahZergDfux3Bd28FQZ8o6LvEyqletCfx4Z
 uTyb1/cOBdLcQg4iBzIkHInAP3LwK5CAAYQp1AAxHMrtlhM15CiMwNVdP1zgQeFw1vl7
 IGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=pAey8ohe3/teJp5Ijlvf+xvEKAZG6cEYTn8tejyPvc4=;
 b=NM3RkoL25lqmKdKD5I82Yf/Rmj7YwEOObSc2IcUuQCkhPEF98h7TEVGlAzk71veL4E
 sJeE0grGL8f7bIyMQZRlgF1e4kAD1Gdsj4007rQsaXgZwafc7S8U94pfd8htcNM8pPtu
 zPpkTbc9HuACCZsh7BJcLeQ/jEIEb/Wj2PPFOpkNM+vDHGdc9WGiA6wBGsIp4AL8oiyQ
 JoKUddGgm/pVjI0OBOSVFAJ0kmIt3fAp6dzhVAB+pwZ2qHBG4vk7ceSGkWtCWpogxyS6
 JORPRJUkjkmFj916geCsbnhb/Z9OH5TIxJ1Y6ZZyJqPTuukfb+b2lkst7/kLii4TJMdV
 aq3g==
X-Gm-Message-State: APjAAAUusu2e1eL+S+471SsWKV5P8lVPPV+/cpM0qoInf+JoJVcpp7Qm
 L+VPks+nadoZ2z2xCvFWXHrHH0nIkmuu2CxGpTu3eyeN
X-Google-Smtp-Source: APXvYqznPlzu95eoNGKo85KJGpUcuPMxbW46fBntP2PBaS5Z8UXmBb6Dw5hLQeuDgqHLBf/ro/POmfJKqi2NEb2xgQA=
X-Received: by 2002:a05:6214:2aa:: with SMTP id
 m10mr352977qvv.224.1572458317137; 
 Wed, 30 Oct 2019 10:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <1572441644641.81263@tuwien.ac.at>
In-Reply-To: <1572441644641.81263@tuwien.ac.at>
X-Google-Sender-Delegation: nate.temple@ettus.com
Date: Wed, 30 Oct 2019 10:59:05 -0700
X-Google-Sender-Auth: CAI93ciWD2euDwoOMyU1zZwD1t4
Message-ID: <CACSOXP2pT_Ytbo=S8Wgx6=CJVfDAGaQxzKyAmjSXcJg0-HJMFw@mail.gmail.com>
To: "Neunteufel, Daniel" <daniel.neunteufel@tuwien.ac.at>
Subject: Re: [USRP-users] Cannot load X310 FPGA image
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4398161912609846896=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4398161912609846896==
Content-Type: multipart/alternative; boundary="0000000000006adb1c0596247b86"

--0000000000006adb1c0596247b86
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

This error points to a failure of reading the internal EEPROM. The X310
will need to be RMA'd. I will follow up with you off list to RMA the device.

Regards,
Nate Temple

On Wed, Oct 30, 2019 at 6:21 AM Neunteufel, Daniel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
>
> I'm working with three X310 with TwinRX daughterboards. I tried the latest
> UHD 3.15 with the according v36 XG FPGA image. As I encountered problems
> with DPDK support in this UHD version, I went back to the latest stable
> release 3.14.1.1, which solved this problem.
>
>
> Downgrading the X310 FPGA images to v35 (necessary for 3.14.1.1) worked
> like a charm on two of the devices, however, for one *uhd_image_loader*
> terminated with
> "*Error: RuntimeError: Device reported an error during initialization.*".
>
>
> I loaded the desired image into volatile memory via JTAG using Vivado.
> Doing so, I'm able to use the device with UHD 3.14.1.1 until power
> cycling. The* uhd_image_loader *still does not work, causing the same
> error message. Using the HG image doesn't help, either.
>
>
> The problem is very similar to the one described here, but unfortunately
> the solution seems to be off-list:
>
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2016-October/050028.html
>
>
>
> Any help highly appreciated.
> Thanks,
> Daniel
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006adb1c0596247b86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Daniel,<br><br>This error points to a failure of reading the=
 internal EEPROM. The X310 will need to be RMA&#39;d. I will follow up with=
 you off list to RMA the device.<br><br>Regards,<br>Nate Temple</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Oct 30, 2019 at 6:21 AM Neunteufel, Daniel via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);background-color:=
rgb(255,255,255);font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
Hi all,
<p><br>
</p>
<p>I&#39;m working with three X310 with TwinRX daughterboards. I tried the =
latest UHD 3.15 with the according v36 XG FPGA image. As I encountered prob=
lems with DPDK support in this UHD version, I went back to the latest stabl=
e release 3.14.1.1, which solved this
 problem.<br>
</p>
<p><br>
</p>
<p>Downgrading the X310 FPGA images to v35 (necessary for 3.14.1.1) worked =
like a charm on=C2=A0two of the=C2=A0devices, however, for one=C2=A0<em>uhd=
_image_loader</em> terminated with<br>
&quot;<em>Error: RuntimeError: Device reported an error during initializati=
on.</em>&quot;.</p>
<p><br>
I loaded the desired image into volatile memory via=C2=A0JTAG using Vivado.=
 Doing so, I&#39;m able to use the device with UHD 3.14.1.1 until power cyc=
ling.=C2=A0The<em>=C2=A0uhd_image_loader
</em>still does not work, causing the same error message. <em></em>Using th=
e HG image doesn&#39;t help, either.</p>
<p><br>
</p>
The problem is very similar to the one described here, but unfortunately th=
e solution seems to be off-list:<br>
<p><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2=
016-October/050028.html" target=3D"_blank">http://lists.ettus.com/pipermail=
/usrp-users_lists.ettus.com/2016-October/050028.html</a></p>
<p><br>
</p>
<p><br>
</p>
<p>Any help highly appreciated.<br>
Thanks,<br>
Daniel<br>
</p>
<p><br>
</p>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006adb1c0596247b86--


--===============4398161912609846896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4398161912609846896==--

