Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C2169EC9C
	for <lists+usrp-users@lfdr.de>; Wed, 22 Feb 2023 02:57:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DCD13383D87
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 20:57:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677031053; bh=6qCfAthdTeE3526BJ0WpSMGaNH8uNWpXAZiLONs/PBk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=zF47o3lXv4j3uPTGIjEWLrS0mAj4Fep+jM7NKdLTLEvOzlZUUDnumzFnrkCpQuOIp
	 7S5oNr7EaZVLUJQu1zl655yvGSNO+yKUXgueNRBrt5rSXdWCWkDUzsHaLo4n9+hg13
	 D2tiwtNR4dVcRz9/BKOioXzAjKw//vxvSzEb3ejuJrbYuqOxLMT0yJUdE/FTqMspQ2
	 gWnFxkC+TOMHViB/ItqujwFQRjPvygUaY4UBQL74tqIOBHzDG66I4uRCRj4Di0/D2F
	 aI5VmMm7d2FGiFGRjX6Y1GojxQOSLXhsI20ll20SVCVCKN0WVIZR4galfwaCGWJCt+
	 cYV9nRu8Q+Crg==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id D07F8380987
	for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 20:56:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="nnqEyIBb";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id b12so24553017edd.4
        for <usrp-users@lists.ettus.com>; Tue, 21 Feb 2023 17:56:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JAuHFYaYn5CL3P04tL7A1oZIB3SKl5kYbmnnRM2MRJ0=;
        b=nnqEyIBbivIWD5cCLIrWLqkny6Q49FWdNn8w34juAq2muPgZ+GQuj0PTCnOSLnzJH6
         t/ZeJtVGoSaf7bndfKMNdDsTLklBPmEkDw+wzHk15jbdwn1OKmj/6ulI2nvl/m3ofX9a
         xgcpgG4NGw0xGYnf4j82WUrS/KNg6yIhADFIoCU61qTdh5PDL/zpMsK90nmx0TcY3c9j
         NcXjqVsujvQcJh+tqRwuodbzwQ6d4DaOrowHBLUkzNtEQllMrw7uKJjiecKeSopYfPCQ
         53E0qm7bpe1C46zWI2koVS1DY3tsXJa4LyaGN05nq2l9+FtWU7Wlhbtx1/pk5dpbl2Zw
         KekQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAuHFYaYn5CL3P04tL7A1oZIB3SKl5kYbmnnRM2MRJ0=;
        b=HyvU3cgHbTmeeEiwCHrqMAwq0PJotKnM/CNnNIDZrdI0x5U6mB5rspwFsZhny7AijE
         UikqAGFLeZp08R0GOyRzoDOlNM7JdDQdKI5OMFUrfh5HgWVvDIDg9XkFBo137ZxeW1pU
         nuTWyh95ydwyJeGYBkLiizDoDMjCXHtef9LPWSIkCu5yWvBjt4QpDvQ4Cpp3owY4m6DQ
         sQCxYzx1YBBlhp9jDW+V1TeHPgrVITGki4r04zeh3C6H76B/NWzCe3OHX6E0tCf5ckQA
         YnCFlNREO7k11zgXRKPQ2bGPqRP4oSq7jV/OflUVYwknQ5XmUwEQxzdwe9To8FEpGg98
         IPqA==
X-Gm-Message-State: AO0yUKUrvijrP5ngaN9Y/eEh0IuB+huBcFYAhYjzX96/MNTq3qwGyXm0
	/tJfGGcEp/1jZf7Jnw9RDPak2c6RpTUBlkCSuUDi0U4VfNT94Rijxdk=
X-Google-Smtp-Source: AK7set8bkl27tiywnEbyjzM0e7cJWK5pbCqdAAIgRlLmxr9JN05+4GNNJm8nNPP5H6/PopfOvMELdseYQg0Cw0zLkCw=
X-Received: by 2002:a17:906:8508:b0:8d0:2c55:1aa with SMTP id
 i8-20020a170906850800b008d02c5501aamr4205295ejx.0.1677031014755; Tue, 21 Feb
 2023 17:56:54 -0800 (PST)
MIME-Version: 1.0
References: <U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM@lists.ettus.com>
In-Reply-To: <U9JdLwwQx0ZjICasO5FTpdFkBEWOuVnkBpbXGNPM@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 21 Feb 2023 19:56:38 -0600
Message-ID: <CAFche=hi81sx9qzQ1U+pBh-Hy2-M3AJwXZMnWFKd9N54SdrZYg@mail.gmail.com>
To: perper@o2.pl
Message-ID-Hash: FQV6I5ZFOO42M6IZUACO6NCCGM3EVVU7
X-Message-ID-Hash: FQV6I5ZFOO42M6IZUACO6NCCGM3EVVU7
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 + QSFP28 network adapter from intel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQV6I5ZFOO42M6IZUACO6NCCGM3EVVU7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3193984145093778417=="

