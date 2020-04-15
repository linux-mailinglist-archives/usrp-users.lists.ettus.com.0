Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F18C1AB066
	for <lists+usrp-users@lfdr.de>; Wed, 15 Apr 2020 20:13:48 +0200 (CEST)
Received: from [::1] (port=38094 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jOmXe-0007Lk-M7; Wed, 15 Apr 2020 14:13:42 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:39179)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jOmXa-00079T-Lp
 for usrp-users@lists.ettus.com; Wed, 15 Apr 2020 14:13:38 -0400
Received: by mail-ot1-f46.google.com with SMTP id m13so817384otf.6
 for <usrp-users@lists.ettus.com>; Wed, 15 Apr 2020 11:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n5lw29tkTx0Z/RrR6rFleMVKypQkA9yuTCter3sNRY4=;
 b=QOlntRWrdMbj0Y4aGv9cS2lBAtrXFcDMRQcq8Ag9DwhMowrcT/fyBK3wArkU+MuxLA
 zlJJG/jBBKPjdsAhlkGCXdYDtb2AEwiC8lp1qe6CDhop8J5E5B3JzEybEIFlTrkgnf7P
 gL3O7zTZvUqjCTi5obA0MrHIPfJN27SuvlWUOe9+hEv6gERGACjCcJ3I0KIJZJUWEjQs
 dOD9C5ngZzHPq0/imf/l0Er1iGK2TFNzmDIPWdYMzKjN4+fw2VQ09BYlvbvoTn2cyh0q
 wl8ur4XELdgDEWmYZYBJqgMnPyUwXv+60hKZ7ixsn+dk3bsqXEPBENXNEum9HpJbEaWj
 iURg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n5lw29tkTx0Z/RrR6rFleMVKypQkA9yuTCter3sNRY4=;
 b=QqnVygtKSw/Ay2M7cyMGDIuhFxaogseSufcT+MbWYhitroF47YC1oSBorMamAXh5Na
 JD6EEntXmu8TUJ+OjbTLRnFbmqPYTVMxztDnlM1cSAuyMrEO6KS1xE/6nPmKW/Uxr6Ec
 NY5o/yEmPuNGWLAIpt6SoXdIcZ/7hCKENb/LEnzmcoWKvLL7yO7MWz9xF3pu/XKZqBsN
 rQ10gHu+MSC7Y9Y0Hi8EsBZRs60jqDH8AG3w3d/kk4AELW3YJSv6uFZ0dH9y04VJEFPt
 SLWZqyKXPl6ewbdE70uv/Br6951fvAa+KOi7eAf6d9kto68O5cjZmLTWlseIbGuFR7x/
 p3mQ==
X-Gm-Message-State: AGi0Puawq+h9HpLIk0Nf+WW3R/yKa3yd5bmur+19Ih32xngs1R6z1BnE
 vYzYWPpxHDBGm4yg5n+6O9D5iWy54aLAMgjoplPZexQL95I=
X-Google-Smtp-Source: APiQypIs1ymY3bebnX6PnKn6hoBuKumLe/ePT0WbKTUZKJPi4Yv9o0tcESZX3asgxLpuuumkd1kDbq9MAUsNOvVGFhM=
X-Received: by 2002:a9d:4ee:: with SMTP id 101mr22882735otm.301.1586974377753; 
 Wed, 15 Apr 2020 11:12:57 -0700 (PDT)
MIME-Version: 1.0
References: <c94fdf66-0e4a-4d70-9456-208a25085ee2@ant.uni-bremen.de>
 <c355c495-fb7f-f870-935b-69d94c530108@ant.uni-bremen.de>
In-Reply-To: <c355c495-fb7f-f870-935b-69d94c530108@ant.uni-bremen.de>
Date: Wed, 15 Apr 2020 14:12:46 -0400
Message-ID: <CAB__hTQ4PyTRNujwWj10b3COSJPeGHEsXPMQKCR=0sTfb=Rb7A@mail.gmail.com>
To: Johannes Demel <demel@ant.uni-bremen.de>
Subject: Re: [USRP-users] N310 remote management
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1597712894361880896=="
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

--===============1597712894361880896==
Content-Type: multipart/alternative; boundary="0000000000000e06b305a3584409"

