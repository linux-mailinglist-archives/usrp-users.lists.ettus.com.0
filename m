Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA4F31FACF
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 15:31:48 +0100 (CET)
Received: from [::1] (port=54336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD6ot-0001vH-6l; Fri, 19 Feb 2021 09:31:47 -0500
Received: from mail-oi1-f182.google.com ([209.85.167.182]:41907)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lD6oo-0001n8-NT
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 09:31:42 -0500
Received: by mail-oi1-f182.google.com with SMTP id v193so5989977oie.8
 for <usrp-users@lists.ettus.com>; Fri, 19 Feb 2021 06:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=yz7ZzgZTseOqeAyGdGGhgrWyP3nMGgQDcKfU1T4g/oI=;
 b=JPdiCwGa/5P8SC8QD+wmj79w8tVHUWbnf1F2XM/z66O++zvcC3EcCgVmMrzO8Tncfa
 +OPNxwGxHkyMsNPcCd7H6PvHYnbixG07SgT6NWdI/P4jrv5Qr39BjGrbNrjdbqUEZDZe
 Jf18Mu5LGotFCQWiL8rSPKHRKSMdIQDxYwsETipqNcENQ2qSl8X89ySUYqeXIV14APWk
 6Z9ExxUzwlwKXFzgVf64pkINWtzkPaEkCjN13Kc9ne3r+t2c4ndPpe4khUiDtcfdCvAq
 8IrSDcu4K8tPjgcE2fm0lPqJTRxVev/3On0FpbLR6un7hkXMlTPnHfAluQBTlmOKhS/2
 SFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=yz7ZzgZTseOqeAyGdGGhgrWyP3nMGgQDcKfU1T4g/oI=;
 b=ZXM5Ks6xsnpH+v4Au5PhBJ169Rv1+7wQEDpimKrfdVvSTwnf6+WdEk60GebFONxQey
 718u1KqJBGeZGXjN9RjOKKx4tFQxP98wN0CD7829y2OlpqzH9TD2IjoTKnK6hxJ2Swlb
 G0DCFZKwW2h8q6rhDp7UlLGatSgOIohA/KXnkxtXfr4vj6ZPLUtAKFGBlepJSiM53vWb
 lLU1nd0SgAUSkg2GBIaOdY7yU3AulO/tQLRxvfpyBy9ZojIFFPtS+uztz0JYtlvqAQyk
 rKnMROq8sbMEmCcAEsmnMn/cUjCamhXOTp5Uctbj2Yj8/MxOGFcBGCgh+myHbM3ocwGw
 IKGA==
X-Gm-Message-State: AOAM533NN8POsK3agf171kM28XqDaGwR4HCwv/pY5Z1uhm+ABRHaTfpZ
 n5l36PP7+1n0fYH59l7hM8Muz0jKrjNbCKLlFNqLQA==
X-Google-Smtp-Source: ABdhPJwu8Yk8uck5P9bLsaozvPlhrxApZKGlDE6ELTLxVniBOVQ9npLtZtuHFGA83bkGzSZ+p+otamz2o85Q4O44y7o=
X-Received: by 2002:a05:6808:d47:: with SMTP id
 w7mr5610447oik.150.1613745061693; 
 Fri, 19 Feb 2021 06:31:01 -0800 (PST)
MIME-Version: 1.0
References: <LNXP123MB3724BAB625FE639AF1D8FEBCCA869@LNXP123MB3724.GBRP123.PROD.OUTLOOK.COM>
 <20210217172935.joprwj3f6rwdu3jo@barbe>
 <CAB__hTSncBC=XS1YvCoE1jip2kY607aWC2hrFUOYcPCq4V6+iA@mail.gmail.com>
 <20210218090858.serfuy4u67rmor6c@barbe>
 <CAB__hTRwpakb-Vu+Q98vp9MGUW9NgggV=-AmK+4OWc0rw6zTNg@mail.gmail.com>
 <20210218172348.5xjhxl3b3g5ptjnd@barbe>
 <CAB__hTQEGfMFSm8L1jV41d_WSradNM_RJdODcEkGYH27x29q3g@mail.gmail.com>
 <20210219112003.z2mthwtk3xjkrmdl@barbe>
In-Reply-To: <20210219112003.z2mthwtk3xjkrmdl@barbe>
Date: Fri, 19 Feb 2021 09:30:50 -0500
Message-ID: <CAB__hTQ2VeJ9nNwaO+_pEiih141V7OzdGfYf9xSKn7EYFgHHWA@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] OTT Gain Block stopping samples flowing from RFNoC
 Digital Down Converter
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
Content-Type: multipart/mixed; boundary="===============3418695601617988934=="
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

