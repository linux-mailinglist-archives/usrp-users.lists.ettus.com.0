Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D7CAB634D
	for <lists+usrp-users@lfdr.de>; Wed, 14 May 2025 08:39:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 90E243851BF
	for <lists+usrp-users@lfdr.de>; Wed, 14 May 2025 02:39:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747204782; bh=qF8lXnzCUIPRPm1xRr4pTnPYQL0ZjId091Z4blvUMrI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=j2mEHLmofq9UvSwcgbj3Ml9iP1gsg+mJl6ga0ItXfIlEQlzilWjd7q14+GyOmFGfw
	 2KMUY+h870iPtHFDiwAr5rcS7eY3Z9yETQ3liW4fE59yWPDFyn3VvQCws/XumxArPD
	 CArxjUlA1Nmv6FkEhdDxOXOQxxWXVQEf2FUKIpMHcvpsRN4VbxKssi2c8nEIIlmFFW
	 vbExRnByyL8ohoh094bxH/w+XU/rhZgJrEV1h9Q/cSzjTRsq4w2uuPFzjkju4i0SzZ
	 vYSlAxiTfGl2u+WR1TioCyjX6cVWLTtkDPF7R/mcStmNdZDIvddO5uymtrrC6E2sS1
	 cbdEVNZognylg==
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 893913811B4
	for <usrp-users@lists.ettus.com>; Wed, 14 May 2025 02:39:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OmDdJz1f";
	dkim-atps=neutral
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54b09cb06b0so8671190e87.1
        for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 23:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747204743; x=1747809543; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8hSmouCcB0RtABQ+33M0vsdz8JZQhTIoowMPCpSefJQ=;
        b=OmDdJz1fcFrT2lHVjcjGVvAV6X6puNGSZeEc6PLJXWyj7obddzdjIjLhp0nosb7ykb
         Znav3FKfo0gMPaHeI6KfgvfWQ+381gRH33mz+xd4VXLaJz6Tl8HossBaRvXnHBw/3s6R
         qcTgbe53no+k8ZadmHlsDwkvZNqNqu1276uh4r/oFni5btdsTI6VMeeZJfhrhSvQW7o0
         DwAX6NElIaIuwjiQVC09iX3tmlNDQN/TYNNOoSpD7PXQSt0tuQWUFAtrOAu9AhwAH2i+
         bpP3SFygxFqV/6J9MhAc5UyttPr+ZCqjcMycBpS/2nhTyK+O8IId1NX+dp1mUXyOWJ0w
         VKSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747204743; x=1747809543;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8hSmouCcB0RtABQ+33M0vsdz8JZQhTIoowMPCpSefJQ=;
        b=aaEUIEZnVk0xLywNVg88rkZR+ip7Um0V4h7tRg+59kWUpzPdinq6+qtKlFOyn1lFiv
         JBKiVpseoBXP8JsTDSXpbPgHagxNS/GDrESxOsJ35Ov8RtH4k77JSXEl7aIAeDcXMjrz
         zLy3G5rBC8JSShC/ifP59AgPxaLdoDWNkeSV5pwG2m9Ccl+te9B+FlXr/Q0f7fK/Pab9
         0Ez/+H+CdkOtqrTdIjRNfu2URr7oCLnlJvGIsP7VrKHg7nfXzTdGcoWxD1vxUYwGTEaK
         MtIPWdogQDYjz+BjMcSt+Ba9PNJ67sPs9gQOhoOjBmzDd+6BwbMkySve5/ec+ANcv6Pd
         LlaQ==
X-Gm-Message-State: AOJu0YxijcN4OE8If/3CWgE6PVg5oyYHkF+KsJNK0yzdmFF/rxoYyx1d
	nAeutzByvhfBY6cwwS28ElKQ1HCEtM59YQp388Hn/hZucZknDZskvexaiSuNCmUjpLh8ATBNf7f
	ZKCTy8+puS1j7nOy7FbGq+6Tp/Lw=
X-Gm-Gg: ASbGncuDvRiBHnJ9vDBiFln9HP7ig2XI/glhplM8ASvmg4ScQE2VPKLpQeamEDZotWc
	jcOLMzqWYdzo0ZrpdqCCH+VJDcD0W7NVQCUgo5+RK7IMBnP7ADtgWFgQ4Ii9L/cz2RvFeY9OBtE
	XDR8HVB/r81iE7T6xhMbtlSozbMTcHpqcF7re/KY8SK+Jt8g==
X-Google-Smtp-Source: AGHT+IFo/b8W6i/z22Uq7VgGBR6p7BwDRVyGt3pQiMT+0wHpu5wOIIaNVkE/TEfItzPqsc/UuCVQDzA1GZQmZvhHTW8=
X-Received: by 2002:a05:6512:6315:b0:54e:86f3:5e53 with SMTP id
 2adb3069b0e04-550d5f8c5d1mr551229e87.2.1747204742822; Tue, 13 May 2025
 23:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4@lists.ettus.com>
