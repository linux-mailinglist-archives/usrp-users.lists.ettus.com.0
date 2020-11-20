Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A506D2BB709
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 21:40:13 +0100 (CET)
Received: from [::1] (port=50676 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgDCR-0006hI-TM; Fri, 20 Nov 2020 15:40:07 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:38083)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kgDCO-0006bT-98
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 15:40:04 -0500
Received: by mail-oi1-f178.google.com with SMTP id o25so11910425oie.5
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 12:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U3ZwWxkkigFTt9R24sfRBWr7EnPWRYY2UEypPmk82Fw=;
 b=gQtgh98lD9mr5jIK1tKC21+d7uMOIrLFkOAvjluTq8hU7sbcvAN59iBLmAQhLTzayX
 78r+babN7Kv/05wcej1rbQl+6ia1IA25wFGcY5wQ4W0hqLHf9w125fPMC7ah1+f2eoDu
 FEvUbJtqTS77lH9D4D8Q0QLK5s0Z1Cc0U7PLtpbEnJYmbgJqbVnFL00sBr3aXFJ2Su9E
 TF0zn66hcf1KpuZGpoWwPH2DvNTdzeu6pPFRAusJi+eYtCFHYRB2t3e4J5/tHVAcRhhc
 J15Q1/v8ZqyAcwDN++JmM5OMpr7XEDYLmEfE1bQ3xrYVPGeatfPyboH43Ljgo/xoUagy
 B7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U3ZwWxkkigFTt9R24sfRBWr7EnPWRYY2UEypPmk82Fw=;
 b=BC3WavcaY5hyzEnrht/7UhbqXnMS9VljVCCZMb/Z78aPwFC7DVY78lvAmbs1b+bcTM
 4hXvzv+z7OiqAkDvvyzqgpTjWz/rPJxmwIK5FIBlxMRrz1gD/YsdUtrxgeAjkE18UlhK
 PgeNQhsmZG3T680sWhMptHfkDKfwLTOvG9474JenKp39FQJelRT5lKdu6SOv+nLdvla3
 xg1foSxt7RJjAaHAhaw8vBzRBAHK/rnRdyoiUHpPH9sptFHvNbIU3n0bGtFHnRS/8+Px
 bRPwnYmM2bWO58CwLOblBHEn/Jmv46AVFU9EfP7j39RI/mhyyc6UcG6bqpi1K6U/4UBf
 1tzA==
X-Gm-Message-State: AOAM5311azjdMM9mXozSkKro0OkdOnuC/Q0qkm8kxvsOIpUWR1fgVr4x
 izVg9yExiaEbClUkSIpG29uaP2k2FISg8EXB38u4ra0x
X-Google-Smtp-Source: ABdhPJwN3GCrHrF03v7kkTsNsYl+jiX+ppRSTqrh5Q3r6cJBsxPHgMRtXFpzfKNMNKyT5Ig/27Yuq52DXRnpatyUxkc=
X-Received: by 2002:aca:aad0:: with SMTP id t199mr7735091oie.62.1605904763639; 
 Fri, 20 Nov 2020 12:39:23 -0800 (PST)
MIME-Version: 1.0
References: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
 <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
 <6d4202c60c2fab68d67e9159675bf79beddbf11d.camel@virginia.edu>
In-Reply-To: <6d4202c60c2fab68d67e9159675bf79beddbf11d.camel@virginia.edu>
Date: Fri, 20 Nov 2020 14:39:12 -0600
Message-ID: <CAFche=jo=m8-1uGowpJ39C3h4TL7DV+G8EXYdqHVq90df6NzsA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5029698050144720463=="
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

--===============5029698050144720463==
Content-Type: multipart/alternative; boundary="000000000000faea0005b48fd6ed"

--000000000000faea0005b48fd6ed
Content-Type: text/plain; charset="UTF-8"

Building the X310 FPGA does require a Xilinx Vivado license. It is not one
of the FPGAs for which the free version of the tool works.

You can find instructions for building the FPGA in the user manual:
https://files.ettus.com/manual/md_usrp3_build_instructions.html

Thanks,

Wade

On Fri, Nov 20, 2020 at 11:38 AM Dustin Widmann <dw2zq@virginia.edu> wrote:

> Hi Wade,
>
> Increasing the size of the relevant buffers does sound interesting.
> Unfortunately I'm not really familiar with the workflow for building
> the FPGA bitstream. I'd be interested in trying it if you could point
> me towards up-to-date documentation on doing it, so long as there
> wouldn't be a major software purchase involved.
>
> Dustin
>
> On Wed, 2020-11-18 at 19:12 -0600, Wade Fife wrote:
> > Dustin,
> >
> > It sounds like the software thinks the control port FIFO is filling
> > up. Are you issuing a lot of timed commands, maybe far into the
> > future? I wonder if issuing commands faster than they are being
> > executed could cause the FIFO on the FPGA to fill up with commands.
> >
> > You could try increasing the timeout. Or, if you're comfortable with
> > building the FPGA bitstream, you can try increasing the FIFO sizes on
> > the FPGA. But either of these might just delay the inevitable. I'm
> > not sure which block is causing the timeout, but these are the likely
> > culprits if you want to try increasing the FIFO sizes:
> >
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194
> >
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178
> >
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131
> >
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178
> >
> > You might try doubling the number in each case then rebuild your FPGA
> > image.
> >
> > Thanks,
> >
> > Wade
> >
> >
> > On Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users
> > <usrp-users@lists.ettus.com> wrote:
> > > Hi usrp-users,
> > >
> > > terminate called after throwing an instance of 'uhd::op_timeout'
> > >   what():  RfnocError: OpTimeout: Control operation timed out
> > > waiting
> > > for space in command buffer
> > >
> > > I've been getting the error above occasionally, usually after hours
> > > of
> > > operation. I've got a few questions about it:
> > > * The error seems self explanatory, but why might it happen
> > > sometimes
> > > and not others?
> > > * Are there any steps I can take to prevent the error from
> > > occurring?
> > > * Alternately, what would be the best way to catch and recover from
> > > it?
> > >
> > > Relevant context:
> > > * USRP X310
> > > * * ubx (using for 1x transmit)
> > > * * twinrx (using for 2x phase synchronous rx, with lo sharing)
> > > * UHD 4.0 C++ API, multiusrp
> > >
> > > Dustin
> > >
> > >
> > > _______________________________________________
> > > USRP-users mailing list
> > > USRP-users@lists.ettus.com
> > > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>

