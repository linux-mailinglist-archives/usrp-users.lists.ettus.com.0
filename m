Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA79F20B0ED
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 13:52:16 +0200 (CEST)
Received: from [::1] (port=60870 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jomtx-0007Qv-Hw; Fri, 26 Jun 2020 07:52:13 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:36590)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jomtt-0007M1-EF
 for usrp-users@lists.ettus.com; Fri, 26 Jun 2020 07:52:09 -0400
Received: by mail-qk1-f180.google.com with SMTP id e11so8472925qkm.3
 for <usrp-users@lists.ettus.com>; Fri, 26 Jun 2020 04:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dOLb2xgH4O67TRFAxn8Mn7LiM0dvoOUnFEpphI5M8w8=;
 b=m4ivxrhBxfPRuNLU1de4nAWMrCFhYGpG2ONI/XZ3Av1VHbDJQXCgoVrT7AIzQejpF2
 Gm5ozAl7XBygZcD3P3d4eInxJhj6sfk+yK5H4vKONXFBxrT3S3vWEKguJSOly91LEL6r
 lmw/dCEv9ztjfRcwe+9FYZvkr6apjkDFlBXI2Wr5I8rmwfYAj70VWifFNSo8oXzXNTOC
 tDxEqlR+7q4RIi8J0JBdIYDJOvGGEMphI+ZXHxyWGQg4zXcS5QfIp9pacBapuoNyVjvZ
 7T5XbrSTDADYuCqzlwipVwelVLlwJy32X1cMzU7pmUa5QyS22LecnwzjpFydpOC5QRHe
 L8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dOLb2xgH4O67TRFAxn8Mn7LiM0dvoOUnFEpphI5M8w8=;
 b=Akzi8PXa34xt34CF3SbzoccjpisxsurgnBOfBUWKzNXWdOnFGReBwUI80zR5V8BzeU
 V70378v1b2ftXQITh4G2s2Q/YoxTRvdS8CyNHkjbsey0fg1WlTJWtECjvNedSOCjZ87w
 YViKZ5mglrju1qnCGygt0m8XViNgLa3Yv4fDD6reiAcM8iPVKBEORs/EiXxMAgAib8rJ
 H0FclpcvjFRYckYg52yjv5Z7+mCuEFNYTuLuXMN4H+1/G8rKWYTtUSsHh/uuUG7GLHVG
 Fh89BzDeVmeVDwmR0+8eRfJzMolKdTZ7iZmPiwnPKTfqmFtXnUF+D+lJobaXdsVvmTSH
 dXfw==
X-Gm-Message-State: AOAM5308DOasrFEh3kj33i4f3PNwCNbR/kcl22KEsaK4bJmgKK7PuNp0
 7Ah48jBUKSw7UIVH4i7Pnn4TBX06eLGt1q/eWLIxkx9S
X-Google-Smtp-Source: ABdhPJwod78mZ+3ZA4mpFwDBLBCtEAH9gCZ9GNf7i0hCfrq3iIlJBQMS3ySpVdZ2LDUv/mCEshAxtB7grpX1zVRGZWI=
X-Received: by 2002:a37:a605:: with SMTP id p5mr2095191qke.428.1593172288598; 
 Fri, 26 Jun 2020 04:51:28 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_nH=YZVbvU-Md4juBB6iazRxVuLFa+f8rC0Z4=_UumjKA@mail.gmail.com>
In-Reply-To: <CACjmV_nH=YZVbvU-Md4juBB6iazRxVuLFa+f8rC0Z4=_UumjKA@mail.gmail.com>
Date: Fri, 26 Jun 2020 19:51:17 +0800
Message-ID: <CACjmV_mQ6BFgZjgtNkoPsEu2UH3LqH+co_EQsaZTi1CMfA0rzQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] TX Burst at 200Msps sample rate on two channel
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Damon qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Damon qiu <qiu.guowang007@gmail.com>
Cc: Damon Qiu <qiu.guowang007@gmail.com>, rkossler@nd.edu
Content-Type: multipart/mixed; boundary="===============0851412758594865401=="
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

