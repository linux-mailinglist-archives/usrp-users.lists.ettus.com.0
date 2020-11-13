Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D692B152A
	for <lists+usrp-users@lfdr.de>; Fri, 13 Nov 2020 05:46:22 +0100 (CET)
Received: from [::1] (port=35588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kdQyV-0002Qw-3m; Thu, 12 Nov 2020 23:46:15 -0500
Received: from mail-ua1-f42.google.com ([209.85.222.42]:43306)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kdQyR-0002Lt-5y
 for usrp-users@lists.ettus.com; Thu, 12 Nov 2020 23:46:11 -0500
Received: by mail-ua1-f42.google.com with SMTP id h26so2618827uan.10
 for <usrp-users@lists.ettus.com>; Thu, 12 Nov 2020 20:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K7Ovc0UveBMabouFSvPfCg+6s+0PeCMCw1xuuaz2g4s=;
 b=dCK1DsjQtn1aW75/e2J4JQMvITy5CmcPo4jZZZTX+Yjb/HVP1xS0E9+zLznsKsu+AU
 tKIGMFg/IwbRmO0nuIG7sUzL2WAyZzOffJ/WWe+ZMYSlEX5esl2EQRJVgyDFijDvD4vg
 KBYY+zMl4fF2ZcKQfv4cCaa9SE+dy6GDCTheJwhwxMkGMMtOHF1nQpf4BDq3jpVpnXpW
 fTBFj3ZkZq6SL92efTn3Jh5eePY90VYDTL6HFtlXN9fTTMlelMh8kP/ZmABsXIipDtCf
 +e2Dbj9LCcsKdUmX8aVrQcij4rHeDX4gE2i6ULXQKFdKVkLE9nUCFSOlnEn3MJKjlkCJ
 tPLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K7Ovc0UveBMabouFSvPfCg+6s+0PeCMCw1xuuaz2g4s=;
 b=ojzLn++4Mxb/CwdXKXX0sJx/yBb/QgvD22HmN1E8okqHs5tfh8eET6Gc4cyliVe/SE
 DkLRuFfxMiLcD/y2RN+p5WHyZFiTuXJTaQrEXJLhrPo+GlmZNKWyGcHuEcpfYeHejlRF
 QP5YnnrvwPLOm5IZZC+y7MBZHf49+DJeTez4ow69p4FuOEKavcs1Exk0oEIZ9B0/nH2d
 /nl87FcXk43hvh8SDpuQdqaZ8llQ0n7QuJBHIrMLtEByaAylAhBKVXclsqMMckWNKydg
 deCjBsm7vXmddAU4WhNKVBc52s4CSQF5Tl6TH4ZqZ5PBp/NVwx7YuM5DUvbsxkN9w0rs
 3FuQ==
X-Gm-Message-State: AOAM530f1f1vg2Bn6j8RajBrXDVSOXZB1llXYIdAzkN2WAFOJRa1BJgQ
 ezKu91yAlJVWkcv2/K+Oln98KW8v/91ySqvRYyiiCnJD
X-Google-Smtp-Source: ABdhPJypFq/8Wm7iU5LB9iCClRB2lZiewdqwxgfSNjmEQuC4JyIMndoOjh65EBQWW8gNBIuHmDhZ/hoFryKqbSmqgTE=
X-Received: by 2002:ab0:3112:: with SMTP id e18mr188354ual.112.1605242730530; 
 Thu, 12 Nov 2020 20:45:30 -0800 (PST)
MIME-Version: 1.0
References: <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55.ref@verizon.net>
 <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55@verizon.net>
In-Reply-To: <9a4fc5b8-5c25-3a25-acf6-de2dbd816b55@verizon.net>
Date: Thu, 12 Nov 2020 23:44:54 -0500
Message-ID: <CAL7q81utFeW7QWX1N33h5+W-=dkFfSRzvqGC6zb03f2BRsPTeA@mail.gmail.com>
To: Mike <mikerd1@verizon.net>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] E310 RFNOC OOT modules
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============6071112104118755697=="
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

--===============6071112104118755697==
Content-Type: multipart/alternative; boundary="000000000000bb61af05b3f5b22e"

--000000000000bb61af05b3f5b22e
Content-Type: text/plain; charset="UTF-8"

Hi Mike,

