Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BD81B727F
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 12:53:24 +0200 (CEST)
Received: from [::1] (port=49826 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRvxT-0006xF-O9; Fri, 24 Apr 2020 06:53:23 -0400
Received: from mail-ed1-f45.google.com ([209.85.208.45]:43404)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1jRvxP-0006qU-Ln
 for usrp-users@lists.ettus.com; Fri, 24 Apr 2020 06:53:19 -0400
Received: by mail-ed1-f45.google.com with SMTP id p16so6821712edm.10
 for <usrp-users@lists.ettus.com>; Fri, 24 Apr 2020 03:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tljOYXvFc9jy2eC58ovLLKOTRvZ3tZttAw7swqYd5Yw=;
 b=RunnGc8dEmR0edoXNUulMwL4l4wpL8PZs934EX2nu+ZlnLovsgj/0aF1B6rovrbcUg
 rAko7IioTwKvYKzDn11JMG90ZexXkbwThu+oVwIw+tnSMjyH5jt9pqeCeFYWxTPhbwOl
 rv+Zt/xILv09OCDRp0g0eRBdwWxtox4pNSPCN448SFQ4jvEs/mTAin/ytug0xOIjW0ae
 X9KJr2XU6SDr+4uDquknfbxMBHj94vqDnl2PChCdeFouuG0k7z0e1BtENykz/gMiO+hq
 tB7CTrtv5pNGIn5Q5VLU/rTq7YSBkVaKk/lgCU5SstWBePJeFkhUFyytioYMsqD76VUQ
 E1pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tljOYXvFc9jy2eC58ovLLKOTRvZ3tZttAw7swqYd5Yw=;
 b=EPz4xQpRDzOELk3MSTb2y1hRgwvbgycy87qx/XgsRWK1JrjmpO9Tu8/v3utWv6F9Qa
 gZTUYNhOMIACv+Upmt4+s/HoA1GedRZBNh1DuyYYokLqBzoejRP2xo3glK/PZbAN0kbM
 sBNb5IDCYD8m+kk+RC2Ac1facgzxHMr0ygKReXqPLnyRBnGMhWqaVbqVJ4N1UENLxVbp
 A2EqzxNd8TRdjp5DHf7TDF9SUMG7sjJj4v1hW+fvRmLl/XFcJmSyLW5EnUTjxMvoQptI
 ZS9PIn7yOADkNNX0EaxSyhIFIBl0LElWZnLSMP0xU9F+gVj+dy15bfTljwbMMDFrMh1U
 EOlg==
X-Gm-Message-State: AGi0PubocXHkDYjTeQTVoKAfXiMEmMMhTDCURzAZrqe966aOEXYgByXt
 x5pWF05Le/oTyZQCmZahlXY4WMn6ZnwWwUcngmA=
X-Google-Smtp-Source: APiQypJHEKBvf7gvdZ8WxG9JOpozuoRnk6v4RGjIzIQ5aA5XLDpQYpQJVRMsarM8ehVzwAqNfgRl+oykdyxaRSguo1k=
X-Received: by 2002:a50:d942:: with SMTP id u2mr6673366edj.116.1587725558510; 
 Fri, 24 Apr 2020 03:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
 <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB334874FD80DAE63A2212DC0288D00@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Fri, 24 Apr 2020 06:52:26 -0400
Message-ID: <CADRnH22JnbOn46n7Qc4v+RXH4O+BU_WOaBUC=RuLZ1=Kr8z6Cw@mail.gmail.com>
To: Snehasish Kar <snehasish.cse@live.com>
Subject: Re: [USRP-users] Fractional downsampling in rfnoc
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
Content-Type: multipart/mixed; boundary="===============7370580089301204722=="
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

--===============7370580089301204722==
Content-Type: multipart/alternative; boundary="000000000000ea790c05a4072907"

--000000000000ea790c05a4072907
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

Since you're already working with theseus-cores, I assume you've found the
rfnoc polyphase channelizer has channel downselection already integrated
into rfnoc and gnuradio (brief write up about it here:
https://www.theseus-cores.com/2019/12/17/rfnoc-deinterleaving-polyphase-cha=
nnelizer/).
I believe this worked with UHD-3.14 when I tested last December. Wondering
if this works for you or if there's other updates you might need?

EJ

On Fri, Apr 24, 2020, 12:56 AM Snehasish Kar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello Jonathon
>
> I tried building the fractional downsampler again and was successful to
> build it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Als=
o
> there is a channelizer available at
> https://github.com/e33b1711/rfnoc-ppchan . But the problem with this
> channelizer is, it sends almost 25.6msps samples to the host. Also the
> number of packet it sends, creates a overflow in the host even with 10gig
> sfp cable. So what I am planning is to make a de-interleaver, which will =
be
> responsible for channel down-selection. Please let me know your thoughts =
on
> this.
>
> Can you please let me know how to set the packet size on any rfnoc block.
>
> Regards
> Snehasish
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Sunday, April 19, 2020 8:58 AM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Fractional downsampling in rfnoc
>
> Hi Snehasish,
>
> I forgot about that error. I actually made an issue about it on their
> repo: https://github.com/SynchronousLabs/rfnoc-SynchronousLabs/issues/2.
> Unless they provide an EDIF or their source code, you can only use their
> code for simulation. Certainly a disappointing oversight on their part.
>
> Jonathon
>
> On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar <snehasish.cse@live.com>
> wrote:
>
> Hello Jonathon
>
> Tried building the fractional downsampler from synchronous labs and have
> encountered the following error:
> source file was generated for simulation and is not permitted as input to
> synthesis
> [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_dec_filter.vh=
d:241995]
>
> Can you please help me with it.
>
> Regards
> Snehasish
> ------------------------------
> *From:* Jonathon Pendlum <jonathon.pendlum@ettus.com>
> *Sent:* Friday, April 17, 2020 9:22 PM
> *To:* Snehasish Kar <snehasish.cse@live.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] Fractional downsampling in rfnoc
>
> Hello Snehasish,
>
> Unfortunately, the standard library of blocks does not have a Fractional
> Decimator. Your best bet is to try to use the one made by Synchronous Lab=
s
> a few years ago. Their code is on github here:
> https://github.com/SynchronousLabs/rfnoc-SynchronousLabs. Since it was
> built, RFNoC has had some changes that will need to be fixed, but I think
> this is your only option versus writing one from scratch.
>
> Jonathon
>
> On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello
>
> I am trying to use the RFNOC based M/2 channelizer from
> https://github.com/theseus-cores/theseus-cores/releases/tag/v1.1.0 . I am
> trying to divide 25 MHz spectrum into 124 subchannels each of bandwidth
> 200KHz. I am capturing the signal at 200msps and I need to decimate it to
> 25.6msps(25MHz/128 channels). Please help me in understanding how this ca=
n
> be achieved using RFNoC, is there=E2=80=99s any block already defined for
> fractional downsampling.
>
> Thanks & Regards
> Snehasish
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
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

