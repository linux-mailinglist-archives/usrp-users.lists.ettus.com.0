Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD6FD3C304
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 10:09:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0E45838612D
	for <lists+usrp-users@lfdr.de>; Tue, 20 Jan 2026 04:09:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768900156; bh=wag7QyyFauq5LFMjYSt8SkRqUmi65Zxol3UpLpj3iY4=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JFqmELm/E37wwDNRJvvNXRFGfNQnQ1quXgTnBcrdJaFkQjHuYDSCvbogF8yz9o+4n
	 +w/iSHLevgNjcm1ncKIhStUnfThAMq3pj0lBlagKWoCW8hw0eed7cPAiOeeT5GEBIH
	 fZ2S0/483M472r1iskZCJCr1vI2LfyWx3zX0mIj5QSYzvl4uA7Pdcqmn7oFFQw5DOy
	 g71AfxfdlY5cFReeezbM97W3C/JU7/qlqoX2nmnjwYeVrHKHjAVJzeCXD4Yotsye06
	 7qHOpRiS+agFrRA4uw4lh2kPBPRduEJUWcBvOzlIrzmOupIfe/0DIFodtuaet0lEEi
	 OZmwgJI1wWf8Q==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 84E4638607D
	for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 04:08:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="QjnkgvLv";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-8888a1c50e8so63289206d6.0
        for <usrp-users@lists.ettus.com>; Tue, 20 Jan 2026 01:08:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768900088; cv=none;
        d=google.com; s=arc-20240605;
        b=iQfzQyvoZR8kP5DWfRrd56a93nKAudiUyw5PCUfKWIHWxr7uFQDnv38dyUjMJfkK08
         LeXpy2zD7FLaC1vFvGq282+0U6CcsgOuTmnMFkfQbyLZxhZgVk7+CBitAz3gYVAFGukf
         2eMPdmyCCnq90qROUqJdsyJSWThbgEG5rvL4FPHee6Lt52r/hfNlvhAa/L/UEo4Brf16
         KfQdM8y8L/O2ov+FSGC1MtHtFh8OAHyMogbP0yGaib8cRrrn6ZWlr8NsW9rVva+82hz2
         w8rHsMUquIHF4anlV+XEnDYcwAsbJp+qXyXp0LtrfPhiFgiom9gMLdZBqhM/L7ZwfPzp
         E5XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=dQ/7xnCGJ44Lguzs/Xs41+fQA+xcq/VCW05q+tBbv/E=;
        fh=w7oQ9WL2gA4DrMO4z7zUu8Ij12W43ckkLa1NAxhiwRs=;
        b=STZ9kivXlh+NWwRxwcQvIe0PIK8r2/dr45QTpbuG6zgtVYcflGVLttx7Aid4BwABXi
         5itKNCx+DyGv0t+oMGGI/bvoeGjQiYybwPkgx2Qe3uzsNVQdcfJ+4MO+FAuY/zww1YBB
         m9OdimsLKdw72fdjoi38yQbQ+n48SO0XA5IfBFdC0w4HIyjUvK2QsqvSXTTHM+QuVz8u
         ezGzS3AcbLidE3XbV+/xFMvgzdjRqsJ8ZPS6R1ioVEo+TjfbmIn55KefFccU9ILrS6o1
         FqQLxwSR79dH0RHq91NU9xmRHna3Uc6awxDLypJjwgISrFDO1wA8keP8faCdsCVII58X
         XBGA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1768900088; x=1769504888; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dQ/7xnCGJ44Lguzs/Xs41+fQA+xcq/VCW05q+tBbv/E=;
        b=QjnkgvLv/wdgD3vmEOskQdNUnqZtVEX4HwS63kUt2V5g2KnzcqQ9TDOZRHKbVtWvxU
         b5Layf+GpC83AGVRLV+UhK+AMu/4HnN+al6yDSaD+VORGh5Jjahd2QbwVQ1NmEvDx4Rw
         ci9JNGBOWWIcFDMYY/quvgpwpeCNC4X1tUwpT7pVjREyd38hU/5guNHek4dMtXkybHPo
         tFsHC2JJJuS523rHbCKPNhszFRqr7JvfiH3gWDniIZX9wQvD7l8R0tTeAXOB1ccpqokh
         LACgikxomNZgclPPR2DnscNhs9YWnfjLSglkuoIbmfQ+Vw8hcO0gK8S7YhwiXovFWmS8
         lCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768900088; x=1769504888;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQ/7xnCGJ44Lguzs/Xs41+fQA+xcq/VCW05q+tBbv/E=;
        b=WAidtBKqJghU4NGeMGWfBA5YxmjTQ3txSAYWgZ0a+5eoqeWKcdYnTdrvva98vKKpMO
         zYKMDvq2qAJLQZFZrVAUNNYCukCxPRNKBQd5ey4/k/xi8s1j7jE9KVyEZ/Eibvgp16gY
         6f2ZPZQ/QxdAivaVCcIRIw8vgdOHvEvsPmn888SilvF0AT5S4GsF4NsjThyennYleedO
         s94UxkjBmc6qhbqRcMNbuzL+TYrNovHoSK9kYVtCmKiXj17/rhx9foeD+/6fDBTF0boA
         njCA1O/HHlkaU5r/LwGQvqyrk1T6kHBWKQod7LzEa2++A4Lu8Y8+Gatn8Ou/eWn2F56r
         GeGw==
