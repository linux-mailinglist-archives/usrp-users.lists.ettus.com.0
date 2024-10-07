Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C50E6992634
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 09:41:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13AE7385490
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2024 03:41:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728286869; bh=snanG7p2E0jXBZ8BZo+n0+hb3wuJPIErwCC71j7Vb6Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=tPwPTlEML92YJi5z+1MTjznWusNMnFMqLjOGMHcGjKL7SJtLCR68E6KSVZQZIbc+J
	 7rh12+iIU17wFSmigJAU25Eni1C7nBj7nPtBtcvbl1fY0Bko4lUd2lxc6E6zeMNMob
	 YlJ8h+RlRd/RyTCJVL8xRNRT8xfts+L22M08zThec03fmY2u+CtQs/0E4yb+/E/ij9
	 KvBecOYBYGHyMl2vyp1tCl5qWDsApfYQH/Ecy0UdTXXjfDhkn6EpIkdi5HfC2FlxES
	 6eQ/T22TcBWVs/+oBW8ZhWKhBphMYAGFSbQFtSLknQCaWWe/gUUFHKT0KUtR/xRbfE
	 /N8chlzpHk80A==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id F1BAF3853C1
	for <usrp-users@lists.ettus.com>; Mon,  7 Oct 2024 03:40:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="OD4cjlbN";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5c882864d3aso4625891a12.2
        for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2024 00:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728286843; x=1728891643; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mdVewwehMufJOTXDXe7KI1Fz+kB7n2TuGRDQKy0MiMY=;
        b=OD4cjlbNY7tK1cG2XIvAw5sM0L0IGyvKUqvD85aabTevlkTYt+7DyGrR90saqasf8a
         0VZy76UH4O0MraIXLfaHO1k8XEATsGvyhXRBjNG0YGQYAaUKdnfDxKS4AhLQ/zjPyzxU
         8kDq0tzmVG6PRr8ZY2FEbA+2ULUqD+SV5Xi1Px9aK1XMGb5Z1i0msxlai+7sfuu0m32t
         7X5SwtXs0lUWUciSDUW9v0HvYKio+T4ea8qA/4mxhYuzJp4SxzfGWAD5wU7gvwwYb3qJ
         6htX2EGj/BPJJp2zX9Pz43CDGLkh/4zLmRAegemHt9UwivUTEO+xtdwEPFStp3uro7IR
         ftpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728286843; x=1728891643;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mdVewwehMufJOTXDXe7KI1Fz+kB7n2TuGRDQKy0MiMY=;
        b=LRVSRwDd1gOFMRLilGK2lQks0GmVi6rxCv642HsdCDtJ98lF6ILcAVD28n1CRtnb+H
         rXt7uPXJZbu/JJ2ZTd4+zkLnYrwqqT65RmupCHUrkmQWEAEiSRLkKtTQDxow4bJsj26j
         XbiNeamWAEUJ3F2XCDLOuIqmqNiHBpXS8T1VLh+7fE8vD3duNL9jopnN7UBWlUAf4ET4
         2mlF6+BdW+fJOfuxXsJbJzo8ggHzAOsAnzfcpWO1p/yi6w+zEwjQ3QkP9YLXxAD+Y1jQ
         YaAEgX7ivAXv9OwOSbfdqNzVKw3U+J4pq92phYjrO1ov/NrZfQPVb9/MFIwg80iAkm4q
         s5vg==
X-Gm-Message-State: AOJu0YztOX+U1CoF99nuGokUdGs8CRPOpeXedJCDrUXDNkVjlILwHUY8
	4pn5cs//tvahNCODraSPMY1/RBFxNofARGMbfNAhX7papQuC/bNNra7ehd4aMQX6iUsb98LdlIl
	oYvgRX0bVOlCHUKXh5h8lneJAxEGroxHsXySRux3DZow7KN7qSO4=
X-Google-Smtp-Source: AGHT+IHXqMgrSJaw5asAnrA39jLeDt+D7kWwaj+vM8RkjAJCziXKG/WQhaQpbtNmCKz4P/S4cu8ozMTAGiXqBgoDwnA=
X-Received: by 2002:a05:6402:4011:b0:5c6:cf72:fcbc with SMTP id
 4fb4d7f45d1cf-5c8d2e8772emr10509990a12.24.1728286842875; Mon, 07 Oct 2024
 00:40:42 -0700 (PDT)
MIME-Version: 1.0
References: <E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs@lists.ettus.com>
In-Reply-To: <E5zKD20cBALWD9vvyl4tvnjjZe64QWzUFFIOB7DLs@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 7 Oct 2024 09:40:31 +0200
Message-ID: <CAFOi1A4QVNmYRkji6bAy_mBSU6Cy+27HmiKkKeYrqjkB+u3atQ@mail.gmail.com>
To: mgarrett@garrett-tech.com
Message-ID-Hash: OWCNHZYJ7W7XZUUAUATYKCWEME6C2GMO
X-Message-ID-Hash: OWCNHZYJ7W7XZUUAUATYKCWEME6C2GMO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC e310 block yaml and bit image file examples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWCNHZYJ7W7XZUUAUATYKCWEME6C2GMO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4237272005119880448=="

--===============4237272005119880448==
Content-Type: multipart/alternative; boundary="0000000000005708000623de2330"

--0000000000005708000623de2330
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

you can modify the existing e310 YAML files (under fpga/usrp3/top/e31x) to
add blocks, but be advised that the E310 FPGA is pretty small and you may
not fit everything.

--M

On Sun, Oct 6, 2024 at 7:29=E2=80=AFPM <mgarrett@garrett-tech.com> wrote:

> I am looking for some e310 yaml examples to build custom fpga images, for
> an e310, to use python in uhd and gnu radio support for rfnoc.
>
> Specifically Im looking for :
>
>
> 1x DDC, 1x DUC
>
> usrp_e310_fpga_sg3.bit,
>
> usrp_e310_fpga_sg3.yaml
>
> and
>
> usrp_e310_fpga_RFNOC_sg3.bit,
>
> usrp_e310_fpga_RFNOC_sg3.yaml
>
> fosphor, window, fft, 2x AXI FIFOs, FIR
>
> I have a full devlopment system built up and can build the FPGA images
> (.bit) but am not sure
>
> how to configure the YAML file block, staic and crossbar links.
>
> Thank you in advance!!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005708000623de2330
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>you can modify the exist=
ing e310 YAML files (under fpga/usrp3/top/e31x) to add blocks, but be advis=
ed that the E310 FPGA is pretty small and you may not fit everything.</div>=
<div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 6, 2024 at 7:29=E2=80=AFPM &lt=
;<a href=3D"mailto:mgarrett@garrett-tech.com">mgarrett@garrett-tech.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I=
 am looking for some e310 yaml examples to build custom fpga images, for an=
 e310, to use python in uhd and gnu radio support for rfnoc.</p><p>Specific=
ally Im looking for :</p><p><br></p><p>1x DDC, 1x DUC</p><p>usrp_e310_fpga_=
sg3.bit, </p><p>usrp_e310_fpga_sg3.yaml</p><p>and</p><p>usrp_e310_fpga_RFNO=
C_sg3.bit, </p><p>usrp_e310_fpga_RFNOC_sg3.yaml</p><p>fosphor, window, fft,=
 2x AXI FIFOs, FIR</p><p>I have a full devlopment system built up and can b=
uild the FPGA images (.bit) but am not sure</p><p>how to configure the YAML=
 file block, staic and crossbar links. </p><p>Thank you in advance!!</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005708000623de2330--

--===============4237272005119880448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4237272005119880448==--
