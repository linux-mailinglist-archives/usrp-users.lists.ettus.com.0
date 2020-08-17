Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B88245B09
	for <lists+usrp-users@lfdr.de>; Mon, 17 Aug 2020 05:29:04 +0200 (CEST)
Received: from [::1] (port=49586 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7VpV-0001S1-Pa; Sun, 16 Aug 2020 23:29:01 -0400
Received: from mail-ua1-f46.google.com ([209.85.222.46]:46845)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1k7VpR-0001Lj-IM
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 23:28:57 -0400
Received: by mail-ua1-f46.google.com with SMTP id d20so4327461ual.13
 for <usrp-users@lists.ettus.com>; Sun, 16 Aug 2020 20:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3pdOkXn+doc+qvIutQdptsytoc3La9jL+Q+KAkaaTeo=;
 b=BeH8VeHblmWtMTpYIAT3fqoaqsUNx/84yWBXhohwtFvDCG422HJjPnRoRbSlBmeKR6
 XeoqvgHbx5kPGYE0OPHGLFbnUH2khMLhKzm+UWU8gqip3Z4EkFjNDhV4oxPYDeD7Fv6a
 OL5kfCqW5Qara2hcYb/SbS9aoBtN36DNQOMLjqIQophVSC8LtULaXbdFXNXeIoOmdxjN
 RvXauN9GSmlC1NrIyzwPbHwCxZFg7uFZijcbzZIkPSNr/CpWgPkmlYcX/Nth6v8ZyeB4
 VrvU1fYCr12z1tg1Ku/bKzB/44CJGlv0ZPvqgKjadSxDpJ72i/TI1uLRj6eY1sBi/iLp
 WTWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3pdOkXn+doc+qvIutQdptsytoc3La9jL+Q+KAkaaTeo=;
 b=ldDp/Qd5QgmSaO2uJbf51UZxQ3HT9V0efWqtvzS9iA3bAzyYELUoZctPXL6p2EobDQ
 MPt05USB3eXV49etW2ifWFxhbDOQaVPadx979sfpjmny341furC1dwynkCCz+2nvp2qV
 1k7hNtyNTtxvcJop1cgKCykHDoqCauThqyJ7OBMwSLr61Gucj2o9T6WTGpC1Zk/PASA+
 wYXh/tc3WBo7KlI5HA5w8V8hV68O5VX+iDxiR0mTZpORXiithbzuivZ7J7kifR7ts7YM
 i4BjYB+c21VG83YwY7LZ/Az9hEfOrX6wXSAb20nMNsm9v2M1Ueda6Elwus7tBRR0poIF
 +0mw==
X-Gm-Message-State: AOAM530LN8hS1NgggBIEVsGQxSQ/jj1OxnV5QCC1LIrNVeomrDQKBWoA
 qOwkB6NqJ7QJBuzw9ckSqcTsIbXBDkno6nfaAInhux++
X-Google-Smtp-Source: ABdhPJxGwfA5twYasMbLicJRhwgMBk36Utz220JLHS9vsXN06sLTg9pZ5F59jerguo6aP8NWEsi972hyGXQzqHuthNQ=
X-Received: by 2002:a9f:252a:: with SMTP id 39mr6272584uaz.44.1597634896858;
 Sun, 16 Aug 2020 20:28:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTSPLvPRiLXpREbfwSUMv4YvV8mRz2HV_rdNdZ9uK3CjqA@mail.gmail.com>
In-Reply-To: <CAB__hTSPLvPRiLXpREbfwSUMv4YvV8mRz2HV_rdNdZ9uK3CjqA@mail.gmail.com>
Date: Sun, 16 Aug 2020 23:27:41 -0400
Message-ID: <CAL7q81tPCTFG5mr6jwnPrJAhQobP9SuppOeMfDFc31z_9_b_bw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Replay Block for UHD 3.15
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
Content-Type: multipart/mixed; boundary="===============1555023428452428362=="
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

--===============1555023428452428362==
Content-Type: multipart/alternative; boundary="00000000000082315b05ad0a5c21"

--00000000000082315b05ad0a5c21
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

2) I have issues with repeated streaming (starting / stopping repeatedly)
> if the Replay block is connected through the DUC to the Radio.  I have not
> been able to resolve these.


Can you describe the issue you are running into? Is it a "no response
packet" error?

Jonathon

On Thu, Jul 30, 2020 at 12:35 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I use the Replay block for both the X310 and N310. But, there are a couple
> of issues that limit its usefulness. Is there a chance this could be
> addressed on 3.15?  (I realize that the issues may go away with UHD 4.0).
>
> 1) For the N310, you cannot connect the 4-port Replay block directly to
> the two 2-port Radio blocks.  This is a limitation of the noc_block to
> crossbar bandwidth. It could be fixed if the default image included two
> 2-port Replay blocks rather than one 4-port block.  (There is another
> concern as to whether the external RAM can handle the bandwidth of 500 MS/s
> that is needed, but I think that as long as you're only streaming out of
> the block (not streaming in simultaneously) it should work).  Note that the
> same issue holds for the X310 which has a single 2-port Replay block that
> restricts it from connecting to the two Radio blocks because of the same
> noc_block to crossbar bandwidth limitation.  It could be fixed by having
> two 1-port Replay blocks.
>
> 2) I have issues with repeated streaming (starting / stopping repeatedly)
> if the Replay block is connected through the DUC to the Radio.  I have not
> been able to resolve these.
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000082315b05ad0a5c21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">2) I have issues with repeated streaming (starting / stopping=
 repeatedly) if the Replay block is connected through the DUC to the Radio.=
=C2=A0 I have not been able to resolve these.</blockquote><div><br></div><d=
iv>Can you describe the issue you are running into? Is it a &quot;no respon=
se packet&quot; error?</div><div><br></div><div>Jonathon</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 3=
0, 2020 at 12:35 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<br><div>I use the Replay block for both the X310 and N310. But=
, there are a couple of issues that limit its usefulness. Is there a chance=
 this could be addressed on 3.15?=C2=A0 (I realize that the issues may go a=
way with UHD 4.0).</div><div><br></div><div>1) For the N310, you cannot con=
nect the 4-port Replay block directly to the two 2-port Radio blocks.=C2=A0=
 This is a limitation of the noc_block to crossbar bandwidth. It could be f=
ixed if the default image included two 2-port Replay blocks rather than one=
 4-port block.=C2=A0 (There is another concern as to whether the external R=
AM can handle the bandwidth of 500 MS/s that is needed, but I think that as=
 long as you&#39;re only streaming out of the block (not streaming in simul=
taneously) it should=C2=A0work).=C2=A0 Note that the same issue holds for t=
he X310 which has a single 2-port Replay block that restricts it from conne=
cting to the two Radio blocks because of the same noc_block to crossbar ban=
dwidth limitation.=C2=A0 It could be fixed by having two 1-port Replay bloc=
ks.</div><div><br></div><div>2) I have issues with repeated streaming (star=
ting / stopping repeatedly) if the Replay block is connected through the DU=
C to the Radio.=C2=A0 I have not been able to resolve these.</div><div><br>=
</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000082315b05ad0a5c21--


--===============1555023428452428362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1555023428452428362==--

