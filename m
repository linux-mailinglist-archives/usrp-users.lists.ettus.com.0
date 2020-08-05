Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF4123CB04
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 15:34:05 +0200 (CEST)
Received: from [::1] (port=40510 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3JYP-0004YK-SK; Wed, 05 Aug 2020 09:34:01 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:45129)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1k3JYL-0004QN-Jp
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 09:33:57 -0400
Received: by mail-ot1-f53.google.com with SMTP id c4so7792369otf.12
 for <usrp-users@lists.ettus.com>; Wed, 05 Aug 2020 06:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u0sgc9Hh8RvaKE8ZGLrmclFyMID4p4HmKkINBt/QM40=;
 b=Yr4qkO0Kx7Q2ld5S6XBj53iTJHMYlfr3loxZHIlT5EbvzlZqzoneAnIJPfM0nnI1z3
 Z7yzA2IMD3bKw2PXTSgRMjAOlWmp/JNxYl+alamyRS2QHXRVJIn3k1IOG/CXHb2lFHGZ
 oeI3Z8BLrLpE2qhIBXe97EesepWuMNQvs05uVbxQwKs+U7bwEh8zsQhrN4CAIe2+WRgm
 umMRgQmhIcyurs7w7XnG21Bo3Kopb+XvbYtT/w+Rn3tdpYQJlgS976F5LbB/yK9S1Edt
 7noz/u95oLhlgCPNC8hQp1IURsCaz5hA+oIcBjoweb1taObz+YigDX69NSNYcbrkPM98
 U3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u0sgc9Hh8RvaKE8ZGLrmclFyMID4p4HmKkINBt/QM40=;
 b=hBun1HxxxqzajL29Lyge6BPSxJW3PRg9v9c5YZs6g9CH3o22kKKjtp5uLI94dO74sO
 ifi7Xxfclirlv/NQZuI6tYeVXjrlankmwPTYHiBxh8vI62eoxLWb7Ecueu0cJhBSmhQ0
 gy1O9DR3SjUow1R3+ExHecFZcjQM/ans9j9FArn5aVRCltJq4lTn659sWtv3cVpGXkHn
 S76zNbLalDWiXTQZvNVukZE+cbOKmHNnrGdzGxoPYpEEIKVw7NYLC+SDFOHKjXddIV5I
 5bfMs+F+xr8KQTfViFORPWlpjZ+bS6tQJve+A5Qa0E/JxJZFwJ5RwbskcKtfeMVyMBEh
 jaSg==
X-Gm-Message-State: AOAM53165hvzGq+YGFJUjydkmjWC1JU7wwuPKOGQl3FtV/dQXxJyKnaF
 VGE/I3QrhLBiNXON0+y+13c09hziM+OFLUCuVAMg4pO8DcG2AQ==
X-Google-Smtp-Source: ABdhPJyEjc77IYqTJ/P71UhVbW8lnuPBzWXGTusk85q/16S0mmlhcyN/nQpZCfreqhXUOu9EGpqCUF0aCqQx7oq0Ru8=
X-Received: by 2002:a05:6830:1e91:: with SMTP id
 n17mr2728000otr.172.1596634396744; 
 Wed, 05 Aug 2020 06:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB2588409C6077BABC4BF92A9D904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <CACaXmv8yKe-Zr8xYvRb5_U4-rtNvMMd9u0TrL15u5+t7Ojd95w@mail.gmail.com>
 <MA1PR01MB25885E1FF1757CDC836DF65B904B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <CAGNhwTMofwik903qN9QTEQXRiXjYfO+wvOBgSpk0X+CMZT1tng@mail.gmail.com>
 <CAGNhwTPihDDiCZhY=JfgPj604+9xZ6iUtwM-taSt1nRU0ZtUqQ@mail.gmail.com>