--0000000000000e06b305a3584409
Content-Type: text/plain; charset="UTF-8"

Hi Johannes,
I don't really have any direct answers to your questions.  But, a couple of
remarks:

   - It's not clear to me if you've completely lost access to any N310s or
   if you've just lost access through the 1Gb RJ45.  If you still have access
   via the SFP port, perhaps you can ssh into it and run "ip addr show" or
   something like that to determine what the 1Gb port IP address presently
   is.  Perhaps you can ping that from your network.
   - You mentioned that you've had N310 issues that persist after a
   reboot.  That is curious because it is not my experience.  The issues that
   I've had have all gone away after rebooting.
   - Not that this will be useful right now, but it is pretty cheap to buy
   wifi-controlled smart outlets so that you could remotely remove/apply
   power.  You can also set a flag on the N310 such that it will boot
   automatically following a power failure.
   - My experience with X310s matches yours in that they generally behave
   themselves (relative to N310s behavior)

Rob

On Wed, Apr 15, 2020 at 5:36 AM Johannes Demel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I want to give you all an update on my experience with my issues so far.
>
> So far I didn't hear back from anyone on the mailing list, thus I went
> forward and had someone update my network configuration.
>
> First off, N310s are usable with both management and stream ports
> connected. It is just important to assign those ports to different
> subnets that are separated via their subnet masks. I assume this is
> basic network knowledge which I had chosen to ignore.
>
> My new network setup looks like this:
> I have 4 N310s connected. All 4 of them have their management ports
> connected to our network with its own subnet etc. Just like all other
> machines are connected to this network.
> Currently I use 2 machines with Intel X710-DA2 NICs. Each machine is
> directly connected to 2 N310s via SFP+ cables. This setup works nicely.
> Just put each N310 into its own subet and you're good to go.
>
>  From another machine in our network `uhd_find_devices` may look like this:
> Device Address:
>      serial: XXXXXX
>      claimed: False
>      mgmt_addr: x.x.x.149
>      product: n310
>      reachable: No
>      type: n3xx
>
>
> On the machine where the N310 is connected with its streaming port:
> Device Address:
>      serial: XXXXXX
>      addr: y.y.y.217
>      claimed: False
>      mgmt_addr: x.x.x.149
>      mgmt_addr: y.y.y.217
>      product: n310
>      type: n3xx
>
> Besides `uhd_find_devices` I check each USRP with `uhd_usrp_probe` which
> I consider a good quick check. And further I run `benchmark_rate` with
> each USRP to confirm that it is still able to stream samples.
>
>
> So far so good. BUT:
>
> What I observe is that these N310s tend to disappear from the network
> after a week or so. I could use them last Thursday but today half of
> them disappeared. That happened before and triggered my initial email.
>
> Even with all N310s connected via their management ports, by now only 2
> out of 4 are reachable via network. `uhd_find_devices` can't find them
> anymore. Not even their management address.
>
> Also, after a few days all N310s did not work as well as they did after
> boot. And it didn't help to reboot them via `reboot now`. My experience
> in such situations is that it just helps to have physical access to
> them. Unplug them etc. And of course, this is impossible at the moment.
>
> Interestingly, I have 2 X310s connected to another machine and these
> X310s are still up and running. I never had issues with these devices
> disappearing after a while.
>
> I use all USRPs with UHD 3.15LTS. All SDimages are flashed with this
> version.
> I use this guide for bmaptool to flash all of them:
>
> https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card#Using_bmaptool_to_write_the_disk_image
> It's way faster than `dd`.
> X310s are in sync with UHD3.15LTS via `uhd_images_downloader &&
> uhd_image_loader`.
>
> It would be great to be able to manage those N310s remotely over a
> longer period of time. Occasional reboot wouldn't be an issue as long as
> all devices are reliably available without quirks.
>
> Did I stumble over a known issue here? Is this something new? Are my
> devices broken? How do I debug this? Is something else going on? Do I
> need to provide more info?
>
> Cheers
> Johannes
>
>
> On 27.03.20 09:41, Johannes Demel via USRP-users wrote:
> > Hi all,
> >
> > last week I set up the N310s we have with UHD3.15LTS to run in our
> > network. By now, most of them are not accessible remotely anymore. Since
> > I don't have physical access to them anymore, I'd like to figure out a
> > way to reliably manage them before someone fixes the immediate issue for
> > me.
> >
> > I've seen 2 error patterns.
> >
> > 1. A N310 may not get a lock on its PLL anymore. Even after a reboot or
> > "force_reinit=1"
> >
> > 2. N310s disappear from the network. Or they are unresponsive or I can't
> > log into them via ssh anymore to reboot them.
> >
> > I use Ubuntu 18.04 with UHD3.15LTS without any RFNoC.
> >
> > Currently, all N310s are only connected via an SFP+ port. In the past, I
> > had issues with an additional connection via the management port. So I
> > currently do not connect them via the management port.
> >
> > Does it help to connect the USRPs via their management port? Would I be
> > able to manage them more reliably?
> >
> > How do I make this setup work? Is it sufficient to assign them to
> > different subnets? Can I assign them different IP addresses on the same
> > subnet? Do I need to physically separate the two networks?
> >
> > It would be great to hear from people's experience how to set up their
> > N310s.
> >
> > Cheers
> > Johannes
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000e06b305a3584409
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Johannes,<div>I don&#39;t really have =
any direct answers to your questions.=C2=A0 But, a couple of remarks:</div>=
<div><ul><li>It&#39;s not clear to me if you&#39;ve completely lost access =
to any N310s or if you&#39;ve just lost access through the 1Gb RJ45.=C2=A0 =
If you still have access via the SFP port, perhaps you can ssh into it and =
run &quot;ip addr show&quot; or something like that to determine what the 1=
Gb port IP address presently is.=C2=A0 Perhaps you can ping that from your =
network.</li><li>You mentioned that you&#39;ve had N310 issues that persist=
 after a reboot.=C2=A0 That is curious because it is not my experience.=C2=