X-Gm-Message-State: AOJu0YzG18Zt4LqIF6MUMwec3aXgB1eD8P2d6kdkQltHEF5OZh2Itpug
	y8pJIa0SRIPraTjI+I8C8Zy0Udb5gB+CpOZa29lgO3alLQgaRvX15EXlrzFQ9wu6RarUSgr6P9u
	lwKY9x4QLU21B8embpLbVaOulRUJhAt3qerK4eNh/ij+F8+fBGIJzucb6UA==
X-Gm-Gg: AZuq6aIUl2fZ7yqPBPbceIX1nZtAh5vEDzIdBCfo3+WR+vtYGD46kMl9PdwpvyX+c+8
	JWdldE1XyT15payZvGqLK5V0o2edhIgLIitfkur1rb4zdzMVoKzVlDjGhmkI3kqSLeteyrLQiP2
	+7Gn6jmZ3pycOJHper7vhEKu2CvkRtTCSoFq+TBxo3ZYjOVKURdpASm4PYlvPOAwETq4ZqRyAPK
	mnLh1DXOzS3eprKTLvhwQEN9XFmn8+zWR26ajCQr7yLavw0pbD/fDNPHZkgRgO0Ak27YUHlzvOW
	YuXRGiOi4ifoATJR+iAirkyU9A==
X-Received: by 2002:a05:6214:f01:b0:890:6330:97bf with SMTP id
 6a1803df08f44-89463ea6a2cmr15229596d6.60.1768900088413; Tue, 20 Jan 2026
 01:08:08 -0800 (PST)
MIME-Version: 1.0
References: <2ce8603c-3e73-4dc7-819a-de10356057ba@gsi.de>
In-Reply-To: <2ce8603c-3e73-4dc7-819a-de10356057ba@gsi.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 20 Jan 2026 10:07:57 +0100
X-Gm-Features: AZwV_QhRtuMOPlQ4mYp9RByK6TxGsz6A5JRrD0uslowKM5hrHAwYB-14WTchl_c
Message-ID: <CAFOi1A7tGJKFGaX1V3oSaVadj-L7Lj75qC+THRBUog_ad+t+jA@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: XEF5NYANUSFXHNGWRYXNXQFFIUHAQ5ED
X-Message-ID-Hash: XEF5NYANUSFXHNGWRYXNXQFFIUHAQ5ED
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: NI-RIO error using USRP X310 over MXI with PCIe-8371 adapter on Ubuntu 24.04 LTS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XEF5NYANUSFXHNGWRYXNXQFFIUHAQ5ED/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0148273713733800557=="

--===============0148273713733800557==
Content-Type: multipart/alternative; boundary="00000000000069cb740648ce25dd"

--00000000000069cb740648ce25dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Philipp and others,

we have gotten sporadic bug reports on this issue, and have started
collecting them here: https://github.com/EttusResearch/uhd/issues/818

If you can please extend the bug report with some system details, we might
be able to narrow things down.

--Martin

On Thu, Jan 15, 2026 at 2:40=E2=80=AFPM Philipp Niedermayer <p.niedermayer@=
gsi.de>
wrote:

> Dear all,
>
> we are using the USRP X310 connected over MXI with a PCIe-8371 card. This
> used to work well up to including Ubuntu 22.04 LTS. Now after updating to
> Ubuntu 24.04 LTS we are experiencing the connecting issue described in th=
e
> following. I am aware that 10G Ethernet is the recommended alternative, b=
ut
> the PCIe connection is beneficial for us, as it allows to quickly switch
> between FPGA images for different applications on-the-fly without having =
to
> power cycling the X310 (remote operation). According to NI, RIO is fully
> supported on Ubuntu 24.04 LTS so it should work.
>
> Does anyone have experience with this on Ubuntu 24.04 LTS or any
> suggestions how to identify and fix the issue would be welcome!
>
>
> *Issue description:*
>
> The USRP X310 is discoverable using "uhd_find_devices" and shows up
> correctly as resource RIO0. It's correctly enumerated in lspcie using
> niusrpriok drivers and the niusrpriopc service is running. However,
> everything beyond that does not work, i.e. any flowgraph fails. Even the
> "uhd_usrp_probe" fails with the following after a clean reboot:
>
> $ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
> UHD_4.9.0.0+ds1-1~noble2
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile
> /usr/share/uhd/4.9.0/images/usrp_x310_fpga_HG.lvbitx
> Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown
> error. (Error code -63150)
>
> $ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
> UHD_4.9.0.0+ds1-1~noble2
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
> [INFO] [X300] Using LVBITX bitfile
> /usr/share/uhd/4.9.0/images/usrp_x310_fpga_HG.lvbitx
> Error: RuntimeError: x300_impl: Could not initialize RIO session. A fault
> on the network caused the RPC operation to fail. (Error code -63042)
>
> And every subsequent try results in the same network fault error.
>
>
> *Setup:*
>
>    - USRP X310 connected over MXI with a PCIe-8371 card. Ubuntu 24.04 LTS
>    x86_64 with Kernel 6.8.0-90-generic
>    - UHD 4.9.0.0+ds1-1~noble2 and GNU Radio 3.10.12 stack installed via
>    the ppa:gnuradio/gnuradio-releases repository
>    - NI drivers 2025 Q4 installed as described here:
>    https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie
>
>
> Does anyone have experience with this on Ubuntu 24.04 LTS or any
> suggestions how to identify and fix the issue would be welcome!
>
>
> Best regards
> Philipp
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000069cb740648ce25dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Philipp and others,</div><div><br></div><div>we ha=
ve gotten sporadic bug reports on this=C2=A0issue, and have started collect=
ing them here:=C2=A0<a href=3D"https://github.com/EttusResearch/uhd/issues/=
818">https://github.com/EttusResearch/uhd/issues/818</a></div><div><br></di=
v><div>If you can please extend the bug report with some system details, we=
 might be able to narrow things=C2=A0down.</div><div><br></div><div>--Marti=