In-Reply-To: <EOGmst1w7U9YcbJPapVNuk0UXsLVkS7rnYUqzFmJ4@lists.ettus.com>
From: sp <stackprogramer@gmail.com>
Date: Wed, 14 May 2025 10:08:51 +0330
X-Gm-Features: AX0GCFtETZsn3qasm5n5Z7aYcU2Nq2WKCKQghZNgp8OVPvRi3QSymv7Xbk6QWbA
Message-ID: <CAA=S3Pudb_KAq-Jg6DON4S9eWS2sH8tp90SsammKtnHN_MeFmw@mail.gmail.com>
To: niels.steffen.garibaldi@emerson.com
Message-ID-Hash: ANP423TOZCUQKBMSBDGO7GPMYXDZ23BG
X-Message-ID-Hash: ANP423TOZCUQKBMSBDGO7GPMYXDZ23BG
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible to set sps radio core 1mhz or lower sps without using ddc (RFNOC block)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ANP423TOZCUQKBMSBDGO7GPMYXDZ23BG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8460877199966261120=="

--===============8460877199966261120==
Content-Type: multipart/alternative; boundary="0000000000000bc0de063512cee9"

--0000000000000bc0de063512cee9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It can be amazing idea. I will examine it.  Thanks for your offer.

On Tue, May 13, 2025 at 7:46=E2=80=AFPM niels.steffen.garibaldi--- via USRP=
-users <
usrp-users@lists.ettus.com> wrote:

> If you only need very simple downsampling/decimation, I think i saw a kee=
p-one-in-n
> rfnoc block in the repo
> <https://github.com/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/bl=
ocks/rfnoc_block_keep_one_in_n>
> that only keeps every n-th sample. You might be able to use it, or at lea=
st
> use it as a starting point together with some simple post processing.
> It seems like an older block and I have never used it myself so I have no
> idea if its fully functional on x300, but it probably has a smaller fpga
> footprint compared to the full ddc block and maybe you can at least use i=
t
> to get some ideas.
>
> Regards,
>
> Niels
>
> Brian Padalino wrote:
>
> On Tue, May 13, 2025 at 10:55=E2=80=AFAM sp stackprogramer@gmail.com wrot=
e:
>
> Thanks for giving useful information. Reason for i want to remove ddc in
> my FPGA image core, Really I have a USRP X300, I want to add a custom RFN=
OC
> block that it needs very much resources such a BRAM or others on FPGA USR=
P
> X300. I emphasize I don't afford to buy a new USRP x310 or X400. So I hav=
e
> to write more optimized code!
>
> Understood. You can then remove the DUC or DDC from the design and
> implement your own very efficient DUC or DDC in your own block. Just make
> sure the interpolation or decimation rate is exactly what you need. For t=
he
> X300 it's 200 Msps you're targeting.
>
> Good luck.
>
> Brian
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000bc0de063512cee9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It can be amazing idea. I will examine it.=C2=A0 Thanks fo=
r your offer.=C2=A0</div><br><div class=3D"gmail_quote gmail_quote_containe=
r"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 13, 2025 at 7:46=E2=80=
=AFPM niels.steffen.garibaldi--- via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>If you only need very s=
imple downsampling/decimation, I think i saw a <a href=3D"https://github.co=
m/EttusResearch/uhd/tree/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_kee=
p_one_in_n" title=3D"" target=3D"_blank">keep-one-in-n rfnoc block in the r=
epo</a> that only keeps every n-th sample. You might be able to use it, or =
at least use it as a starting point together with some simple post processi=
ng. <br>It seems like an older block and I have never used it myself so I h=
ave no idea if its fully functional on x300, but it probably has a smaller =
fpga footprint compared to the full ddc block  and maybe you can at least u=
se it to get some ideas.</p><p>Regards,</p><p>Niels<br><br>Brian Padalino w=
rote:</p><blockquote><p>On Tue, May 13, 2025 at 10:55=E2=80=AFAM sp <a href=
=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail=
.com</a> wrote:</p><blockquote><p>Thanks for giving useful information. Rea=
son for i want to remove ddc in
my FPGA image core, Really I have a USRP X300, I want to add a custom RFNOC
block that it needs very much resources such a BRAM or others on FPGA USRP
X300. I emphasize I don&#39;t afford to buy a new USRP x310 or X400. So I h=
ave
to write more optimized code!</p></blockquote><p>Understood. You can then r=
emove the DUC or DDC from the design and
implement your own very efficient DUC or DDC in your own block. Just make
sure the interpolation or decimation rate is exactly what you need. For the
X300 it&#39;s 200 Msps you&#39;re targeting.</p><p>Good luck.</p><p>Brian</=
p><blockquote><p><br></p></blockquote></blockquote><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000bc0de063512cee9--

--===============8460877199966261120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8460877199966261120==--
