Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB3C6C83F
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jul 2019 06:10:04 +0200 (CEST)
Received: from [::1] (port=54202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnxk2-0005q1-13; Thu, 18 Jul 2019 00:10:02 -0400
Received: from mail-lj1-f182.google.com ([209.85.208.182]:44896)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1hnxjy-0005li-C7
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 00:09:58 -0400
Received: by mail-lj1-f182.google.com with SMTP id k18so25807350ljc.11
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 21:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dq+kdq+qzc5yuXIvByw72LmD4Y2gpD+QnEGb9rPOa0o=;
 b=PKjVRdY2wQ7uhuoa4uDDi9W0lnn+9vdophsqeaKu8FVk6WDulqP/rvIRBGKo3Eu9+y
 nZYVYoeevHBfZMi68hIpRp3xUEU88UNKR3kMfki+EkuTbd6ajvwL8Cs+vGdDb9ucsEgs
 vWF4imVINHHe914NqtLLjB3GsVcNdWzq/yGWg0pYm2AO3QiACz9LOgi4JvdwUNbCMDYZ
 qB2z3V3ioIaZRB2VN+KQHA5r0GBqAdVEhv+H50oY4D5MLr6joYPzi9iRTzqc8+io0Hpf
 Y44zS3tv+Gzn+oUd/mZ6nHyOZqB9jZ5Ef0fc74UQPerjN5Q5ONgNJdaVM2xWeNyekmTf
 fAxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dq+kdq+qzc5yuXIvByw72LmD4Y2gpD+QnEGb9rPOa0o=;
 b=DNyL89hHJMHEwiIuNJGKaTlvvSIvgHP226WzExR+pXNkbDibaKZTI8r0eXzuXkEfmD
 VDWCyjvUjbe6Vgdjw+qFUVBGC2XE1qSjA5XODuZNAa4BH6k4JMMTUzxn6hKLx4WBZbhC
 2XmaieZFIjuIhiDjQ6LYQ0mqabHheZk4SHUxCZHvGEQTfSkUJGv6lvoswhkIG+BkN/u6
 QNe46s21Ol+gV9LjUCZNMCA3tBMAF32y6f+amT4hx4GGk+UOIgDhvssM56jef6F26qdK
 3RNUsRMzweI2m4SB1yYsoVRpgRByDflEgoK5eltxfwEOphX4EiruQI3mWLwHnWUfAu1w
 MB1Q==
X-Gm-Message-State: APjAAAVBmCgc/4yBcHJCq9ilIJ/hs3DYaNW5GtjAKOi+gm5T5uSR1dLA
 kX2kQI8e9tUEBlb+OBOOcC4QUBP41A1TOylN6i2o7lUu
X-Google-Smtp-Source: APXvYqx1dthXjZ/DTX0yxzcxLmntlS7iDdR8JCt46pJAuQt8cxqX1RUOVU25Kk9oC1Lhf6i9Yuk7ts2uK0MskOr4it8=
X-Received: by 2002:a2e:730d:: with SMTP id o13mr5746974ljc.81.1563422957069; 
 Wed, 17 Jul 2019 21:09:17 -0700 (PDT)
MIME-Version: 1.0
References: <44f90a92be1f0497740e277ed07faa1e@imapproxy.vub.ac.be>
In-Reply-To: <44f90a92be1f0497740e277ed07faa1e@imapproxy.vub.ac.be>
Date: Thu, 18 Jul 2019 13:08:41 +0900
Message-ID: <CAL7q81uGE5CpQ96cZBe3qZRAS+x99Tsm=rojyEp7J4p=sbLXbA@mail.gmail.com>
To: fbarras <Florence.Barras@ulb.ac.be>
Subject: Re: [USRP-users] custom block and data rate in x310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0316218334139986944=="
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

--===============0316218334139986944==
Content-Type: multipart/alternative; boundary="000000000000fd7a4a058decc50f"

--000000000000fd7a4a058decc50f
Content-Type: text/plain; charset="UTF-8"

Hi,

I would suggest reading the RFNoC getting started guide (
https://kb.ettus.com/Getting_Started_with_RFNoC_Development) and making
your correlator into a RFNoC block. Then it will be easy to include your
correlator in a GNU Radio flow graph.

1) Where exactly in the code is the ddc chain instantiated *? Should I
> do it myself ?
>

The DDC code is in the RFNoC DDC block, noc_block_ddc.v. The default X310
image includes two DDCs, so you don't need to instantiate anything.


> 2) Is it possible to have a decimation rate of 200 or should it be a
> power of 2 ?
>

