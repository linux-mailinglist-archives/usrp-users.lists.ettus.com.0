Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5E42B9816
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 17:38:47 +0100 (CET)
Received: from [::1] (port=38724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfmxG-0000Wq-Tu; Thu, 19 Nov 2020 11:38:42 -0500
Received: from mail-oo1-f42.google.com ([209.85.161.42]:36448)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kfmxD-0000Se-60
 for usrp-users@lists.ettus.com; Thu, 19 Nov 2020 11:38:39 -0500
Received: by mail-oo1-f42.google.com with SMTP id l20so1493845oot.3
 for <usrp-users@lists.ettus.com>; Thu, 19 Nov 2020 08:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tNTVn7dSO2SwT4h5NhkRvZIhePNnpEmt/kaBDCa30/4=;
 b=OtCTOWxV2gWk3dD09cpuqED51Pk0uQeIYfc4eAasWhO9a4NixMKNExpgxHSmEIVSal
 PRH/cf2904ewCC50kNcRA3Q9/7f7dhn09fdWCM9tJitypxzf5/VVMfBmRsJvLDwxzENb
 FkZTedo6oGNrihgC3RBn/DdT9SSU26l65U4j+IZ1HDQmC5MehVpExPXAXKq4dlhjObga
 VgDXV2I9vvVvCKJ1DTOIKPEVdlCshzbaO+CTln/xXgR71VjTWYwRtDRNhkGwH3PH3IEd
 H+x7TkvPAl7lYxuBl/oAf/7R/N7/MNy1CPwtnVLy2oYEeXkfjQYHPz2At9wnCDrnvsOc
 FmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tNTVn7dSO2SwT4h5NhkRvZIhePNnpEmt/kaBDCa30/4=;
 b=nbgbtJ7Zbf8Uh/98+W6jxykq/Z1Rj96s2peuo0bBjsDdJIhZtqyTvTzg97orK/kjBY
 zbpY9WjJiMUC9ZG2OR6FoaBDNr9fFvueI/Gg4cH5hSd2mFSgnODEFcPRbYSSJgMphRQC
 gTCmlTkvvCrQ/p/HeKK2hfyZ530OwnIepKITOVGuuUNhj0D5fZTUGCAJi88CeFYW+lT9
 jsy4+B22YVAMVF72gSy2K3LVautYMFX4XlYotrZk1wpecv6/+O4hBiFmS6eFwq6NjFlL
 6d/fwStLBVjHNWdMNNHN+4kcc9gG2ICZXRVpJHz8yKDcrnS+D49zRWGJrOgwh7FlBnjN
 0rKg==
X-Gm-Message-State: AOAM53133sAn6UHxhGNZqkHYIUt3w6bWvqvpySNxD+tu8IyjSky95YS5
 heGIh2s9r0AZB6UNB0/crDtEtbmBdj4AAWOLOziNIQ==
X-Google-Smtp-Source: ABdhPJw5Vd15nmrnI+yMjudnKAK+DTI6SdBISZXrcYKHyAkHosmTalqauizhj79hp3BrACc/giNa2mp/6qcVQa1PLFo=
X-Received: by 2002:a4a:d752:: with SMTP id h18mr10740144oot.62.1605803878307; 
 Thu, 19 Nov 2020 08:37:58 -0800 (PST)
MIME-Version: 1.0
References: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
 <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
 <6f214a56d4a1f83b3f7ee056ed43889adedda0dd.camel@virginia.edu>
In-Reply-To: <6f214a56d4a1f83b3f7ee056ed43889adedda0dd.camel@virginia.edu>
Date: Thu, 19 Nov 2020 10:37:47 -0600
Message-ID: <CAB__hTSbv1RzpK6UQ3ftUE_Vhvuc2Q0KgeH4-wm1DDhaKB+vVQ@mail.gmail.com>
To: Dustin Widmann <dw2zq@virginia.edu>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7599143478728527182=="
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

--===============7599143478728527182==
Content-Type: multipart/alternative; boundary="000000000000bf50c305b47859b5"

--000000000000bf50c305b47859b5
Content-Type: text/plain; charset="UTF-8"

Hi Dustin,
Based on your other post of the dsp_tune not appearing to have worked, it
seems likely that this is indeed the case and all of your dsp_tune commands
are getting backed up in the FIFO since they are never executed.  Does this
seem plausible?  This of course doesn't explain why the commands are never
getting executed, but it does seem to account for both behaviors you're
seeing.
Rob

On Wed, Nov 18, 2020 at 7:37 PM Dustin Widmann via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Wed, 2020-11-18 at 19:12 -0600, Wade Fife wrote:
>
> Dustin,
>
> It sounds like the software thinks the control port FIFO is filling up.
> Are you issuing a lot of timed commands, maybe far into the future? I
> wonder if issuing commands faster than they are being executed could cause
> the FIFO on the FPGA to fill up with commands.
>
> You could try increasing the timeout. Or, if you're comfortable with
> building the FPGA bitstream, you can try increasing the FIFO sizes on the
> FPGA. But either of these might just delay the inevitable. I'm not sure
> which block is causing the timeout, but these are the likely culprits if
> you want to try increasing the FIFO sizes:
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178
>
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131
>
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178
>
> You might try doubling the number in each case then rebuild your FPGA
> image.
>
> Thanks,
>
> Wade
>
>
> On Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
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
> Hi Wade,
>
> I do issue timed commands, but never for far into the future. As of right
> now, I:
> * tune the transmitter immediately
> * set the command time for 100ms in the future
> * tune the receiver
> * set the command time for 350ms in the future
> * tune the receiver again
> * wait 600ms
> * collect some data
> I tune twice, because tuning the twinrx actually requires more commands
> than the buffer can hold, so if I don't, then I won't have a consistent
> phase offset. This is done as needed and never done farther ahead of time
> than described (though that could forseeably be useful towards my eventual
> goal of making it be not super-slow).  As of yet, I've only observed this
> error after thousands of iterations. I'll try to increase the FIFO sizes
> and do a build; thus far I had been using the FPGA image from the release.
> Hopefully it will help. Thanks for the info Wade.
>
> Dustin
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bf50c305b47859b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dustin,<div>Based on your other post of the dsp_tune no=
t appearing to have worked, it seems likely that this is indeed the case an=
d all of your dsp_tune commands are getting backed up in the FIFO since the=
y are never executed.=C2=A0 Does this seem plausible?=C2=A0 This of course =
doesn&#39;t explain why the commands are never getting executed, but it doe=
s seem to account for both behaviors you&#39;re seeing.</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, Nov 18, 2020 at 7:37 PM Dustin Widmann via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div><div>On Wed, 2020-11-18 at 19:12 -0600, Wade Fife wrote:</div>=
<blockquote type=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left:2px=
 solid rgb(114,159,207);padding-left:1ex"><div dir=3D"ltr"><div>Dustin,</di=
v><div><br></div><div>It sounds like the software thinks the control port F=
IFO is filling up. Are you issuing a lot of timed commands, maybe far into =
the future? I wonder if issuing commands faster than they are being execute=
d could cause the FIFO on the FPGA to fill up with commands.</div><div><br>=
</div><div>You could try increasing the timeout. Or, if you&#39;re comforta=
ble with building the FPGA bitstream, you can try increasing the FIFO sizes=
 on the FPGA. But either of these might just delay the inevitable. I&#39;m =
not sure which block is causing the timeout, but these are the likely culpr=
its if you want to try increasing the FIFO sizes:</div><div></div><div><br>=
</div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga=
/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147" target=3D=
"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rf=
noc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147</a></div><div><a href=
=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/b=
locks/rfnoc_block_radio/noc_shell_radio.v#L194" target=3D"_blank">https://g=
ithub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_b=
lock_radio/noc_shell_radio.v#L194</a></div><div><br></div><div><a href=3D"h=
ttps://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks=
/rfnoc_block_duc/noc_shell_duc.v#L131" target=3D"_blank">https://github.com=
/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/=
noc_shell_duc.v#L131</a></div><div><a href=3D"https://github.com/EttusResea=
rch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_d=
uc.v#L178" target=3D"_blank">https://github.com/EttusResearch/uhd/blob/mast=
er/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178</a></di=
v><div><br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/=
master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131" ta=
rget=3D"_blank">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3=
/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131</a></div><div><a hre=
f=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/=
blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178" target=3D"_blank">https://gith=
ub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_bloc=
k_ddc/noc_shell_ddc.v#L178</a></div><div><br></div><div>You might try doubl=
ing the number in each case then rebuild your FPGA image. <br></div><div><b=
r></div><div>Thanks,</div><div><br></div><div>Wade<br></div><div><br></div>=
</div><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users &l=
t;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote type=3D"cite" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,207);padding=
-left:1ex"><div>Hi usrp-users,<br></div><div><br>terminate called after thr=
owing an instance of &#39;uhd::op_timeout&#39;<br>=C2=A0 what():=C2=A0 Rfno=
cError: OpTimeout: Control operation timed out waiting<br>for space in comm=
and buffer<br></div><div><br>I&#39;ve been getting the error above occasion=
ally, usually after hours of<br>operation. I&#39;ve got a few questions abo=
ut it:<br>* The error seems self explanatory, but why might it happen somet=
imes<br>and not others?<br>* Are there any steps I can take to prevent the =
error from occurring?<br>* Alternately, what would be the best way to catch=
 and recover from it?<br></div><div><br>Relevant context:<br>* USRP X310<br=
