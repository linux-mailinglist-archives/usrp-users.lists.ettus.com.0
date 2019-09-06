Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0AEAC29F
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 00:39:39 +0200 (CEST)
Received: from [::1] (port=33228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6MtF-0004FS-Bs; Fri, 06 Sep 2019 18:39:37 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:36473)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1i6MtB-00049z-Om
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 18:39:33 -0400
Received: by mail-oi1-f169.google.com with SMTP id k20so6339356oih.3
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 15:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pYBJKGUeZ4OFiYvVZZc+aC+ESC7DYXTlnc0pP7JqWAo=;
 b=g5wWXq0tsE5AMwJhIZGHZb18ZvuVZdhhYK/xuguWaIfoCWCMJwKYJYHyzpf6w8OCir
 96DBN6P2CotN3MMwi0LQW6WU3CPDPgTPcop7LNxs1bwGiG5lXDzWlDTk3svcC2PmHOIR
 NdpQJ1zOcUfUfSZxiSE91UqzPKbbMP86+/Cf6qHJAfu1Fs2WK3ICy/IJtTH8XuKwftx9
 whFxTA3151OURUSSjb/9spSHX9tJoRI1MjlvxDfwP6HeOgedDOeDlMT8KzYTAa5A9u+8
 xBeb4TlBJW+C5jKuqQD7X33ubYg1kH9WYWLs2EFz5Z79k6/m/YHL62SfFeBMm3yW2vRP
 uAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pYBJKGUeZ4OFiYvVZZc+aC+ESC7DYXTlnc0pP7JqWAo=;
 b=UT+MH2gb1bpgWNGNomR3Q10axEMwF4SAzU6aKH+gSJp2RHkTkyy6SDKsu+HFxPHS1o
 hspCvZCw2tpE8dune99uFXBOsPLOURb1rJUgiEOZ3atQ1nfsnoW78M4hHzSBEWpJQOCV
 E7xmvry6GTcT8IS7GgiXJo6yTYTsYnfD0zL4LprUPPrEBTGBK0taDcwO/W2mAmhMjwos
 OW/Qqa5AZtTd4nTyxUSRZt5qwNwQ9ZWn2dqYdJFfRRcN5451JB26nD99TOVo+nBfpKvF
 u+MQt5WMkkvzqrD2NHj0bfDh7WBdZCk+pkuCuCm1cCy3c+GDIp2hrPkxvIUObCKviREL
 tIig==
X-Gm-Message-State: APjAAAVQUvSlAGpiaKk732zkQDmMkPbn64NQeqQ4RkL317ndgpkw4pz6
 G2dZBCfg2vyvgQNLnihDiraePGj4sGy9D/MPv3VMcVNW
X-Google-Smtp-Source: APXvYqxgGvMwhS7scZvQ9M/6xB4aXTu7Lx8Fj8cCZ0BMt/0lE3PcNsm5jky8Hqtyya7jgBkQt54Jjz0zOWnM7glwIOo=
X-Received: by 2002:a05:6808:34a:: with SMTP id
 j10mr4828901oie.82.1567809532871; 
 Fri, 06 Sep 2019 15:38:52 -0700 (PDT)
MIME-Version: 1.0
References: <7a40a32856c14d31807bfea8150bc996@gtri.gatech.edu>
 <46108c0b98749cd2de8a820ca88777003dcf33b6.camel@ettus.com>
In-Reply-To: <46108c0b98749cd2de8a820ca88777003dcf33b6.camel@ettus.com>
Date: Fri, 6 Sep 2019 15:39:26 -0700
Message-ID: <CAL263izYt6-x2cCbP90M+NrRPatP2tah5A6gJp_9mVZecAjATA@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] Processor requirements for full-rate streaming on
 N320
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Lundberg,
 Daniel" <daniel.lundberg@gtri.gatech.edu>
Content-Type: multipart/mixed; boundary="===============7877986425645755008=="
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

--===============7877986425645755008==
Content-Type: multipart/alternative; boundary="0000000000004857be0591ea1adb"

--0000000000004857be0591ea1adb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi  Daniel,

