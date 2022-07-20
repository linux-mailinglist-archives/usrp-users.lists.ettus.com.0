Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D21BA57BD81
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jul 2022 20:14:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68206383F3E
	for <lists+usrp-users@lfdr.de>; Wed, 20 Jul 2022 14:13:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658340839; bh=lkF4bft71rriNyUrkWHtvHLJyxHWCcUQTlnIONT0ilU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Ip4Om2ciY32G4pScWi9RUCI2l/7a3JNmHbQspR+1k5qXDZr+AFAwFmHZfa+NzvqC5
	 aZMn4OhaLfzy0cx68gGhuU4nlMaOzzDTvYYUIg8nI8WtLmhUs0Fa4nNDGRtQQgcFXq
	 0CvT42USeNc2LVS6Ae5Q7rLxiIuKwz/tl9FYUG7QDcJEv1pUpG0VkIGc44R7uIhNmP
	 8YWEhzY+nRTEMhvZKjotrIsBTym+IrA/rZBbKtrUZizx4PjtWTLR6Ucdhij/s2e/7E
	 liFF3iRnq5qR6/CHI0ljsErOnCTPrGfhYprPw299fI7f5IzhvOFIGpN+cdl8JaHrZc
	 P22IwS4pCidTw==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 72028380EDD
	for <usrp-users@lists.ettus.com>; Wed, 20 Jul 2022 14:11:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="BlbtkyTx";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id 6so33470511ybc.8
        for <usrp-users@lists.ettus.com>; Wed, 20 Jul 2022 11:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vf1ot48OQkYLYh1YL6DA869qGmdTBejrpjN2LaM+ePY=;
        b=BlbtkyTxZVsaLhNVdxwN0D2xEkbQjRcMSfW2cw4y4bGHYx6m/b/r/USYcPTOo/28DW
         Sbiz3qrBxgRPk2CKNdUUhgV8sUrK1N7o4lXLD4xT/0wFBr5ktIID+BrVRD4TOlx8vxTs
         N1JonpAcBpEFbAQf0JyUpr8JPLGSBdy2O2LV2JEvhZPNpS3CTvA0A0QE8+9HcZXOYYcO
         8lNmPBWANYV22JB3GShTc8MO5DKEIUMFzPELBqzALv8YNALqwETxUCkdNbnW0cajYYCq
         9+GSivfLOCBkDDl2M/0HqcDFGGNRRWVOPE3JtDT83XLEN1tanHHOmAg0JwVgZpO/xWrD
         u5Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vf1ot48OQkYLYh1YL6DA869qGmdTBejrpjN2LaM+ePY=;
        b=W5JLS6G5jMyZ2PftEoDWdhNZEBcGmJI0k8v7ppXANmaWlpVTN8UH2bELTBMP+ZTwMw
         bKWTKAgVS6RszkhaLVbeP4AjpV/I2ZcqLhTSKIMygOYpNJGbTPXkjTyMV4wt6sUJcixh
         xwTD7euSPdywhnW6jBZ9Da8Wv52vJYbOevE+hMVLUwm9vzLGx23H+NzvFKbdwN+EzhN0
         655fCmrWv82AuCxMbzUfCnLoYLGUwBVQI8GdwUKzOn03egwe4zlERm1hzyGfpneYfAAi
         wqzDhtaSskLTkHaNX0ZOtXdl5pK6CtkPGE8VCfE1T+yjHqDohsmtOKi9nwr0OZ17Kj1b
         RQ0w==
X-Gm-Message-State: AJIora/wvRv1SEq1IGLiz9FwdCfXmJE17Tt7H6UVfNm8NWZdyokSAhZ4
	FXq+Ynf2VreWThJVCmV8u6adqjyTgpXFkmkYCUwAWQ==
