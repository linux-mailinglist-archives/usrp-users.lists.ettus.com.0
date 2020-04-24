Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E97A71B7258
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 12:45:51 +0200 (CEST)
Received: from [::1] (port=48102 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRvq6-0006VK-SI; Fri, 24 Apr 2020 06:45:46 -0400
Received: from mail-ed1-f51.google.com ([209.85.208.51]:46711)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1jRvq3-0006Rt-7c
 for usrp-users@lists.ettus.com; Fri, 24 Apr 2020 06:45:43 -0400
Received: by mail-ed1-f51.google.com with SMTP id l3so6810926edq.13
 for <usrp-users@lists.ettus.com>; Fri, 24 Apr 2020 03:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VUXo2dZ2GIUzKIBjbedIO5CtuiBEmcU8YDsiKgY21M8=;
 b=DRlKU0E/xVJrtbLxPP/6o+by0OWHFGtMuFkwkRqkfTtzkEggwZVQL01BrWuvn97/Tf
 yYdUrGDUb22IGMJeq9zKtEeWrFJh95whDIo/MOq41PuSFjYybjVH6c8PusmxIa3WM3cT
 Dr6IVvTJ4sNF8c9/cTLfxVWZrHd4GAG+K5kpY8bHJbSzJTkwrtPOOKSVlW2htECv8mvH
 SrUCqS6bg7CBeuBH7/ArKU2RAJnRTu7M8Xtm4VXf23HQzEpsC//kzMqodSf7+m1uIHBm
 9r5f3TNipLio7Ua3lpijDj/rQNgbtaF0pqAVp6Vx0yWINYiEURUftZGwM0r4yLLBvqLn
 52hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VUXo2dZ2GIUzKIBjbedIO5CtuiBEmcU8YDsiKgY21M8=;
 b=NjM9KrAYbe+dsAvr8DENKAybnAXRtUfDlRo++MkjVu3YtMneWYA8jvexg7ufOYqNSe
 kryJ2udkbST/vXO0C3sD0WZr8MaIPTSphaoM8F3aR5iAG6eypWs6On4FcQ9ldIT9QCy1
 B08ZXLe4sV8kDwwY7YD1XEtVg83Sxhh7OZlznRg/bCjiUulBb1I6frgyca2gcAkKUfV3
 0k7ZmIyivVYIFCyfwaxB3jnX5mCVkf+EBK9iH57jUxSot73EcytReocEswkvIOhOqt43
 2UKA4XZMK7SdcbsBoBUGRuzLyw66VaL15eitU+Zksq9rav2jqRDeEQjR1EVdWS75Tm+S
 E2tw==
X-Gm-Message-State: AGi0PuYLkItEzcWp6SlNTnBtePwlf2G5awC4GRnHq6eWtuIDBSN54umF
 WoITw7H3K9TB9M+OPmjS+1t9lqrbL8CQAn0kBM/D2g==
X-Google-Smtp-Source: APiQypJaI9hcYkMsJDRkiuySwqJNPzFRMoSKYfsPK3U4OqpzRqupy9s189cXO3PUOLaSTA0XYiyku7VOd9Np4bQtYBo=
X-Received: by 2002:aa7:d518:: with SMTP id y24mr6299899edq.222.1587725102134; 
 Fri, 24 Apr 2020 03:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
 <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
 <BM1PR01MB33482FF8513BFE835941A7E888D30@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81sH5ae_M4ub4h8dR4DXAVFGxbBi___5TgyoHvK5Lj6nMQ@mail.gmail.com>
 <BM1PR01MB3348E558D45108505B6A5D5D88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB3348E558D45108505B6A5D5D88D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Fri, 24 Apr 2020 06:44:49 -0400
Message-ID: <CADRnH23jKePxiwz0b0C6mrpzdCJ_t2PMeuPK-2OBqj6g+RbFcQ@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel instances
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1067398926698006170=="
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

--===============1067398926698006170==
Content-Type: multipart/alternative; boundary="000000000000b6b9f805a4070e4f"

--000000000000b6b9f805a4070e4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

That's good to hear! Out of curiosity what was failing timing?

If you put together a merge request for your fix I'll take a look and try
to merge that in.

EJ

On Fri, Apr 24, 2020, 12:07 AM Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Jonathon
>
> I need to use a sample rate between 20ksps to 1msps.
>
> Btw I tried following Brian's advice about breaking the logic. I was able
> to use to build a fpga image with 2x1:4 DDC block. Though I required 1:16
> DDC block, but still it is great to start working.
>
> @Brian Padalino <bpadalino@gmail.com>: Thanks a lot for the help.
>
> Regards
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Friday, April 24, 2020 9:00 AM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* Brian Padalino <bpadalino@gmail.com>; usrp-users@lists.ettus.com <
> usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel
> instances
>
> Hi Snehasish,
>
> The DDC supports a wide range of sampling rates. Depending on the rates
> you want, some of the DDC filters could be removed to reduce utilization =
or
> there may be a better architecture to fit your situation. What rates do y=
ou
> need to support?
>
> Jonathon
>
> On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello Brian
>
> While writing the bitstream it gave an error stung the current design
> didn=E2=80=99t satisfy the timing constraint.
>
> I tried creating 12 blocks of DDC 1 to 2, blocks but that failed too
> saying the placer couldnot place more than 5% of the movable instances in
> the design.
>
> Regards
> Snehasish
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> ------------------------------
> *From:* Brian Padalino <bpadalino@gmail.com>
> *Sent:* Thursday, April 23, 2020 4:19:14 AM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel
> instances
>
> On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar <snehasish.cse@live.com>
> wrote:
>
> Hello Brian
>
> Thanks for your response, actually I tried using DDC 1 to n block as give=
n
> here, but giving 1 to 8 channels have a timing issue, while generating th=
e
> build. So I thought it as an alternative plan.
>
>
> https://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/R=
EADME.md#dsp-utilsnoc_block_ddc_1_to_n
>
>
> What was the timing issue?  Is it possible for you to break up the logic
> to help relax timing constraints?
>
> Brian
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b6b9f805a4070e4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Snehasish,<div dir=3D"auto"><br></div><div dir=3D"auto=
">That&#39;s good to hear! Out of curiosity what was failing timing?</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">If you put together a merge re=
quest for your fix I&#39;ll take a look and try to merge that in.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">EJ</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 24, 2020, 12:=
07 AM Snehasish Kar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Hello Jonathon <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I need to use a sample rate between 20ksps to 1msps. <br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Btw I tried following Brian&#39;s advice about breaking the logic. I was ab=
le to use to build a fpga image with 2x1:4 DDC block. Though I required 1:1=
6 DDC block, but still it is great to start working.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<a id=3D"m_-1889242729522562714OWAAM472637" href=3D"mailto:bpadalino@gmail.=
com" target=3D"_blank" rel=3D"noreferrer">@Brian Padalino</a>: Thanks a lot=
 for the help.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards<br>
</div>
<div id=3D"m_-1889242729522562714appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1889242729522562714divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=
=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 24, 2020 9:00 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">bpadalino@gmail.com</a>&gt;; <a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-us=
ers@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>The DDC supports a wide range of sampling rates. Depending on the rate=
s you want, some of the DDC filters could be removed to reduce utilization =
or there may be a better architecture to fit your situation. What rates do =
you need to support?</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">While writing the bitstream it gave an error stung the cur=
rent design didn=E2=80=99t satisfy the timing constraint.=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I tried creating 12 blocks of DDC 1 to 2, blocks but that =
failed too saying the placer couldnot place more than 5% of the movable ins=
tances in the design.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards</div>
<div dir=3D"ltr">Snehasish</div>
<div><br>
</div>
<div id=3D"m_-1889242729522562714x_gmail-m_4985790380076774549ms-outlook-mo=
bile-signature">Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank" rel=
=3D"noreferrer">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-1889242729522562714x_gmail-m_4985790380076774549divRplyFwdMsg=
" dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D=
"font-size:11pt"><b>From:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalin=
o@gmail.com" target=3D"_blank" rel=3D"noreferrer">bpadalino@gmail.com</a>&g=
t;<br>
<b>Sent:</b> Thursday, April 23, 2020 4:19:14 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@li=
sts.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" target=3D"_blank" rel=3D"noreferrer">sne=
hasish.cse@live.com</a>&gt; wrote:<br>
</div>
<div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello Brian</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your response, actually I tried using DDC 1 to =
n block as given here, but giving 1 to 8 channels have a timing issue, whil=
e generating the build. So I thought it as an alternative plan.</div>
<div dir=3D"ltr"><br>
</div>
<div><a href=3D"https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n" target=3D"_blank" rel=
=3D"noreferrer">https://gitlab.com/theseus-cores/theseus-cores/-/blob/maste=
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n</a></div>
</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>What was the timing issue?=C2=A0 Is it possible for you to break up th=
e logic to help relax timing constraints?</div>
<div><br>
</div>
<div>Brian</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div>
<div dir=3D"ltr">
<div></div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000b6b9f805a4070e4f--


--===============1067398926698006170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1067398926698006170==--