--000000000000ea790c05a4072907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Snehasish,<div dir=3D"auto"><br></div><div dir=3D"auto=
">Since you&#39;re already working with theseus-cores, I assume you&#39;ve =
found the rfnoc polyphase channelizer has channel downselection already int=
egrated into rfnoc and gnuradio (brief write up about it here:=C2=A0<a href=
=3D"https://www.theseus-cores.com/2019/12/17/rfnoc-deinterleaving-polyphase=
-channelizer/">https://www.theseus-cores.com/2019/12/17/rfnoc-deinterleavin=
g-polyphase-channelizer/</a>). I believe this worked with UHD-3.14 when I t=
ested last December. Wondering if this works for you or if there&#39;s othe=
r updates you might need?</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Apr 24, 2020, 12:56 AM Snehasish Kar via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




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
I tried building the fractional downsampler again and was successful to bui=
ld it in this version of UHD: UHD 4.0.0.rfnoc-devel-409-gec9138eb. Also the=
re is a channelizer available at
<a href=3D"https://github.com/e33b1711/rfnoc-ppchan" id=3D"m_46015149712042=
69138LPlnk680611" target=3D"_blank" rel=3D"noreferrer">https://github.com/e=
33b1711/rfnoc-ppchan</a><b>
</b>. But the problem with this channelizer is, it sends almost 25.6msps sa=
mples to the host. Also the number of packet it sends, creates a overflow i=
n the host even with 10gig sfp cable. So what I am planning is to make a de=
-interleaver, which will be responsible
 for channel down-selection. Please let me know your thoughts on this.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Can you please let me know how to set the packet size on any rfnoc block.</=
