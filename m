Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC9385180
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 18:56:39 +0200 (CEST)
Received: from [::1] (port=47592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvPEs-0006A5-6F; Wed, 07 Aug 2019 12:56:38 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:40301)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1hvPEo-0005lY-Jq
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 12:56:34 -0400
Received: by mail-ot1-f42.google.com with SMTP id l15so49792637oth.7
 for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2019 09:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mihaNQrVOa3YTV+0mVx3gH/MDWga63mzuy9XuVkz6aA=;
 b=frS4tirAkn4sIQDo4TvGuJAgqVY8/B+4N9+J34Gz46d79W23liEd0WTUHbPs+g2wLZ
 XYt12NswmSbFTezNLPztMOs7PsuqRwsXrpUpdNT+xjQ7+o+qUI70bA3gA5DqzsSd8V99
 tj7XUHiba1c/VRUKkBCGcNC0+PmdTyQOkfHgnWZhRX24fH0ZEt+6xfzW2g8/s78Yp2EA
 rtnGAw9Vt5Okc89WK2Y/rhK/bySrnxJZN81gslLbntZOBKRYiNb/AfMAApM1JBiwoeF/
 f1TdPKBeib9qwdER24VM+vwyCFjpVVxB+kdHWjka+0D03umYgwL3/NerBSCndPbpG46F
 X2Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mihaNQrVOa3YTV+0mVx3gH/MDWga63mzuy9XuVkz6aA=;
 b=RgG/I8c1IlgMubT39vzpOpKfb5xzZmOLcFaqpc+GCh4331oz/n4jc9N2UjPHgMF9Kl
 aQJXAxG3NeUgxcxn87mZBrGlAXFeLRjrDlghGzhEOEXKyoHJoJ7TBVzNqZ+6VmmpITG4
 6a3i1WcKp2ZMsf02SU55Ljaarmthvt1HUGf4N8vzbNoh09af0a+oOA5fSDxxG3yVwCe8
 BL/xgvfoGIvsMShR64b6A/Sbi+Lhf2BFdeV9IEBjTjBaMczlXGkLl1fn2uXarA6Y2OyK
 BT95hKOiUN4CGczwvlOYWP5S9HGsddfwMrpZGfh8O02lPPh/7m/bC3HA4weY47M3tv8B
 OO0Q==
X-Gm-Message-State: APjAAAU7Q+EYgSaIMKfFuYDaJIejRyemGA6E6eBzV1SVAAovQyPamWFT
 qB357PuUy7QhVxuLPEuHEEuT/9nlgUBm8rwYKo4=
X-Google-Smtp-Source: APXvYqzeWBJcN4wEL9KEFR85isMC2JMvaK6icw3qkgAkQG936oGHUhZ8zTUZbNUR8FZI5+kWLeqDn0XW83D11Ft+WLU=
X-Received: by 2002:a02:9f07:: with SMTP id z7mr11117255jal.29.1565196953886; 
 Wed, 07 Aug 2019 09:55:53 -0700 (PDT)
MIME-Version: 1.0
References: <f56fe40286ab4abc884a7249c7b0f42b@tudelft.nl>
In-Reply-To: <f56fe40286ab4abc884a7249c7b0f42b@tudelft.nl>
Date: Wed, 7 Aug 2019 09:51:44 -0700
Message-ID: <CA+JMMq-r8FqNiaAowi64jo6kh_PdSqhhG4wfzt_12rE6jFTGSg@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Subject: Re: [USRP-users] Delayed samples receiving, X310
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2643560770879851091=="
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

--===============2643560770879851091==
Content-Type: multipart/alternative; boundary="00000000000070a779058f89d066"

--00000000000070a779058f89d066
Content-Type: text/plain; charset="UTF-8"

This is exactly what the "timed commands" feature is used for. See the
documentation here:

https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html

