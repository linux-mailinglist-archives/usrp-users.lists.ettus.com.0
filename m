Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6945C300969
	for <lists+usrp-users@lfdr.de>; Fri, 22 Jan 2021 18:22:18 +0100 (CET)
Received: from [::1] (port=34538 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l308U-0006eC-LH; Fri, 22 Jan 2021 12:22:14 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:40643)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1l308Q-0006Ul-TZ
 for usrp-users@lists.ettus.com; Fri, 22 Jan 2021 12:22:10 -0500
Received: by mail-oi1-f180.google.com with SMTP id p5so6737328oif.7
 for <usrp-users@lists.ettus.com>; Fri, 22 Jan 2021 09:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=ZdjfOORnvU0LqqG5YAgvkUSfx/R+3tSSnDkGpH8PD7E=;
 b=t41zPfaqs6yQesHrfA45TRHCf6aizmFR3mKl6TU9r+raO8Usjq3oUgwD1IeNMCmWoV
 ydxMQLk4XhT95KEyyYR8xPRR2eaKPouUXCwLQtf3lM+xzPJA3ktBIFAuXkE9SPny9yYr
 FxTrZEU8jTCE3rVzAxoKH2FFTf7H6VcnzEvGf66jp5Hd/WAljkYUr/jaB8+Rxfz3NT4+
 8gB2pM/YopkmHPsb8si2kgPSGPQTNQfLP6UhpHUiTiH4FeMXdfiEObapL+xPfphoMRIG
 tzO5gYt0HWpN5oGl0IWLZloSCcJNZPCLbbrJcbMByDZPnYSlmcu5T2JvPs/RFPfpuREi
 uXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZdjfOORnvU0LqqG5YAgvkUSfx/R+3tSSnDkGpH8PD7E=;
 b=nbnckHERI/DOt/jwS5bVja0zL2nt69fLc82zlWwdCvhqyw5v64dEJNNtDE0tsJIOP3
 4D2GtFlT3Rmp+TLHKQzX9Y9xnv9s+8vBh1OT59QHIhb9Y+DkE+Nm2lBOpywxo3XmZBh/
 aTqZuyxx+1T9/rWpBjxHd2UNkbpjrUBfGaAQ3lGsjhk4qafAvqCMo2isrhtRJCAtwuLR
 YCpZTaWtB6y/Eq8TqL/hyJE4L95WisLP9lsOD3wgzZoo0WIWLEJzdtc5OK9Leba1ktgz
 F67eeF5zMExMkWAloF1GurBoYg9TkPVrkRHbM1GR1FT7rwZSUSnyzlqdMMU2mtXnkL27
 8pYA==
X-Gm-Message-State: AOAM530m2MwHzNRuBs5hniO8lDD2WFzfaP3i/ZafqFKlJ3cuzAYH94SH
 p6E/CNDcgBT9N+nze2X3z9SOv4mGwR14RntsHUgOq6FK
X-Google-Smtp-Source: ABdhPJwCUBC5Gys4ASI12PDZXTqihS06YA9ZJbI6bjSOScDsDJY2xwSDbgZX/Mzxo9Qfwy3qQoE9d2TsKnyjTd9XazQ=
X-Received: by 2002:aca:aac9:: with SMTP id t192mr3508327oie.62.1611336085768; 
 Fri, 22 Jan 2021 09:21:25 -0800 (PST)
MIME-Version: 1.0
References: <20210108175838.vxaqctdxyaahty72@barbe>
 <20210121230057.aswz7r7zngpxbthy@barbe>
In-Reply-To: <20210121230057.aswz7r7zngpxbthy@barbe>
Date: Fri, 22 Jan 2021 11:21:15 -0600
Message-ID: <CAFche=jrmKeaRq0L70y85N=OWj9-BY=NXtVqNawCgD6mPkccMw@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>, 
 usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Add Xilinx IP in OOT RFNoC UHD4.0
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
Content-Type: multipart/mixed; boundary="===============6850665489807992651=="
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

--===============6850665489807992651==
Content-Type: multipart/alternative; boundary="00000000000009d5c505b9806bc9"

--00000000000009d5c505b9806bc9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I have done it. I'll share an example with you. Putting your IP
in-tree is also an option.

Thanks,

Wade

On Thu, Jan 21, 2021 at 5:01 PM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear all,
>
> On 08/01/21 18:58, C=C3=A9dric Hannotier via USRP-users wrote:
> > Dear all,
> >
> > I am following the RFNoC on UHD4.0 wiki [1],
> > but there is no mention on how to add Xilinx IPs in the OOT.
> >
> > When following [2],
> > after copy-pasting from "host/example/rfnoc-example",
> > and following [3] to setup basic shell env/script,
> > how can I add for example IP "xilinx.com:ip:mult_gen:12.0"?
> >
> > Furthermore, how do I add that IP "module wise" or "block wise",
> > i.e. inside rfnoc-example or inside rfnoc-example/fpga/rfnoc_block_gain=
?
> >
> > There is viv_create_ip [3], but it just creates the tree,
> > it does not link that new IP with the current OOT tree.
> >
> > [1] https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0
> > [2]
> https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your_=
Own_OOT_Module
> > [3] https://files.ettus.com/manual/md_usrp3_vivado_env_utils.html
>
> Unfortunatly, I am still facing that issue.
> Has anyone managed to add a Xilinx IP into an OOT RFNoC block?
>
> --
>
> C=C3=A9dric Hannotier
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000009d5c505b9806bc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, I have done it. I&#39;ll share an example with y=
ou. Putting your IP in-tree is also an option.<br></div><div><br></div><div=
>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 21, 2021 at 5:0=
1 PM C=C3=A9dric Hannotier via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Dear all,<br>
<br>
On 08/01/21 18:58, C=C3=A9dric Hannotier via USRP-users wrote:<br>
&gt; Dear all,<br>
&gt; <br>
&gt; I am following the RFNoC on UHD4.0 wiki [1],<br>
&gt; but there is no mention on how to add Xilinx IPs in the OOT.<br>
&gt; <br>
&gt; When following [2],<br>
&gt; after copy-pasting from &quot;host/example/rfnoc-example&quot;,<br>
&gt; and following [3] to setup basic shell env/script,<br>
&gt; how can I add for example IP &quot;xilinx.com:ip:mult_gen:12.0&quot;?<=
br>
&gt; <br>
&gt; Furthermore, how do I add that IP &quot;module wise&quot; or &quot;blo=
ck wise&quot;,<br>
&gt; i.e. inside rfnoc-example or inside rfnoc-example/fpga/rfnoc_block_gai=
n?<br>
&gt; <br>
&gt; There is viv_create_ip [3], but it just creates the tree,<br>
&gt; it does not link that new IP with the current OOT tree.<br>
&gt; <br>
&gt; [1] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_=
4.0" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/Getting_Star=
ted_with_RFNoC_in_UHD_4.0</a><br>
&gt; [2] <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_=
4.0#Creating_Your_Own_OOT_Module" rel=3D"noreferrer" target=3D"_blank">http=
s://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Creating_Your_Own_OO=
T_Module</a><br>
&gt; [3] <a href=3D"https://files.ettus.com/manual/md_usrp3_vivado_env_util=
s.html" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual=
/md_usrp3_vivado_env_utils.html</a><br>
<br>
Unfortunatly, I am still facing that issue.<br>
Has anyone managed to add a Xilinx IP into an OOT RFNoC block?<br>
<br>
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

--00000000000009d5c505b9806bc9--


--===============6850665489807992651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6850665489807992651==--