div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Snehasish<br>
</div>
<div id=3D"m_4601514971204269138appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_4601514971204269138divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=
=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Sunday, April 19, 2020 8:58 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@li=
sts.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>I forgot about that error. I actually made an issue about it on their =
repo:=C2=A0<a href=3D"https://github.com/SynchronousLabs/rfnoc-SynchronousL=
abs/issues/2" target=3D"_blank" rel=3D"noreferrer">https://github.com/Synch=
ronousLabs/rfnoc-SynchronousLabs/issues/2</a>. Unless they provide an EDIF =
or
 their source code, you can only use their code for simulation. Certainly a=
 disappointing oversight on their part.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com" target=3D"_blank" rel=3D"noreferrer">sne=
hasish.cse@live.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
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
Tried building the fractional downsampler from synchronous labs and have en=
countered the following error:</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>source file was generated for simulation and is not permitted as inpu=
t to synthesis [/home/snehasish/rfnoc-SynchronousLabs/rfnoc/fpga-src/fract_=
dec_filter.vhd:241995]</span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Can you please help me with it.<br>
<span></span><span></span></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Regards</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Snehasish<br>
</div>
<div id=3D"m_4601514971204269138x_gmail-m_-353417754879076980appendonsend">=
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_4601514971204269138x_gmail-m_-353417754879076980divRplyFwdMsg"=
 dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"=
font-size:11pt"><b>From:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonatho=
n.pendlum@ettus.com" target=3D"_blank" rel=3D"noreferrer">jonathon.pendlum@=
ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank" rel=3D"noreferrer">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usr=
p-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@li=
sts.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Fractional downsampling in rfnoc</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">Hello Snehasish,
<div><br>
</div>
<div>Unfortunately, the standard library of blocks does not have a Fraction=
al Decimator. Your best bet is to try to use the one made by Synchronous La=
bs a few years ago. Their code is on github here:=C2=A0<a href=3D"https://g=
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs" target=3D"_blank" rel=3D"n=
oreferrer">https://github.com/SynchronousLabs/rfnoc-SynchronousLabs</a>.
 Since it was built, RFNoC has had some changes that will need to be fixed,=
 but I think this is your only option versus writing one from scratch.</div=
>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Apr 16, 2020 at 6:35 PM Snehasish Kar via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hello=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I am trying to use the RFNOC based M/2 channelizer from=C2=
=A0<a href=3D"https://github.com/theseus-cores/theseus-cores/releases/tag/v=
1.1.0" target=3D"_blank" rel=3D"noreferrer">https://github.com/theseus-core=
s/theseus-cores/releases/tag/v1.1.0</a>=C2=A0. I am trying to divide
 25 MHz spectrum into 124 subchannels each of bandwidth 200KHz. I am captur=
ing the signal at 200msps and I need to decimate it to 25.6msps(25MHz/128 c=
hannels).=C2=A0Please help me in understanding how this can be achieved usi=
ng RFNoC, is there=E2=80=99s any block already
 defined for fractional downsampling.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks &amp; Regards=C2=A0</div>
<div dir=3D"ltr">Snehasish=C2=A0</div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"m_4601514971204269138x_gmail-m_-353417754879076980x_gmail-m_-709=
9343062042280710ms-outlook-mobile-signature">
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank" rel=3D"noreferrer">=
Outlook for iOS</a></div>
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

--000000000000ea790c05a4072907--


--===============7370580089301204722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7370580089301204722==--

