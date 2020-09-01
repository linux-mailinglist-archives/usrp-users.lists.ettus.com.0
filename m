Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 115682593C8
	for <lists+usrp-users@lfdr.de>; Tue,  1 Sep 2020 17:31:07 +0200 (CEST)
Received: from [::1] (port=33334 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kD8FV-0006Xk-Q8; Tue, 01 Sep 2020 11:31:05 -0400
Received: from mail-lf1-f52.google.com ([209.85.167.52]:43059)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kD8FR-0006Qn-MJ
 for USRP-users@lists.ettus.com; Tue, 01 Sep 2020 11:31:01 -0400
Received: by mail-lf1-f52.google.com with SMTP id y2so1010386lfy.10
 for <USRP-users@lists.ettus.com>; Tue, 01 Sep 2020 08:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=TZ7ia+np2eK1YXcsFMSxkbDlq/eeHC9GaoOLBmkNr8I=;
 b=VGdrk+uqEkc4g9g1BAu/UBy2m4pLzSJ+l2AKoU/uQYUgtNhwyWF0X2VmMmS14jlDM5
 K8FkD6e2EssijnH0Yjb3i8l9QfXE89Vct9OhqhIBUI0/ZaRqOeLvlRmwbH8Vky1smw6t
 ajTh7+K4cS5zFivhFgOHl/jO6LHZMjY3l0qF5hvFWEy4+82IffYv/PUI2ZMhqrDibRL3
 jswq+1j/3iP513EPDuMMrEX+bQNWf1DP0FS6gkXzfJmSqKLmSQyZIcklfotlf+aKwcrT
 hxDejhlwWBnLhO0CLCM5bD3bMSjtIyJrYa9ly7kQBKNaIKy1HBHF6v6dbx/84Br5p2Ob
 VCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=TZ7ia+np2eK1YXcsFMSxkbDlq/eeHC9GaoOLBmkNr8I=;
 b=ThmFEYXJKNPbQXw8ZAkhd3o43wXu9Cx56szmV1lhU+VdRqyNYClvcirp9FcS30MiwC
 Rju844wnj+gq0CNIbmoKsI5WAJl3kato0Fg16xrKzMpINLMl380SA6PHiJjiHfFQXF4w
 znYEitoDOS78raIrJdk2gRD6N+2FU/4F56DvFmm+TaP7w6tpSElEZUtBOMUbplR9v8Sp
 zxtMO1i6bSXRhZE0mDg6fd/OBrXhuXmJ+ljbXpgjSGyS8kadwCcyxoEg2A+WyObLVe6B
 RR1RJgXZaLCowuzo9CkpZOndqjyJkO4dvHV/xf5JyZYjpBnKOuf8W1yXzDWAFTTAvPDB
 1eEw==
X-Gm-Message-State: AOAM532pweTnwpJ/c/MVJBM41EcDBQTt1pSTQ65uFHbOP8PBZFHj3Ej7
 vBmul5vBv0qQu8etHko3LojPjVbJatNEJo1Exv/UKw==
X-Google-Smtp-Source: ABdhPJzKsPTLmJerNl0rMmdk5c+a9b3AUC+Xj7EhYKtyskRiYbZDGuOEJcKm75dza4DnnEq5salInIgM2+QUXBfsnNE=
X-Received: by 2002:a19:48d2:: with SMTP id v201mr908156lfa.96.1598974220480; 
 Tue, 01 Sep 2020 08:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAM+cdhJvnNTRtukiKPx9OhGQAqeFOTBz+Vp3yc1ye4CYV44+OQ@mail.gmail.com>
 <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
In-Reply-To: <75B13EC1-5F7C-4E97-9614-26221D8E5C20@gmail.com>
Date: Tue, 1 Sep 2020 09:30:08 -0600
Message-ID: <CAM+cdhJQbH0s+rLMcfH8dVgYNqcnZVEodQCqhtLynupdChz92g@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] External Oscillator with Ettus N310
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
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============0265079390462501663=="
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

--===============0265079390462501663==
Content-Type: multipart/alternative; boundary="0000000000006ac47e05ae4232bd"

--0000000000006ac47e05ae4232bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Shape is a sinusoid. Vrms going into a 1 megaohm scope is 1.4V, so I would
expect that to be ~.7V going into a 50 ohm load (the SDR), which I believe
is under the max power requirement for the external reference of the N310.

-Chris

