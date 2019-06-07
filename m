Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8642B39245
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 18:37:42 +0200 (CEST)
Received: from [::1] (port=59744 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHs5-0005H1-9o; Fri, 07 Jun 2019 12:37:41 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:34462)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hZHs1-00058m-1m
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 12:37:37 -0400
Received: by mail-ot1-f43.google.com with SMTP id z24so2441208oto.1
 for <usrp-users@lists.ettus.com>; Fri, 07 Jun 2019 09:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y0tckPkkohIgZX14LQHGaIv2TyW8Ogy5vWCu7mhQ/a8=;
 b=ZmNVmGh0Vo5ti7l7PuA6RekP3NwXk358jWpQfCOQf2D6u3B8XE2XCjNW3wOSCtXha4
 aLu9D8A0LzoDKGJERTnxILuQWmgqGekz0yIu8tk1MS1IP8Sz57YzrR2mkzppgZbd2HMl
 j1PrFsiCqYK+4+XYeb1olNs3WuqcApPQ3s+rn418VHcZhi7p+J5NrdPVzSXHfrPOM1TG
 FYX6sW1hIEqMnl8Ud9qLDjCBBdxXPH1dub5YsgN9FvpckaDr82dW9tpCCCBOj8qh3OV7
 8/lyRjaH+guLKLRV1+9soCwwEEB7CImcVLMi4/fv+b8gMMeccxRIKcNzZ4Gfm7158EKI
 ERUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y0tckPkkohIgZX14LQHGaIv2TyW8Ogy5vWCu7mhQ/a8=;
 b=oaBrVmOMJl2w9fTMGylHkPSPUOL4Y7QWNXSlZ1sQPswtHzJBewt7Xq45uqutMAT411
 VraWAFOrnPS0+LiKV8QecDSwGIm7JBI8lGmgTgnN5ZYTV7pGrlqhtAzAwGE3J+yrFoE0
 Ni/C9C8NSj9zpJ9yEEotV/NP5pTwLcnO9qkiI5ZwTke1g8gKZa0vp5qnS2zqV+kKJYxG
 lC8NONRI5RPl9ATV0fGTuARbkyC/ulDMqnKobPG7cbeMMu5ijpbXvTuko/AKlP3rUtqs
 J5vJhYvTJXPHHSMjGSgVeC5G/IXHjyMLi28NQJ7ifaGsQvKIHy3T9b5jskqXr1ggEo8l
 BMtw==
X-Gm-Message-State: APjAAAXxCx1l1nMkkeAv6+7lA14QFpA90FIQkaz+ALzjfRqP5ezKsdBW
 6tRswsV/s6CX/MdHNoyO8g1f5QYR9BBVrtGNbRzsJZNH
X-Google-Smtp-Source: APXvYqzW3DFP7hhWkB91BetYwuJ26JVwacwO9G/iSYjv5/6gL3xuQacyHvpWXxde0/F4hR+wac5IGTDD68rZRwj8/jE=
X-Received: by 2002:a9d:6015:: with SMTP id h21mr8594252otj.32.1559925416392; 
 Fri, 07 Jun 2019 09:36:56 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
 <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23402BF8B67C85AB9ED6F7FBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Fri, 7 Jun 2019 09:37:50 -0700
Message-ID: <CAL263izHx4dMkm8Ho2Dn9MQ8Rk7qW+gT3oL3vrAGvL2WaAUBNw@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] E320 hogging the network
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
Cc: Philip Balister <philip@balister.org>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9063964240360899224=="
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

--===============9063964240360899224==
Content-Type: multipart/alternative; boundary="000000000000520e84058abe7061"

--000000000000520e84058abe7061
Content-Type: text/plain; charset="UTF-8"

Hi Jason,

For what its worth, I haven't personally ran this exact combo (E310 w/ UHD
3.11 and E320 w/ 3.14) on the same subnet, but I have ran two N320's on the
same subnet (192.168.10.2 and 192.168.10.3, both with 3.14). I did run into
the issue where probing in embedded mode would pickup the other device
first, but when providing a localhost addr, it worked as expected. I could
use both devices from a common host in network mode.

