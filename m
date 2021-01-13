Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FE82F4F59
	for <lists+usrp-users@lfdr.de>; Wed, 13 Jan 2021 17:01:35 +0100 (CET)
Received: from [::1] (port=51348 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kziaT-0001id-7l; Wed, 13 Jan 2021 11:01:33 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:40755)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1kziaP-0001c2-FX
 for usrp-users@lists.ettus.com; Wed, 13 Jan 2021 11:01:29 -0500
Received: by mail-ot1-f43.google.com with SMTP id j12so2330271ota.7
 for <usrp-users@lists.ettus.com>; Wed, 13 Jan 2021 08:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=9y8nRvTKZ57as2MNPe230p/RWEGc2BVFUPPZFN6U0UU=;
 b=CAMgVnlT7LpXPNEurNugLHntxUquxMNP1ynuDS3rCZp1YxSEp7es8zdt1Ozn8ofubI
 mDnj59NoqZiuh4cMB115h3XPrTT39GO1snhPGY4YfhQ8S3O4EDxWeFCr+rS76jBNWGHz
 iAhYsk8rMyVsSpkXLhDq2GxaP4EiOifo16TaVumrfH1TUtY+Owj+8we2FQTTuSeZTKlZ
 XMHS1VhFrU1hYJrNW1522MhMOlZUSMZoIblzWAa0UJyHU8YdRjo4VifgQeMb/rTgbkPK
 yZVkNm2pdQH/3SZmLwUlJFIs+QKY/UrLEv/H6UDpPtGboxBETbkiKHHIxWtRf9ekG2V9
 oyeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=9y8nRvTKZ57as2MNPe230p/RWEGc2BVFUPPZFN6U0UU=;
 b=uBq4mgOHS91QOJ+N3K4ASpUYksvut6iNAPtBjjbqxMVYZzXZgDOX0gV/fZW6hJXPZe
 TD93qG/uwN78bjcmH+9YMTenRIhYbP0t4UVyFz3gr5qiOsyjD7sA2TUxR369gQgCocsj
 FpXZdmk2crb8z0f8SmNWe0FhP0uuHXgYF6yCogIPQ/T8r8Vvm0Db9TN4Vq3/O+kcwESj
 je4KNvCToOHEbXq4wA+NF9HE795mMwRJiMdeGNMa0nPZ60QS8xs3D7+hUAnPkQnwlA1H
 Erxc6HcIyrVbG+jwLTlG/Ckhewe+/kIH5FCvdtuLLm5b9qUeIq2mt9feJ/7bnxTRmDJZ
 mkaw==
X-Gm-Message-State: AOAM5339B905tYJbyLL8EyBKjX6TfVS2ut0p93zwf9OpXJF3cn0NeR5O
 IKrHihAEzrLRvDx76y40IevF/uIECr7KNTomj7mRYNafHyogZJaA
X-Google-Smtp-Source: ABdhPJzGuwWb8B7L8xWnh8tGM9eWwki9LiTOKEcXx0FIsTikQ5JWfYg0/FeVmfz6LLIKGSFJCeEH2DRL6KomFW1hHJM=
X-Received: by 2002:a9d:470c:: with SMTP id a12mr1653271otf.161.1610553647915; 
 Wed, 13 Jan 2021 08:00:47 -0800 (PST)
MIME-Version: 1.0
References: <20210107174911.gjgjjt5rff43rrp2@barbe>
 <CAL7q81u_+UhNY=KJpR6rkmoHVNVovpm8EB_f1DsyT+bF5BBH-Q@mail.gmail.com>
 <20210112060455.n3qol2fr5w7nbuob@barbe>
 <CAL7q81uKXjDC=YcZ-2KXrhxN-zL6BU71P83+7KW=q9MEMBgaXQ@mail.gmail.com>
 <20210113105801.efaoc4ulzfhd4niq@barbe>
