Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01426A9E58D
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 02:45:11 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48F023861EC
	for <lists+usrp-users@lfdr.de>; Sun, 27 Apr 2025 20:45:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745801110; bh=/wTS+GIDtR8se00+71/JBN09SngZXa5/x3dWhy9w6D4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ltvJn/Hk0rWnFnaG9falr7dgn3BMgL3Ago9TwLi8THHqOx2pzx1O86Ip4qlUR+Sqp
	 H7t3BDgQwUUon/b0o8wtRcxsGiwgGZW+9AU1ByfCtfSQi4TTmFIVubgKHlkY2P457W
	 M662Kg5l77x5ES63fHxPz1qrG7x/9u/3MkdXFEGzjmMAMRPOm+I+apiFSVL9WbU8Rc
	 Au4p7OPf5Jg8piNsZr9dgHRbVTSauTpVEK6HofGkTlgYGsXyXMeJFvON2UjlghvXyR
	 E+1P3ayl52AgLmiAwjfuxuhE6ubIKR0cLho596e4t9JaNoQRBVBfYy6LrOn8f1eNl+
	 gjzkMayxEntWQ==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id D81ED385E8D
	for <usrp-users@lists.ettus.com>; Sun, 27 Apr 2025 20:44:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="UOPUhfQL";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-7082ad1355bso35015547b3.1
        for <usrp-users@lists.ettus.com>; Sun, 27 Apr 2025 17:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1745801053; x=1746405853; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XsWGM304DNGvRSCsorAEkXhLboLo9T9aEAItXzKrqvE=;
        b=UOPUhfQLdVEgR3OguKJ33hXkvx0PxRS47ZsCxIYO44gkc4ptDnq6Sb/uz5ihI4qiWF
         SKQfOh8YkhOQkBrf/hieqE3bAJBOvIQGLtypTc2PvpQjogjBBXex4Z61/8GufaAjK8KH
         NZnfnBPbHhpj9YPV1/CbhWJOWIHaH41DTq0ocTZUZszkvsqsN66LPM5Vkl5EffcJ0d+P
         dDXp5Oy7Dq7NsNGR/NXUKMmlgV6ABvGbs8cC/oyTmOYJJKHkmySXt1syKhn89G4tzQYk
         25E6cX9VC31al3ZwW2Z2FQEbe8SSp0L92l42TPpb39L7EwhIwuMkt6WdTW56zPa12FIl
         hhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745801053; x=1746405853;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XsWGM304DNGvRSCsorAEkXhLboLo9T9aEAItXzKrqvE=;
        b=Q9o5NTJyrX9GQgYVEOY+oJuPaH9jC7M2mTSyjSJg5bYzIBEejWCGgK78977TcRUleb
         qsuKMz9ck/ksl5/LMDMf1c+iV4u2TGm+B74keK2eb8STKHwR2h4Pf2HmSk7qJz/wJF8x
         YriMF/EfVjLemptpN4d94Ba3rz2T6pbstBKId46FJjvuZiTNYiTXDxOt0ofgxQal/oLP
         /IGXIgD50sbs0LA2M+HWmWjqfGCTQJewEEH/BUJlO9HTcTVIvf9aESNuGHaX1h1rdtak
         TlyaZPqjbRgEp1XONkKPhW4j0mghZ0SmHWp2YonLGvYAVOkOLvToWuALq8hLa8zonnER
         feUQ==
X-Gm-Message-State: AOJu0YxrhUBJvMKu75hNk9MkCporjfVkBN0+hPd+avThfzDDTQMh+IET
	druyD83lTGDj+zA+ZmWLW5nmhj2/d40xZfzvRZfqn1GN8/1ypIT0Ave+VbXrC4DPmW5NiLfcRdI
	81IhrAx3YTgm/Ksz7Z7LYbgll6EKquQ7/Lgmq0Nm0QVSArFn2zY4=
X-Gm-Gg: ASbGncuqzTu9tGM0A7SLgwkYrT0ldHcoquugw+vAcVrlBz9HNxmhRaKtLA1x5xEiKYG
	wHMxP1w56cpZuplFrgc3KdAi8eIoDlGdWaflVQd4lQ2wWZWDfRMmINDLVZTUxqMKQLhttBBZls7
	xWqDfMboXizhwam9nkhxAVwO2Y3ej3rQ==