On Tue, Sep 1, 2020 at 9:26 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> What are the output parameters of your Rb reference? Signal amplitude and
> shape, etc.
>
> Sent from my iPhone
>
> > On Sep 1, 2020, at 11:18 AM, Christopher Flood via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> >   Hi all,
> >
> > Sorry if this is coming through twice - I sent it once before I
> subscribed to the list, but didn't know if it went through or not! (I
> didn't see it in the archives...)
> >
> > -------
> >
> > I'm having some trouble using an external reference with the Ettus N310=
.
> The reference I am using is a FS725 Rubidium Frequency Standard.
> >
> > To test the difference between the internal clock and the external
> reference, I transmitted a 10MHz signal from the Ettus N310 with and
> without the external reference. Using just the internal clock of the SDR,
> the 10MHz signal slowly wanders with respect to the 10MHz signal from the
> Rubidium Frequency Standard as seen on an oscilloscope. This is to be
> expected since the stability of the internal clock in the SDR is worse th=
an
> the Rubidium Frequency Standard.
> >
> > However, when I connect the 10MHz signal from the Rubidium to the
> external reference of the N310 and tell the N310 to use the external
> reference, the 10MHz signal that the N310 generates wanders much faster
> with respect to the 10MHz signal from the Rubidium. This is opposite of
> what I believe should happen, assuming the N310 is truly using the extern=
al
> reference signal.
> >
> > Have any of you experienced this or have any tips as to what might be
> going on?
> >
> > Thanks!
> >
> > -Chris
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> >
> http://secure-web.cisco.com/1nWDwD0LbO77QthlIKVs0gyhEI4cVA_IfTj4rvvFSL4qW=
jw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlchr4oAdnfbUKsQurDlSMkQ3xes5nNV=
fRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqMojzmmGUON3j_Fw=
ZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMDQ9fvhujOQ6RMQSye2luXmluRt_L1=
0jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlrC-n2XC4dn41AUQyHPf47I3DWWUSB=
ZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTArwXMSBHYc-Wy_utBs6L16LMlPST1=
Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucuflnBKQ/http%3A%2F%2Flists.ettu=
s.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>
>

--0000000000006ac47e05ae4232bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Shape is a sinusoid. Vrms going into a 1 =
megaohm scope is 1.4V, so I would expect that to be ~.7V going into a 50 oh=
m load (the SDR), which I believe is under the max power requirement for th=
e external reference of the N310.=C2=A0</div><div><br></div>-Chris=C2=A0<di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Sep 1, 2020 at 9:26 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">What are the output parameters of your=
 Rb reference? Signal amplitude and shape, etc. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Sep 1, 2020, at 11:18 AM, Christopher Flood via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt;=C2=A0 =C2=A0Hi all,<br>
&gt; <br>
&gt; Sorry if this is coming through twice - I sent it once before I subscr=
ibed to the list, but didn&#39;t know if it went through or not! (I didn&#3=
9;t see it in the archives...)<br>
&gt; <br>
&gt; -------<br>
&gt; <br>
&gt; I&#39;m having some trouble using an external reference with the Ettus=
 N310. The reference I am using is a FS725 Rubidium Frequency Standard.<br>
&gt; <br>
&gt; To test the difference between the internal clock and the external ref=
erence, I transmitted a 10MHz signal from the Ettus N310 with and without t=
he external reference. Using just the internal clock of the SDR, the 10MHz =
signal slowly wanders with respect to the 10MHz signal from the Rubidium Fr=
equency Standard as seen on an oscilloscope. This is to be expected since t=
he stability of the internal clock in the SDR is worse than the Rubidium Fr=
equency Standard.<br>
&gt; <br>
&gt; However, when I connect the 10MHz signal from the Rubidium to the exte=
rnal reference of the N310 and tell the N310 to use the external reference,=
 the 10MHz signal that the N310 generates wanders much faster with respect =
to the 10MHz signal from the Rubidium. This is opposite of what I believe s=
hould happen, assuming the N310 is truly using the external reference signa=
l. <br>
&gt; <br>
&gt; Have any of you experienced this or have any tips as to what might be =
going on?<br>
&gt; <br>
&gt; Thanks!<br>
&gt; <br>
&gt; -Chris <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://secure-web.cisco.com/1nWDwD0LbO77QthlIKVs0gyhEI4cVA_=
IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVSZlchr4oAdnfbUKsQur=
DlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5TrWP7xYZJN3Rno2PLqM=
ojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUGJMMDQ9fvhujOQ6RMQS=
ye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIcwrlrC-n2XC4dn41AUQ=
yHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHOSnTArwXMSBHYc-Wy_u=
tBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsucuflnBKQ/http%3A%2=
F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">http://secure-web.cisco.com/1nWDwD0LbO77Q=
thlIKVs0gyhEI4cVA_IfTj4rvvFSL4qWjw_BKsjarpNVGUg1WSCn9mLxWoszHiy1EL4wQBcyjVS=
Zlchr4oAdnfbUKsQurDlSMkQ3xes5nNVfRZbMo1K_tC57_jfBijc7k1IJEeJI4eGE5lp6Hvxm5T=
rWP7xYZJN3Rno2PLqMojzmmGUON3j_FwZI5DrM1IRJJOp4zugqAiDWJkDCb9_EmunfDHehAlAUG=
JMMDQ9fvhujOQ6RMQSye2luXmluRt_L10jyNP6kk-a7ojOTF1lgm_5ZcB9LpYVMPx8JEbY8_VIc=
wrlrC-n2XC4dn41AUQyHPf47I3DWWUSBZZGaTEgad3YzhpIvd0Mk3XAPpGfdyAPTH6kEW-xpRHO=
SnTArwXMSBHYc-Wy_utBs6L16LMlPST1Q65z9FcHKQbE-3AjZkQbUl--HGEeSu2HcZH89_ufKsu=
cuflnBKQ/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lis=
ts.ettus.com</a><br>
<br>
</blockquote></div></div></div>

--0000000000006ac47e05ae4232bd--


--===============0265079390462501663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0265079390462501663==--