Trying the E320/E310 on different subnets would be worth a try.

I'll open an internal issue on our bug tracker for this, there is likely
improvements we can make to the device discovery.


Regards,
Nate Temple

On Fri, Jun 7, 2019 at 9:22 AM Jason Matusiak <jason@gardettoengineering.com>
wrote:

> Howdy.
>
>
> Nope, but it fails in a weird way.  I disconnected the E320 to make sure
> this issue wasn't due to it, but it still acts the same.
>
>
> If I run: uhd_usrp_probe --args "addr=127.0.0.1"
>
> *root@ettus-e3xx-sg3:~# uhd_usrp_probe --args "addr=127.0.0.1" *
> *[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400;
> UHD_3.11.0.1-0-unknown*
> *Error: i2c_zc_impl recv timeout*
>
>
> Reading up on the USRP2, they specifically say that you need to be on
> different subnets if you are using more than on device.  I wonder if this
> is the case here too?
> https://files.ettus.com/manual/page_usrp2.html#usrp2_network_multidev
>
>
> ------------------------------
> *From:* Nate Temple <nate.temple@ettus.com>
> *Sent:* Friday, June 7, 2019 12:17 PM
> *To:* Jason Matusiak
> *Cc:* Marcus D Leech; Philip Balister; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 hogging the network
>
> Hi Jason,
>
> On the E310, if you pass the device arg addr with 127.0.0.1 does it work
> as expected?
>
> uhd_usrp_probe --args "addr=127.0.0.1"
>
>
> Regards,
> Nate Temple
>
> On Fri, Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Darn, I was hoping that was it, but I don't think so.
>
>
> Here is the result from my E310:
>
> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:44:46
>
> and now the E320:
>
> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:C2:FB
>
> If I ping each device on my host, then run arp, I see this (the mac
> addresses match up correctly):
>
> Address                  HWtype  HWaddress           Flags Mask
> Iface
> 192.168.10.45            ether   00:80:2f:24:c2:fb   C
>  p4p1
> 192.168.10.95            ether   00:80:2f:25:44:46   C
>  p4p1
>
> I figured that that would be fine though because I have the same issue
> when I am running commands ON my E310.  And if it was a routing issue, it
> would mean that both my machine and the E310 and the E320 were being
> screwed up.
>
>
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, June 7, 2019 12:01 PM
> *To:* Jason Matusiak
> *Cc:* Philip Balister; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 hogging the network
>
> Check the MAC addresses.
>
> I know that on some ARM platforms that has to be programmed in at boot and
> perhaps these system images have it set to the same value.
>
> Sent from my iPhone
>
> On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Philip,
>
>
> They have unique addresses (10.95 and 10.45).  It is really weird that
> when I am on the E310, and set the ip-addr to himself, that he would even
> look off the device....
>
>
> They both have hostnames and they are not similar to each other at all.
>
>
>
> ------------------------------
> *From:* Philip Balister <philip@balister.org>
> *Sent:* Friday, June 7, 2019 11:10 AM
> *To:* Jason Matusiak; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 hogging the network
>
> Check each ones ip address, likely by running ifconfig. In the back of
> my mind, I recall something like this in the E100 days. Do they have the
> same hostname?
>
> Philip
>
> On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:
> > It looks like I am misunderstanding something with how the E320 handles
> the network.
> >
> >
> > I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of
> the default 10.2).  I can ssh into it and things seem to run fine in
> embedded mode.
> >
> >
> > Now, if I ssh onto an E312 that is on the same network (IP 10.95), it
> doesn't work right as long as the E320 is plugged in.  When I do a probe or
> run any other UHD-type commands on the E310, it seems to always talk to the
> E320 first and it screws everything up.  It doesn't matter if I put the
> E310's address into the command or not, the E320 responds.  I also remember
> seeing this occur when I was on my host machine running commands (the E320
> bullied its way into being the main attraction).
> >
> >
> > My current work-around is to unplug Ethernet from the E320, run my
> command on the E310, plug back into the E320, then run its command.  This
> seems to allow things to work as I intended, but is obviously not ideal and
> is fairly difficult to do when devices are remote.
> >
> >
> > So what am I missing here?
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> USRP-users Info Page - Ettus
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
> lists.ettus.com
> To see the collection of prior postings to the list, visit the USRP-users
> Archives.. Using USRP-users: To post a message to all the list members,
> send email to usrp-users@lists.ettus.com. You can subscribe to the list,
> or change your existing subscription, in the sections below.
>
>
> >
>
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
>