X-Google-Smtp-Source: AGHT+IFdWlyEc41tmPKqGOWHFH/C1mee425VtH356xWdmJlL0j1/pSMUEnR+P5K4TSVaOvaV6VaeaOkBsfyG/AabDrQ=
X-Received: by 2002:a05:690c:4d03:b0:6f9:4bb6:eb4e with SMTP id
 00721157ae682-708541e4a22mr143046397b3.31.1745801053154; Sun, 27 Apr 2025
 17:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
In-Reply-To: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sun, 27 Apr 2025 19:43:57 -0500
X-Gm-Features: ATxdqUFq0YwCs2IjKcLt663FIYUhoGxLEzK_xEkOJp88pR-0vJYS0JK4D67IQU4
Message-ID: <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: JXZ2EDVHG2RDXNHTSOHIOL5TPD6I67XE
X-Message-ID-Hash: JXZ2EDVHG2RDXNHTSOHIOL5TPD6I67XE
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JXZ2EDVHG2RDXNHTSOHIOL5TPD6I67XE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0536625081048066114=="

--===============0536625081048066114==
Content-Type: multipart/alternative; boundary="0000000000009f4b980633cbfb3f"

--0000000000009f4b980633cbfb3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The EPIDs are only used by the stream endpoints. I think it will always be
set to 0 when it is sent to your block, and anything you put in there will
be ignored by downstream blocks. In theory, I suppose it could be used the
way you described, but I think that would require pretty significant
changes in both UHD and in the FPGA.

Could you use two stream endpoints instead to double the number of virtual
channels?

Thanks,

Wade

On Thu, Apr 17, 2025 at 11:38=E2=80=AFPM Brian Padalino <bpadalino@gmail.co=
m> wrote:

> I have a design for an X440 that wants to have 128 virtual channels for
> each of the ports of a 4-port block.
>
> The VC field in the header is only 6 bits, but the DstEPID is 16 bits.
>
> Is there some way to let the endpoint number be shifted up in the DstEPID
> and pass through the bottom 7 bits? I'm using the chdr_to_axis_pyld_ctxt =
to
> separate it out, but the DstEPID always seems to be 0 at least in my
> testbench. It seems like maybe the EPID is dynamically assigned during so=
me
> type of configuration stage?
>
> I guess the other part of this is how I might be able to craft a CHDR
> packet on the UHD side of things to send it down to my block.
>
> Can a block have multiple DstEPID's assigned to it?
>
> If there is another way I could get the 128 virtual channels per RFNoC
> block port, please let me know. I am very much open to suggestions.
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009f4b980633cbfb3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The EPIDs are only used by the stream endpoints. I th=
ink it will always be set to 0 when it is sent to your block, and anything =
you put in there will be ignored by downstream blocks. In theory, I suppose=
 it could be used the way you described, but I think that would require pre=
tty significant changes in both UHD and in the FPGA.</div><div><br></div><d=
iv>Could you use two stream endpoints instead to double the number of virtu=
al channels?</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade=
</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 17, 2025 at 11:38=E2=80=AFPM Bria=
n Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">I have a design for an X440 that wants to have 128 virtual c=
hannels for each of the ports of a 4-port block.<div><br></div><div>The VC =
field in the header is only 6 bits, but the DstEPID is 16 bits.</div><div><=
br></div><div>Is there some way to let the endpoint number be shifted up in=
 the DstEPID and pass through the bottom 7 bits? I&#39;m using the chdr_to_=
axis_pyld_ctxt to separate it out, but the DstEPID always seems to be 0 at =
least in my testbench. It seems like maybe the EPID is dynamically assigned=
 during some type of configuration stage?</div><div><br></div><div>I guess =
the other part of this is how I might be able to craft a CHDR packet on the=
 UHD side of things to send it down to my block.</div><div><br></div><div>C=
an a block have multiple DstEPID&#39;s assigned to it?</div><div><br></div>=
<div>If there is another way I could get the 128 virtual channels per RFNoC=
 block port, please let me know. I am very much open to suggestions.</div><=
div><br></div><div>Thanks,<br>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000009f4b980633cbfb3f--

--===============0536625081048066114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0536625081048066114==--
