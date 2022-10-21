Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C085A607D9E
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 19:35:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDB4B38151A
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 13:35:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666373724; bh=E/pNrleEKqvnYPf3K1Mv1r2IvObwMGMe9EvRrFjx374=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=TWidmX+Wc1C9961e8IMSYKNQXFq4yloByRddo9kp+aiXDtSgkVd5wI3TZvo7K7T65
	 N32aTU5SNQefczi7EI5bK0gXsQ3JI165+TwD/zJsLSXrtMkvLpKUdzfDbnPbV79rrg
	 ct2cdJVIfmVq+O4/PAyG7v2wRqTTB0t7EcdBuGQIs3DyPOc2lF3W2HVdg4DgObUVYv
	 64j9XfPgwpd+lZTEZ4tVtMX6+XD2Flkk0hLf9TMUdOZjPvbad6gVrniu9qdAD4XMu5
	 zEuSrzczgvn6qmXVRO56bktGw90AgN13f3bXDQikLzrrg8g2Wz/Kf5h6ry4T6Mh3ws
	 CrI8u1aWvcgrA==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 3E103380785
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 13:34:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Veq4uDr4";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id g27so8510252edf.11
        for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 10:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eebUuxSzT9kyh5o7z7KeShH00k3OWZD2KcYshGSbfn4=;
        b=Veq4uDr4eGhF8KGO5Ed3PTHIHmPIdIO/3zh/nXMSo9WpptwXaB+q1fSILxyWLSDSXW
         7hmAl/1esF1toXvaz+CK++BszFGF/0xaYzwU+yc11ducgyIeMhW5WRuV7zCTHTtFx+Dl
         XvifG6UJlE9NCLzl6aKh49ZW16P5sao/S4CVylB4DVWxvnRJvWjV09hnmdMv30EdOTY0
         3WlCD5ox7IY936UsAq5Vuz3HjYiDb2mCpgBFlCVtCFTOq1iKrypg1i3BwnevaG5YoE3F
         GbIAKeDlYRHaREWKYSMvmAk7lzPer3Fb9ZJWqOESbZynVIF+rT47Hohv1u/yhB5qc8zS
         gBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eebUuxSzT9kyh5o7z7KeShH00k3OWZD2KcYshGSbfn4=;
        b=TTxcbRkpanmDOdZz/5LJEPNFIQGkQKPAkheoJYPHCrvqE0K0Ocq3QkVQqwh/IsxuRQ
         zaesEFSiMQztchaJP/BNhHEVp1c2cNn+umxgsjnt6vfXR/LFnA5BWA1ApWl+IGEdRCXm
         OA7/zVSgvGjR23tsPyOnbr755jLo4WgzvsU6Qyv7qT7SDzf8enAk8nn268avpI4yMCqi
         YAB/lqzS0SXVd9MT4goKQPxpm7y+TSr9FYQfNeCWjx2D7CGJmiHvb7ntk8G6QHRR/bVA
         uJw2vv7/szM+tnB9IUpUYPvDKZRz53C7dZgaFZpLtf1lBuZZAjQdxe08icJdWSQDdwBL
         H+LA==
X-Gm-Message-State: ACrzQf1Kb63MA9IFHgC5RWn71ChkTykINMeatgx2S2Wnf3IZQDAxv7XR
	BHFyKB+TYZ9RlWkDQho7nat1G6I/MxbBKqFlxZnlZCefakR7PA==
X-Google-Smtp-Source: AMsMyM61FWM12PkD+xNKqmsAqaDbZpn5oQe4A7rmjSF0OJkA3/cN/TAeoys6UBthOWk/Xa/Asw7kZeQtPyG1/HigXaE=
X-Received: by 2002:a17:907:1c10:b0:791:a716:5089 with SMTP id
 nc16-20020a1709071c1000b00791a7165089mr12827140ejc.672.1666373658081; Fri, 21
 Oct 2022 10:34:18 -0700 (PDT)
