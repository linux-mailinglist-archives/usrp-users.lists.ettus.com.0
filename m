Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C592607D84
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 19:29:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1DA238097E
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 13:29:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666373370; bh=Qq8toIrX8GyN59Y+zTNS41D3O25KqBmoNxo1VAYyrBc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WwPJuMYmtq4fM7WAwKDFtztbjvuYmNN4TG+xfgiq9jv5cc3VadhrGFLzQdn3YGZkf
	 uy2//OCJy7greUbvkSV5JCilcv74ukG7F2C9rogiA4qgF7ognr9XUW82vqDyi4TPCl
	 DwTe8mQMIUn7mHS0G51HCDB+cPrDDQaxCTbCTQEsKYIf41hnK9eyZywxDyaLinYUxi
	 jlV1FNt6PP20cH+SGSHgbH38nPF57SfKRRtY0HBcxmKZt83VEn3YdRHdIfjKJeyQc2
	 3+sawQ3J9IqsXMZ0pINNYojjXJVaW//A2LL81LSb2SZ8PlAcq4s/TIykXJziI0HtDz
	 T/Qj07/RYuNLA==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 712CC38097E
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 13:28:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="tDTfFWtp";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id a67so8446664edf.12
        for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 10:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZICWK8z8uVqbd1jX5k+qzXpJMYG+nmOr0um+cFe4abU=;
        b=tDTfFWtp1RuyQ7CUT+8RlKlKb9iThpC/slWeBp7yRsBuTh/rvZn0ssTW5GHn8iwMBl
         UAQXvMtPFsnqCmhMnHp6EPKEN1dP90ydAhvEatUuBbR0xzgTf4Cjzu780VlgGVSzUq5L
         DDjqBLmy4ltcq/113HjfCQUhkDVOXnip1d+zyeMlKB5EHzciGnJPm4+PVd+NUeOIDDXn
         dO8d77kDvpDj0mijcvnHxO/hain8dxgKLDG7ReK0CS/ktbcFgjsVRKUQotVp1dWrZJaM
         XJbl28Z16TcNrKLmhglsN9YWOZOB7zen2cgJIN6glBpS42Oa0hKKw2P3M+jjqsKer049
         Bv1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZICWK8z8uVqbd1jX5k+qzXpJMYG+nmOr0um+cFe4abU=;
        b=X+6DXzMPjMsgJBaOkRIrJQk38Uw2wDb05sbh+QYYvzLe5J2X9IvROrpEZFDyjB3OoZ
         lnc1OEYaXtbCQYC73pQyLW0Epl3P+16RI5y4D+amdWYHtQPnuwTbE8xn6TP3VYG/8AQa
         p09ErTpTfy5LXnaxEcAk0fOGatOOPvIlj5ZkOOQHnCHwQIpvY5PlOm7chtt1WVohJyQ6
         HcK/+jfVVJBDr3a5C4NaTinGVRDhltkLHm9RD8rfwIG2/9aSToBlJbeLb9mjOAoZ6Rtt
         ox7hdYIGmmWZ0szEnli286YpdTR41VrJHKqrw3kBn2VGPA37DV/o0xvlx4qSF6RSwRf4
         7giw==
X-Gm-Message-State: ACrzQf3TAOBuA9P2Rc6fSCRVqbcRsImfaHdi4XEg/wSjyr6HmzWLfz02
	ioKMGQC4NNZzIV7fKBFlORIvZ3YtqnHpKHe7Vx4g8lkrXKXwsJXW
X-Google-Smtp-Source: AMsMyM5jzlSiMSor4dEUmTTHMQxh+3qK0vpoePciHJGTYi5e4qi/jergvNe2E68a45d9Be5S0zjpSolbkSfrBlWTE9g=
X-Received: by 2002:a05:6402:501b:b0:459:df91:983 with SMTP id
 p27-20020a056402501b00b00459df910983mr17717346eda.85.1666373305360; Fri, 21
 Oct 2022 10:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQUZdQCE8UvxQgb3_cZ+6W-YsL-DLGNvd0VVdOBzF-irUQ@mail.gmail.com>
