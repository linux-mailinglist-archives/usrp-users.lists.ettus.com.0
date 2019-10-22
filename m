Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E034E0BED
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 20:51:52 +0200 (CEST)
Received: from [::1] (port=46578 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMzG1-00058p-08; Tue, 22 Oct 2019 14:51:49 -0400
Received: from mail-lj1-f170.google.com ([209.85.208.170]:33643)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <richard.bell4@gmail.com>)
 id 1iMzFx-000507-HM
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 14:51:45 -0400
Received: by mail-lj1-f170.google.com with SMTP id a22so18332174ljd.0
 for <USRP-users@lists.ettus.com>; Tue, 22 Oct 2019 11:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eYb08CmyJpZ44KRnpUHR5Xln335xRNBsHydjbZbZmQo=;
 b=HReA/4HiPr/zOpZfBsiJChgNbL1rn7Moq+Ope7HXAhvX9gD8YGaoMzEmGlQZy6w1zQ
 9SK0mD6EjnOt+8v/eFV9jgfcpvdd96TgIxbgFZxKm5FAHnzx0OlJk0yHP/tl14xjRGGv
 FOy7KYlIrFi4jQb1C7mD8A2sUTBEebpiWf6jxuEiTWhtDzHSrHwIhn8oyCLU5ltUT11U
 RXyKigwsHYcXANzWpkvmwFr9c7r4UeZGd/V/Qh5eKXykTdHV3Cvdw4AUsog4X9MuqfPK
 sOXrVK/Pn1D63zfzgtFIKJg+0HceJJXA/dha/SxCyjpBh4jbjpIDUNcDIoPZaGtSo3S3
 q9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eYb08CmyJpZ44KRnpUHR5Xln335xRNBsHydjbZbZmQo=;
 b=KICYa4SYsPZQ/5SmphsEVcwgO4dAozvbuWgOLKYcQ7OeoEcmaqG7K/+PaQfwSyE/tl
 U+7uKY3OuqqA5OdItdfJPLPigMn6b/0DKIoq23CqUA9BFgqgWdSTBQDww65zx5dx9MFo
 PBFTNbFPYVdx0ON7BDxPzvzR/fswaPLA/BAtcXgar2nWve6QtyChX7MAjKdiy0OnJQJ/
 A9rn9tcgqMnlwcM0/e0o4yns/xiXEmx5HBWjXS0ATjb7oY8c2Z+ff04RNzQZGK6Xvz5U
 5ZoamIz8DuIikkZtPouobF+WNIwH5aeCI/sqNjYZNAPE+LpM8fs6k0jNdrUpgauCMDfq
 WBqA==
X-Gm-Message-State: APjAAAXLrGPVwcwybvqL1zPNupG53PDLHf8JA304rwVo5Oc9XYmgRDtO
 0BACcqzOFPvTAGBJcBbOM/xLMWXiXqS3lIkgBlc=
X-Google-Smtp-Source: APXvYqznetxxZc1P6KNBS7BdtW1SWNkiZy78H4gIAJ3l2zC3biVPt+O+8r8V/A1bGetqHqL5Hvz6i9qKH6iFF3E4StI=
X-Received: by 2002:a2e:9604:: with SMTP id v4mr20074760ljh.101.1571770264272; 
 Tue, 22 Oct 2019 11:51:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAMMoi3tOy8feTRfTKQ-ipAcQpoyAgf4VzCQjq6NcRNzB=-3yag@mail.gmail.com>
 <EA7ABB40-42B2-41C4-B0D4-F51ACF3DE936@gmail.com>
In-Reply-To: <EA7ABB40-42B2-41C4-B0D4-F51ACF3DE936@gmail.com>
Date: Tue, 22 Oct 2019 11:50:53 -0700
Message-ID: <CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Multi-USRP with X300's
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
From: Richard Bell via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Richard Bell <richard.bell4@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8359999753774174267=="
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

--===============8359999753774174267==
Content-Type: multipart/alternative; boundary="000000000000454499059584486e"

--000000000000454499059584486e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think I sort of figured it out, though the motherboard, subdevice and
channel terminology is still confusing.

1) Each USRP X300 has 1 motherboard
2) Each motherboard has two subdevice slots, A and B
3) Each subdevice slot has 1 channel

If I want to use both subdevices on USRP1 and only one subdevice on USRP2
then the following settings would make that work:

Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
Mb0: Subdev Spec :=3D A:0 B:0
MB1: Subdev Spec :=3D A:0
Num Channels :=3D 3