You can have a decimation rate of 200. The DDC has a CIC filter along with
3 half band filters, so the decimation rate is fairly flexible.


> 3) How is the decimation rate controlled ? From what I understand it's
> from the sampling rate parameter in GnuRadio. Am I right ?


 If using the USRP Source block in GNU Radio, setting the sample rate will
setup the DDC. If using Device 3 (i.e. a RFNoC flow graph) in GNU radio,
you will need to set the decimation rate on the RFNoC: DDC block.

Jonathon

On Wed, Jul 17, 2019 at 5:30 PM fbarras via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I developed a custom correlation module in Verilog and I would like to
> insert it in the usrp x310 fpga image. My goal is to send a  signal
> (with a usrp b205 mini) at a sampling rate of 1M and to receive it with
> the usrp x310. Inside the fpga, my block will look for a certain
> sequence inside the received signal.
>
> My block is working with a 200M clock and can support data rate up to
> 2M.
>  From what I've read, it seems that the adc of the x310 is working at
> 200M and that this can't be changed. So my module should be placed after
> the ddc chain. But this rises a few questions:
>
> 1) Where exactly in the code is the ddc chain instantiated *? Should I
> do it myself ?
>
> 2) Is it possible to have a decimation rate of 200 or should it be a
> power of 2 ?
>
> 3) How is the decimation rate controlled ? From what I understand it's
> from the sampling rate parameter in GnuRadio. Am I right ?
>
> Thanks !
>
> * For some reasons, I'm working with uhd  3.10.3
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fd7a4a058decc50f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I would suggest re=
ading the RFNoC getting started guide (<a href=3D"https://kb.ettus.com/Gett=
ing_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_wi=
th_RFNoC_Development</a>)=C2=A0and making your correlator into a RFNoC bloc=
k. Then it will be easy to include your correlator in a GNU Radio flow grap=
h.<br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">1) Where exactly in the code is the ddc chain instantiated *? Should I=C2=
=A0<br>do it myself ?<br></blockquote><div><br></div><div>The DDC code is i=
n the RFNoC DDC block, noc_block_ddc.v. The default X310 image includes two=
 DDCs, so you don&#39;t need to instantiate anything.</div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">2) Is it possible to hav=
e a decimation rate of 200 or should it be a=C2=A0<br>power of 2 ?<br></blo=
ckquote><div><br></div><div>You can have a decimation rate of 200. The DDC =
has a CIC filter along with 3 half band filters, so the decimation rate is =
fairly flexible.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">3) How is the decimation rate controlled ? From what I unders=
tand it&#39;s=C2=A0<br>from the sampling rate parameter in GnuRadio. Am I r=
ight ?</blockquote><div><br></div><div>=C2=A0If using the USRP Source block=
 in GNU Radio, setting the sample rate will setup the DDC. If using Device =
3 (i.e. a RFNoC flow graph) in GNU radio, you will need to set the decimati=
on rate on the RFNoC: DDC block.</div><div><br></div><div>Jonathon</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jul 17, 2019 at 5:30 PM fbarras via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
I developed a custom correlation module in Verilog and I would like to <br>
insert it in the usrp x310 fpga image. My goal is to send a=C2=A0 signal <b=
r>
(with a usrp b205 mini) at a sampling rate of 1M and to receive it with <br=
>
the usrp x310. Inside the fpga, my block will look for a certain <br>
sequence inside the received signal.<br>
<br>
My block is working with a 200M clock and can support data rate up to <br>
2M.<br>
=C2=A0From what I&#39;ve read, it seems that the adc of the x310 is working=
 at <br>
200M and that this can&#39;t be changed. So my module should be placed afte=
r <br>
the ddc chain. But this rises a few questions:<br>
<br>
1) Where exactly in the code is the ddc chain instantiated *? Should I <br>
do it myself ?<br>
<br>
2) Is it possible to have a decimation rate of 200 or should it be a <br>
power of 2 ?<br>
<br>
3) How is the decimation rate controlled ? From what I understand it&#39;s =
<br>
from the sampling rate parameter in GnuRadio. Am I right ?<br>
<br>
Thanks !<br>
<br>
* For some reasons, I&#39;m working with uhd=C2=A0 3.10.3<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000fd7a4a058decc50f--


--===============0316218334139986944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0316218334139986944==--