MIME-Version: 1.0
References: <CALooG3-PGwwXgn5_Q0T_nSXPYm5vXfV+XsNx+i6k=7UCSEnCCQ@mail.gmail.com>
In-Reply-To: <CALooG3-PGwwXgn5_Q0T_nSXPYm5vXfV+XsNx+i6k=7UCSEnCCQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 21 Oct 2022 12:34:01 -0500
Message-ID: <CAFche=hGqYWBwGMAhcNbNzcOhC5Uez0WNvu4n59aLZjyestFCg@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: QJJRV3LMMEVFPJIIWH2XICZKGU4522Z3
X-Message-ID-Hash: QJJRV3LMMEVFPJIIWH2XICZKGU4522Z3
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Debugging E320 with JTAG causes a problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QJJRV3LMMEVFPJIIWH2XICZKGU4522Z3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7971676049237755886=="

--===============7971676049237755886==
Content-Type: multipart/alternative; boundary="000000000000f416c805eb8ed934"

--000000000000f416c805eb8ed934
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yasir,

The E320 runs Linux on the SoC of FPGA. There are devices in the FPGA which
are visible to the Linux kernel, so updating the FPGA without first
bringing down those devices causes problems. uhd_image_loader takes care of
all this for you. You can use uhd_image_loader to first load your bitstream
(the one you want to debug over JTAG), then use the Vivado hardware manager
to connect to that bitstream via JTAG after it is already loaded.

Wade

On Thu, Oct 20, 2022 at 3:31 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous1=
1@gmail.com>
wrote:

> Hi everyone,
> I am trying to debug E320 with JTAG. I connected to the E320 JTAG console
> with Vivado 2019.1 hardware manager. Vivado successfully recognized E320.
> Then, I loaded my custom bitfile. The problem is E320 started to give me
> errors saying that "IO Error during GSM initialization." I thought that
> might be because of the bit file. Therefore; I tried to load the default
> bit file, but the same problem occurred again. When I use uhd_image_loade=
r,
> bitfiles work without problem. But when I wanted to debug it with JTAG an=
d
> loaded the bit file with jtag, uhd_usrp_probe gave me an error message. C=
an
> anyone help me with this, please? What might be the problem?
>
> Kind Regards,
> Yasir.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f416c805eb8ed934
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Yasir,</div><div><br></div><div>The E320 runs Linu=
x on the SoC of FPGA. There are devices in the FPGA which are visible to th=
e Linux kernel, so updating the FPGA without first bringing down those devi=
ces causes problems. uhd_image_loader takes care of all this for you. You c=
an use uhd_image_loader to first load your bitstream (the one you want to d=
ebug over JTAG), then use the Vivado hardware manager to connect to that bi=
tstream via JTAG after it is already loaded.<br></div><div><br></div><div>W=
ade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Oct 20, 2022 at 3:31 AM Yasir =C3=96z=C3=A7al=C4=B1k &=
lt;<a href=3D"mailto:simultaneous11@gmail.com">simultaneous11@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr">Hi everyone,=C2=A0<div>I am trying=C2=A0to debug E320 with JTA=
G. I connected to the E320 JTAG console with Vivado 2019.1=C2=A0hardware ma=
nager. Vivado successfully recognized=C2=A0E320. Then, I loaded my custom b=
itfile. The problem is E320 started to give me errors saying that &quot;IO =
Error during GSM initialization.&quot; I thought that might be because=C2=
=A0of the bit file. Therefore; I tried to load the default bit file, but th=
e same problem occurred=C2=A0again. When I use uhd_image_loader, bitfiles w=
ork without problem. But when I wanted to debug it with JTAG and loaded the=
 bit file with jtag, uhd_usrp_probe gave me an error message. Can anyone he=
lp me with this, please? What might be the problem?</div><div><br></div><di=
v>Kind Regards,</div><div>Yasir.</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f416c805eb8ed934--

--===============7971676049237755886==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7971676049237755886==--