To use only 1 subdevice on each USRP this would work:

Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
Mb0: Subdev Spec :=3D A:0
MB1: Subdev Spec :=3D A:0
Num Channels :=3D 2

To use all 4 subdevices at the same time:
Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
Mb0: Subdev Spec :=3D A:0 B:0
MB1: Subdev Spec :=3D A:0 B:0
Num Channels :=3D 4

Will there every be a situation where I would do something like A:1 instead
of A:0 in the subdevice specs?

On Tue, Oct 22, 2019 at 11:25 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Could you share your flow graph with us?
>
> What daughtercards do you have installed?
>
> Sent from my iPhone
>
> > On Oct 22, 2019, at 2:16 PM, Richard Bell via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hello,
> >
> > I'm a little confused about how I should distinguish between two
> different USRPs X300's and the two different motherboards per USRP X300 i=
n
> this type of setup. I am feeding a 10 MHz ref and PPS ref to both USRPs.
> What I have right now is a gr flowgraph with a single USRP Sink block tha=
t
> I have configured with the following device address
> >
> > "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
> >
> > and I have selected
> >
> > Num Mboards =3D 2
> > Num Channels =3D 2
> >
> > But this setup only uses the addr0=3D192.168.10.2 USRP to receive on bo=
th
> RFA and RFB ports. I would like to configure receiving on 192.168.10.2 RF=
A
> TX/RX and 192.168.11.2 RFA TX/RX.
> >
> > How do I configure this properly?
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000454499059584486e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think I sort of figured it out, though the motherbo=
ard, subdevice and channel terminology is still confusing.<br></div><div><b=
r></div><div>1) Each USRP X300 has 1 motherboard</div><div>2) Each motherbo=
ard has two subdevice slots, A and B</div><div>3) Each subdevice slot has 1=
 channel</div><div><br></div><div>If I want to use both subdevices on USRP1=
 and only one subdevice on USRP2 then the following settings would make tha=
t work:</div><div><br></div><div>Device Arguments :=3D &quot;addr0=3D192.16=
8.10.2,addr1=3D192.168.11.2&quot;</div><div>Mb0: Subdev Spec :=3D A:0 B:0</=
div><div>MB1: Subdev Spec :=3D A:0</div><div>Num Channels :=3D 3</div><div>=
<br></div><div>To use only 1 subdevice on each USRP this would work:<br></d=
iv><div><br></div><div><div>Device Arguments :=3D &quot;addr0=3D192.168.10.=
2,addr1=3D192.168.11.2&quot;</div><div>Mb0: Subdev Spec :=3D A:0</div><div>=
MB1: Subdev Spec :=3D A:0</div><div>Num Channels :=3D 2</div><div><br></div=
><div>To use all 4 subdevices at the same time:</div><div><div>Device Argum=
ents :=3D &quot;addr0=3D192.168.10.2,addr1=3D192.168.11.2&quot;</div><div>M=
b0: Subdev Spec :=3D A:0 B:0<br></div><div>MB1: Subdev Spec :=3D A:0 B:0<br=
></div><div>Num Channels :=3D 4</div><div><br></div><div>Will there every b=
e a situation where I would do something like A:1 instead of A:0 in the sub=
device specs?<br></div></div></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 22, 2019 at 11:25 AM Marcus =
D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Could you share your flow graph with us?<br>
<br>
What daughtercards do you have installed?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Oct 22, 2019, at 2:16 PM, Richard Bell via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I&#39;m a little confused about how I should distinguish between two d=
ifferent USRPs X300&#39;s and the two different motherboards per USRP X300 =
in this type of setup. I am feeding a 10 MHz ref and PPS ref to both USRPs.=
 What I have right now is a gr flowgraph with a single USRP Sink block that=
 I have configured with the following device address<br>
&gt; <br>
&gt; &quot;addr0=3D192.168.10.2,addr1=3D192.168.11.2&quot;<br>
&gt; <br>
&gt; and I have selected<br>
&gt; <br>
&gt; Num Mboards =3D 2<br>
&gt; Num Channels =3D 2<br>
&gt; <br>
&gt; But this setup only uses the addr0=3D192.168.10.2 USRP to receive on b=
oth RFA and RFB ports. I would like to configure receiving on 192.168.10.2 =
RFA TX/RX and 192.168.11.2 RFA TX/RX.<br>
&gt; <br>
&gt; How do I configure this properly?<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000454499059584486e--


--===============8359999753774174267==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8359999753774174267==--