The might be due to the PYTHONPATH env variable not including the directory
where your OOT module is installed. Try looking for a directory like
/usr/lib/python2/dist-packages or similar and adding that to PYTHONPATH.

Jonathon

On Thu, Nov 12, 2020, 13:40 Mike via USRP-users <usrp-users@lists.ettus.com>
wrote:

> I got an error when running a gnuradio python script on the E310.  The
> python script was created on the host machine in GRC and then copied
> (scp) over to E310.   I've done this successfully with built-in
> modules/blocks.  Now that I've created a custom FPGA, I've successfully
> updated the XML files in the OOT RFNoC module so that the new block
> shows up named correctly when I run "uhd_usrp_probe".
>
> The gnuradio error happens when I try to import the new module (in this
> case "import tutorial").
>
> root@ni-e31x:~# python e310_rx_spectrum.py
> Traceback (most recent call last):
>    File "e310_rx_spectrum.py", line 19, in <module>
>      import tutorial
> ImportError: No module named tutorial
> root@ni-e31x:~#
>
> On the host side I am able to see the new OOT module and choose the new
> block (in this case, "gain") and create the new grc block diagram.  I
> compile the GRC diagram and then copy the python script over to the E310.
>
> I created a new "build-arm" directory in the rfnoc OOT directory (in
> this case, "rfnoc-tutorial").  I performed a cmake, make, and install
> similar to the other cross-compile steps with the result that I see the
> files being installed into the /e300 directory (i.e. the directory that
> is sshfs shared with the E310).  But, I still feel that something is
> missing since the embedded version of gnuradio is unable to locate the
> new tutorial module.
>
> Any suggestions?  I feel like I'm real close...
>
> Thanks,
>
> Mike
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bb61af05b3f5b22e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Mike,<div dir=3D"auto"><br></div><div=
 dir=3D"auto">The might be due to the PYTHONPATH env variable not including=
 the directory where your OOT module is installed. Try looking for a direct=
ory like /usr/lib/python2/dist-packages or similar and adding that to PYTHO=
NPATH.</div><div dir=3D"auto"><br></div><div>Jonathon</div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, No=
v 12, 2020, 13:40 Mike via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">I got an error whe=
n running a gnuradio python script on the E310.=C2=A0 The <br>
python script was created on the host machine in GRC and then copied <br>
(scp) over to E310. =C2=A0 I&#39;ve done this successfully with built-in <b=
r>
modules/blocks.=C2=A0 Now that I&#39;ve created a custom FPGA, I&#39;ve suc=
cessfully <br>
updated the XML files in the OOT RFNoC module so that the new block <br>
shows up named correctly when I run &quot;uhd_usrp_probe&quot;.<br>
<br>
The gnuradio error happens when I try to import the new module (in this <br=
>
case &quot;import tutorial&quot;).<br>
<br>
root@ni-e31x:~# python e310_rx_spectrum.py<br>
Traceback (most recent call last):<br>
=C2=A0=C2=A0 File &quot;e310_rx_spectrum.py&quot;, line 19, in &lt;module&g=
t;<br>
=C2=A0=C2=A0=C2=A0=C2=A0 import tutorial<br>
ImportError: No module named tutorial<br>
root@ni-e31x:~#<br>
<br>
On the host side I am able to see the new OOT module and choose the new <br=
>
block (in this case, &quot;gain&quot;) and create the new grc block diagram=
.=C2=A0 I <br>
compile the GRC diagram and then copy the python script over to the E310.<b=
r>
<br>
I created a new &quot;build-arm&quot; directory in the rfnoc OOT directory =
(in <br>
this case, &quot;rfnoc-tutorial&quot;).=C2=A0 I performed a cmake, make, an=
d install <br>
similar to the other cross-compile steps with the result that I see the <br=
>
files being installed into the /e300 directory (i.e. the directory that <br=
>
is sshfs shared with the E310).=C2=A0 But, I still feel that something is <=
br>
missing since the embedded version of gnuradio is unable to locate the <br>
new tutorial module.<br>
<br>
Any suggestions?=C2=A0 I feel like I&#39;m real close...<br>
<br>
Thanks,<br>
<br>
Mike<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bb61af05b3f5b22e--


--===============6071112104118755697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6071112104118755697==--