n</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Jan 15, 2026 at 2:40=E2=80=AFPM Phili=
pp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niedermayer@gs=
i.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><u></u>

 =20

   =20
 =20
  <div>
    <p>Dear all,</p>
    <p>we are using the USRP X310 connected over MXI with a PCIe-8371
      card. This used to work well up to including Ubuntu 22.04 LTS. Now
      after updating to Ubuntu 24.04 LTS we are experiencing the
      connecting issue described in the following. I am aware that 10G
      Ethernet is the recommended alternative, but the PCIe connection
      is beneficial for us, as it allows to quickly switch between FPGA
      images for different applications on-the-fly without having to
      power cycling the X310 (remote operation). According to NI, RIO is
      fully supported on Ubuntu 24.04 LTS so it should work.</p>
    <p>Does anyone have experience with this on Ubuntu 24.04 LTS or any
      suggestions how to identify and fix the issue would be welcome!</p>
    <p><br>
    </p>
    <p><b>Issue description:</b></p>
    <p>The USRP X310 is discoverable using &quot;uhd_find_devices&quot; and=
 shows
      up correctly as resource RIO0. It&#39;s correctly enumerated in lspci=
e
      using niusrpriok drivers and the niusrpriopc service is running.
      However, everything beyond that does not work, i.e. any flowgraph
      fails. Even the &quot;uhd_usrp_probe&quot; fails with the following a=
fter a
      clean reboot:</p>
    <p><font face=3D"monospace">$ uhd_usrp_probe=C2=A0<br>
        [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
        UHD_4.9.0.0+ds1-1~noble2<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>
        [INFO] [X300] Using LVBITX bitfile
        /usr/share/uhd/4.9.0/images/usrp_x310_fpga_HG.lvbitx<br>
        Error: RuntimeError: x300_impl: Could not initialize RIO
        session. Unknown error. (Error code -63150)<br>
      </font></p>
    <p><font face=3D"monospace">$ uhd_usrp_probe=C2=A0<br>
        [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
        UHD_4.9.0.0+ds1-1~noble2<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>
        [INFO] [X300] Using LVBITX bitfile
        /usr/share/uhd/4.9.0/images/usrp_x310_fpga_HG.lvbitx<br>
        Error: RuntimeError: x300_impl: Could not initialize RIO
        session. A fault on the network caused the RPC operation to
        fail. (Error code -63042)</font></p>
    <p>And every subsequent try results in the same network fault error.</p=
>
    <p><br>
    </p>
    <p><b>Setup:</b></p>
    <ul>
      <li>USRP X310 connected over MXI with a PCIe-8371 card. Ubuntu
        24.04 LTS x86_64 with Kernel 6.8.0-90-generic</li>
      <li>UHD 4.9.0.0+ds1-1~noble2 and GNU Radio 3.10.12 stack installed
        via the ppa:gnuradio/gnuradio-releases repository=C2=A0</li>
      <li>NI drivers 2025 Q4 installed as described here:=C2=A0<a href=3D"h=
ttps://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie" target=3D"_=
blank">https://files.ettus.com/manual/page_usrp_x3x0.html#x3x0_hw_pcie</a><=
/li>
    </ul>
    <p><br>
    </p>
    <p>Does anyone have experience with this on Ubuntu 24.04 LTS or any
      suggestions how to identify and fix the issue would be welcome!</p>
    <p><br>
    </p>
    <p>Best regards<br>
      Philipp</p>
    <p><br>
    </p>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000069cb740648ce25dd--

--===============0148273713733800557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0148273713733800557==--