In-Reply-To: <CAG16vQUZdQCE8UvxQgb3_cZ+6W-YsL-DLGNvd0VVdOBzF-irUQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 21 Oct 2022 12:28:08 -0500
Message-ID: <CAFche=igeFLR8XLE+Q3H_0UOTYbBbbqig10K1Atn-HJxhYOAWg@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: P6WACCMFIE7LI2QHBBT5VIZJYKTCGCV2
X-Message-ID-Hash: P6WACCMFIE7LI2QHBBT5VIZJYKTCGCV2
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: AXI-RAM memory width
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P6WACCMFIE7LI2QHBBT5VIZJYKTCGCV2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6751640296118944398=="

--===============6751640296118944398==
Content-Type: multipart/alternative; boundary="000000000000edf8b805eb8ec419"

--000000000000edf8b805eb8ec419
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Right, it needs to be 64 bits to work without other changes. That's the
width of the AXI Interconnect to which the axi_ram block connects. However,
the connection to the DRAM is 256 bits. That gets shared across 4 ports by
the AXI Interconnect, and each port could potentially be reading and
writing simultaneously. This is why the default is to provide four 64-bit
ports.

It would be unusual to need more than 64 bits per port, since you're
limited to 64-bits per port by RFNoC on E320. However, you could make it
wider if you modify the AXI Interconnect appropriately and update the IO
signatures.

https://github.com/EttusResearch/uhddev/tree/UHD-4.0/fpga/usrp3/top/e320/ip=
/axi_intercon_4x64_256_bd
https://github.com/EttusResearch/uhddev/blob/UHD-4.0/fpga/usrp3/top/e320/e3=
20_core.v#L610

Wade

On Thu, Oct 20, 2022 at 5:27 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi all,
>
> I am using UHD 4.0 in an E320 USRP.
> I would like to use the axi_ram_fifo block to communicate with the DMA,
> but I have some doubts about it.
> I notice that the maximum width I can test is 64, if I try 128 or 256 it
> fails. The io_signatures.yml file has this line:
>
> Axi_ram:
> Type: axi4_mm_4x64_4g
>
> Does this mean it only supports 64-bit width? Is there any way to increas=
e
> the width?
>
> Kind Regards,
> Maria
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000edf8b805eb8ec419
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Right, it needs to be 64 bits to work without other c=
hanges. That&#39;s the width of the AXI Interconnect to which the axi_ram b=
lock connects. However, the connection to the DRAM is 256 bits. That gets s=
hared across 4 ports by the AXI Interconnect, and each port could potential=
ly be reading and writing simultaneously. This is why the default is to pro=
vide four 64-bit ports.<br></div><div><br></div><div></div><div>It would be=
 unusual to need more than 64 bits per port, since you&#39;re limited to 64=
-bits per port by RFNoC on E320. However, you could make it wider if you mo=
dify the AXI Interconnect appropriately and update the IO signatures.</div>=
<div><br></div><div>

<a href=3D"https://github.com/EttusResearch/uhddev/tree/UHD-4.0/fpga/usrp3/=
top/e320/ip/axi_intercon_4x64_256_bd">https://github.com/EttusResearch/uhdd=
ev/tree/UHD-4.0/fpga/usrp3/top/e320/ip/axi_intercon_4x64_256_bd</a> <br></d=
iv><div><a href=3D"https://github.com/EttusResearch/uhddev/blob/UHD-4.0/fpg=
a/usrp3/top/e320/e320_core.v#L610">https://github.com/EttusResearch/uhddev/=
blob/UHD-4.0/fpga/usrp3/top/e320/e320_core.v#L610</a></div><div></div><div>=
<br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Oct 20, 2022 at 5:27 AM Maria Mu=C3=
=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi all,<br><br>I am using UHD 4.0 in an E320 USRP.<br>I would like=
 to use the axi_ram_fifo block to communicate with the DMA, but I have some=
 doubts about it.<br>I notice that the maximum width I can test is 64, if I=
 try 128 or 256 it fails. The io_signatures.yml file has this line:<br><br>=
Axi_ram:<br>Type: axi4_mm_4x64_4g<br><br>Does this mean it only supports 64=
-bit width? Is there any way to increase the width?<br><br>Kind Regards,<br=
>Maria<br></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000edf8b805eb8ec419--

--===============6751640296118944398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6751640296118944398==--
