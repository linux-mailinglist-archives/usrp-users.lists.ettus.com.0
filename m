Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 577CB2D847D
	for <lists+usrp-users@lfdr.de>; Sat, 12 Dec 2020 05:32:13 +0100 (CET)
Received: from [::1] (port=58732 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knwZl-0000FX-Fe; Fri, 11 Dec 2020 23:32:09 -0500
Received: from mail-ed1-f52.google.com ([209.85.208.52]:43076)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ejkreinar@gmail.com>) id 1knwZh-0000Bm-1A
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 23:32:05 -0500
Received: by mail-ed1-f52.google.com with SMTP id q16so11522388edv.10
 for <usrp-users@lists.ettus.com>; Fri, 11 Dec 2020 20:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G+qzFI1wCp3X4HqETlYTBHnL2lbAw8pov1Za0UxMUf8=;
 b=UPl9r9qQIiRUd3YVmUgkX204aAoTnYb3nAbZXU0ncDYPjqu68rtWgA6OPc4Yn0p+al
 /e7qKIUN8YvzbdLqrOliU6OdyKS6Cp6yVqYhTmFBVkVhsP1J2JTB5TTeVzTfv20eXyCl
 iMSXDtViB2IM5u8i9OegmtclAQbjvfyKlgd6LfVsue1+HqIwSb7qwB9NZLJIcIidaGI1
 k7J1WKkr5R4HzU4qZXCfVWaBRJobSPl2H8KtzAUZHRoECHhDz+WmD3jx3oQQ7tUOBx26
 MFCyr62La7rRD1uws8sg0o9q/T/t+h+wJVVc1AUXsLiNgM29tg18p2BW9G+Sa7j3ZMV3
 x3HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+qzFI1wCp3X4HqETlYTBHnL2lbAw8pov1Za0UxMUf8=;
 b=kV1ezszCsWHENpBaoWYXOYURmE7BI+xAP5wbuvFeqsOCISWYlipJFcOPnolHqdOG6t
 4+6WgBoUgHPWMoCKyzphVpUAomGkWFu2drr0Ho42dDELBOARctLeFDflZydOsgcE33jr
 SJ6oMnje7/yreGivwSGcyWAklQfjgQ2yyvRTmlL3i1VDun4no8JNwCBUGNl7nzaQbHK6
 R4RAYTj/uslm/5gxMkouJ9/MtAR9yIgGfPlDObm6b7MHnoRZFShi/VnSCGw64YC9g9LJ
 fqF4xJOLXDyzuoyxpl8dNjXVWirIxaZ0cJhFz4mVFeJcRdsyF4o+aao16qs+Klm8BOVH
 f88w==
X-Gm-Message-State: AOAM533ijXlNKt7peU68ntu7OXDjjGxfihHUAZWmP3qPKXP4F3XBlkLn
 6RHEexjzqW74SI/braGgt9497Fqg8+F/KiZQ+uP/kuvpBhA=
X-Google-Smtp-Source: ABdhPJwradjFqGIgqle7vxorgtJ1bt5jopn/VN4+vge/oVE78jCVO3Dkt1tqIT0eVgbU92d3CUxG8cnMmuzI7fF89XE=
X-Received: by 2002:a50:e84d:: with SMTP id k13mr14793861edn.154.1607747483874; 
 Fri, 11 Dec 2020 20:31:23 -0800 (PST)
MIME-Version: 1.0
References: <CA+ce6i3ka5am6USYVrzeh17K-vgXBJL5iB-rYz+382JobXi0dg@mail.gmail.com>
 <10B10E99-CD7E-49AF-9FC6-F1D6620BD96F@gmail.com>
 <CA+ce6i2Qc0Y9g=U+g_6mHmmwOwXi77wbs76uKWnCHu=rcxb+bQ@mail.gmail.com>
 <5FBD637C.6080102@gmail.com>
In-Reply-To: <5FBD637C.6080102@gmail.com>
Date: Fri, 11 Dec 2020 23:31:11 -0500
Message-ID: <CADRnH20JAXzf_6kSAKXV3e52hjra+MxdDqLdRuypxwJEEij+yw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Carrier frequency jumps on E310
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3586437716951127108=="
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