--===============0851412758594865401==
Content-Type: multipart/alternative; boundary="00000000000053f71205a8fb54b7"

--00000000000053f71205a8fb54b7
Content-Type: text/plain; charset="UTF-8"

Hi Marcus,
Since you forgot to copy the email to me, I have to reply your email here.
'sudo' is for using dpdk. Do you have any way to use dpdk without super
authority?

Hi Rob,
Your information is very helpful. I will try that next week when I am back
to the office. Thanks.

Best regards,
Damon

On Thu, 25 Jun 2020 at 01:46, guowang qiu <qiu.guowang007@gmail.com> wrote:

> Hi all,
>
> I am trying to set my USRP X310 to send out signals in burst mode at
> 200Msps sample rate on two channels. My target is sending out bursts of
> 100ms without underflow.
> The OS is Ubuntu 18.04, UHD version v3.15.0.0, DPDK is used in the test.
> The CPU is set to 4.2GHz.
> The X310 is connected to the host by dual 10 Gigabit Ethernet.
>
> sudo /usr/local/lib/uhd/examples/tx_bursts
> --args="type=x300,use_dpdk=1,addr=192.168.30.2,second_addr=192.168.40.2,send_frame_size=8000,num_send_frames=512"
> --repeat --dilv --nsamps=20000000 --channels=0,1 --rate=200e6
>
> If nsamps is set to 100000, there is no U printed. But if nsamps is large
> than 120000, the terminal prints a lot of U.
> Question 1: the depth of DMA FIFO is 32MB by default, I guess there should
> be 8M samples stored in the DMA FIFO, why it seems that it just store 100K
> samples?
> Question 2: is there anything I could do to achieve my goal?
>
> Best regards,
> Damon
>
>

--00000000000053f71205a8fb54b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marcus,</div><div>Since you forgot to copy the ema=
il to me, I have to reply your email here.</div><div>&#39;sudo&#39; is for =
using dpdk. Do you have any way to use dpdk without super authority?</div><=
div><br></div><div>Hi Rob,</div><div>Your information is very helpful. I wi=
ll try that next week when I am back to the office. Thanks.</div><div><br><=
/div><div>Best regards,</div><div>Damon<br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 25 Jun 2020 at 01:=
46, guowang qiu &lt;<a href=3D"mailto:qiu.guowang007@gmail.com">qiu.guowang=
007@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr">Hi all,<br><br>I am trying to set my USRP X31=
0 to send out signals in burst mode at 200Msps sample rate on two channels.=
 My target is sending out bursts of 100ms without underflow.<br>The OS is U=
buntu 18.04, UHD version v3.15.0.0, DPDK is used in the test. The CPU is se=
t to 4.2GHz.<br>The X310 is connected to the host by dual 10 Gigabit Ethern=
et. <br><br>sudo /usr/local/lib/uhd/examples/tx_bursts --args=3D&quot;type=
=3Dx300,use_dpdk=3D1,addr=3D192.168.30.2,second_addr=3D192.168.40.2,send_fr=
ame_size=3D8000,num_send_frames=3D512&quot; --repeat --dilv --nsamps=3D2000=
0000 --channels=3D0,1 --rate=3D200e6<br><br>If=C2=A0nsamps is set to 100000=
, there is no U printed. But if=C2=A0nsamps is large than 120000, the termi=
nal prints a lot of U.<br>Question 1: the depth of DMA FIFO is 32MB by defa=
ult, I guess there should be 8M samples stored in the DMA FIFO, why it seem=
s that it just store 100K samples?<br>Question 2: is there anything I could=
 do to achieve my goal?<br><br>Best regards,<br>Damon<br><div><br></div></d=
iv>
</blockquote></div>

--00000000000053f71205a8fb54b7--


--===============0851412758594865401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0851412758594865401==--