In-Reply-To: <CAGNhwTPihDDiCZhY=JfgPj604+9xZ6iUtwM-taSt1nRU0ZtUqQ@mail.gmail.com>
Date: Wed, 5 Aug 2020 08:32:40 -0500
Message-ID: <CACaXmv_9W-+-3OhEfoU32wq=N0A2wiv9kf2hfYcW96vhXiZShw@mail.gmail.com>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using PCIe
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============6729957987923951707=="
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

--===============6729957987923951707==
Content-Type: multipart/alternative; boundary="0000000000000e15cf05ac216a57"

--0000000000000e15cf05ac216a57
Content-Type: text/plain; charset="UTF-8"

Hello Koyel:

The PCIe driver was just recently updated, and is available at [1], and
instructions are at [2].  You will need to install the repo RPM or DEB
first, using either "rpm" or "dpkg", and then run either "dnf" or "apt" to
install ni-usrp-rio.  You should be able to use RHEL/CentOS 8, Fedora 31
and 32, and Ubuntu 18.04.4 and 20.04.  Please let us know if you have any
problems.

[1]
https://www.ni.com/en-us/support/downloads/drivers/download.ni-linux-device-drivers.html#350003

[2] https://files.ettus.com/manual/page_ni_rio_kernel.html

--Neel Pandeya



On Wed, 5 Aug 2020 at 08:22, Michael Dickens <michael.dickens@ettus.com>
wrote:

> FYI there's a new PCIe driver out that supports kernel version 5; you can
> find the info here <
> https://files.ettus.com/manual/page_ni_rio_kernel.html >. - MLD
>
>
> On Wed, Aug 5, 2020 at 9:15 AM Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> The default FPGA image for the X310 (which is the Ettus USRP of your
>> 2955), supports 10 GbE on the SFP+ port 1 <
>> https://kb.ettus.com/X300/X310#Choosing_a_Host_Interface > ... so, you
>> could use just that link if your application's aggregate sample rate can
>> fit within the link capacity.
>>
>> You can, of course, just go straight to the PCIe interface if that makes
>> more sense. - MLD
>>
>>
>> On Wed, Aug 5, 2020 at 2:42 AM Koyel Das (Vehere) via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Neel,
>>>
>>> Thanks for your reply. But to use 10 Gbps NIC we need to change the FPGA
>>> image to that supports 10 Gbps communication right?
>>>
>>> Regards,
>>> Koyel
>>>
>>> Get Outlook for iOS <https://aka.ms/o0ukef>
>>> ------------------------------
>>> *From:* Neel Pandeya <neel.pandeya@ettus.com>
>>> *Sent:* Wednesday, August 5, 2020 7:48:56 AM
>>> *To:* Koyel Das (Vehere) <koyel.das@vehere.com>
>>> *Cc:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
>>> *Subject:* Re: [USRP-users] Using PCIe
>>>
>>> Hello Koyel:
>>>
>>> Yes, to use PCIe with the USRP X300/X310, you need to download and
>>> install the PCIe driver.
>>>
>>> However, if you're using UHD/C++ or GNU Radio, then I would recommend
>>> using 10 Gbps Ethernet instead.
>>>
>>> --Neel Pandeya
>>>
>>>
>>>
>>> On Tue, 4 Aug 2020 at 04:30, Koyel Das (Vehere) via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> Hi,
>>>
>>> Do we need to install driver for using PCIe with USRP 2955? If so which
>>> link to follow for all installations to be able to use PCIe.
>>>
>>> Regards,
>>> Koyel
>>>
>>> Get Outlook for iOS <https://aka.ms/o0ukef>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--0000000000000e15cf05ac216a57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hello Koyel:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">The PCIe driver was just recently updated, an=
d is available at [1], and instructions are at [2].=C2=A0 You will need to =
install the repo RPM or DEB first, using either &quot;rpm&quot; or &quot;dp=
kg&quot;, and then run either &quot;dnf&quot; or &quot;apt&quot; to install=
 ni-usrp-rio.=C2=A0 You should be able to use RHEL/CentOS 8, Fedora 31 and =