X-Google-Smtp-Source: AGRyM1vSPdAhLXKIZasouOWBx0v7QTwlNVllQLzMBOowmDB7rINJ97GDUG9zMIqbX+3MucoyDONmvKBPehUKt8458Fc=
X-Received: by 2002:a25:a86:0:b0:670:ef0:3159 with SMTP id 128-20020a250a86000000b006700ef03159mr19319851ybk.563.1658340703590;
 Wed, 20 Jul 2022 11:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <846iD_gX0_aTZU2Dd-rf0Eo4EIdcHOOOSBPiH_oQBPZA4gIeUnRMqs81PkKWVmI3k893kjOJZCnPJ93lwtDiXVNt80-ToI9gAl-5cWkCCPU=@protonmail.com>
In-Reply-To: <846iD_gX0_aTZU2Dd-rf0Eo4EIdcHOOOSBPiH_oQBPZA4gIeUnRMqs81PkKWVmI3k893kjOJZCnPJ93lwtDiXVNt80-ToI9gAl-5cWkCCPU=@protonmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 20 Jul 2022 14:11:32 -0400
Message-ID: <CAB__hTTTBsm90Uz3g5c6C-BNKAwMPY7HgrSheBuYVUm9U94xXg@mail.gmail.com>
To: Alexey Kosinov <kosinov@protonmail.com>
Message-ID-Hash: CI7AST5XGZ4U4BTPPIBTNJQV2RHIG2E7
X-Message-ID-Hash: CI7AST5XGZ4U4BTPPIBTNJQV2RHIG2E7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing to the OOT-module using multi_usrp class
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CI7AST5XGZ4U4BTPPIBTNJQV2RHIG2E7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5839842821380530221=="

--===============5839842821380530221==
Content-Type: multipart/alternative; boundary="0000000000008e23b805e4408864"

--0000000000008e23b805e4408864
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexey,
Your initial testing with rfnoc_graph::make() is the way to connect in
UHD4.  You cannot use multi_usrp (in UHD 3 or UHD 4) because this class
creates a fixed rfnoc_graph that does not include your OOT block.
Therefore, in order to use your OOT block, you need to use the
rfnoc_graph::make() and the various controllers (Radio / DDC / DUC / etc)
to control the streaming. You can look at the Ettus "multi_usrp_rfnoc"
class source code to see how Ettus handles an RFNoC graph from within
multi_usrp for inspiration.
Rob

On Wed, Jul 20, 2022 at 5:42 AM Alexey Kosinov via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello!
>
> I created oot-module that have some registers and stuff.
> I tested it (through *uhd::rfnoc::rfnoc_graph::make()* and so on =E2=80=
=A6 )
> works fine!
> Now i want to include that module into the open source project that use
> *uhd::usrp::multi_usrp::make(**)* instead of
> *uhd::rfnoc::rfnoc_graph::make()* to create the device object and that
> was i part where i completely lost.
> I cannot create both objects.
> I saw some people used device3 library that dissapeared in the uhd 4.
> My question is how can i get access to oot-module (find_blocks, get_block=
s
> and eventualy read/write some data to it) like i did it before, using
> standalone app (rfnoc-example/apps/init_gain_block.cpp for example)?
> Is there is possible in the uhd 4?
> If there is so can you provide simple example
> =E2=80=8B
> USRP N300
> uhd 4.1.0.4
>
> Thanks!
>
>
> Best regards,
> Alexey Kosinov
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008e23b805e4408864
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alexey,<div>Your initial testing with rfnoc_graph::make=
() is the way to connect in UHD4.=C2=A0 You cannot use multi_usrp (in UHD 3=
 or UHD 4) because this class creates a fixed rfnoc_graph that does not inc=
lude your OOT block.=C2=A0 Therefore, in order to use your OOT block, you n=
eed to use the rfnoc_graph::make() and the various controllers (Radio / DDC=
 / DUC / etc) to control the streaming. You can look at the Ettus &quot;mul=
