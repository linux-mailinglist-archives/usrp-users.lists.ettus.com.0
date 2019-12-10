Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1F2119F44
	for <lists+usrp-users@lfdr.de>; Wed, 11 Dec 2019 00:20:30 +0100 (CET)
Received: from [::1] (port=42182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ieonr-0001FY-4F; Tue, 10 Dec 2019 18:20:27 -0500
Received: from mail-vs1-f47.google.com ([209.85.217.47]:39656)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1ieonn-0000wa-RE
 for usrp-users@lists.ettus.com; Tue, 10 Dec 2019 18:20:23 -0500
Received: by mail-vs1-f47.google.com with SMTP id p21so14439456vsq.6
 for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2019 15:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RhYyNEW58nHBKfiCVnIFxg6rc+fYsyRljbDDbD6CYOw=;
 b=nSkfGV+eZF0jjt3p/oW7JyaQPwp5KfU+ROGkt2dvlzsn9vFBILU8pYijVm6gmp6uzz
 i94WovN8dj2Gg/NT9dix2T38ynwCTRwlWB22+Yol2ULzgD/cueUHYhWQri18toiIOvZN
 nwUjp8itxP0Gy5SHEpijnztxymDKATezvcplejPD5NadOvCPGyK462lVL0+Juw0t41yY
 9OQf2MLSoHJE/f3KnLFTHKej0x1tpfAO+1cBasgTyAtkY0cwpo4gIuYoeHTGyDq4HhD1
 XCJRoChQdK9wpU+RNhSv3dSFItyLjUoRQqHTMUGU8ce4TBnk9KqcZnGpLjvPt1BkKwFC
 qOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RhYyNEW58nHBKfiCVnIFxg6rc+fYsyRljbDDbD6CYOw=;
 b=gpT5weY9fJ5aOfXcLAQiyLVJ/b63uvI36Ic2vbSsV2TtJ9XoBSCEtr4Yh1mTUvHKcU
 FH7KBYbmyA0wBUR4Y0xgO50vPijyfSaO54GVTU9LOyqW3DCciDqWPeExWrUoF/YjVL0N
 kNQyt05DQ4PmihxtMvBGs7Sq9mjkPOyoj91Ie1YC3mmJGAH0mZiaZM4OJJArF+hlDLQF
 pvvrHuXcmmQeGBGY8xVjoEVrKMGJRQWcBgh5Cp43Ch9qgt4WQdzwVRpFgN2SiWY0wK4J
 kl6hTuf2BtMMyTJtik0rrVqnwtZG8o9UmiQPPWRTQYT1OfOE/zvaAAgEQ/b0HXdSXswz
 uIrQ==
X-Gm-Message-State: APjAAAXyiwQdoF5FXQ10wyv2yTcFPfKeWzuA4RtrtBkiUr3zQPgbolke
 CqQIK3V1E4fcPJ1jNMykoXzlgGX/PhHa1Dl7QrY=
X-Google-Smtp-Source: APXvYqyXHgKULPvP11tpkePSxm9DL2Vy1lrKcdKTxN4n8JVyEiwvi2Q5Nl/5moldzu2tQG2YFkKlfbYIAUQg2r0HfoY=
X-Received: by 2002:a67:30c3:: with SMTP id w186mr115410vsw.179.1576019983110; 
 Tue, 10 Dec 2019 15:19:43 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTmo8sGCkJOMey4wuAkNK=t4iJVnCGouHMw48bwoiUovg@mail.gmail.com>
In-Reply-To: <CAB__hTTmo8sGCkJOMey4wuAkNK=t4iJVnCGouHMw48bwoiUovg@mail.gmail.com>
Date: Tue, 10 Dec 2019 18:19:30 -0500
Message-ID: <CADRnH22p=7nO3W0F6yDoAzHfLZUmWbeYLTxovR0XH+Rn0Oe4Gw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Configure build for RFNoC block with custom IP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5395492567356313255=="
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

--===============5395492567356313255==
Content-Type: multipart/alternative; boundary="0000000000004098ee059961bfad"

--0000000000004098ee059961bfad
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

I do this pretty often, and the uhd-fpga repo does let you use the
Makefile.OOT.inc files to add OOT repos to device builds.

If you follow the Makefile examples in github.com/ejk43/rfnoc-ootexample,
then use the uhd_image_builder.py script to add the OOT repo, it should
recognize the Makefile.inc in the OOT repo and set up the device's
Makefile.OOT.inc for you.

I get the impression others here have had success with this approach too,
but let me know if this doesn't work for you for any reason?

EJ

On Tue, Dec 10, 2019, 5:51 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I created my own FFT IP core and corresponding xci file using Vivado and
> created a new RFNoC block to use it, noc_block_myfft.  I was able to
> manually modify the makefile in the rfnoc/testbenches/noc_block_myfft_tb/
> folder to add a new makefile which I created next to the xci file.  I did
> this following an example from the stock noc block testbenches.  This works
> for me.
>
> However, now when I want to build an actual FPGA image, the IP core is not
> found.  I can copy it to usrp3/top/e300/ip/ and then adjust the Ettus
> makefiles accordingly, but this doesn't seem like the best approach.
>
> Is there a preferred way to locate custom IP when used with OOT rfnoc
> blocks and then configure makefiles such that they will be found in the
> build?
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004098ee059961bfad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">I do=
 this pretty often, and the uhd-fpga repo does let you use the Makefile.OOT=
.inc files to add OOT repos to device builds.=C2=A0</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">If you follow the Makefile examples in <a href=
=3D"http://github.com/ejk43/rfnoc-ootexample">github.com/ejk43/rfnoc-ootexa=
mple</a>, then use the uhd_image_builder.py script to add the OOT repo, it =
should recognize the Makefile.inc in the OOT repo and set up the device&#39=
;s Makefile.OOT.inc for you.</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">I get the impression others here have had success with this approach t=
oo, but let me know if this doesn&#39;t work for you for any reason?</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">EJ</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 10, 2019=
, 5:51 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr">Hi,<div>I created my own FFT IP core an=
d corresponding xci file using Vivado and created a new RFNoC block to use =
it, noc_block_myfft.=C2=A0 I was able to manually modify the makefile in th=
e rfnoc/testbenches/noc_block_myfft_tb/ folder to add a new makefile which =
I created next to the xci file.=C2=A0 I did this following an example from =
the stock noc block testbenches.=C2=A0 This works for me.</div><div><br></d=
iv><div>However, now when I want to build an actual FPGA image, the IP core=
 is not found.=C2=A0 I can copy it to usrp3/top/e300/ip/ and then adjust=C2=
=A0the Ettus makefiles accordingly, but this doesn&#39;t seem like the best=
 approach.=C2=A0</div><div><br></div><div>Is there a preferred way to locat=
e custom IP when used with OOT rfnoc blocks and then configure makefiles su=
ch that they will be found in the build?</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004098ee059961bfad--


--===============5395492567356313255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5395492567356313255==--

