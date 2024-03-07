Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B088756BE
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 20:10:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4DF833857D0
	for <lists+usrp-users@lfdr.de>; Thu,  7 Mar 2024 14:10:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1709838634; bh=ZM1y4aNkjEmv4s546GbLUZMDMsvY/SvEu6J4+XuuKEM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xUP7k+PiMsnYIRemi3TY6y1vMXoLaA5Ky3XbDqzh7LkQyFTsZRXMun32ibzCCJOq9
	 GaVLMI0MvrXDf8/TqX+j+DzuDaT/eRxjG43mF6ziwuMlnr1NZxZ+kGXn6JXb13gE2h
	 64NrF+QVaF537bwwTx+A76h+gc6a000Ulu9A5VyECAaNYVh3q6b3mTt1xemsbcGal7
	 /68sEhPBFb+A9OgVLsHnRHlNtdDCViUOH5WWwvDNJdVYPz0BTO6awfTEj/iyEvsHvK
	 FyujIlIxwYArLpEpX+jcSPSN0sGMg3zqb6xuahZJMVDFlGaNzHq1pQrFBR3MmTrjM0
	 HmUrIuGJnyYPA==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 5F647385792
	for <usrp-users@lists.ettus.com>; Thu,  7 Mar 2024 14:09:55 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GHAuoqDM";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a45bdf6e9c2so162380966b.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Mar 2024 11:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709838594; x=1710443394; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=l/W/k7WVfbOgdag3+hbG91rtBSr6pxbh/cKa9mUQ7ZA=;
        b=GHAuoqDMKZlnbi6sAVkJu9TZsRMljrVpXYcfS8JQzy30/1o/xl7sm+rUA/YaQyM2zc
         cnRzDgb6H3B3g7kvvKNpZ5eG9C5sT0Rib8HOT03AC71H/ucPD7V7mbmLm2ANoyW2g4SY
         +Ev10xgGBUnhU5qDpkZCUMQKua6QYS2yzrCDFce5uAgZP0M+rThy8jakO0STziNh2quy
         HMdqKmAZl75xXpLXthRCMgP2n3GJ8q5xXvXpYMez7XwaTsn4hhYWyeMTxlIPEHvNbSF/
         qKd4z2IjPrHNIUASJd7zek5OWZFf+WlWCm2T/XJh7xpF4Vz/sUVk6QoNRkdVRxJoShzd
         VQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709838594; x=1710443394;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l/W/k7WVfbOgdag3+hbG91rtBSr6pxbh/cKa9mUQ7ZA=;
        b=E/9F3d9oWVWzXOcrjD4emOFkOqjBmwCo2yUW2KGRQ7QBXIEC+9vBjlGfZ1lcStkExV
         B/KMYheYS7MXaFAITZKl+8TLb3SHMCFQCKOpup6AElOTg+Ye09P5+DWoqGmnMj9AQq5K
         NHbAO1rff+Dkezu9D+y+3J8nXqwLBkDOuIqXjS03BKTr7GZKZQPHhOE+ZexkTntLm9P7
         hYGnUU6d+8KAf33S+6MCCTqpedBN0rp6HJBZav+gXB7CXsGnUUrh8d4WS8P4O+A6KFcs
         TajPnQV4r6r91NZJBwn4fuPpz0wg71uatKYDHkcLAn9BdGuVjVZ/bSflRzPPMx/nDRSk
         rdUw==
X-Gm-Message-State: AOJu0YxPk2ajPyMGxCFgLIVdpFpOSj/Qg9+Reg0eU+umOwJtMkUbb+Wq
	K498qlppiwJ4dU7dG5G6wf9Fhg9RqO049clzXbKAfFmXID+PPVeeeb1uTyWCIE/A6jeIAtZZ8Uc
	KiPfY5YwPQ/bxisCozn/03zah/2U=
X-Google-Smtp-Source: AGHT+IFrs1pyGWmpp+pAlusRO2UnF/JIrTvAU0nZfIXlJbDoWnVlxtMcC5kbvKy6LENbRoGZrXi9cE6WkVXiS8f9M4c=
X-Received: by 2002:a17:906:b211:b0:a45:1860:cd36 with SMTP id
 p17-20020a170906b21100b00a451860cd36mr8800092ejz.49.1709838593902; Thu, 07
 Mar 2024 11:09:53 -0800 (PST)
MIME-Version: 1.0
References: <e1df8cb0f73042929d870ff7ecb05906@tum.de>
In-Reply-To: <e1df8cb0f73042929d870ff7ecb05906@tum.de>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 7 Mar 2024 14:09:42 -0500
Message-ID: <CAEXYVK460WdCmQ=nwEGapEHrX_v=4bKxD_SsoRFLVgDENWekuQ@mail.gmail.com>
To: Xianglong Wang <xianglong.wang@tum.de>
Message-ID-Hash: XQTCIUIEPF3PW2C6WU6WYFJUHFYKLSFK
X-Message-ID-Hash: XQTCIUIEPF3PW2C6WU6WYFJUHFYKLSFK
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [RFNoC] "Could not find block with Noc-ID" even with LD_PRELOAD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XQTCIUIEPF3PW2C6WU6WYFJUHFYKLSFK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6305796914939478332=="

--===============6305796914939478332==
Content-Type: multipart/alternative; boundary="000000000000034fb6061316d2ac"

--000000000000034fb6061316d2ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 7, 2024 at 1:39=E2=80=AFPM Xianglong Wang <xianglong.wang@tum.d=
e> wrote:

> Hi all,
>
>
> I have created my OOT module with the temple located in uhd/host/examples=
.
> However, I cannot find my OOT module in my usrp with
>
>
> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2d024=
,
> 0xffff
>
> even I run "LD_PRELOAD=3D/usr/local/lib/librfnoc-chem.so  uhd_usrp_probe"=
.
> I have checked my block yml file has the correct ID.
>

I have successfully used UHD_MODULE_PATH which takes a path, not a specific
file, and UHD loads all the files in the path.  Try that instead and see if
it helps.

Brian

--000000000000034fb6061316d2ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Mar 7, 2024 at 1:39=E2=80=AFPM Xi=
anglong Wang &lt;<a href=3D"mailto:xianglong.wang@tum.de">xianglong.wang@tu=
m.de</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div class=3D"msg-2930149635299066976">




<div dir=3D"ltr">
<div id=3D"m_-2930149635299066976divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hi all,</p>
<p><br>
</p>
<p>I have created my OOT module with the temple located in uhd/host/example=
s. However, I cannot find my OOT module in my usrp with</p>
<p><br>
</p>
<p></p>
<div>[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0x2d=
024, 0xffff</div>
<div><br>
</div>
<div>even I run &quot;<span>LD_PRELOAD=3D/usr/local/lib/librfnoc-chem.so=C2=
=A0 uhd_usrp_probe</span>&quot;. I have checked my block yml file has the c=
orrect ID.</div></div></div></div></blockquote><div><br></div><div>I have s=
uccessfully used UHD_MODULE_PATH which takes a path, not a specific file, a=
nd UHD loads all the files in the path.=C2=A0 Try that instead and see if i=
t helps.</div><div><br></div><div>Brian</div></div></div>

--000000000000034fb6061316d2ac--

--===============6305796914939478332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6305796914939478332==--
