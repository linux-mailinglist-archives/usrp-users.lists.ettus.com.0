Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D032FE7D
	for <lists+usrp-users@lfdr.de>; Sun,  7 Mar 2021 04:06:34 +0100 (CET)
Received: from [::1] (port=33728 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIjkU-0000Fr-Sv; Sat, 06 Mar 2021 22:06:30 -0500
Received: from mail-vs1-f44.google.com ([209.85.217.44]:40400)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1lIjkQ-0000C1-LR
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 22:06:26 -0500
Received: by mail-vs1-f44.google.com with SMTP id a15so3123423vsi.7
 for <usrp-users@lists.ettus.com>; Sat, 06 Mar 2021 19:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RH7LUrmGhVM2JSOOzGlJvY/zxDYSMG7nwAuI+xsmdwU=;
 b=OktDdOkfsDB5cYPIhMNYn/YhN4MAIDM3U7VZeIJ2ukX+Qt9tmLXxA5hSmKumq4ijI1
 Xww4CFN9jVSbCjZvvZAT4iDFx4b+5Xzn3MVDoqMLeMvn4off8gLKC9q6TRuv8VSSKomL
 OmejMNyNQSryd6DFdh6nM+/f24Eh8h8fNTW/i86ymAEO3d1V1lNWViY8xJdr8HKHwodJ
 /I2diRuqMnGA3hBIFmIrGPyhQkR2DyAM9vLyp9vx5hGN6HSmt8tNsbQi87ZNwQ/BuC1I
 BFO/QOd2iZw8m4upS2MFmrUV+dZSAcQnGu3HXlnzrBayx/ULBM0hASU7fvEMbGe+BkUK
 3uLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RH7LUrmGhVM2JSOOzGlJvY/zxDYSMG7nwAuI+xsmdwU=;
 b=YuSCRdX1EfQeh6XwCoA48qAdrH51JXJwcWKROlskbtlTwy0zJInWmm+3mmwMiuhuXU
 39JeGd3Jxh4pLJPtp8sPr8JV1Eu6O0rlpoWXLKy0VRScaBW7asHf4NqYJeYIPnZGPIWe
 kRntH2mxluSPncqEigc2bU37AUVCWlg/Jys4YbGJDuhu7noztC5+9eQdJohJLOp6VCpS
 8lKEjcHjwin4u/fImKkNcs2TxJhohYZv6gXCQ7FxwuoeMXDYbQq94bzYhD+zhe1/O47m
 QpFexmS1XIHLx2Lvcont6sxwrnkJifveeLHPnuFGzSZO9uhWtDl+/dSSbFLe3/9kCM9C
 u/gg==
X-Gm-Message-State: AOAM532Q/2sF7z1aUATP+H3MDg8bCLxmTR0bciMkGTgGCgpjwE9qk9yA
 1KRoyDoHQI+iAAfb13w1Wo9f7/bbQ/GTI1c4fAN2tU0x
X-Google-Smtp-Source: ABdhPJzmly3pIqSY8RaCQZoCuOKUqDN8V6hwBmLDIJG7P5u9EOmJVPNfADnUs0m8ljvHYmVIea72EkLL2CDSrTm1b4c=
X-Received: by 2002:a67:f68c:: with SMTP id n12mr7755446vso.42.1615086345827; 
 Sat, 06 Mar 2021 19:05:45 -0800 (PST)
MIME-Version: 1.0
References: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
 <54732d0c-9515-3b01-6221-b8b177e52e6d@ettus.com>
In-Reply-To: <54732d0c-9515-3b01-6221-b8b177e52e6d@ettus.com>
Date: Sat, 6 Mar 2021 22:05:09 -0500
Message-ID: <CAL7q81ss9P3tEKd-9djzCT0+F3DreSzcUGermgEvS=yDWdd2-g@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Current Recommended UHD RFNoC Versions?
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============6395826830621304298=="
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

--===============6395826830621304298==
Content-Type: multipart/alternative; boundary="000000000000ecc97905bce99701"

--000000000000ecc97905bce99701
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jeff,

Here are links to the RFNoC 3 & 4 workshop videos that will help you get
started. Personally, I would suggest trying out RFNoC 4 first.

RFNoC 4: https://www.youtube.com/watch?v=3DM9ntwQie9vs
RFNoC 3: https://www.youtube.com/watch?v=3DVbODcrmpLaU

On Sat, Mar 6, 2021 at 2:12 PM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> By the way, if RFNoC 4 is what you're interested in, the current master
> branch of
> gr-ettus, GNU Radio 3.8 and UHD 4.x are what you're aiming for!
>
>
> On 04.03.21 22:08, Jeff S via USRP-users wrote:
>
> > I'm getting ready to help someone install code and I'm seeing
> conflicting things
> > regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC
> development.  They are
> > going to use an N310 and I've been using maint-3.7 for quite a while.
> >
> > Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7
> of GNURadio, and
> > master for gr-ettus?  Or is there some later, stable recommendations?
> >
> > Sorry if there was any recent related posts, but I didn't find any.
> >
> > Thanks,
> > Jeff
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ecc97905bce99701
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jeff,<div><br></div><div>Here are links to the RFNoC 3 =
&amp; 4 workshop videos that will help you get started. Personally, I would=
 suggest trying out RFNoC 4 first.<div><br></div><div>RFNoC 4:=C2=A0<a href=
=3D"https://www.youtube.com/watch?v=3DM9ntwQie9vs">https://www.youtube.com/=
watch?v=3DM9ntwQie9vs</a><br></div><div>RFNoC 3:=C2=A0<a href=3D"https://ww=
w.youtube.com/watch?v=3DVbODcrmpLaU">https://www.youtube.com/watch?v=3DVbOD=
crmpLaU</a></div><div></div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 6, 2021 at 2:12 PM Marcus M=
=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">By the way, if RFNoC 4 is what you&#39;re intere=
sted in, the current master branch of<br>
gr-ettus, GNU Radio 3.8 and UHD 4.x are what you&#39;re aiming for!<br>
<br>
<br>
On 04.03.21 22:08, Jeff S via USRP-users wrote:<br>
<br>
&gt; I&#39;m getting ready to help someone install code and I&#39;m seeing =
conflicting things<br>
&gt; regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC devel=
opment.=C2=A0 They are<br>
&gt; going to use an N310 and I&#39;ve been using maint-3.7 for quite a whi=
le.<br>
&gt;<br>
&gt; Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7=
 of GNURadio, and<br>
&gt; master for gr-ettus?=C2=A0 Or is there some later, stable recommendati=
ons?<br>
&gt;<br>
&gt; Sorry if there was any recent related posts, but I didn&#39;t find any=
.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Jeff<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ecc97905bce99701--


--===============6395826830621304298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6395826830621304298==--

