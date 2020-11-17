Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB3C2B6AFF
	for <lists+usrp-users@lfdr.de>; Tue, 17 Nov 2020 18:04:01 +0100 (CET)
Received: from [::1] (port=47154 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kf4Od-0000yh-9H; Tue, 17 Nov 2020 12:03:59 -0500
Received: from mail-il1-f179.google.com ([209.85.166.179]:39855)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1kf4OZ-0000pA-C0
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 12:03:55 -0500
Received: by mail-il1-f179.google.com with SMTP id q1so19224139ilt.6
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 09:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j5Vi4IGibydm6IMOL5ErziFqCT3LoSMmuuSLbvxaayM=;
 b=QvoHVR/+gWB9mWguNM+o943fOQEtEamw+uWJ/4nvmAGhL5J9DPKbuUa81W46BvHbaL
 K+t2XaZLLqIhX/rpo5QZV+EKTcqwZEZL9PZqffYfXYN0RmOYfNzaFOgg0crGPktLj1Du
 M+e+5Rfrmg+jMUwrw9aYgRiWoQNFVwSlfqbr1tAahvXSIpHnIGqxhQuBpAlFfMDlb80/
 FT9XLdQzxOU6R/ySOhMgG3qD5booIxMuZpc8f/GbtFGPdEcIhQ+bz75yY5irWbpsY2wb
 Ryl3DWWaO4Mud9MopBKl9Ev1cUONnHem/gWztZrORohBSf2uHf22kt+b9QHZ1nZRlBPt
 fqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j5Vi4IGibydm6IMOL5ErziFqCT3LoSMmuuSLbvxaayM=;
 b=dmn9XfAzwHzJqPrFqAKILPE9ogHTXcfvm7k8UTK3MxLjm7w3YE3hY5eNDxLAYyy+4F
 C6DP2nD0+JyEiq4vnqxvg5ANvLRLG4ItL2eexv2jglP2d/RTZZSz8gLA6e4NH0r6FIz5
 hNbs7C9OHaWRdR2rQ494pwvayySEMCyTUYbI3nOVZS1ISQDlMsVksAJHu0a6xDcj6/6l
 lYaa3Gs21J0IJ8tkDbyeKBHr8v5SETVY2MD0p+N5SzSUzlU6AUk4CJNkMFIfrNSQ7+hw
 bwx/nPgWfSbvAvgren4PvncsE+R8icemIpajCPsB2ShqVksEolsmJuVYwJON8C1A8iWH
 N77g==
X-Gm-Message-State: AOAM5333EZYbS6Zx8xkqjTwt3K3PIAAJeS3bsLysgkoodAjGyKg72C3F
 gupzvmyX2U9ZCLGpgk4FGY6BsKqImB9kwS37Hr0=
X-Google-Smtp-Source: ABdhPJzfCiXhFVAyNb+KpBRpkKi7N8Bq/jMek9gf5Zpnh98Z7xtSIlH+plzZwqdUggs2sv4s2HbvzNAlnJjJ/XCV/9E=
X-Received: by 2002:a05:6e02:e06:: with SMTP id
 a6mr13327167ilk.230.1605632594419; 
 Tue, 17 Nov 2020 09:03:14 -0800 (PST)
MIME-Version: 1.0
References: <trinity-68061d4d-5ab3-4320-82b3-c9d0d0d56cf7-1605594366644@3c-app-gmx-bap02>
In-Reply-To: <trinity-68061d4d-5ab3-4320-82b3-c9d0d0d56cf7-1605594366644@3c-app-gmx-bap02>
Date: Tue, 17 Nov 2020 09:03:03 -0800
Message-ID: <CA+JMMq8VGHb10bqn=s6uvCXtA64JPwFXC=UH9KEcDnvq3WqdNQ@mail.gmail.com>
To: George Smith <smithgeorge1492@gmx.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC: How can I use the GPS time?
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Content-Type: multipart/mixed; boundary="===============0891157495600917525=="
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

--===============0891157495600917525==
Content-Type: multipart/alternative; boundary="0000000000006e241c05b4507839"

--0000000000006e241c05b4507839
Content-Type: text/plain; charset="UTF-8"

Maybe if you provide a more detailed description of what you're trying to
accomplish, we can help direct you toward a path to get there. Do you just
want to get a timestamp into your UHD application? Do you require a
timestamp for the custom logic in your RFNoC block on the FPGA?

On Mon, Nov 16, 2020 at 10:26 PM George Smith via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear community,
>
> I use an RFNoC block and I would like to use it in combination with the
> GPS time functionallity on a N310.
> My aim is to create and write out a GPS precise timestamp - in the first
> step only once but maybe later more regularly.
> Until Inow I have a RFNoC block, where I put the controlling stuff (of the
> main task) inside *test1_block_ctrl_impl.cpp *which is called by
> *test1_impl.cc*
> My idea is to put the GPS time function inside *test1_block_ctrl_impl.cpp*
> / *test1_impl.cc *as well. In my opinion it is not necessary to create a
> completelty new self-written RFNoC block since it is a small function.
>
> In the following I describe two different approaches how I try to achieve
> my goal, but I would like to use the easiest one.
> Mainly I try to use the integrated GPSDO function
> So if you know a better solution, don't hesitate to post it. :)
>
>
> --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>
> *(1)*
>
> Initially; I thought I could use code of the *sync_to_gps.cpp *in the
> examples folder of uhd, but I realized that therefore an instance of an
> *usrp* object is created.
>
> *uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);*
>
> Since I use a RFNoC block, previously a "*rfnoc*" object is constructed.
> (I dont know the exact name and where it is created). So, I have two
> instances which want to access at the same resource (board) at the same
> time. This is obviously not functioning.
> So when I run it in gnuradio I got the following error:
>
> *[ERROR] [RPC] Someone tried to claim this device again*
>
> In order to avoid this problem I would like to apply the needed methods
> for using the GPS time functionallity at the *rfnoc *object (so I do not
> need to create an object *usrp *).
> In the *sync_to_gps.cpp *example the following methods are used:
>
> *set_clock_source*
> *set_time_source*
> *get_mboard_sensor_names*
> *get_mboard_sensor*
> *set_time_next_pps*
> *get_time_last_pps*
>
> So my question is, where in the RFNoC framework is an instance of the *rfnoc
> *object created, so I can apply these methods to it.
>
> *Another thing:*
> If I start the built program *sync_to_gps*, I get after the
> initialization, a *seg fault *error. I think, it is because I use an
> RFNoC block.
> Is it true, and where is the core dump stored?
>
> *(2)*
>
> During my research, I noticed that there is an *RFNoC: Radio block. *Looking
> at the source code I see interesting methods in it:
>
> set_clock_source
> set_time_next_pps
> get_time_last_pps
>
> but not (*set_time_source, get_mboard_sensor_names, get_mboard_sensor *)
>
> So it seems to me that a GPS time function is not integrated in the *rfnoc_radio_impl
> *class*.*
> This astonishes me, because I would assume that the RFNoC framework could
> perform at least the same tasks as an usual USRP (radio) one.
> I think about using (copying) the missing methods in the *rfnoc_radio_impl
> *class. Are there any problems doing this or why they have not been
> implemented so far?
> If I implement it, how can I recompile the block in order to get an
> updated *RFNoC: Radio* block.
>
>
> --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
>
> Used software:
> I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7.
> Hardware:
> N310
>
> Thanks for the help :)
>
> Kind regards
>
> George
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006e241c05b4507839
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe if you provide a more detailed description of what y=
ou&#39;re trying to accomplish, we can help direct you toward a path to get=
 there. Do you just want to get a timestamp into your UHD application? Do y=