=A0 The issues that I&#39;ve had have all gone away after rebooting.</li><l=
i>Not that this will be useful right now, but it is pretty cheap to buy wif=
i-controlled smart outlets so that you could remotely remove/apply power.=
=C2=A0 You can also set a flag on the N310 such that it will boot automatic=
ally following a power failure.</li><li>My experience with X310s matches yo=
urs in that they generally behave themselves (relative to N310s behavior)</=
li></ul><div>Rob</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Apr 15, 2020 at 5:36 AM Johannes Deme=
l via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi all,<br>
<br>
I want to give you all an update on my experience with my issues so far.<br=
>
<br>
So far I didn&#39;t hear back from anyone on the mailing list, thus I went =
<br>
forward and had someone update my network configuration.<br>
<br>
First off, N310s are usable with both management and stream ports <br>
connected. It is just important to assign those ports to different <br>
subnets that are separated via their subnet masks. I assume this is <br>
basic network knowledge which I had chosen to ignore.<br>
<br>
My new network setup looks like this:<br>
I have 4 N310s connected. All 4 of them have their management ports <br>
connected to our network with its own subnet etc. Just like all other <br>
machines are connected to this network.<br>
Currently I use 2 machines with Intel X710-DA2 NICs. Each machine is <br>
directly connected to 2 N310s via SFP+ cables. This setup works nicely. <br=
>
Just put each N310 into its own subet and you&#39;re good to go.<br>
<br>
=C2=A0From another machine in our network `uhd_find_devices` may look like =
this:<br>
Device Address:<br>
=C2=A0 =C2=A0 =C2=A0serial: XXXXXX<br>
=C2=A0 =C2=A0 =C2=A0claimed: False<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: x.x.x.149<br>
=C2=A0 =C2=A0 =C2=A0product: n310<br>
=C2=A0 =C2=A0 =C2=A0reachable: No<br>
=C2=A0 =C2=A0 =C2=A0type: n3xx<br>
<br>
<br>
On the machine where the N310 is connected with its streaming port:<br>
Device Address:<br>
=C2=A0 =C2=A0 =C2=A0serial: XXXXXX<br>
=C2=A0 =C2=A0 =C2=A0addr: y.y.y.217<br>
=C2=A0 =C2=A0 =C2=A0claimed: False<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: x.x.x.149<br>
=C2=A0 =C2=A0 =C2=A0mgmt_addr: y.y.y.217<br>
=C2=A0 =C2=A0 =C2=A0product: n310<br>
=C2=A0 =C2=A0 =C2=A0type: n3xx<br>
<br>
Besides `uhd_find_devices` I check each USRP with `uhd_usrp_probe` which <b=
r>
I consider a good quick check. And further I run `benchmark_rate` with <br>
each USRP to confirm that it is still able to stream samples.<br>
<br>
<br>
So far so good. BUT:<br>
<br>
What I observe is that these N310s tend to disappear from the network <br>
after a week or so. I could use them last Thursday but today half of <br>
them disappeared. That happened before and triggered my initial email.<br>
<br>
Even with all N310s connected via their management ports, by now only 2 <br=
>
out of 4 are reachable via network. `uhd_find_devices` can&#39;t find them =
<br>
anymore. Not even their management address.<br>
<br>
Also, after a few days all N310s did not work as well as they did after <br=
>
boot. And it didn&#39;t help to reboot them via `reboot now`. My experience=
 <br>
