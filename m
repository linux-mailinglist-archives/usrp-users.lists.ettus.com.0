Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7CC2B8950
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 02:13:03 +0100 (CET)
Received: from [::1] (port=60616 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfYVM-0003mj-00; Wed, 18 Nov 2020 20:12:56 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:35540)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kfYVH-0003fH-PG
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 20:12:51 -0500
Received: by mail-ot1-f44.google.com with SMTP id n11so3781955ota.2
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 17:12:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=odreeHUF2lNd4+LVJs7NNDkKN+hKDdH6cKETgUYupOE=;
 b=idoABetvTYPXPljdZyLAC5G/sI4D9ioxEZ+Q87IRKzWQvR94tMOmKoHNDyNacCDzIk
 UbWDle4FlPHUrsD+qI6WjFWYHLFGlNcgjYIYReMR0JEA2o2KVk1X4GTzrsHsD989slHA
 WSNEXX3O4Ad/n4mjVg6wSmjWkzJYx3xafHKUZY6VqHaGKudfL3v1ATlb9vQckku7FTiv
 h5TO3SrIjq4yWvE5XzB4TwriBqdkfXCy1kn95GYtBJhQTyV2L8T/6ruL9r18nrVMFc8I
 uQ0PvexAISdtMf7oXjkYVJCdC5beBN6OA7kFL9zbJRN0pWzveHHVt7H3OoyX3YMap/7S
 W7fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=odreeHUF2lNd4+LVJs7NNDkKN+hKDdH6cKETgUYupOE=;
 b=L1XqkdaNcBxsuu1hUIIhtvXsUGATCKKfUupEWqp7qia3dwhg5TnU+EVzAlxxMwdBHl
 9rizjZkSc2M1/+Xp7sM70PLegmGhtE3HUx7ETvM/81xM5uW8F0V2UDyk57olXkQa6u8S
 Y3BDK0wLmfsWfhq5KqCenfCNqOachfYwt0zVf/bjtTeG9ep/8637OCyyEbQ02Efa/Til
 Ny15v80NGQqK4qDJp3Ey7m2p76tSLHl+2lIaziCrqDDADWZ4p+K+P1Vryd7fVZDJQ3qs
 MW1T9rOQlTnYRfEXwexNagpkK4hfAneI5L5C5SWxk1B/Cz+2REVVBgrP2nWPDmFKS2aG
 /8Og==
X-Gm-Message-State: AOAM533QjQknmbVpqGq/COpKlEpNbevSG6UQUyHVU6BlRuO1jaDu+wzO
 HyuYdPdtd5jjQ6RQCQkRBjLreoJO0yHClqAlXxereqA5
X-Google-Smtp-Source: ABdhPJxdVjlC35T8umqEmpZ1UQ8r+WdkGa9YkzW4yblqNDuLvillaBLySrSU9uzh+Rd/CNJku0dRPUpbW0Dv1EZ/EPM=
X-Received: by 2002:a9d:39b7:: with SMTP id y52mr8929861otb.28.1605748331108; 
 Wed, 18 Nov 2020 17:12:11 -0800 (PST)
MIME-Version: 1.0
References: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
In-Reply-To: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
Date: Wed, 18 Nov 2020 19:12:00 -0600
Message-ID: <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
To: Dustin Widmann <dw2zq@virginia.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RfnocError: OpTimeout
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============1803559051574792275=="
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

--===============1803559051574792275==
Content-Type: multipart/alternative; boundary="000000000000dfef8c05b46b6acc"

--000000000000dfef8c05b46b6acc
Content-Type: text/plain; charset="UTF-8"

Dustin,

It sounds like the software thinks the control port FIFO is filling up. Are
you issuing a lot of timed commands, maybe far into the future? I wonder if
issuing commands faster than they are being executed could cause the FIFO
on the FPGA to fill up with commands.

You could try increasing the timeout. Or, if you're comfortable with
building the FPGA bitstream, you can try increasing the FIFO sizes on the
FPGA. But either of these might just delay the inevitable. I'm not sure
which block is causing the timeout, but these are the likely culprits if
you want to try increasing the FIFO sizes:

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178

https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131
https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178

You might try doubling the number in each case then rebuild your FPGA
image.

Thanks,

Wade


On Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi usrp-users,
>
> terminate called after throwing an instance of 'uhd::op_timeout'
>   what():  RfnocError: OpTimeout: Control operation timed out waiting
> for space in command buffer
>
> I've been getting the error above occasionally, usually after hours of
> operation. I've got a few questions about it:
> * The error seems self explanatory, but why might it happen sometimes
> and not others?
> * Are there any steps I can take to prevent the error from occurring?
> * Alternately, what would be the best way to catch and recover from it?
>
> Relevant context:
> * USRP X310
> * * ubx (using for 1x transmit)
> * * twinrx (using for 2x phase synchronous rx, with lo sharing)
> * UHD 4.0 C++ API, multiusrp
>
> Dustin
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000dfef8c05b46b6acc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dustin,</div><div><br></div><div>It sounds like the s=
oftware thinks the control port FIFO is filling up. Are you issuing a lot o=
f timed commands, maybe far into the future? I wonder if issuing commands f=
aster than they are being executed could cause the FIFO on the FPGA to fill=
 up with commands.</div><div><br></div><div>You could try increasing the ti=
meout. Or, if you&#39;re comfortable with building the FPGA bitstream, you =
can try increasing the FIFO sizes on the FPGA. But either of these might ju=
st delay the inevitable. I&#39;m not sure which block is causing the timeou=
t, but these are the likely culprits if you want to try increasing the FIFO=
 sizes:</div><div></div><div><br></div><div><a href=3D"https://github.com/E=
ttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/=
noc_shell_radio.v#L147">https://github.com/EttusResearch/uhd/blob/master/fp=
ga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147</a></div=
><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp=
3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194">https://github=
.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_=
radio/noc_shell_radio.v#L194</a></div><div><br></div><div><a href=3D"https:=
//github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfno=
c_block_duc/noc_shell_duc.v#L131">https://github.com/EttusResearch/uhd/blob=
/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131</a=
></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178">https://gith=
ub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_bloc=
k_duc/noc_shell_duc.v#L178</a></div><div><br></div><div><a href=3D"https://=
github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_=
block_ddc/noc_shell_ddc.v#L131">https://github.com/EttusResearch/uhd/blob/m=
aster/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131</a><=
/div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/=
usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178">https://github=
.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_=
ddc/noc_shell_ddc.v#L178</a></div><div><br></div><div>You might try doublin=
g the number in each case then rebuild your FPGA image. <br></div><div><br>=
</div><div>Thanks,</div><div><br></div><div>Wade<br></div><div><br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi usrp-users,=
<br>
<br>
terminate called after throwing an instance of &#39;uhd::op_timeout&#39;<br=
>
=C2=A0 what():=C2=A0 RfnocError: OpTimeout: Control operation timed out wai=
ting<br>
for space in command buffer<br>
<br>
I&#39;ve been getting the error above occasionally, usually after hours of<=
br>
operation. I&#39;ve got a few questions about it:<br>
* The error seems self explanatory, but why might it happen sometimes<br>
and not others?<br>
* Are there any steps I can take to prevent the error from occurring?<br>
* Alternately, what would be the best way to catch and recover from it?<br>
<br>
Relevant context:<br>
* USRP X310<br>
* * ubx (using for 1x transmit)<br>
* * twinrx (using for 2x phase synchronous rx, with lo sharing)<br>
* UHD 4.0 C++ API, multiusrp<br>
<br>
Dustin<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000dfef8c05b46b6acc--


--===============1803559051574792275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1803559051574792275==--

