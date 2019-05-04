Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5D613791
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 07:25:09 +0200 (CEST)
Received: from [::1] (port=33166 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMnAW-0007EZ-5c; Sat, 04 May 2019 01:25:04 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:42351)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <neel.pandeya@ettus.com>)
 id 1hMn9x-000771-Lm
 for usrp-users@lists.ettus.com; Sat, 04 May 2019 01:24:59 -0400
Received: by mail-ot1-f46.google.com with SMTP id f23so7166188otl.9
 for <usrp-users@lists.ettus.com>; Fri, 03 May 2019 22:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i87hvgjHOrUm1OK4i7r3bACz8XOWX4o1aueKX8u4ryw=;
 b=iVv9932tK6TVK1CtJlvq442vj/bzR7aWPfiIoAwJf2bsgNKHJiDdGF+YznBgqcEF/Z
 OZY5wbDxj+rltQosOOR9+0c2iQUMTMF4IX51+phsZZSGbTu8drS2DCTrwCQTnrwzjbXM
 ciaSoyJyA0i0OJJb5D2GOqTgzUtiyVvMT7qDcdJfh0B7jB087Wc6f+StFnARNWrNXwYj
 W3siW697E4R1DeaG2M5y08TzRKIsjnL9zKZyPNBWkm7cDrUQBQGfZnNUpRGL7PvQJxRQ
 KdwDliWctkdvxif/kYFPx1REVfpYPHFE33VM++3d80PapPFEC2N7TSAE6FeQ5eBIlVzq
 y1yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i87hvgjHOrUm1OK4i7r3bACz8XOWX4o1aueKX8u4ryw=;
 b=f6fRrWDq56FCtm/A1aJafao+ZSp2c9DNI3qWBadtMfIJMPCCha+nVSkdMP5+P9wF/i
 1Y3SIx7sp60Mdss2TSc7FaHszF0Jx9YDO3OJPi5giDzdzsG+nPA7I27gqxo7x6vvFW2d
 tbbf/YwdENqDHWSiDJZTakcFhSIulVSRGXiEidnw4LDUJppx9DuUSa34IBOPm0ck6UGO
 WqH45PTIZV9lRJnH3YVBiEN6bx38/WYi9TxG11xsdVoQNh9wlqNA7J0n7khAwonIWrv2
 UM9rqWoqHNDocs4Evdd2yyVOIWhSVGjXC8zOLw68GfXIsZRTgyEJ5JRatIejXYQDPQcg
 VpxQ==
X-Gm-Message-State: APjAAAXch1Tk+RT3c70iPmtCq+5+s7xItjo0qKUI98QZVXDSz9bX7eSr
 a83aACyS1Jwc0KAi3QEcdvNKpIaHyX5vIhpXj56L4vct1kY=
X-Google-Smtp-Source: APXvYqwyoDcbUJEpxa+yNyLj6A7W0zScIltKufx8U/gNS3SkGF0ynJqQifMLzbCgRA8ail+MHg2e4bKzNCvmgEmKEwo=
X-Received: by 2002:a9d:6409:: with SMTP id h9mr2425026otl.68.1556947428743;
 Fri, 03 May 2019 22:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB2340989655F5C62AE0F27E0DAF3B0@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6fa189949d2b1453a3de4b15c25fc0b0a694151e@new-postoffice.tpg.com.au>
 <BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340A2AF29C7DB1E6E28EB79AF340@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Sat, 4 May 2019 00:23:32 -0500
Message-ID: <CACaXmv-cp6BtiY74qvmkycTZqdqb9ZehqfWQ8FrerXC7Rfh7yw@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E320 numpy missing?
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4682791002338140664=="
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

--===============4682791002338140664==
Content-Type: multipart/alternative; boundary="0000000000006cb3970588091237"

--0000000000006cb3970588091237
Content-Type: text/plain; charset="UTF-8"

Hello Jason and Chris:

I understand your frustration. We are working on instructions for adding
GNU Radio support to the E320, and we will provide you with a filesystem.
We should have something ready for you by the middle of next week. I can be
your point-of-contact on this issue, and feel free to contact me directly.
I will make a follow-on post as well to update the mailing list.