On Wed, Aug 7, 2019 at 7:15 AM Cherif Diouf via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello guys,
>
> I have developed a custom RFNoC CE connected to one radio core of the
> X310.
> The core will act as receiver and provide samples to my CE for further
> processing (Antennas-> RX frontend + noc_radio_core -> custom CE).
> However, I would like the radio core to start sampling and providing data only
> after a deterministic and fixed duration t0 consistent with the 5ns time
> counter and likely synchronized to an external PPS used as time reference.
>
> From python, I know I can use the "set_time_next_pps" call to initialize
> the USRP X310 time. But how to tell the radio core to stay in a idle state
> until the time keeper matches my duration t0?
> Can it be done by  software? Or the only option is to use CHDR packets and
> VITA timing?
>
> Best Regards
> Cherif
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000070a779058f89d066
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is exactly what the &quot;timed commands&quot; f=
eature is used for. See the documentation here:</div><div><br></div><div><a=
 href=3D"https://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html">h=
ttps://files.ettus.com/manual/structuhd_1_1stream__cmd__t.html</a></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Aug 7, 2019 at 7:15 AM Cherif Diouf via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-6650991758439977573divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-s=
erif,&quot;EmojiFont&quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emo=
ji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quo=
t;,EmojiSymbols">
<p></p>
<div class=3D"gmail-m_-6650991758439977573_rp_U4 gmail-m_-66509917584399775=
73ms-font-weight-regular gmail-m_-6650991758439977573ms-font-color-neutralD=
ark gmail-m_-6650991758439977573rpHighlightAllClass gmail-m_-66509917584399=
77573rpHighlightBodyClass" id=3D"gmail-m_-6650991758439977573Item.MessageUn=
iqueBody" style=3D"font-family:&quot;wf_segoe-ui_normal&quot;,&quot;Segoe U=
I&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,&quot;EmojiFont&=
quot;">
<div>
<div dir=3D"ltr">
<div id=3D"gmail-m_-6650991758439977573divtagdefaultwrapper"><font style=3D=
"font-family:Calibri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=
=3D"3" face=3D"Calibri,Helvetica,sans-serif" color=3D"black"><span id=3D"gm=
ail-m_-6650991758439977573divtagdefaultwrapper" style=3D"font-size:12pt">
<div><font color=3D"black">
<div>
<div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt">Hello guys,</span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt">=C2=A0</span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">I have developed a custom RFNoC C=
E connected to one radio core of the X310.
<br>
</span></span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">The core will act as receiver and=
 provide samples to my CE for further processing (Antennas-&gt;
 RX frontend + noc_radio_core -&gt; custom CE).<br>
</span></span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">However, I would like the radio c=
ore to start sampling and providing data=C2=A0<font style=3D"font-family:Ca=
libri,Helvetica,sans-serif,serif,&quot;EmojiFont&quot;" size=3D"3" face=3D"=
Calibri,Helvetica,sans-serif" color=3D"black"><span id=3D"gmail-m_-66509917=
58439977573divtagdefaultwrapper" style=3D"font-size:12pt"><font color=3D"bl=
ack"><font style=3D"font-family:Calibri,sans-serif,serif,&quot;EmojiFont&qu=
ot;" size=3D"2" face=3D"Calibri,sans-serif"><span style=3D"font-size:11pt">=
<span lang=3D"en-GB">only
</span></span></font></font></span></font>after a deterministic and fixed d=
uration t0 consistent with the 5ns time counter and likely synchronized to =
an external PPS used as time reference.</span></span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB"><br>
</span></span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">From python, I know I can use the=
 &quot;set_time_next_pps&quot; call to initialize the USRP X310 time.
 But how to tell the radio core to stay in a idle state until the time keep=
er matches my duration t0?</span></span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">Can it be done by=C2=A0 software?=
 Or the only option is to use CHDR packets and VITA timing?</span></span></=
font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">=C2=A0</span></span></font></div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">Best Regards</span></span></font>=
</div>
<div style=3D"margin:0px"><font style=3D"font-family:Calibri,sans-serif,ser=
if,&quot;EmojiFont&quot;" size=3D"2" face=3D"Calibri,sans-serif"><span styl=
e=3D"font-size:11pt"><span lang=3D"en-GB">Cherif</span></span></font></div>
</div>
</div>
</font></div>
</span></font></div>
</div>
</div>
</div>
<br>
<p></p>
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

--00000000000070a779058f89d066--


--===============2643560770879851091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2643560770879851091==--