--000000000000520e84058abe7061
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jason,<br><br>For what its worth, I haven&#39;t pers=
onally ran this exact combo (E310 w/ UHD 3.11 and E320 w/ 3.14) on the same=
 subnet, but I have ran two N320&#39;s on the same subnet (192.168.10.2 and=
 192.168.10.3, both with 3.14). I did run into the issue where probing in e=
mbedded mode would pickup the other device first, but when providing a loca=
lhost addr, it worked as expected. I could use both devices from a common h=
ost in network mode.<br><br>Trying the E320/E310 on different subnets would=
 be worth a try. <br><br>I&#39;ll open an internal issue on our bug tracker=
 for this, there is likely improvements we can make to the device discovery=
. <br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 7, 2019 at 9:22 AM J=
ason Matusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@ga=
rdettoengineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-4609324326238377015divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p style=3D"margin-top:0px;margin-bottom:0px">Howdy.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Nope, but it fails in a weird=
 way.=C2=A0 I disconnected the E320 to make sure this issue wasn&#39;t due =
to it, but it still acts the same.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">If I run:=C2=A0<span>uhd_usrp=
_probe --args &quot;addr=3D127.0.0.1&quot;=C2=A0</span></p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span></span></p>
<div><b>root@ettus-e3xx-sg3:~# uhd_usrp_probe --args &quot;addr=3D127.0.0.1=
&quot;=C2=A0</b></div>
<div><b>[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106400; UHD_3.11.0=
.1-0-unknown</b></div>
<div><b>Error: i2c_zc_impl recv timeout</b></div>
<div><br>
</div>
<br>

<p></p>
Reading up on the USRP2, they specifically say that you need to be on diffe=
rent subnets if you are using more than on device.=C2=A0 I wonder if this i=
s the case here too?
<div><a href=3D"https://files.ettus.com/manual/page_usrp2.html#usrp2_networ=
k_multidev" class=3D"gmail-m_-4609324326238377015OWAAutoLink" id=3D"gmail-m=
_-4609324326238377015LPlnk533634" target=3D"_blank">https://files.ettus.com=
/manual/page_usrp2.html#usrp2_network_multidev</a><br>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4609324326238377015divRplyFwdMsg" dir=3D"ltr"><font sty=
le=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fro=
m:</b> Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_=
blank">nate.temple@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:17 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Marcus D Leech; Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail-m_-4609324326238377015x_gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif">Hi Jason,<br>
<br>
On the E310, if you pass the device arg addr with 127.0.0.1 does it work as=
 expected?<br>
<br>
uhd_usrp_probe --args &quot;addr=3D127.0.0.1&quot; <br>
<br>
<br>
Regards,<br>
Nate Temple</div>
</div>
<br>
<div class=3D"gmail-m_-4609324326238377015x_gmail_quote">
<div dir=3D"ltr" class=3D"gmail-m_-4609324326238377015x_gmail_attr">On Fri,=
 Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" id=3D"gmail-m_-4609324326238377015LPlnk431857"=
 class=3D"gmail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail-m_-4609324326238377015x_gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494divtagd=
efaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-fa=
mily:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px">Darn, I was hoping that was i=
t, but I don&#39;t think so.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Here is the result from my E3=
10:</p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>eth0=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:25:=
44:46=C2=A0=C2=A0</div>
<div><br>
</div>
and now the E320:
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>sfp0=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:24:=
C2:FB=C2=A0=C2=A0</div>
<div><br>
</div>
If I ping each device on my host, then run arp, I see this (the mac address=
es match up correctly):
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>Address=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
HWtype=C2=A0 HWaddress=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Flags Mask=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Iface</div>
<div><span style=3D"font-size:12pt">192.168.10.45=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ether=C2=A0 =C2=A000:80:2f:24:c2:fb=C2=A0 =C2=A0C=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p4p1</=
span><br>
</div>
<div>192.168.10.95=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether=C2=A0 =C2=
=A000:80:2f:25:44:46=C2=A0 =C2=A0C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p4p1</div>
<div><br>
</div>
I figured that that would be fine though because I have the same issue when=
 I am running commands ON my E310.=C2=A0 And if it was a routing issue, it =
would mean that both my machine and the E310 and the E320 were being screwe=
d up.
<p></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494divRply=
FwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-se=
rif" color=3D"#000000"><b>From:</b> Marcus D Leech &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" id=3D"gmail-m_-4609324326238377015LPlnk198700" class=
=3D"gmail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">patchvonbrau=
n@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:01 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto">Check the MAC addresses.=C2=A0
<div><br>
</div>
<div>I know that on some ARM platforms that has to be programmed in at boot=
 and perhaps these system images have it set to the same value.=C2=A0<br>
<br>
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_Apple=
MailSignature" dir=3D"ltr">Sent from my iPhone</div>
<div dir=3D"ltr"><br>
On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" id=3D"gmail-m_-4609324326238377015LPlnk21=
9607" class=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494OWA=
AutoLink gmail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_divta=
gdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt;color:rgb(0,0,0);font-=
family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px">Philip,</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">They have unique addresses (1=
0.95 and 10.45).=C2=A0 It is really weird that when I am on the E310, and s=
et the ip-addr to himself, that he would even look off the device....</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">They both have hostnames and =
they are not similar to each other at all.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_divRp=
lyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-=
serif" color=3D"#000000"><b>From:</b> Philip Balister &lt;<a href=3D"mailto=
:philip@balister.org" id=3D"gmail-m_-4609324326238377015LPlnk752829" class=
=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494OWAAutoLink gm=
ail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">philip@balister.or=
g</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>=C2=A0</div>
</div>
<div class=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_Bo=
dyFragment"><font size=3D"2"><span style=3D"font-size:11pt">
<div class=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_Pl=
ainText">Check each ones ip address, likely by running ifconfig. In the bac=
k of<br>
my mind, I recall something like this in the E100 days. Do they have the<br=
>
same hostname?<br>
<br>
Philip<br>
<br>
On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; It looks like I am misunderstanding something with how the E320 handle=
s the network.<br>
&gt; <br>
&gt; <br>
&gt; I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead o=
f the default 10.2).=C2=A0 I can ssh into it and things seem to run fine in=
 embedded mode.<br>