>* * ubx (using for 1x transmit)<br>* * twinrx (using for 2x phase synchron=
ous rx, with lo sharing)<br>* UHD 4.0 C++ API, multiusrp<br></div><div><br>=
Dustin<br></div><div><br></div><div><br>___________________________________=
____________<br>USRP-users mailing list<br></div><div><a href=3D"mailto:USR=
P-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><b=
r></div><div><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_=
lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote></d=
iv></blockquote><div>Hi Wade,</div><div><br></div><div>I do issue timed com=
mands, but never for far into the future. As of right now, I:<br>* tune the=
 transmitter immediately<br>* set the command time for 100ms in the future<=
br>* tune the receiver<br>* set the command time for 350ms in the future<br=
>* tune the receiver again<br>* wait 600ms<br>* collect some data<br>I tune=
 twice, because tuning the twinrx actually requires more commands than the =
buffer can hold, so if I don&#39;t, then I won&#39;t have a consistent phas=
e offset. This is done as needed and never done farther ahead of time than =
described (though that could forseeably be useful towards my eventual goal =
of making it be not super-slow).=C2=A0 As of yet, I&#39;ve only observed th=
is error after thousands of iterations. I&#39;ll try to increase the FIFO s=
izes and do a build; thus far I had been using the FPGA image from the rele=
ase. Hopefully it will help. Thanks for the info Wade.</div><div><br></div>=
<div>Dustin=C2=A0</div><div><span id=3D"gmail-m_5847935911930224220gmail-m_=
-219420701178796163none"></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bf50c305b47859b5--


--===============7599143478728527182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7599143478728527182==--

