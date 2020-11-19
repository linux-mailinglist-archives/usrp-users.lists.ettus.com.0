Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D37D2B89AB
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 02:37:44 +0100 (CET)
Received: from [::1] (port=60758 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfYtI-00050s-9o; Wed, 18 Nov 2020 20:37:40 -0500
Received: from mail-qv1-f46.google.com ([209.85.219.46]:40123)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kfYtD-0004u6-Qe
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 20:37:35 -0500
Received: by mail-qv1-f46.google.com with SMTP id 63so2100669qva.7
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 17:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version;
 bh=57unGRto1i2aS+EqFQLDKC1kgR1xup14u34Kjm3Szq4=;
 b=TP779sdWZ1f4BjoIIsc6yXV2UYV1cA3Wdtn+/Y3Yyo4lfitoLpiY3fugqUE1pXqyTR
 1Ayr0plix6sQAeuqJzIe/Fbr4pPaMlJKP/63XPIgYPx194xDWNVCSZTUAywfLGPESDDy
 unf+EZWquMB8Tt9p4EUyDv1lECdOezS9RVllbZ7Q9xRZDuN6tFb3bseUvbpoqnbLXPsD
 eivmYyxdskseBrYR6tF8aaaPFCjWC9vidRr5q9jIaNhYC3Vw3xtSIsoE5x5CVQGp+BWJ
 /JEDBzWWi4wauXZn7T/6WBZBNW1gBt3beZyP2dHuiitRM271uvnGEVRFAk6IsrDKyfHB
 Pcfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version;
 bh=57unGRto1i2aS+EqFQLDKC1kgR1xup14u34Kjm3Szq4=;
 b=NkJsT0GA3XrK8raza/3AHMbnHrEZKIc1w9eCz7S5cYXHBRwVuKJHyoVIjqZp/aYvku
 DMGiLlc4iJp8IJAG9a5hnApwrARS2VrjWLeYTo3fWJE61y9fs8UMum9bNNTkKJLR+7OT
 BQstiwH9J/3zBpXsBgXXvIqIY26/Yg/7XKk4K9sHxyasce/2bD/rUThU1Aon02x7R8jD
 GZHeL7DRL5a+GCkdZp5i/q/ciOKprreFcvOqGlksDdko0vYadMXELmxUZzaZyQg67mKB
 /vo2PPkF5EASHD92YPth32tjBXhCw09low7yns129gMlOtPIsMUCWEcDnYzTn24bvGfx
 Ps0g==
X-Gm-Message-State: AOAM530mQUiKNsjp1FZdldP/5+hVBzaR5OrtOu/kEmJrliOyuWvXReqK
 2ptrRwLte1xGDb99ahtH+dR78g==
X-Google-Smtp-Source: ABdhPJzJ8VIRJ3dv3xCHKM1bKdiX1Q5fHXO/ehUdb7PP0bdQaTjsnDWninjct9t5+KXgntz/Kdw+nA==
X-Received: by 2002:a0c:be02:: with SMTP id k2mr6462091qvg.49.1605749814997;
 Wed, 18 Nov 2020 17:36:54 -0800 (PST)
Received: from [10.32.128.226] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id y35sm13932742qty.58.2020.11.18.17.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Nov 2020 17:36:54 -0800 (PST)
Message-ID: <6f214a56d4a1f83b3f7ee056ed43889adedda0dd.camel@virginia.edu>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Date: Wed, 18 Nov 2020 20:36:57 -0500
In-Reply-To: <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
References: <8b07db0bd61586f4d91a9b7b65e5f21b74c332df.camel@virginia.edu>
 <CAFche=jx=4hbt0Dao8h_k1OMCxHu2XOeFSX=bYvQANONp_p81Q@mail.gmail.com>
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
Content-Type: multipart/mixed; boundary="===============3176012682516877333=="
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


--===============3176012682516877333==
Content-Type: multipart/alternative; boundary="=-J3NWjHNqVbXAkbaiVUN5"


--=-J3NWjHNqVbXAkbaiVUN5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2020-11-18 at 19:12 -0600, Wade Fife wrote:
> Dustin,
> 
> It sounds like the software thinks the control port FIFO is filling
> up. Are you issuing a lot of timed commands, maybe far into the
> future? I wonder if issuing commands faster than they are being
> executed could cause the FIFO on the FPGA to fill up with commands.
> 
> You could try increasing the timeout. Or, if you're comfortable with
> building the FPGA bitstream, you can try increasing the FIFO sizes on
> the FPGA. But either of these might just delay the inevitable. I'm
> not sure which block is causing the timeout, but these are the likely
> culprits if you want to try increasing the FIFO sizes:
> 
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194
> 
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178
> 
> https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131
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
> On Wed, Nov 18, 2020 at 9:25 AM Dustin Widmann via USRP-users
> <usrp-users@lists.ettus.com> wrote:
> > Hi usrp-users,
> > 
> > terminate called after throwing an instance of 'uhd::op_timeout'
> >   what():  RfnocError: OpTimeout: Control operation timed out
> > waiting
> > for space in command buffer
> > 
> > I've been getting the error above occasionally, usually after hours
> > of
> > operation. I've got a few questions about it:
> > * The error seems self explanatory, but why might it happen
> > sometimes
> > and not others?
> > * Are there any steps I can take to prevent the error from
> > occurring?
> > * Alternately, what would be the best way to catch and recover from
> > it?
> > 
> > Relevant context:
> > * USRP X310
> > * * ubx (using for 1x transmit)
> > * * twinrx (using for 2x phase synchronous rx, with lo sharing)
> > * UHD 4.0 C++ API, multiusrp
> > 
> > Dustin
> > 
> > 
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Hi Wade,

I do issue timed commands, but never for far into the future. As of
right now, I:
* tune the transmitter immediately
* set the command time for 100ms in the future
* tune the receiver
* set the command time for 350ms in the future
* tune the receiver again
* wait 600ms
* collect some data
I tune twice, because tuning the twinrx actually requires more commands
than the buffer can hold, so if I don't, then I won't have a consistent
phase offset. This is done as needed and never done farther ahead of
time than described (though that could forseeably be useful towards my
eventual goal of making it be not super-slow).  As of yet, I've only
observed this error after thousands of iterations. I'll try to increase
the FIFO sizes and do a build; thus far I had been using the FPGA image
from the release. Hopefully it will help. Thanks for the info Wade.

Dustin 

--=-J3NWjHNqVbXAkbaiVUN5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Wed, 2020-11-18 at 19:12 -0600, Wade Fife =
wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-le=
ft:2px #729fcf solid;padding-left:1ex"><div dir=3D"ltr"><div>Dustin,</div><=
div><br></div><div>It sounds like the software thinks the control port FIFO=
 is filling up. Are you issuing a lot of timed commands, maybe far into the=
 future? I wonder if issuing commands faster than they are being executed c=
ould cause the FIFO on the FPGA to fill up with commands.</div><div><br></d=
iv><div>You could try increasing the timeout. Or, if you're comfortable wit=
h building the FPGA bitstream, you can try increasing the FIFO sizes on the=
 FPGA. But either of these might just delay the inevitable. I'm not sure wh=
ich block is causing the timeout, but these are the likely culprits if you =
want to try increasing the FIFO sizes:</div><div></div><div><br></div><div>=
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/=
rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L147">https://github.com/E=
ttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/=
noc_shell_radio.v#L147</a></div><div><a href=3D"https://github.com/EttusRes=
earch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_radio/noc_she=
ll_radio.v#L194">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp=
3/lib/rfnoc/blocks/rfnoc_block_radio/noc_shell_radio.v#L194</a></div><div><=
br></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/f=
pga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L131">https://gi=
thub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_bl=
ock_duc/noc_shell_duc.v#L131</a></div><div><a href=3D"https://github.com/Et=
tusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_duc/noc=
_shell_duc.v#L178">https://github.com/EttusResearch/uhd/blob/master/fpga/us=
rp3/lib/rfnoc/blocks/rfnoc_block_duc/noc_shell_duc.v#L178</a></div><div><br=
></div><div><a href=3D"https://github.com/EttusResearch/uhd/blob/master/fpg=
a/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L131">https://gith=
ub.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_bloc=
k_ddc/noc_shell_ddc.v#L131</a></div><div><a href=3D"https://github.com/Ettu=
sResearch/uhd/blob/master/fpga/usrp3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_s=
hell_ddc.v#L178">https://github.com/EttusResearch/uhd/blob/master/fpga/usrp=
3/lib/rfnoc/blocks/rfnoc_block_ddc/noc_shell_ddc.v#L178</a></div><div><br><=
/div><div>You might try doubling the number in each case then rebuild your =
FPGA image. <br></div><div><br></div><div>Thanks,</div><div><br></div><div>=
Wade<br></div><div><br></div></div><div><br></div><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 18, 2020 at 9:25 AM Dus=
tin Widmann via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote type=3D"ci=
te" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:=
1ex"><div>Hi usrp-users,<br></div><div><br>terminate called after throwing =
an instance of 'uhd::op_timeout'<br>&nbsp; what():&nbsp; RfnocError: OpTime=
out: Control operation timed out waiting<br>for space in command buffer<br>=
</div><div><br>I've been getting the error above occasionally, usually afte=
r hours of<br>operation. I've got a few questions about it:<br>* The error =
seems self explanatory, but why might it happen sometimes<br>and not others=
?<br>* Are there any steps I can take to prevent the error from occurring?<=
br>* Alternately, what would be the best way to catch and recover from it?<=
br></div><div><br>Relevant context:<br>* USRP X310<br>* * ubx (using for 1x=
 transmit)<br>* * twinrx (using for 2x phase synchronous rx, with lo sharin=
g)<br>* UHD 4.0 C++ API, multiusrp<br></div><div><br>Dustin<br></div><div><=
br></div><div><br>_______________________________________________<br>USRP-u=
sers mailing list<br></div><div><a href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br></div><div><a href=
=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/u=
srp-users_lists.ettus.com</a><br></div></blockquote></div></blockquote><div=
>Hi Wade,</div><div><br></div><div>I do issue timed commands, but never for=
 far into the future. As of right now, I:<br>* tune the transmitter immedia=
tely<br>* set the command time for 100ms in the future<br>* tune the receiv=
er<br>* set the command time for 350ms in the future<br>* tune the receiver=
 again<br>* wait 600ms<br>* collect some data<br>I tune twice, because tuni=
ng the twinrx actually requires more commands than the buffer can hold, so =
if I don't, then I won't have a consistent phase offset. This is done as ne=
eded and never done farther ahead of time than described (though that could=
 forseeably be useful towards my eventual goal of making it be not super-sl=
ow). &nbsp;As of yet, I've only observed this error after thousands of iter=
ations. I'll try to increase the FIFO sizes and do a build; thus far I had =
been using the FPGA image from the release. Hopefully it will help. Thanks =
for the info Wade.</div><div><br></div><div>Dustin&nbsp;</div><div class=3D=
"-x-evo-signature-wrapper"><span class=3D"-x-evo-signature" id=3D"none"></s=
pan></div></body></html>

--=-J3NWjHNqVbXAkbaiVUN5--



--===============3176012682516877333==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3176012682516877333==--