--===============3418695601617988934==
Content-Type: multipart/alternative; boundary="00000000000029551b05bbb14d24"

--00000000000029551b05bbb14d24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I just double-checked and mine is working.

So, I just re-checked your link to issue #406. In "steps to reproduce", I
noticed 2 things:

   - On the next-to-last line, the g++ command does not include your custom
   library and does not include this link option.  The Ettus example builds
   your block controller in its own shared library - it does not add it to =
the
   uhd shared library. So, you need to link with both uhd and your
   rfnoc-example shared library (or whatever it is named). And, you need to
   have that link option.  (as a side note, when you built the rfnoc-exampl=
e,
   this did build the init_gain_block.cpp example in the apps folder with t=
his
   link option so if you were to run that example, you could confirm that t=
he
   block ID in that example is "Gain#0" rather than "Block#0". But since th=
is
   example doesn't use the radio, you couldn't use it to verify action
   propagation).
   - The final step in "steps to reproduce" shows a command line with the
   block ID "Block#0". If the block controller library was linked properly,
   this will not be the Block ID.  It will be "Gain#0" or something like th=
at.

Rob

On Fri, Feb 19, 2021 at 6:20 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Rob,
>
> On 18/02/21 17:32, Rob Kossler wrote:
> > I previously did not have the link options correct for building OOT.  I=
f
> > you look in the CMakeLists.txt file in the Ettus rfnoc example apps
> folder,
> > you will see a link option "-Wl,--no-as-needed".  I didn't look into it
> > thoroughly, but without that option, the OOT blocks do not get linked i=
n
> > (or at least their code to register themselves at startup never
> executes).
> > Once I added this linker option to my custom app, the OOT blocks regist=
er
> > fine and behave normally.
>
> But #406 uses the Ettus rfnoc example block, which provides this link
> option,
> and Ettus rfnoc example block was not forwarding the action.
> Could you check that the OOT Ettus example block is able to forward the
> action on your side?
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

--00000000000029551b05bbb14d24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Yes, I just double-checked and mine is wo=
rking.<div><br></div><div>So, I just re-checked your link to issue #406. In=
 &quot;steps to reproduce&quot;, I noticed 2 things:<div><ul><li>On the nex=
t-to-last line, the g++ command does not include your custom library and do=
es not include this link option.=C2=A0 The Ettus example builds your block =
controller in its=C2=A0own shared library - it does not add it to the uhd s=
hared=C2=A0library. So, you need to link with both uhd and your rfnoc-examp=
le shared library (or whatever it is named). And, you need to have that lin=
k option.=C2=A0 (as a side note, when you built the rfnoc-example, this did=
 build the init_gain_block.cpp example in the apps folder with this link op=
tion so if you were to run that example, you could confirm that the block I=
D in that example is &quot;Gain#0&quot; rather than &quot;Block#0&quot;. Bu=
t since this example doesn&#39;t use the radio, you couldn&#39;t use it to =
verify action propagation).</li><li>The final step in &quot;steps to reprod=
uce&quot; shows a command line with the block ID &quot;Block#0&quot;. If th=
e block controller library was linked properly, this will not be the Block =
ID.=C2=A0 It will be &quot;Gain#0&quot; or something like that.</li></ul><d=
iv>Rob</div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Feb 19, 2021 at 6:20 AM C=C3=A9dric Hannoti=
er via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hi Rob,<br>
<br>
On 18/02/21 17:32, Rob Kossler wrote:<br>
&gt; I previously did not have the link options correct for building OOT.=
=C2=A0 If<br>
&gt; you look in the CMakeLists.txt file in the Ettus rfnoc example apps fo=
lder,<br>
&gt; you will see a link option &quot;-Wl,--no-as-needed&quot;.=C2=A0 I did=
n&#39;t look into it<br>
&gt; thoroughly, but without that option, the OOT blocks do not get linked =
in<br>
&gt; (or at least their code to register themselves at startup never execut=
es).<br>
&gt; Once I added this linker option to my custom app, the OOT blocks regis=
ter<br>
&gt; fine and behave normally.<br>
<br>
But #406 uses the Ettus rfnoc example block, which provides this link optio=
n,<br>
and Ettus rfnoc example block was not forwarding the action.<br>
Could you check that the OOT Ettus example block is able to forward the act=
ion on your side?<br>
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
</blockquote></div></div>

--00000000000029551b05bbb14d24--


--===============3418695601617988934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3418695601617988934==--