ti_usrp_rfnoc&quot; class source code to see how Ettus handles an RFNoC gra=
ph from within multi_usrp for inspiration.</div><div>Rob</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 2=
0, 2022 at 5:42 AM Alexey Kosinov via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"font-family=
:Arial;font-size:14px">Hello!</div><div style=3D"font-family:Arial;font-siz=
e:14px"><br></div><div><font face=3D"Arial">I created oot-module that have =
some registers and stuff.=C2=A0</font></div><div><font face=3D"Arial">I tes=
ted it (through=C2=A0</font><span style=3D"font-family:Arial;line-height:no=
rmal;color:rgb(34,34,34)"><b><i>uhd::rfnoc::rfnoc_graph::make()</i></b> and=
 so on =E2=80=A6=C2=A0</span><span style=3D"font-size:0.875rem;color:rgb(34=
,34,34);font-family:Arial">) works fine!</span><div style=3D"line-height:19=
px"><font color=3D"#222222" face=3D"Arial">Now i want to include that modul=
e into the open source project that use=C2=A0</font><div><b><i><span style=
=3D"font-family:Arial;font-size:14px;line-height:normal;color:rgb(34,34,34)=
">uhd</span><span style=3D"font-family:Arial;font-size:14px;line-height:nor=
mal;color:rgb(34,34,34)">::</span><span style=3D"font-family:Arial;font-siz=
e:14px;line-height:normal;color:rgb(34,34,34)">usrp</span><span style=3D"fo=
nt-family:Arial;font-size:14px;line-height:normal;color:rgb(34,34,34)">::</=
span><span style=3D"font-family:Arial;font-size:14px;line-height:normal;col=
or:rgb(34,34,34)">multi_usrp</span><span style=3D"font-family:Arial;font-si=
ze:14px;line-height:normal;color:rgb(34,34,34)">::</span><span style=3D"fon=
t-family:Arial;font-size:14px;line-height:normal;color:rgb(34,34,34)">make<=
/span><span style=3D"font-family:Arial;font-size:14px;line-height:normal;co=
lor:rgb(34,34,34)">(</span></i></b><span style=3D"font-family:Arial;font-si=
ze:14px;line-height:normal;color:rgb(34,34,34)"><b><i>)</i></b> instead of=
=C2=A0<span style=3D"background-color:rgb(255,255,255);display:inline"><b><=
i>uhd::rfnoc::rfnoc_graph::make()</i></b>=C2=A0to create the device object =
and that was i part where i completely lost.</span></span></div><div><span =
style=3D"font-family:Arial;font-size:14px;line-height:normal;color:rgb(34,3=
4,34)"><span style=3D"background-color:rgb(255,255,255);display:inline">I c=
annot create both objects.</span></span></div><div><span style=3D"font-fami=
ly:Arial;font-size:14px;line-height:normal;color:rgb(34,34,34)"><span style=
=3D"background-color:rgb(255,255,255);display:inline">I saw some people use=
d device3 library that dissapeared in the uhd 4.</span></span></div><div><s=
pan style=3D"font-family:Arial;font-size:14px;line-height:normal;color:rgb(=
34,34,34)"><span style=3D"background-color:rgb(255,255,255);display:inline"=
>My question is how can i get access to oot-module (find_blocks, get_blocks=
 and eventualy read/write some data to it) like i did it before, using stan=
dalone app (rfnoc-example/apps/init_gain_block.cpp for example)?=C2=A0</spa=
n></span></div><div><span style=3D"font-family:Arial;font-size:14px;line-he=
ight:normal;color:rgb(34,34,34)"><span style=3D"background-color:rgb(255,25=
5,255);display:inline">Is there is possible in the uhd 4?=C2=A0</span></spa=
n></div><div><span style=3D"font-family:Arial;font-size:14px;line-height:no=
rmal;color:rgb(34,34,34)"><span style=3D"background-color:rgb(255,255,255);=
display:inline">If there is so can you provide simple example</span></span>=
</div><span style=3D"font-family:Arial;font-size:14px;line-height:normal;co=
lor:rgb(34,34,34)">=E2=80=8B</span></div><div style=3D"line-height:19px">US=
RP N300</div><div style=3D"line-height:19px"><span>uhd 4.1.0.4</span><br></=
div></div><div><br></div><div>Thanks!</div><div><br></div><div style=3D"fon=
t-family:Arial;font-size:14px"><br></div>
<div style=3D"font-family:Arial;font-size:14px">
    <div>
        <div>Best=C2=A0regards,<br></div><div>Alexey Kosinov</div></div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008e23b805e4408864--

--===============5839842821380530221==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5839842821380530221==--