--000000000000faea0005b48fd6ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Building the X310 FPGA does require a Xilinx Vivado l=
icense. It is not one of the FPGAs for which the free version of the tool w=
orks.</div><div><br></div><div>You can find instructions for building the F=
PGA in the user manual:</div><div><a href=3D"https://files.ettus.com/manual=
/md_usrp3_build_instructions.html">https://files.ettus.com/manual/md_usrp3_=
build_instructions.html</a></div><div><br></div><div>Thanks,</div><div><br>=
</div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Nov 20, 2020 at 11:38 AM Dustin Widmann &l=
t;<a href=3D"mailto:dw2zq@virginia.edu">dw2zq@virginia.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Wade,<br>
<br>
Increasing the size of the relevant buffers does sound interesting.<br>
Unfortunately I&#39;m not really familiar with the workflow for building<br=
>
the FPGA bitstream. I&#39;d be interested in trying it if you could point<b=
r>
me towards up-to-date documentation on doing it, so long as there<br>
wouldn&#39;t be a major software purchase involved. <br>
<br>
Dustin<br>
<br>
On Wed, 2020-11-18 at 19:12 -0600, Wade Fife wrote:<br>
&gt; Dustin,<br>
&gt; <br>
&gt; It sounds like the software thinks the control port FIFO is filling<br=
>
&gt; up. Are you issuing a lot of timed commands, maybe far into the<br>
&gt; future? I wonder if issuing commands faster than they are being<br>
&gt; executed could cause the FIFO on the FPGA to fill up with commands.<br=
>
&gt; <br>
&gt; You could try increasing the timeout. Or, if you&#39;re comfortable wi=
th<br>
&gt; building the FPGA bitstream, you can try increasing the FIFO sizes on<=
br>
&gt; the FPGA. But either of these might just delay the inevitable. I&#39;m=
<br>
&gt; not sure which block is causing the timeout, but these are the likely<=
br>
&gt; culprits if you want to try increasing the FIFO sizes:<br>
&gt; <br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga=
/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147</a><br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga=
/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194</a><br>
&gt; <br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usr=
p3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131</a><br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usr=
p3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178</a><br>
&gt; <br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usr=
p3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131</a><br>
&gt; <a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178" rel=3D"noreferrer" =
target=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usr=
p3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178</a><br>
&gt; <br>
&gt; You might try doubling the number in each case then rebuild your FPGA<=
br>
&gt; image. <br>
&gt; <br>
&gt; Thanks,<br>
&gt; <br>
&gt; Wade<br>
&gt; <br>
&gt; <br>
&gt; On Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users<br>
&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; &gt; Hi usrp-users,<br>
&gt; &gt; <br>
&gt; &gt; terminate called after throwing an instance of &#39;uhd::op_timeo=
ut&#39;<br>
&gt; &gt; =C2=A0 what():=C2=A0 RfnocError: OpTimeout: Control operation tim=
ed out<br>
&gt; &gt; waiting<br>
&gt; &gt; for space in command buffer<br>
&gt; &gt; <br>
&gt; &gt; I&#39;ve been getting the error above occasionally, usually after=
 hours<br>
&gt; &gt; of<br>
&gt; &gt; operation. I&#39;ve got a few questions about it:<br>
&gt; &gt; * The error seems self explanatory, but why might it happen<br>
&gt; &gt; sometimes<br>
&gt; &gt; and not others?<br>
&gt; &gt; * Are there any steps I can take to prevent the error from<br>
&gt; &gt; occurring?<br>
&gt; &gt; * Alternately, what would be the best way to catch and recover fr=
om<br>
&gt; &gt; it?<br>
&gt; &gt; <br>
&gt; &gt; Relevant context:<br>
&gt; &gt; * USRP X310<br>
&gt; &gt; * * ubx (using for 1x transmit)<br>
&gt; &gt; * * twinrx (using for 2x phase synchronous rx, with lo sharing)<b=
r>
&gt; &gt; * UHD 4.0 C++ API, multiusrp<br>
&gt; &gt; <br>
&gt; &gt; Dustin<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list<br>
&gt; &gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
&gt; &gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
</blockquote></div>

--000000000000faea0005b48fd6ed--


--===============5029698050144720463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5029698050144720463==--