--Neel Pandeya



On Thu, 2 May 2019 at 08:07, Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Chris,
>
> It is a shame that the E320 doesn't seem to have complete support, but
> maybe someone from Ettus will chime in at some point (though it has already
> been over a month since you posted).  As of now, these are paperweights in
> our office and I have to switch gears to a different project with a
> different vendor until it gets updated.  I am not sure who we can even ping
> at Ettus on the embedded front in case they aren't monitoring the mailing
> list.  Do you have a contact there on the embedded side?
>
> You don't happen to have a series of steps posted somewhere that you use
> to try to get the E320 to a usable state do you?
>
>
>
> ------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of
> Chris Gobbett via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Wednesday, May 1, 2019 9:21 PM
> *To:* Ettus Mail List
> *Subject:* Re: [USRP-users] E320 numpy missing?
>
> I've had similar problems since this post in March, and still waiting on a
> 'clean' way forward
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-March/059332.html
>
> In the interim I've done lots of cross-compiling and also stealing
> libraries/binaries from working E310 images; many of the included binaries
> seem gimped or a step down from what was on the E310.
>
> ----- Original Message -----
> From:
> "Jason Matusiak" <jason@gardettoengineering.com>
>
> To:
> "Philip Balister" <philip@balister.org>, "Ettus Mail List" <
> usrp-users@lists.ettus.com>
> Cc:
>
> Sent:
> Wed, 1 May 2019 14:40:16 +0000
> Subject:
> Re: [USRP-users] E320 numpy missing?
>
>
> I just double-checked and ENABLE_PYTHON is on in my system (which was
> apparently the default since I didn't spell it out in my cmake command).
>
> ------------------------------
> *From:* Jason Matusiak
> *Sent:* Wednesday, May 1, 2019 10:36 AM
> *To:* Philip Balister; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 numpy missing?
>
> I actually was using a .sh file from earlier in April, but pulling down
> the most recent: e3xx_e320_sdk_default-v3.13.0.2-20190415.zip, I still
> don't see pretty much any site-packages in the sysroot.
>
> Those things seem to be there automatically when using the .sh info with
> the e310 files.
>
> I will try including python in the cmake path (which I've never needed to
> do before), but is that going to be enough?  I feel like the back-and-forth
> you and I had last year with the rocko build for the E310 were for pretty
> similar issues.  But honestly, I need to look back at the emails for the
> exact issues at the time.
>
> ------------------------------
> *From:* Philip Balister <philip@balister.org>
> *Sent:* Wednesday, May 1, 2019 10:31 AM
> *To:* Jason Matusiak; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 numpy missing?
>
> On 05/01/2019 09:55 AM, Jason Matusiak via USRP-users wrote:
> > I also get a "ImportError: No module named sip" when I try to run:
> uhd_siggen_gui
> >
> > So I think a few things might be missing from the cross-compile setup.
>
> I took a few minutes and looked at the current state of the BSP. It
> looks like you might have this image:
>
>
> https://github.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/recipes-core/images/developer-image.bb
>
> I forget where numpy is the gnuradio dependency tree, but I'm going to
> guess if you enable python support in gnuradio (yes it might be possible
> to use gnuradio without python) you will need numpy to build/run.
>
> Philip
>
> >
> > ________________________________
> > From: Jason Matusiak
> > Sent: Wednesday, May 1, 2019 8:46 AM
> > To: Ettus Mail List
> > Subject: E320 numpy missing?
> >
> > Finally got my E320 in and I cross-compiled a new setup.  I tried to
> fire up my flowgraph (which works fine on an E310) and it is complaining
> about numpy missing.
> >
> > If I do a search from / on the E320, the only numpy that is showing up
> is:
> > /usr/include/boost/python/numpy
> >
> > If I do a search from a good E310 in / I see:
> > ./usr/lib/python2.7/site-packages/numpy
> > ./usr/lib/python2.7/site-packages/numpy/core/include/numpy
> > ./usr/lib/python2.7/site-packages/Cython/Includes/numpy
> > ./usr/include/boost/python/numpy
> >
> >
> > Back on the host machine, my E320 cross-compile prefix shows numpy:
> >
> ./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy
> >
> > My good E310 prefix shows:
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/numpy
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1.13.1-r0/numpy-1.13.1/numpy/core/include/numpy
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/Cython/Includes/numpy
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/numpy
> >
> ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packages/numpy/core/include/numpy
> > ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/numpy
> >
> > So, was numpy forgotten?  Left out for a reason?  I am going to attempt
> to build it by hand, but I have a fear that I am going to go down
> dependency hell with this and other missing packages that GR might want.
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006cb3970588091237
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Jason and Chris:</div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif">I understand your frustration. We =
are working on instructions for adding GNU Radio support to the E320, and w=
e will provide you with a filesystem. We should have something ready for yo=
u by the middle of next week. I can be your point-of-contact on this issue,=
 and feel free to contact me directly. I will make a follow-on post as well=
 to update the mailing list.<br></div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif">--Neel Pandeya</div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, 2 May 2019 at 08:07, Jason Matusiak via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Chris,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
It is a shame that the E320 doesn&#39;t seem to have complete support, but =
maybe someone from Ettus will chime in at some point (though it has already=
 been over a month since you posted).=C2=A0 As of now, these are paperweigh=
ts in our office and I have to switch gears
 to a different project with a different vendor until it gets updated.=C2=
=A0 I am not sure who we can even ping at Ettus on the embedded front in ca=
se they aren&#39;t monitoring the mailing list.=C2=A0 Do you have a contact=
 there on the embedded side?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
You don&#39;t happen to have a series of steps posted somewhere that you us=
e to try to get the E320 to a usable state do you?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"gmail-m_7291063076868061659Signature">
<div>
<div id=3D"gmail-m_7291063076868061659appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_7291063076868061659divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com" =
target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of C=
hris Gobbett via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 9:21 PM<br>
<b>To:</b> Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>=C2=A0</div>
</div>
<div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-s=
erif;font-size:12px">
I&#39;ve had similar problems since this post in March, and still waiting o=
n a &#39;clean&#39; way forward
<div><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com=
/2019-March/059332.html" target=3D"_blank">http://lists.ettus.com/pipermail=
/usrp-users_lists.ettus.com/2019-March/059332.html</a></div>
<div><br>
</div>
<div>In the interim I&#39;ve done lots of cross-compiling and also stealing=
 libraries/binaries from working E310 images; many of the included binaries=
 seem gimped or a step down from what was on the E310.<br>
</div>
<div><br>
</div>
<blockquote>----- Original Message -----<br>
<div style=3D"width:100%;background:rgb(228,228,228) none repeat scroll 0% =
0%">
<div style=3D"font-weight:bold">From:</div>
&quot;Jason Matusiak&quot; &lt;<a href=3D"mailto:jason@gardettoengineering.=
com" target=3D"_blank">jason@gardettoengineering.com</a>&gt;</div>
<br>
<div style=3D"font-weight:bold">To:</div>
&quot;Philip Balister&quot; &lt;<a href=3D"mailto:philip@balister.org" targ=
et=3D"_blank">philip@balister.org</a>&gt;, &quot;Ettus Mail List&quot; &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt;<br>
<div style=3D"font-weight:bold">Cc:</div>
<br>
<div style=3D"font-weight:bold">Sent:</div>
Wed, 1 May 2019 14:40:16 +0000<br>
<div style=3D"font-weight:bold">Subject:</div>
Re: [USRP-users] E320 numpy missing?<br>
<br>
<br>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I just double-checked and ENABLE_PYTHON is on in my system (which was appar=
ently the default since I didn&#39;t spell it out in my cmake command).</di=
v>
<div>
<div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Jason Matusiak<br>
<b>Sent:</b> Wednesday, May 1, 2019 10:36 AM<br>
<b>To:</b> Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>=C2=A0</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I actually was using a .sh file from earlier in April, but pulling down the=
 most recent:=C2=A0e3xx_e320_sdk_default-v3.13.0.2-20190415.zip, I still do=
n&#39;t see pretty much any site-packages in the sysroot.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Those things seem to be there automatically when using the .sh info with th=
e e310 files.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I will try including python in the cmake path (which I&#39;ve never needed =
to do before), but is that going to be enough?=C2=A0 I feel like the back-a=
nd-forth you and I had last year with the rocko build for the E310 were for=
 pretty similar issues.=C2=A0 But honestly, I
 need to look back at the emails for the exact issues at the time.</div>
<div>
<div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif=
" color=3D"#000000"><b>From:</b> Philip Balister &lt;<a href=3D"mailto:phil=
ip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;<br>
<b>Sent:</b> Wednesday, May 1, 2019 10:31 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 numpy missing?</font>
<div>=C2=A0</div>
</div>
<div class=3D"gmail-m_7291063076868061659x_x_BodyFragment"><font size=3D"2"=
><span style=3D"font-size:11pt"></span></font>
<div class=3D"gmail-m_7291063076868061659x_x_PlainText">On 05/01/2019 09:55=
 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; I also get a &quot;ImportError: No module named sip&quot; when I try t=
o run: uhd_siggen_gui<br>
&gt; <br>
&gt; So I think a few things might be missing from the cross-compile setup.=
<br>
<br>
I took a few minutes and looked at the current state of the BSP. It<br>
looks like you might have this image:<br>
<br>
<a href=3D"https://github.com/EttusResearch/meta-ettus/blob/master/meta-ett=
us-core/recipes-core/images/developer-image.bb" target=3D"_blank">https://g=
ithub.com/EttusResearch/meta-ettus/blob/master/meta-ettus-core/recipes-core=
/images/developer-image.bb</a><br>
<br>
I forget where numpy is the gnuradio dependency tree, but I&#39;m going to<=
br>
guess if you enable python support in gnuradio (yes it might be possible<br=
>
to use gnuradio without python) you will need numpy to build/run.<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Jason Matusiak<br>
&gt; Sent: Wednesday, May 1, 2019 8:46 AM<br>
&gt; To: Ettus Mail List<br>
&gt; Subject: E320 numpy missing?<br>
&gt; <br>
&gt; Finally got my E320 in and I cross-compiled a new setup.=C2=A0 I tried=
 to fire up my flowgraph (which works fine on an E310) and it is complainin=
g about numpy missing.<br>
&gt; <br>
&gt; If I do a search from / on the E320, the only numpy that is showing up=
 is:<br>
&gt; /usr/include/boost/python/numpy<br>
&gt; <br>
&gt; If I do a search from a good E310 in / I see:<br>
&gt; ./usr/lib/python2.7/site-packages/numpy<br>
&gt; ./usr/lib/python2.7/site-packages/numpy/core/include/numpy<br>
&gt; ./usr/lib/python2.7/site-packages/Cython/Includes/numpy<br>
&gt; ./usr/include/boost/python/numpy<br>
&gt; <br>
&gt; <br>
&gt; Back on the host machine, my E320 cross-compile prefix shows numpy:<br=
>
&gt; ./sysroots/cortexa9hf-neon-oe-linux-gnueabi/usr/include/boost/python/n=
umpy<br>
&gt; <br>
&gt; My good E310 prefix shows:<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/build/src.linux-x86_64-2.7/numpy/core/include/numpy<b=
r>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/src/debug/python-numpy/1=
.13.1-r0/numpy-1.13.1/numpy/core/include/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/Cython/Includes/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/lib/python2.7/site-packa=
ges/numpy/core/include/numpy<br>
&gt; ./sysroots/armv7ahf-neon-oe-linux-gnueabi/usr/include/boost/python/num=
py<br>
&gt; <br>
&gt; So, was numpy forgotten?=C2=A0 Left out for a reason?=C2=A0 I am going=
 to attempt to build it by hand, but I have a fear that I am going to go do=
wn dependency hell with this and other missing packages that GR might want.=
<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a><br>
&gt; <br>
</div>
</div>
</div>
</div>
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

--0000000000006cb3970588091237--


--===============4682791002338140664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4682791002338140664==--