In-Reply-To: <20210113105801.efaoc4ulzfhd4niq@barbe>
Date: Wed, 13 Jan 2021 10:00:38 -0600
Message-ID: <CAFche=joUG25SjrysffTNGHjzqd3DAU5hWJg38ZR8wYa7wK+og@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD 4.0 RFNoC testbench throws fatal error with
 GUI xsim
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
Content-Type: multipart/mixed; boundary="===============9211301146824124027=="
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

--===============9211301146824124027==
Content-Type: multipart/alternative; boundary="000000000000137edf05b8ca3ee0"

--000000000000137edf05b8ca3ee0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,

You can probably just call $finish() instead of test.end_tb() to stop the
simulation in both CLI and GUI modes. If you want the summary at the end,
take a look at what end_tb() does in PkgTestExec.sv. Also, note that the
test object isn't required. You can remove all the test calls from your
code and just use SystemVerilog assertions instead if you prefer.

Wade

On Wed, Jan 13, 2021 at 4:58 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 12/01/21 13:42, Jonathon Pendlum via USRP-users wrote:
> > Hi Cedric,
>
> Hi Jonathon,
>
> > "Fatal: The connected block has an incompatible backend interface".
> >
> >
> > Try adding a short delay, such as #1 or @posedge( at the start of the
> > testbench to get past this.
>
> Thanks for the workaround, it works!
> However, it has some side effects.
>
> Doing
>
> //test.start_tb
> #1
> ...
> //test.end_tb
>
> or
>
> test.start_tb
> ...
> //test.end_tb
>
> give the same result.
> Indeed, the issue is with test.end_tb finishing the simulation.
> It is fine in cli, but not in GUI, since Vivado is generating waves.
>
> Commenting out test.end_tb solves the issue with GUI mode,
> but then the simulation does not stop in cli mode after
> all tests are completed (it only stops after 10ms).
> Furthermore, I loose the summary at the end (time elapsed,
> #passed/failed tests, etc.)
>
> Is there a way to reconcile both modes (cli & GUI) without editing
> my testbench every time I need to switch between these two modes?
>
> Regards
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000137edf05b8ca3ee0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi C=C3=A9dric,</div><div><br></div><div>You can prob=
ably just call $finish() instead of test.end_tb() to stop the simulation in=
 both CLI and GUI modes. If you want the summary at the end, take a look at=
 what end_tb() does in PkgTestExec.sv. Also, note that the test object isn&=
#39;t required. You can remove all the test calls from your code and just u=
se SystemVerilog assertions instead if you prefer.<br></div><br><div>Wade<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Jan 13, 2021 at 4:58 AM C=C3=A9dric Hannotier via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On 12/01/21 13:42, Jonathon Pendlum via USRP-users wrote:<br>
&gt; Hi Cedric,<br>
<br>
Hi Jonathon,<br>
<br>
&gt; &quot;Fatal: The connected block has an incompatible backend interface=
&quot;.<br>
&gt; <br>
&gt; <br>
&gt; Try adding a short delay, such as #1 or @posedge( at the start of the<=
br>
&gt; testbench to get past this.<br>
<br>
Thanks for the workaround, it works!<br>
However, it has some side effects.<br>
<br>
Doing<br>
<br>
//test.start_tb<br>
#1<br>
...<br>
//test.end_tb<br>
<br>
or<br>
<br>
test.start_tb<br>
...<br>
//test.end_tb<br>
<br>
give the same result.<br>
Indeed, the issue is with test.end_tb finishing the simulation.<br>
It is fine in cli, but not in GUI, since Vivado is generating waves.<br>
<br>
Commenting out test.end_tb solves the issue with GUI mode,<br>
but then the simulation does not stop in cli mode after<br>
all tests are completed (it only stops after 10ms).<br>
Furthermore, I loose the summary at the end (time elapsed,<br>
#passed/failed tests, etc.)<br>
<br>
Is there a way to reconcile both modes (cli &amp; GUI) without editing<br>
my testbench every time I need to switch between these two modes?<br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000137edf05b8ca3ee0--


--===============9211301146824124027==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9211301146824124027==--