ou require a timestamp for the custom logic in your RFNoC block on the FPGA=
?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Nov 16, 2020 at 10:26 PM George Smith via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><di=
v style=3D"font-family:Verdana;font-size:12px"><div style=3D"font-family:Ve=
rdana;font-size:12px">
<div style=3D"font-family:Verdana;font-size:12px">
<div>Dear community,</div>

<div>=C2=A0</div>

<div>I use an RFNoC block and I would like to use it in combination with th=
e GPS time functionallity on a N310.</div>

<div>My aim is to create and write out a GPS precise timestamp - in the fir=
st step only once but maybe later more regularly.</div>

<div>Until Inow I have a RFNoC block, where I put the controlling stuff (of=
 the main task) inside <em>test1_block_ctrl_impl.cpp </em>which is called b=
y <em>test1_impl.cc</em></div>

<div>My idea is to put the GPS time function inside <em>test1_block_ctrl_im=
pl.cpp</em>=C2=A0 / <em>test1_impl.cc </em>as well. In my opinion it is not=
 necessary to create a completelty new self-written RFNoC block since it is=
 a small function.</div>

<div>=C2=A0</div>

<div>In the following I describe two different approaches how I try to achi=
eve my goal, but I would like to use the easiest one.</div>

<div>Mainly I try to use the integrated GPSDO function</div>

