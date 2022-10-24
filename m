Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4022160BC63
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 23:42:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0B46383C0B
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 17:42:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666647743; bh=e3EFSlv9IqxMX2ER3AjO74obQ98LFgNm7UsrkUuMRdA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ioc422nHZI+bydAxY56TuaQx3oJ5rC36E8O8SG7qRGys6IdA648cqB6HB2O6RfR2N
	 XvwgnS9I/T/ibloaLLz5NVzUs7yabAcHbq9LK3GwQtFIjwIe7RZzZGhB7wPdaRWcqj
	 o7MDkT/9HzS4QfEuhjzIQlpFA/lIXDWxnAnnUa072h4Hpx5MWcgHNG1DiiRhqn9w6J
	 9goFfxUs4iJ6Nj4osX0ibEz4X7U5xY1Q2SsvT90ik9TZqjz5wccitG1ZYWBppiG23d
	 DXFWtWHfQiYsTzn8c3k+b/TRllle6g3zqkeZpV2LZrd8tx3gY4BbQ4AtQ9gXDkXMAd
	 qsyeUnuAsjA/g==
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by mm2.emwd.com (Postfix) with ESMTPS id D1174380A55
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 17:41:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="K3vVn6Ae";
	dkim-atps=neutral
Received: by mail-pl1-f181.google.com with SMTP id f23so9560003plr.6
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 14:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U7DAw+nZquKelV8n9K9yY596XMauyGwu87t7F0cw2ow=;
        b=K3vVn6AeMBHbMIQ8OTBPMJbv66k3se3GjpLGWPoqLi+Vo/03H2szPtdJ+66euzGTnp
         lJXwY7EBAgBrnCcm2iW33QEKWojnzzhUTzpl1vDF1+n0Z0YeURM4wtpktif+fg+PP+DP
         gIa4unzOzUs55CW1UojNy3uxNVziC4lVu6utgUnuD8tUtGYtZPOUXqNfrELRDTuG7ite
         Ot1i9JpJZHW9weucKSIQwQx9T12CN6U7ZooZij6KLmUS9MpPtlJR49hFEu18BXZJ/gAe
         Aub6cM54M9O8nfJtQzdlCFZj+MYfAd7NpMY00MwVUhitkghupkRGoAJgGN+/wr7zFLTK
         e8NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U7DAw+nZquKelV8n9K9yY596XMauyGwu87t7F0cw2ow=;
        b=4RSXham6sFU7olWkMwe73eJbDFjk4ESS9FUPFWIhj6Bze177L4hLutAmLPfMAZbiDM
         X2sI8IGfdnLug4+Awj5vk5EsVKJumsyFEMPGhwvfHzVF8gVHbDb20Mim4a3rDvvAB0dw
         c3Ati9GE+zSdb/8OEOnDeW2Qls9SFj6pwp1YhWM7HqLZNI/585LQ8IFjgm5Prsyc0x1Y
         WhsZ7fiA4a00j9YkqgeKZn6A9mhpGBirigLiGxLLdmW1qiWyd1cKgVjb4dVhRpNhbYU1
         G0RXcBx3At3q/+KpS9QhZ13zVwRRifQCch/Y4dQ2Ru29Gj00orUI9EfTzqd0zDDD5NiX
         fQmQ==
X-Gm-Message-State: ACrzQf1LRsPQ3FOOBn/m186jxWfPPBisKW7fAy4OWBjkEmnBPl01g4VF
	bbZXLF3+E7uRtI7nfVPNx0CiVCsGtj5BVBSOccwWnDS/
X-Google-Smtp-Source: AMsMyM7R5cBUy9nWH84NeRlT0/IEG0VtcURcDjXXPapow/yF8D0XPQawGs5zKUm3DpjrlsfNE5oQ3bc3PZ0/k10EwJw=
X-Received: by 2002:a17:902:e88a:b0:183:9ecb:ff85 with SMTP id
 w10-20020a170902e88a00b001839ecbff85mr35637299plg.169.1666647673740; Mon, 24
 Oct 2022 14:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exchangelabs.com>
In-Reply-To: <BYAPR01MB4104FACB4FA7636B15CA5BBCB32E9@BYAPR01MB4104.prod.exchangelabs.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 24 Oct 2022 16:40:37 -0500
Message-ID: <CACaXmv9yS4rDRS87ud_4giUyLxQ=yZARkAUMP9v_O18aBdU9OA@mail.gmail.com>
To: "Juan L. Delgado" <juandelgado@cpp.edu>
Message-ID-Hash: QB3VNKUENTGQMW7VZW57U5H4XPXNXI67
X-Message-ID-Hash: QB3VNKUENTGQMW7VZW57U5H4XPXNXI67
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP X410 Setup
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QB3VNKUENTGQMW7VZW57U5H4XPXNXI67/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7091027539503305297=="

--===============7091027539503305297==
Content-Type: multipart/alternative; boundary="0000000000008f373805ebcea6e7"

--0000000000008f373805ebcea6e7
Content-Type: text/plain; charset="UTF-8"

I would recommend that you use Linux, specifically Ubuntu 20.04,
on-the-metal, and not in a VM, and that you not use Windows.

--Neel Pandeya



On Mon, 24 Oct 2022 at 13:47, Juan L. Delgado <juandelgado@cpp.edu> wrote:

> Can I use the USRP X410 in a windows environment with Labview or GNU Radio
> through windows? Or would it be a simpler install to use Linux in a virtual
> environment?
>
> I attempted to use the executable download for Windows for UHD 4.3 but i
> believe my USRP needs to be updated to 4.3 as well ( I believe it has
> 4.1.05 installed but im not 100% sure).  The instructions in the manual to
> update the USRP software is in Linux only.
>
> My worries are that if I am able to download 4.1 by source onto my
> computer, or if I am able to upgrade the USRP to 4.3, I still will not be
> able to use it in windows.
>
> FYI I need to use the USRP to examine and transmit frequencies in the 2.4
> gHz frequency for a school project.
>
> Thank You
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008f373805ebcea6e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">I would recommend that you use Linux, specifically Ubuntu 20.04=
, on-the-metal, and not in a VM, and that you not use Windows.</div><br cle=
ar=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><font face=3D"verdana, sans-seri=
f">--Neel Pandeya</font></div><div><br></div></div></div></div><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
24 Oct 2022 at 13:47, Juan L. Delgado &lt;<a href=3D"mailto:juandelgado@cpp=
.edu">juandelgado@cpp.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div class=3D"msg7209779895534157097">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Can I use the USRP X410 in a windows environment with Labview or GNU Radio =
through windows? Or would it be a simpler install to use Linux in a virtual=
 environment?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I attempted to use the executable download for Windows for UHD 4.3 but i be=
lieve my USRP needs to be updated to 4.3 as well ( I believe it has 4.1.05 =
installed but im not 100% sure).=C2=A0 The instructions in the manual to up=
date the USRP software is in Linux only.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
My worries are that if I am able to download 4.1 by source onto my computer=
, or if I am able to upgrade the USRP to 4.3, I still will not be able to u=
se it in windows.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
FYI I need to use the USRP to examine and transmit frequencies in the 2.4 g=
Hz frequency for a school project.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thank You</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000008f373805ebcea6e7--

--===============7091027539503305297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7091027539503305297==--