--===============3586437716951127108==
Content-Type: multipart/alternative; boundary="000000000000aa381805b63ce12a"

--000000000000aa381805b63ce12a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think we may have found a batch of e310s a few years ago (circa summer
2017 iirc?) that had bad oscillators and were traced back to the TCXO
manufacturer.

I don't remember the exact symptoms off the top of my head but those
discrete frequency jumps look a little familiar

EJ


On Tue, Nov 24, 2020, 2:49 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/24/2020 02:38 PM, Luke Whittlesey wrote:
> > I'm in the process, but it's a lengthy process. There is something
> > messed up with the C API in 3.15, so it doesn't work for me as a
> > simple drop in replacement. Would it be wise to try to jump straight
> > to 4.0?
> The jump to 4.0 might be more traumatic.
>
>
> > On Tue, Nov 24, 2020 at 2:40 PM Marcus D Leech <patchvonbraun@gmail.com=
>
> wrote:
> >> R&D suggest updating to a UHD 3.15 environment first.
> >>
> >> Sent from my iPhone
> >>
> >>> On Nov 24, 2020, at 1:54 PM, Luke Whittlesey <
> luke.whittlesey@gmail.com> wrote:
> >>>
> >>> =EF=BB=BFI'm seeing this on two E310s that are a few years old. I jus=
t swapped
> >>> the sd card into a brand-new E310 and I am NOT seeing the frequency
> >>> jumps. So, same exact software, but different aged E310s. Is there
> >>> possibly a difference in hardware leading to this?
> >>>
> >>>> On Tue, Nov 24, 2020 at 1:04 PM Luke Whittlesey
> >>>> <luke.whittlesey@gmail.com> wrote:
> >>>>
> >>>> I would say they are proportional to frequency. Attached is what it
> >>>> looks like at 5GHz. There are jumps of 400Hz and 220Hz.
> >>>>
> >>>>> On Tue, Nov 24, 2020 at 11:50 AM Marcus D Leech <
> patchvonbraun@gmail.com> wrote:
> >>>>>
> >>>>> Try at lower and higher frequencies=E2=80=94are the jumps the same =
or
> proportional to frequency?
> >>>>>
> >>>>> Sent from my iPhone
> >>>>>
> >>>>>> On Nov 24, 2020, at 11:27 AM, Luke Whittlesey via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >>>>>>
> >>>>>> =EF=BB=BFOn the E310 I'm seeing discrete jumps in the carrier. The=
 carrier
> will
> >>>>>> intermittently jump around in steps of about 50Hz. Sometimes it wi=
ll
> >>>>>> jump by about 200Hz. I've attached a waterfall display, but I don'=
t
> >>>>>> know if attachments will make it through.
> >>>>>>
> >>>>>> My setup is:
> >>>>>> E310 SG3
> >>>>>> UHD3.11 using the C-api
> >>>>>> Timing Reference is "internal"
> >>>>>> Center Frequency 1GHz
> >>>>>> I/Q signal is a stream of 1,0... for a CW at the carrier
> >>>>>>
> >>>>>> I can see the same thing when I set the timesource to "gpsdo", but=
 I
> >>>>>> wouldn't expect it when I set it to "internal". My gut says that
> this
> >>>>>> is being caused by some timesource correction loop. If this is the
> >>>>>> case is there a way to disable this?
> >>>>>>
> >>>>>> Thank you
> >>>>>> <e310-lo-frequency-shifts2.png>
> >>>>>> _______________________________________________
> >>>>>> USRP-users mailing list
> >>>>>> USRP-users@lists.ettus.com
> >>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000aa381805b63ce12a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I think we may have found a batch of e310s a few years ag=
o (circa summer 2017 iirc?) that had bad oscillators and were traced back t=
o the TCXO manufacturer.<div dir=3D"auto"><br></div><div dir=3D"auto">I don=
&#39;t remember the exact symptoms off the top of my head but those discret=
e frequency jumps look a little familiar</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">EJ<br><div dir=3D"auto"><br></div></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 24, 20=
20, 2:49 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 11/24/2020=
 02:38 PM, Luke Whittlesey wrote:<br>