As Marcus mentioned, an i3 is not ideal for streaming at such high rates.

For 200 MS/s of usable bandwidth, you'll need to stream at 250 MS/s per
channel.

A colleague has ran 2x2 @ 250 MS/s using an Intel Xeon E5-1620 v3 @
3.50GHz, and I've ran at those rates with an i9-9900x @ 4.4 GHz.

Generally speaking, you'll want to have a CPU with a clock freq of 3.5 GHz
or higher with as many cores as possible, ideally 4.0+ GHz.

To stream at 250 MS/s you'll need to use DPDK. The Mellanox MCX4121A-ACAT
NIC is a good option as you do not need to use the vfio-pci driver with it
for DPDK.


Regards,
Nate Temple

On Fri, Sep 6, 2019 at 3:24 PM Marcus M=C3=BCller via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Daniel,
>
> i3 doesn't sound like the processor family of choice here; a few more
> cores can't hurt. Basically, assume one CPU core per stream for the
> wire- to CPU-format conversion, plus a bit of demand for someone
> handling OS/network card interrupts.
> What're you doing with the samples afterwards?
>
> Best regards,
> Marcus
>
> On Fri, 2019-09-06 at 21:53 +0000, Lundberg, Daniel via USRP-users
> wrote:
> > Does anyone have a known good hardware configuration to support full
> > (or at least close to full) 200 MS/s streaming from the N320?
> > Preferably with 1 Tx and 2 Rx channels.
> > As a data point, a recent i3 (4 cores) seems to be choking above 62.5
> > MS/s.  This is over dual SFP+ ports.  At higher sampling rates, it is
> > producing U=E2=80=99s, which I interpret to mean that the cpu can=E2=80=
=99t shovel
> > samples into the radio fast enough, not that there is a network jam.
> >
> > Thank you,
> > DL
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004857be0591ea1adb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi =C2=A0Daniel,<br><br>As Marcus mentioned, an i3 is n=
ot ideal for streaming at such high rates.<br><br>For 200 MS/s of usable ba=
ndwidth, you&#39;ll need to stream at 250 MS/s per channel.<br><br>A collea=
gue has ran 2x2 @ 250 MS/s using an Intel Xeon E5-1620 v3 @ 3.50GHz, and I&=
#39;ve ran at those rates with an i9-9900x @ 4.4 GHz. <br><br>Generally spe=
aking, you&#39;ll want to have a CPU with a clock freq of 3.5 GHz or higher=
 with as many cores as possible, ideally 4.0+ GHz.<br></div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif"><br>To strea=
m at 250 MS/s you&#39;ll need to use DPDK. The Mellanox MCX4121A-ACAT NIC i=
s a good option as you do not need to use the vfio-pci driver with it for D=
PDK.<br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 3:24 PM=
 Marcus M=C3=BCller via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi Daniel,<br>
<br>
i3 doesn&#39;t sound like the processor family of choice here; a few more<b=
r>
cores can&#39;t hurt. Basically, assume one CPU core per stream for the<br>
wire- to CPU-format conversion, plus a bit of demand for someone<br>
handling OS/network card interrupts.<br>
What&#39;re you doing with the samples afterwards?<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Fri, 2019-09-06 at 21:53 +0000, Lundberg, Daniel via USRP-users<br>
wrote:<br>
&gt; Does anyone have a known good hardware configuration to support full<b=
r>
&gt; (or at least close to full) 200 MS/s streaming from the N320? <br>
&gt; Preferably with 1 Tx and 2 Rx channels.<br>
&gt; As a data point, a recent i3 (4 cores) seems to be choking above 62.5<=
br>
&gt; MS/s.=C2=A0 This is over dual SFP+ ports.=C2=A0 At higher sampling rat=
es, it is<br>
&gt; producing U=E2=80=99s, which I interpret to mean that the cpu can=E2=
=80=99t shovel<br>
&gt; samples into the radio fast enough, not that there is a network jam.<b=
r>
&gt;=C2=A0 <br>
&gt; Thank you,<br>
&gt; DL<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004857be0591ea1adb--


--===============7877986425645755008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7877986425645755008==--