&gt; <br>
&gt; <br>
&gt; Now, if I ssh onto an E312 that is on the same network (IP 10.95), it =
doesn&#39;t work right as long as the E320 is plugged in.=C2=A0 When I do a=
 probe or run any other UHD-type commands on the E310, it seems to always t=
alk to the E320 first and it screws everything
 up.=C2=A0 It doesn&#39;t matter if I put the E310&#39;s address into the c=
ommand or not, the E320 responds.=C2=A0 I also remember seeing this occur w=
hen I was on my host machine running commands (the E320 bullied its way int=
o being the main attraction).<br>
&gt; <br>
&gt; <br>
&gt; My current work-around is to unplug Ethernet from the E320, run my com=
mand on the E310, plug back into the E320, then run its command.=C2=A0 This=
 seems to allow things to work as I intended, but is obviously not ideal an=
d is fairly difficult to do when devices
 are remote.<br>
&gt; <br>
&gt; <br>
&gt; So what am I missing here?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"gmail-m_-460932432=
6238377015LPlnk972190" class=3D"gmail-m_-4609324326238377015x_gmail-m_-7171=
18252188596494OWAAutoLink gmail-m_-4609324326238377015OWAAutoLink" target=
=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" id=3D"gmail-m_-4609324326238377015LPlnk63911" class=3D"gmail-m_-46=
09324326238377015x_gmail-m_-717118252188596494x_OWAAutoLink gmail-m_-460932=
4326238377015OWAAutoLink" target=3D"_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPBorde=
r_GT_15599226502150.13089060943563968" style=3D"margin-bottom:20px;overflow=
:auto;width:100%;text-indent:0px">
<table id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPCon=
tainer_15599226502120.04792581257573203" style=3D"width:90%;background-colo=
r:rgb(255,255,255);overflow:auto;padding-top:20px;padding-bottom:20px;margi=
n-top:20px;border-top:1px dotted rgb(200,200,200);border-bottom:1px dotted =
rgb(200,200,200)" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494x_TextCe=
ll_15599226502130.8981442849088146" colspan=3D"2" style=3D"vertical-align:t=
op;padding:0px;display:table-cell">
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPRemov=
ePreviewContainer_15599226502130.8567687510464137">
</div>
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPTitle=
_15599226502130.9834956850385919" style=3D"color:rgb(47,144,196);font-weigh=
t:400;font-size:21px;font-family:wf_segoe-ui_light,&quot;Segoe UI Light&quo=
t;,&quot;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tah=
oma,Arial,sans-serif;line-height:21px">
<a id=3D"gmail-m_-4609324326238377015LPlnk470346" href=3D"http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com" style=3D"text-decoration=
:none" class=3D"gmail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">=
USRP-users Info Page - Ettus</a></div>
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPMetad=
ata_15599226502140.4985541427536597" style=3D"margin:10px 0px 16px;color:rg=
b(102,102,102);font-weight:400;font-family:wf_segoe-ui_normal,&quot;Segoe U=
I&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:14px;line-he=
ight:14px">
<a href=3D"http://lists.ettus.com" id=3D"gmail-m_-4609324326238377015LPlnk6=
42372" class=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494OW=
AAutoLink gmail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">lists.=
ettus.com</a></div>
<div id=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252188596494LPDescr=
iption_15599226502150.3645585643269975" style=3D"display:block;color:rgb(10=
2,102,102);font-weight:400;font-family:wf_segoe-ui_normal,&quot;Segoe UI&qu=
ot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:14px;line-height=
:20px;max-height:100px;overflow:hidden">
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to
<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"gmail-m_-46093243262383=
77015LPlnk531886" class=3D"gmail-m_-4609324326238377015x_gmail-m_-717118252=
188596494OWAAutoLink gmail-m_-4609324326238377015OWAAutoLink" target=3D"_bl=
ank">
usrp-users@lists.ettus.com</a>. You can subscribe to the list, or change yo=
ur existing subscription, in the sections below.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt; <br>
</div>
</span></font></div>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"gmail-m_-46093243=
26238377015LPlnk853547" class=3D"gmail-m_-4609324326238377015x_gmail-m_-717=
118252188596494OWAAutoLink gmail-m_-4609324326238377015OWAAutoLink" target=
=3D"_blank">USRP-users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" id=3D"gmail-m_-4609324326238377015LPlnk479338" class=3D"gmail-m_-=
4609324326238377015x_gmail-m_-717118252188596494OWAAutoLink gmail-m_-460932=
4326238377015OWAAutoLink" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"gmail-m_-46093243262383=
77015LPlnk954227" class=3D"gmail-m_-4609324326238377015OWAAutoLink" target=
=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" id=3D"gmail-m_-4609324326238377015LPlnk430781" class=
=3D"gmail-m_-4609324326238377015OWAAutoLink" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000520e84058abe7061--


--===============9063964240360899224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9063964240360899224==--