--===============3193984145093778417==
Content-Type: multipart/alternative; boundary="000000000000e9809605f540356e"

--000000000000e9809605f540356e
Content-Type: text/plain; charset="UTF-8"

Hi Piotr,

I don't know of anyone who has tried that card specifically for 10 GbE, but
Intel cards in general are commonly used with USRPs for 10 GbE.

However, the Intel cards are not recommended for 100 GbE on X410. See here
for the recommended cards and cables which has been tested and validated
for 100 GbE:

https://kb.ettus.com/X410#100_Gigabit_Ethernet

There was a post on the mailing list a while ago from someone who tried to
use a similar card with 100 GbE and ran into problems:

https://lists.ettus.com/empathy/thread/IA2YCIJTQOEPNJOPF3AJUXC3I6ONRCJR

Wade

On Tue, Feb 21, 2023 at 5:23 AM <perper@o2.pl> wrote:

> Hello,
>
> Answering my own question: these brochures are closest to answering what I
> need to know:
>
>
> https://kb.ettus.com/images/f/f8/Open_Architecture_For_Radar_and_EW_Research_v1.0.pdf
>
> www.ni.com/content/dam/web/pdfs/oarer_solution_brochure.pdf
>
> They lists Intel E810-CQDA2 network adapter as a one that was validated
> with USRPs. Although not in 2xQSFP28 mode but acting (probably) as 8xSFP+
> 10Gbit/s interfaces.
>
> The card also seems to have quite good support from DPDK:
> https://fast.dpdk.org/doc/perf/DPDK_21_08_Intel_NIC_performance_report.pdf
>
> Does anybody have experience with E810-CQDA2 + USRP X410?
>
> Best Regards,
> Piotr Krysik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e9809605f540356e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Piotr,</div><div><br></div><div>
I don&#39;t know of anyone who has tried that card specifically for 10 GbE,=
 but Intel cards in general are commonly used with USRPs for 10 GbE.</div><=
div><br>

</div><div>
However, the Intel cards are not recommended for 100 GbE on X410. See here =
for the recommended cards and cables which has been tested and validated fo=
r 100 GbE:</div><div><br></div><div><a href=3D"https://kb.ettus.com/X410#10=
0_Gigabit_Ethernet">https://kb.ettus.com/X410#100_Gigabit_Ethernet</a></div=
><div><br></div><div>There was a post on the mailing list a while ago from =
someone who tried to use a similar card with 100 GbE and ran into problems:=
</div><div><br></div><div><a href=3D"https://lists.ettus.com/empathy/thread=
/IA2YCIJTQOEPNJOPF3AJUXC3I6ONRCJR">https://lists.ettus.com/empathy/thread/I=
A2YCIJTQOEPNJOPF3AJUXC3I6ONRCJR</a></div><div><br></div><div>Wade<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Feb 21, 2023 at 5:23 AM &lt;<a href=3D"mailto:perper@o2.pl">perper@=
o2.pl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><p>Hello,</p><p>Answering my own question: these brochures are closest=
 to answering what I need to know:</p><p><a href=3D"https://kb.ettus.com/im=
ages/f/f8/Open_Architecture_For_Radar_and_EW_Research_v1.0.pdf" target=3D"_=
blank">https://kb.ettus.com/images/f/f8/Open_Architecture_For_Radar_and_EW_=
Research_v1.0.pdf</a></p><p><a href=3D"http://www.ni.com/content/dam/web/pd=
fs/oarer_solution_brochure.pdf" target=3D"_blank">www.ni.com/content/dam/we=
b/pdfs/oarer_solution_brochure.pdf</a></p><p>They lists Intel E810-CQDA2 ne=
twork adapter as a one that was validated with USRPs. Although not in 2xQSF=
P28 mode but acting (probably) as 8xSFP+ 10Gbit/s interfaces.</p><p>The car=
d also seems to have quite good support from DPDK: <a href=3D"https://fast.=
dpdk.org/doc/perf/DPDK_21_08_Intel_NIC_performance_report.pdf" target=3D"_b=
lank">https://fast.dpdk.org/doc/perf/DPDK_21_08_Intel_NIC_performance_repor=
t.pdf</a></p><p>Does anybody have experience with E810-CQDA2 + USRP X410?</=
p><p>Best Regards,<br>Piotr Krysik</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e9809605f540356e--

--===============3193984145093778417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3193984145093778417==--
