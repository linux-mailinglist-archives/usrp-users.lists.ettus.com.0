Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3501B6BF5
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 05:31:57 +0200 (CEST)
Received: from [::1] (port=46702 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRp4G-0000Ci-Tg; Thu, 23 Apr 2020 23:31:56 -0400
Received: from mail-ua1-f46.google.com ([209.85.222.46]:40333)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jRp4D-0008VH-N2
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 23:31:53 -0400
Received: by mail-ua1-f46.google.com with SMTP id a10so8088657uad.7
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 20:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q0IqvY54433VfR+RKqBEZ9uCg9u06jXdZmENcG/JAik=;
 b=fzJr8Ge4eNY1ApNVI5uCYyPAemCDGqs3wRL0sUORrS2WGuzeCIH5Ur2WPQrXS3B1PJ
 ZHF3U6+lOYxmXPIdeUo+hR9bg4uF/fmakSaEfh5/pbLZgg5N8n8lp2htldWIWEumr+FI
 iOBbt0jtiMn03wAyinO5Du+v1EL8yBuGnK/pCwrbzTRzqk3kWxdLtA6mOqfp4evQXfUW
 RWPC4vD4irOomlFoBuBa6gwDSZwNVDBqCthrmaBp4i8DDT46PHkOyqwS6hAR4Aqs2Jdo
 bIARZ5ds08VM3jsp1a6vhgVEHAnB8f6aGH1AcwPZLvJPCNVKd3SZiSZWfZpDXZlabePp
 nS/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q0IqvY54433VfR+RKqBEZ9uCg9u06jXdZmENcG/JAik=;
 b=U5x0q9Q7AYiZJIgztXmkjKAMecXomiGCEzSU/ymCDYe5fXxiUkkX5ZSd+Q+AqDh/wN
 vtZNqMr+EakztAu+PUTfY/psTuJK630xP71NO2XNvX9ztfWF6a+XPm0QizeCe0ECUWS0
 fgumLMCZgSFyklc4UCVt6IMQzt3RCkDk6QmuZzb3Zu+yE2WdaPFaHSi5XRL3GdfuXQAV
 dzpxQkFGR55SLa6QGf/Pi0HoUE5VAQ+uUAvoz2ZhmN5iz4tbKURyF4tS3LdU24/PA+f6
 unAVy+cwNg2g7fb7BimNP0CsQHCPlEqqWFo0lON778NJzUKFfEFMCxBvMCGEIMvcVn4/
 cA8A==
X-Gm-Message-State: AGi0PuZwMzTzlJGCsxkbKEN41X7fHMsX2x7nazHdiURexZO4NCgLmJqX
 OfuAKwcRyCJTgQGYa08hqMU2xrP5ab6AA3cSLzImPurl
X-Google-Smtp-Source: APiQypKNPdM1R+0pdLjO0Ww0/dpF/uVt891dweFwJH0nTIMHoY8X4wVxLTki5bUJ41gxsFDsokpxjRcjswTae9tdfqE=
X-Received: by 2002:a9f:2846:: with SMTP id c64mr5655599uac.44.1587699073141; 
 Thu, 23 Apr 2020 20:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB3348D0FEC4BEAA5F7A79200C88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK5Ts2mewxrSw40puiLtHv1+w5R8fi=d+7LD2gcxvn-9Cw@mail.gmail.com>
 <BM1PR01MB334827C32F91A512A6786A1B88D20@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAEXYVK7rCxr7QB=qQOL1omLd3AdPcjQvbnWoFmZ=bYGGtWGeHg@mail.gmail.com>
 <BM1PR01MB33482FF8513BFE835941A7E888D30@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB33482FF8513BFE835941A7E888D30@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Thu, 23 Apr 2020 23:30:37 -0400
Message-ID: <CAL7q81sH5ae_M4ub4h8dR4DXAVFGxbBi___5TgyoHvK5Lj6nMQ@mail.gmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7259014812190109953=="
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

--===============7259014812190109953==
Content-Type: multipart/alternative; boundary="00000000000043df6905a400ffc0"

--00000000000043df6905a400ffc0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

The DDC supports a wide range of sampling rates. Depending on the rates you
want, some of the DDC filters could be removed to reduce utilization or
there may be a better architecture to fit your situation. What rates do you
need to support?

Jonathon

On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

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

--00000000000043df6905a400ffc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Snehasish,<div><br></div><div>The DDC supports a wide r=
ange of sampling rates. Depending on the rates you want, some of the DDC fi=
lters could be removed to reduce utilization or there may be a better archi=
tecture to fit your situation. What rates do you need to support?</div><div=
><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 3:19 AM Snehasish Kar=
 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-user=
s@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">



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
<div id=3D"gmail-m_4985790380076774549ms-outlook-mobile-signature">Get <a h=
ref=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_4985790380076774549divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_=
blank">bpadalino@gmail.com</a>&gt;<br>
<b>Sent:</b> Thursday, April 23, 2020 4:19:14 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Modifying RFNoC ddc block for 16 parallel =
instances</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Apr 22, 2020 at 6:17 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" target=3D"_blank">snehasish.cse@live.com=
</a>&gt; wrote:<br>
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
r/fpga-rfnoc/README.md#dsp-utilsnoc_block_ddc_1_to_n" target=3D"_blank">htt=
ps://gitlab.com/theseus-cores/theseus-cores/-/blob/master/fpga-rfnoc/README=
.md#dsp-utilsnoc_block_ddc_1_to_n</a></div>
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
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000043df6905a400ffc0--


--===============7259014812190109953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7259014812190109953==--

