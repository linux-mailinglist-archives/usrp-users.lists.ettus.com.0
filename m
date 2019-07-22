Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E300B70B22
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jul 2019 23:19:03 +0200 (CEST)
Received: from [::1] (port=59102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hpfi2-0001q2-Cp; Mon, 22 Jul 2019 17:19:02 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:43754)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1hpfhz-0001jX-GE
 for usrp-users@lists.ettus.com; Mon, 22 Jul 2019 17:18:59 -0400
Received: by mail-ot1-f48.google.com with SMTP id j11so17543498otp.10
 for <usrp-users@lists.ettus.com>; Mon, 22 Jul 2019 14:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mAWYGR0rtaxwt/up5IX7/U4scqK2Al1es3ioXY41ekk=;
 b=lgZAxILNwPXhjYV7VWB9qMg81DmSQVBbH8rW97Do40+9tP78Tm7QB7AOL11TGgxRYp
 0z6XlkYDBQjmCxOcDV0r2Kl+DkdgloLG5fvhsN0peB26r/vDyt0vW4gjOw6FoUrhkv41
 80fX69BJzy7xwB9ovv2HZmseXCini/eCyIh1XY1BXLVK1VA52hMawc/ctk2l3LeqYVW8
 noSTXG1Dz2+w/nOpegZB6gL+qp5EnyAMvOCerS8ALfFqmuksmPKIx+dXD0ghiNFHwMAd
 GTM36hXSZznluw7k6M6DEvREzVoxfC7W4UFuN8Xn2Z0OO/v0ZAFQRplWAEBYrgSDbF9c
 skFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mAWYGR0rtaxwt/up5IX7/U4scqK2Al1es3ioXY41ekk=;
 b=MhcG4ozXYozw6v2H5pTRmDFqwM7FhylujOmSkemgPJyAVZxrWgsbfZS0Lu174QL25o
 hY2fX6obG3KlYYZaRhkMJHE8ldj292owQSDDdlf3r0fi1s3sOdDUypMCD/sSjatqgNTL
 nkiq3edxVTRKKT/odCo3C5FkyJyDFCCMIEhBlQZOziLkpfXsNkav6/vgP8aZAWJiEdYK
 im9/uiynziirdeEyasJzleUOMZE9bn/5CSjpOqX44S/YNPnrpyIPEDUuRht/tCQ4HQLY
 JcwW+J0F3kcpOMjGA+541XfXvJazPbfNUEKmN9Np7dTwHXpmJ/UT9cbCSxmrzD2CMtDg
 PwCQ==
X-Gm-Message-State: APjAAAX3gcO+/J7N+moTIZD5xamadqEG4iXPj6SyMZqOb3Dei0rqMwkF
 d/mZLk43FEC0L7368ITKlG1IOZKzh8byK3ONRW8=
X-Google-Smtp-Source: APXvYqw4opVATRdFoxd4Eaj/scifrYocuuFiIOH1t8KEeaHY8utIJwa9RgBvgI/2Qw+UJO21/HWWiJJ3rpDHqx+vcoM=
X-Received: by 2002:a9d:774e:: with SMTP id t14mr2517042otl.187.1563830298684; 
 Mon, 22 Jul 2019 14:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRhLMK7Z-YdCqXnjamb0d685pi+mbsWAzhzVG2_jsNw=g@mail.gmail.com>
 <CAEXYVK7UuJzmCWT==QnE0WwkZCx3SFUA0J4HSz4k6bOh2unK3g@mail.gmail.com>
In-Reply-To: <CAEXYVK7UuJzmCWT==QnE0WwkZCx3SFUA0J4HSz4k6bOh2unK3g@mail.gmail.com>
Date: Mon, 22 Jul 2019 17:18:06 -0400
Message-ID: <CAEXYVK6Lh0f8wRm6XvEtrnAGqKKEf-4iJjt7eEinrgOpNgzSxg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] RFNoC Testbench for custom block with
 AXI_CONFIG_BUS
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5011381457094075532=="
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

--===============5011381457094075532==
Content-Type: multipart/alternative; boundary="0000000000007131e0058e4b9db8"

--0000000000007131e0058e4b9db8
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 22, 2019 at 5:12 PM Brian Padalino <bpadalino@gmail.com> wrote:

> You just need to write_reg() and use an address of SR_AXI_CONFIG for
> everything other than the last value, and use SR_AXI_CONFIG_TLAST for the
> last one.
>
> That should push the valid high on the config line for each write you do,
> and then on the last write both valid and tlast will be held.
>

Sorry, looking at my testbench I should have been more clear.

I defined AXI_WRAPPER_BASE to 128.
I defined SR_AXI_CONFIG as AXI_WRAPPER_BASE + 1.
I defined SR_AXI_CONFIG_TLAST as SR_AXI_CONFIG + 1.

In axi_wrapper, I instantiate:

  SR_AXI_CONFIG and assign it SR_AXI_CONFIG, and I also put
NUM_AXI_CONFIG_BUS to 1.

Sorry for not being complete in my previous email.

Good luck.

Brian

--0000000000007131e0058e4b9db8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jul 22, 2019 at 5:12 PM Brian Pad=
alino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">You just need to write_reg() and use a=
n address of SR_AXI_CONFIG for everything other than the last value, and us=
e SR_AXI_CONFIG_TLAST for the last one.<div><br></div><div>That should push=
 the valid high on the config line for each write you do, and then on the l=
ast write both valid and tlast will be held.</div></div></blockquote><div><=
br></div><div>Sorry, looking at my testbench I should have been more clear.=
<div><br></div><div>I defined AXI_WRAPPER_BASE to 128.</div><div>I defined =
SR_AXI_CONFIG as AXI_WRAPPER_BASE=C2=A0+ 1.</div><div>I defined SR_AXI_CONF=
IG_TLAST as SR_AXI_CONFIG=C2=A0+ 1.</div><div><br></div><div>In axi_wrapper=
, I instantiate:</div><div><br></div><div>=C2=A0 SR_AXI_CONFIG and assign i=
t SR_AXI_CONFIG, and I also put NUM_AXI_CONFIG_BUS to 1.</div><div><br></di=
v><div>Sorry for not being complete in my previous email.</div></div><div><=
br></div><div>Good luck.</div><div><br>Brian</div></div></div>

--0000000000007131e0058e4b9db8--


--===============5011381457094075532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5011381457094075532==--