in such situations is that it just helps to have physical access to <br>
them. Unplug them etc. And of course, this is impossible at the moment.<br>
<br>
Interestingly, I have 2 X310s connected to another machine and these <br>
X310s are still up and running. I never had issues with these devices <br>
disappearing after a while.<br>
<br>
I use all USRPs with UHD 3.15LTS. All SDimages are flashed with this <br>
version.<br>
I use this guide for bmaptool to flash all of them:<br>
<a href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_=
a_SD_Card#Using_bmaptool_to_write_the_disk_image" rel=3D"noreferrer" target=
=3D"_blank">https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to=
_a_SD_Card#Using_bmaptool_to_write_the_disk_image</a><br>
It&#39;s way faster than `dd`.<br>
X310s are in sync with UHD3.15LTS via `uhd_images_downloader &amp;&amp; <br=
>
uhd_image_loader`.<br>
<br>
It would be great to be able to manage those N310s remotely over a <br>
longer period of time. Occasional reboot wouldn&#39;t be an issue as long a=
s <br>
all devices are reliably available without quirks.<br>
<br>
Did I stumble over a known issue here? Is this something new? Are my <br>
devices broken? How do I debug this? Is something else going on? Do I <br>
need to provide more info?<br>
<br>
Cheers<br>
Johannes<br>
<br>
<br>
On 27.03.20 09:41, Johannes Demel via USRP-users wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; last week I set up the N310s we have with UHD3.15LTS to run in our <br=
>
&gt; network. By now, most of them are not accessible remotely anymore. Sin=
ce <br>
&gt; I don&#39;t have physical access to them anymore, I&#39;d like to figu=
re out a <br>
&gt; way to reliably manage them before someone fixes the immediate issue f=
or <br>
&gt; me.<br>
&gt; <br>
&gt; I&#39;ve seen 2 error patterns.<br>
&gt; <br>
&gt; 1. A N310 may not get a lock on its PLL anymore. Even after a reboot o=
r <br>
&gt; &quot;force_reinit=3D1&quot;<br>
&gt; <br>
&gt; 2. N310s disappear from the network. Or they are unresponsive or I can=
&#39;t <br>
&gt; log into them via ssh anymore to reboot them.<br>
&gt; <br>
&gt; I use Ubuntu 18.04 with UHD3.15LTS without any RFNoC.<br>
&gt; <br>
&gt; Currently, all N310s are only connected via an SFP+ port. In the past,=
 I <br>
&gt; had issues with an additional connection via the management port. So I=
 <br>
&gt; currently do not connect them via the management port.<br>
&gt; <br>
&gt; Does it help to connect the USRPs via their management port? Would I b=
e <br>
&gt; able to manage them more reliably?<br>
&gt; <br>
&gt; How do I make this setup work? Is it sufficient to assign them to <br>
&gt; different subnets? Can I assign them different IP addresses on the sam=
e <br>
&gt; subnet? Do I need to physically separate the two networks?<br>
&gt; <br>
&gt; It would be great to hear from people&#39;s experience how to set up t=
heir <br>
&gt; N310s.<br>
&gt; <br>
&gt; Cheers<br>
&gt; Johannes<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000000e06b305a3584409--


--===============1597712894361880896==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1597712894361880896==--