&gt; I&#39;m in the process, but it&#39;s a lengthy process. There is somet=
hing<br>
&gt; messed up with the C API in 3.15, so it doesn&#39;t work for me as a<b=
r>
&gt; simple drop in replacement. Would it be wise to try to jump straight<b=
r>
&gt; to 4.0?<br>
The jump to 4.0 might be more traumatic.<br>
<br>
<br>
&gt; On Tue, Nov 24, 2020 at 2:40 PM Marcus D Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br>
&gt;&gt; R&amp;D suggest updating to a UHD 3.15 environment first.<br>
&gt;&gt;<br>
&gt;&gt; Sent from my iPhone<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Nov 24, 2020, at 1:54 PM, Luke Whittlesey &lt;<a href=3D"ma=
ilto:luke.whittlesey@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">luke.whittlesey@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =EF=BB=BFI&#39;m seeing this on two E310s that are a few years=
 old. I just swapped<br>
&gt;&gt;&gt; the sd card into a brand-new E310 and I am NOT seeing the freq=
uency<br>
&gt;&gt;&gt; jumps. So, same exact software, but different aged E310s. Is t=
here<br>
&gt;&gt;&gt; possibly a difference in hardware leading to this?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Tue, Nov 24, 2020 at 1:04 PM Luke Whittlesey<br>
&gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:luke.whittlesey@gmail.com" rel=3D"no=
referrer noreferrer" target=3D"_blank">luke.whittlesey@gmail.com</a>&gt; wr=
ote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I would say they are proportional to frequency. Attached i=
s what it<br>
&gt;&gt;&gt;&gt; looks like at 5GHz. There are jumps of 400Hz and 220Hz.<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Tue, Nov 24, 2020 at 11:50 AM Marcus D Leech &lt;<a=
 href=3D"mailto:patchvonbraun@gmail.com" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Try at lower and higher frequencies=E2=80=94are the ju=
mps the same or proportional to frequency?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On Nov 24, 2020, at 11:27 AM, Luke Whittlesey via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"norefer=
rer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; =EF=BB=BFOn the E310 I&#39;m seeing discrete jumps=
 in the carrier. The carrier will<br>
&gt;&gt;&gt;&gt;&gt;&gt; intermittently jump around in steps of about 50Hz.=
 Sometimes it will<br>
&gt;&gt;&gt;&gt;&gt;&gt; jump by about 200Hz. I&#39;ve attached a waterfall=
 display, but I don&#39;t<br>
&gt;&gt;&gt;&gt;&gt;&gt; know if attachments will make it through.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; My setup is:<br>
&gt;&gt;&gt;&gt;&gt;&gt; E310 SG3<br>
&gt;&gt;&gt;&gt;&gt;&gt; UHD3.11 using the C-api<br>
&gt;&gt;&gt;&gt;&gt;&gt; Timing Reference is &quot;internal&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Center Frequency 1GHz<br>
&gt;&gt;&gt;&gt;&gt;&gt; I/Q signal is a stream of 1,0... for a CW at the c=
arrier<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; I can see the same thing when I set the timesource=
 to &quot;gpsdo&quot;, but I<br>
&gt;&gt;&gt;&gt;&gt;&gt; wouldn&#39;t expect it when I set it to &quot;inte=
rnal&quot;. My gut says that this<br>
&gt;&gt;&gt;&gt;&gt;&gt; is being caused by some timesource correction loop=
. If this is the<br>
&gt;&gt;&gt;&gt;&gt;&gt; case is there a way to disable this?<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Thank you<br>
&gt;&gt;&gt;&gt;&gt;&gt; &lt;e310-lo-frequency-shifts2.png&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; _______________________________________________<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a>=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo=
/usrp-users_lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer" targe=
t=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000aa381805b63ce12a--


--===============3586437716951127108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3586437716951127108==--