32, and Ubuntu 18.04.4 and 20.04.=C2=A0 Please let us know if you have any =
problems.<br><br>[1] <a href=3D"https://www.ni.com/en-us/support/downloads/=
drivers/download.ni-linux-device-drivers.html#350003">https://www.ni.com/en=
-us/support/downloads/drivers/download.ni-linux-device-drivers.html#350003<=
/a><br><br>[2] <a href=3D"https://files.ettus.com/manual/page_ni_rio_kernel=
.html">https://files.ettus.com/manual/page_ni_rio_kernel.html</a><br><br>--=
Neel Pandeya</div><div class=3D"gmail_default" style=3D"font-family:verdana=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, 5 Aug 2020 at 08:22, Michael Dickens =
&lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dickens@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">FYI there&#39;s a new PCIe driver out that supports kernel =
version 5; you can find the info here &lt;=C2=A0<a href=3D"https://files.et=
tus.com/manual/page_ni_rio_kernel.html" target=3D"_blank">https://files.ett=
us.com/manual/page_ni_rio_kernel.html</a>=C2=A0&gt;. - MLD<div><div><div di=
r=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
><div dir=3D"ltr"><div><div dir=3D"ltr"><br></div></div></div></div></div><=
/div></div></div></div></div></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 5, 2020 at 9:15 AM Mic=
hael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_bl=
ank">michael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">The default FPGA image for t=
he X310 (which is the Ettus USRP of your 2955), supports 10 GbE on the SFP+=
 port 1 &lt;=C2=A0<a href=3D"https://kb.ettus.com/X300/X310#Choosing_a_Host=
_Interface" target=3D"_blank">https://kb.ettus.com/X300/X310#Choosing_a_Hos=
t_Interface</a>=C2=A0&gt; ... so, you could use just that link if your appl=
ication&#39;s aggregate sample rate can fit within the link capacity.<div><=
br></div><div>You can, of course, just go straight to the PCIe interface if=
 that makes more sense. - MLD</div><div><br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 5, 2020 at 2:=
42 AM Koyel Das (Vehere) via USRP-users &lt;<a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi Neel,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your reply. But to use 10 Gbps NIC we need to c=
hange the FPGA image to that supports 10 Gbps communication right?=C2=A0</d=
iv>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_-8407278250576563441gmail-m_-1095746307343822164gmail-m_=
-5569031013917939614ms-outlook-mobile-signature">Get <a href=3D"https://aka=
.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-8407278250576563441gmail-m_-1095746307343822164gmail-m_=
-5569031013917939614divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11p=
t" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Neel Pandeya=
 &lt;<a href=3D"mailto:neel.pandeya@ettus.com" target=3D"_blank">neel.pande=
ya@ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, August 5, 2020 7:48:56 AM<br>
<b>To:</b> Koyel Das (Vehere) &lt;<a href=3D"mailto:koyel.das@vehere.com" t=
arget=3D"_blank">koyel.das@vehere.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Using PCIe</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div style=3D"font-family:verdana,sans-serif">Hello Koyel:</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif">Yes, to use PCIe with the USR=
P X300/X310, you need to download and install the PCIe driver.</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif">However, if you&#39;re using =
UHD/C++ or GNU Radio, then I would recommend using 10 Gbps Ethernet instead=
.</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif">--Neel Pandeya</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
<div style=3D"font-family:verdana,sans-serif"><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, 4 Aug 2020 at 04:30, Koyel Das (Vehere) via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Do we need to install driver for using PCIe with USRP 2955=
? If so which link to follow for all installations to be able to use PCIe.<=
/div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_-8407278250576563441gmail-m_-1095746307343822164gmail-m_=
-5569031013917939614x_gmail-m_5891566876836178092ms-outlook-mobile-signatur=
e">Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank">
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

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000000e15cf05ac216a57--


--===============6729957987923951707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6729957987923951707==--