<div>So if you know a better solution, don&#39;t hesitate to post it. :)</d=
iv>

<div>=C2=A0</div>

<div>
<div>----------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------------------------------</div>
</div>

<div>=C2=A0</div>

<div><strong>(1)</strong></div>

<div>=C2=A0</div>

<div>Initially; I thought I could use code of the <em>sync_to_gps.cpp </em>=
in the examples folder of uhd, but I realized that therefore an instance of=
 an <em>usrp</em> object is created.</div>

<div>=C2=A0</div>

<div><em>uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(a=
rgs);</em></div>

<div>=C2=A0</div>

<div>Since I use a RFNoC block, previously a &quot;<em>rfnoc</em>&quot; obj=
ect is constructed. (I dont know the exact name and where it is created). S=
o, I have two instances which want to access at the same resource (board) a=
t the same time. This is obviously not functioning.</div>

<div>So when I run it in gnuradio I got the following error:</div>

<div>=C2=A0</div>

<div><em>[ERROR] [RPC] Someone tried to claim this device again</em></div>

<div>=C2=A0</div>

<div>In order to avoid this problem I would like to apply the needed method=
s for using the GPS time functionallity at the <em>rfnoc </em>object (so I =
do not need to create an object <em>usrp </em>).</div>

<div>In the <em>sync_to_gps.cpp </em>example the following methods are used=
:</div>

<div>=C2=A0</div>

<div><em>set_clock_source</em></div>

<div><em>set_time_source</em></div>

<div><em>get_mboard_sensor_names</em></div>

<div><em>get_mboard_sensor</em></div>

<div><em>set_time_next_pps</em></div>

<div><em>get_time_last_pps</em></div>

<div>=C2=A0</div>

<div>So my question is, where in the RFNoC framework is an instance of the =
<em>rfnoc </em>object created, so I can apply these methods to it.</div>

<div>=C2=A0</div>

<div><em>Another thing:</em></div>

<div>If I start the built program <em>sync_to_gps</em>, I get after the ini=
tialization, a <em>seg fault </em>error. I think, it is because I use an RF=
NoC block.</div>

<div>Is it true, and where is the core dump stored?</div>

<div>=C2=A0</div>

<div><strong>(2)</strong></div>

<div>=C2=A0</div>

<div>During my research, I noticed that there is an <em>RFNoC: Radio block.=
 </em>Looking at the source code I see interesting methods in it:</div>

<div>=C2=A0</div>

<div>set_clock_source</div>

<div>set_time_next_pps</div>

<div>get_time_last_pps</div>

<div>=C2=A0</div>

<div>but not (<em>set_time_source, get_mboard_sensor_names, get_mboard_sens=
or </em>)</div>

<div>=C2=A0</div>

<div>So it seems to me that a GPS time function is not integrated in the <e=
m>rfnoc_radio_impl=C2=A0 </em>class<em>.</em></div>

<div>This astonishes me, because I would assume that the RFNoC framework co=
uld perform at least the same tasks as an usual USRP (radio) one.</div>

<div>I think about using (copying) the missing methods in the <em>rfnoc_rad=
io_impl=C2=A0 </em>class. Are there any problems doing this or why they hav=
e not been implemented so far?<br>
If I implement it, how can I recompile the block in order to get an updated=
 <em>RFNoC: Radio</em> block.</div>

<div>=C2=A0</div>

<div>----------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------------------------------</div>

<div>=C2=A0</div>

<div>Used software:</div>

<div>I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7.</div>

<div>Hardware:=C2=A0</div>

<div>N310</div>

<div>=C2=A0</div>

<div>Thanks for the help :)</div>

<div>=C2=A0</div>

<div>Kind regards</div>

<div>=C2=A0</div>

<div>George</div>

<div>=C2=A0</div>

<div>=C2=A0</div>

<div>=C2=A0</div>
</div>
</div></div></div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006e241c05b4507839--


--===============0891157495600917525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0891157495600917525==--

