Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FE21AF671
	for <lists+usrp-users@lfdr.de>; Sun, 19 Apr 2020 05:29:41 +0200 (CEST)
Received: from [::1] (port=37376 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jQ0eG-0001g4-BZ; Sat, 18 Apr 2020 23:29:36 -0400
Received: from mail-vk1-f172.google.com ([209.85.221.172]:41030)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jQ0eC-0001co-0L
 for usrp-users@lists.ettus.com; Sat, 18 Apr 2020 23:29:32 -0400
Received: by mail-vk1-f172.google.com with SMTP id n207so1661769vkf.8
 for <usrp-users@lists.ettus.com>; Sat, 18 Apr 2020 20:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YJAFYfrYTo3ITk+gSjS+EpDAFzqBp4LMm8QPgXYggCg=;
 b=sBIxOGB+XrMKTKQaL4GnMaxr9Prx8P58cv24Zt8mHnmAIMvOm0FKwjIAmsaq9KxZLg
 8CI/nu2YQ52FdPf9EEwJ+4EYEFcZtrJBKQ3JVx+ZzmBrU9bF+6VO2deDn3HzoXeylTrE
 tKn5Fx6sbLRbAd8SiIxb2jCqlIdKiRNxhGds5L/dM9fkVhqfOkKdfnHqvTivtROayFgA
 2/PDcx238Y2AxSVdEYRwX88nYVnRTPrSFL4tANJ9VmgjK5pWstfZZmCJ39D40dQcbjZZ
 /l07Stj7YXT1/mMpAk1ac872egQyebroTWI6zgKCK+x3G6knttrX5e4Z80wOL7CqqZc4
 0itw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YJAFYfrYTo3ITk+gSjS+EpDAFzqBp4LMm8QPgXYggCg=;
 b=QfOsMs52ReHETQUXWe+Ww9H7sZYtXpIBdCMnT0ZsJX9fRJFJikOKxXi5aXsdQ/hGGD
 9PTp23exWylCQn2JldievdYnHW+TXX7cj7k6b93jvYGG8EV67IpvP0jBlyIyk+SvF++Y
 2cOd62pas7s5A6wzgs+Ojw55VbW4/ncNhlZGclNmCGggCif/6hZPcciCbkFAnu9tc2bj
 zxvTCji4BbJOn46hVKtmnKUApyoRPyPj+9LbU0P8HYBTvaw/fIRz8giNHgSDWqg9G8g9
 RxuFzCI2HIpdA35dFYVKSJAF2NEk3FeVUBEjmuY0aVNON+0E9QtzjlTQyLdcXLUhzeCk
 wlUA==
X-Gm-Message-State: AGi0PubrsvChMpa/CiTOUvV7/bcpzlVBGxUxGcwQp8KQ1rsPG/+4Ebiw
 pF3gfLS5CLTXrno4aBc50vJjwUmG0C/eBT/YIQUB/Di3
X-Google-Smtp-Source: APiQypKvhz/InLnOIysHwi0KGSR70fHai2QvalEY84s7ksjj0PJ6F/cQY/dOLQ2/eaPzMYrPdVpFjZsJo8c/K0PJQok=
X-Received: by 2002:a1f:cb82:: with SMTP id b124mr7576548vkg.39.1587266931357; 
 Sat, 18 Apr 2020 20:28:51 -0700 (PDT)
MIME-Version: 1.0
References: <BM1PR01MB33485647B95F4EB1A185B53E88D80@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81tGgXZQDNxq9FGViThnFkWE+3YSeLaebKrqP6OqCw1XvA@mail.gmail.com>
 <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR01MB33488D7B9DC5AE9AF435234088D60@BM1PR01MB3348.INDPRD01.PROD.OUTLOOK.COM>
Date: Sat, 18 Apr 2020 23:28:15 -0400
Message-ID: <CAL7q81t1RpfgCAY24baDznFWJLM+i21eePoXObHiTAhqO27-FA@mail.gmail.com>
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2990747781963134668=="
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

--===============2990747781963134668==
Content-Type: multipart/alternative; boundary="0000000000009b8d7305a39c615e"

--0000000000009b8d7305a39c615e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Snehasish,

I forgot about that error. I actually made an issue about it on their repo:
https://github.com/SynchronousLabs/rfnoc-SynchronousLabs/issues/2. Unless
they provide an EDIF or their source code, you can only use their code for
simulation. Certainly a disappointing oversight on their part.

Jonathon

On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar <snehasish.cse@live.com>
wrote:

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
>

--0000000000009b8d7305a39c615e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Snehasish,<div><br></div><div>I forgot about that error=
. I actually made an issue about it on their repo:=C2=A0<a href=3D"https://=
github.com/SynchronousLabs/rfnoc-SynchronousLabs/issues/2">https://github.c=
om/SynchronousLabs/rfnoc-SynchronousLabs/issues/2</a>. Unless they provide =
an EDIF or their source code, you can only use their code for simulation. C=
ertainly a disappointing oversight on their part.</div><div><br></div><div>=
Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Apr 18, 2020 at 6:21 PM Snehasish Kar &lt;<a href=
=3D"mailto:snehasish.cse@live.com">snehasish.cse@live.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">




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
<div id=3D"gmail-m_-353417754879076980appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-353417754879076980divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From=
:</b> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum@ettus.com" ta=
rget=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, April 17, 2020 9:22 PM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
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
ithub.com/SynchronousLabs/rfnoc-SynchronousLabs" target=3D"_blank">https://=
github.com/SynchronousLabs/rfnoc-SynchronousLabs</a>.
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
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br>
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
1.1.0" target=3D"_blank">https://github.com/theseus-cores/theseus-cores/rel=
eases/tag/v1.1.0</a>=C2=A0. I am trying to divide
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
<div id=3D"gmail-m_-353417754879076980x_gmail-m_-7099343062042280710ms-outl=
ook-mobile-signature">Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blan=
k">
Outlook for iOS</a></div>
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
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000009b8d7305a39c615e--


--===============2990747781963134668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2990747781963134668==--

